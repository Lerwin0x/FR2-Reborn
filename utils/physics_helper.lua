-- utils/physics_helper.lua - Physics Utility Functions for Fun Run 2
-----------------------------------------------------------------------------------------

local M = {}

-- Physics constants
M.PHYSICS_SCALE = 30 -- Pixels per meter
M.GRAVITY = {x = 0, y = 9.8}

-- Collision categories (using bit flags)
M.COLLISION_CATEGORIES = {
    PLAYER = 1,
    PLATFORM = 2,
    OBSTACLE = 4,
    POWERUP = 8,
    WEAPON = 16,
    BOUNDARY = 32
}

-- Initialize physics helper
function M.init()
    physics.start()
    physics.setGravity(M.GRAVITY.x, M.GRAVITY.y)
    physics.setDrawMode("normal") -- Change to "debug" for debugging
    physics.setScale(M.PHYSICS_SCALE)
    
    print("Physics Helper initialized")
end

-- Create physics body with predefined settings
function M.createPlayerBody(object, options)
    options = options or {}
    
    local bodyType = options.bodyType or "dynamic"
    local density = options.density or 1.0
    local friction = options.friction or 0.3
    local bounce = options.bounce or 0.2
    
    physics.addBody(object, bodyType, {
        density = density,
        friction = friction,
        bounce = bounce,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.PLAYER,
            maskBits = M.COLLISION_CATEGORIES.PLATFORM + 
                      M.COLLISION_CATEGORIES.OBSTACLE + 
                      M.COLLISION_CATEGORIES.POWERUP + 
                      M.COLLISION_CATEGORIES.WEAPON + 
                      M.COLLISION_CATEGORIES.BOUNDARY
        }
    })
    
    object.isFixedRotation = true
    return object
end

function M.createPlatformBody(object, options)
    options = options or {}
    
    local bodyType = options.bodyType or "static"
    local friction = options.friction or 0.5
    
    physics.addBody(object, bodyType, {
        friction = friction,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.PLATFORM,
            maskBits = M.COLLISION_CATEGORIES.PLAYER + M.COLLISION_CATEGORIES.WEAPON
        }
    })
    
    return object
end

function M.createObstacleBody(object, options)
    options = options or {}
    
    local bodyType = options.bodyType or "static"
    local isSensor = options.isSensor or false
    
    physics.addBody(object, bodyType, {
        isSensor = isSensor,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.OBSTACLE,
            maskBits = M.COLLISION_CATEGORIES.PLAYER
        }
    })
    
    return object
end

function M.createPowerUpBody(object, options)
    options = options or {}
    
    physics.addBody(object, "kinematic", {
        isSensor = true,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.POWERUP,
            maskBits = M.COLLISION_CATEGORIES.PLAYER
        }
    })
    
    return object
end

function M.createWeaponBody(object, options)
    options = options or {}
    
    local bodyType = options.bodyType or "kinematic"
    
    physics.addBody(object, bodyType, {
        isSensor = true,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.WEAPON,
            maskBits = M.COLLISION_CATEGORIES.PLAYER + M.COLLISION_CATEGORIES.PLATFORM
        }
    })
    
    return object
end

-- Raycast helper for ground detection
function M.raycastGround(startX, startY, endX, endY)
    local hits = physics.rayCast(startX, startY, endX, endY, "closest")
    
    if hits then
        local hit = hits[1]
        if hit.object and hit.object.isGround then
            return hit
        end
    end
    
    return nil
end

-- Check if player is grounded
function M.isPlayerGrounded(player, rayLength)
    rayLength = rayLength or 35
    
    local startX = player.x
    local startY = player.y + player.height/2
    local endX = startX
    local endY = startY + rayLength
    
    local groundHit = M.raycastGround(startX, startY, endX, endY)
    return groundHit ~= nil
end

-- Apply impulse in direction
function M.applyDirectionalImpulse(object, force, angle)
    local forceX = math.cos(math.rad(angle)) * force
    local forceY = math.sin(math.rad(angle)) * force
    object:applyLinearImpulse(forceX, forceY, object.x, object.y)
end

-- Calculate distance between two objects
function M.getDistance(obj1, obj2)
    local dx = obj2.x - obj1.x
    local dy = obj2.y - obj1.y
    return math.sqrt(dx * dx + dy * dy)
end

-- Calculate angle between two objects
function M.getAngle(obj1, obj2)
    local dx = obj2.x - obj1.x
    local dy = obj2.y - obj1.y
    return math.atan2(dy, dx) * 180 / math.pi
end

-- Smoothly move object to target position
function M.moveToPosition(object, targetX, targetY, speed)
    speed = speed or 100
    
    local dx = targetX - object.x
    local dy = targetY - object.y
    local distance = math.sqrt(dx * dx + dy * dy)
    
    if distance > 5 then -- Threshold to avoid jittering
        local normalizedX = dx / distance
        local normalizedY = dy / distance
        
        object:setLinearVelocity(normalizedX * speed, normalizedY * speed)
        return false -- Not reached target
    else
        object:setLinearVelocity(0, 0)
        object.x = targetX
        object.y = targetY
        return true -- Reached target
    end
end

-- Create invisible boundary walls
function M.createBoundaries(levelWidth, levelHeight)
    local boundaries = {}
    
    -- Left boundary
    local leftWall = display.newRect(-25, levelHeight/2, 50, levelHeight)
    leftWall.isVisible = false
    physics.addBody(leftWall, "static", {
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.BOUNDARY,
            maskBits = M.COLLISION_CATEGORIES.PLAYER + M.COLLISION_CATEGORIES.WEAPON
        }
    })
    boundaries.left = leftWall
    
    -- Right boundary
    local rightWall = display.newRect(levelWidth + 25, levelHeight/2, 50, levelHeight)
    rightWall.isVisible = false
    physics.addBody(rightWall, "static", {
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.BOUNDARY,
            maskBits = M.COLLISION_CATEGORIES.PLAYER + M.COLLISION_CATEGORIES.WEAPON
        }
    })
    boundaries.right = rightWall
    
    -- Bottom boundary (death zone)
    local bottomWall = display.newRect(levelWidth/2, levelHeight + 100, levelWidth + 100, 200)
    bottomWall.isVisible = false
    bottomWall.isDeathZone = true
    physics.addBody(bottomWall, "static", {
        isSensor = true,
        filter = {
            categoryBits = M.COLLISION_CATEGORIES.BOUNDARY,
            maskBits = M.COLLISION_CATEGORIES.PLAYER
        }
    })
    boundaries.bottom = bottomWall
    
    return boundaries
end

-- Joint helpers
function M.createDistanceJoint(obj1, obj2, length)
    length = length or M.getDistance(obj1, obj2)
    
    local joint = physics.newJoint("distance", obj1, obj2, obj1.x, obj1.y, obj2.x, obj2.y)
    joint.length = length
    joint.dampingRatio = 0.5
    joint.frequency = 2.0
    
    return joint
end

function M.createRevoluteJoint(obj1, obj2, anchorX, anchorY)
    local joint = physics.newJoint("revolute", obj1, obj2, anchorX, anchorY)
    return joint
end

-- Explosion effect
function M.createExplosion(x, y, force, radius)
    radius = radius or 100
    force = force or 300
    
    -- Find all objects within radius
    local function checkObject(object)
        if object and object.x and object.y then
            local distance = math.sqrt((object.x - x)^2 + (object.y - y)^2)
            
            if distance <= radius and object.applyLinearImpulse then
                -- Calculate force direction and magnitude
                local angle = math.atan2(object.y - y, object.x - x)
                local forceMagnitude = force * (1 - distance / radius) -- Falloff
                
                local forceX = math.cos(angle) * forceMagnitude
                local forceY = math.sin(angle) * forceMagnitude
                
                object:applyLinearImpulse(forceX, forceY, object.x, object.y)
            end
        end
    end
    
    -- This would need to be called with a list of all dynamic objects in the scene
    return checkObject
end

-- Constraint helpers
function M.constrainToScreen(object, margin)
    margin = margin or 50
    
    if object.x < margin then
        object.x = margin
    elseif object.x > display.contentWidth - margin then
        object.x = display.contentWidth - margin
    end
    
    if object.y < margin then
        object.y = margin
    elseif object.y > display.contentHeight - margin then
        object.y = display.contentHeight - margin
    end
end

-- Convert physics coordinates
function M.pixelsToMeters(pixels)
    return pixels / M.PHYSICS_SCALE
end

function M.metersToPixels(meters)
    return meters * M.PHYSICS_SCALE
end

-- Cleanup physics
function M.cleanup()
    physics.stop()
    print("Physics Helper cleaned up")
end

return M