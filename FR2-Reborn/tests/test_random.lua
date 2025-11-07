-- Source: OriginalSourceCode/assets/config/config.json (rewritten)
-- Behavior inferred from DecompiledLua/config.lua (rewritten)

local random = require("engine.random")

local function assertClose(value, expected, delta)
  if math.abs(value - expected) > delta then
    error(string.format("Expected %.4f to be within %.4f of %.4f", value, delta, expected))
  end
end

random.seed(123)
local valueA = random.random()
random.seed(123)
local valueB = random.random()

assertClose(valueA, valueB, 1e-6)

print("random.lua deterministic seed test passed")
