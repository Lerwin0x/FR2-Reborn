local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 1
  L2_2[1] = L3_2
  L2_2.x = 1
  L2_2.y = 1
  L3_2 = A1_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.playPowerUpJumpEffect
    L4_2()
    L5_2 = L3_2
    L4_2 = L3_2.getLinearVelocity
    L4_2, L5_2 = L4_2(L5_2)
    if L5_2 < -140 then
      L7_2 = L3_2
      L6_2 = L3_2.applyForce
      L8_2 = 100
      L9_2 = -250
      L10_2 = L3_2.x
      L11_2 = L3_2.y
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    elseif 100 < L5_2 then
      L7_2 = L3_2
      L6_2 = L3_2.applyForce
      L8_2 = 100
      L9_2 = -400
      L10_2 = L3_2.x
      L11_2 = L3_2.y
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    else
      L7_2 = L3_2
      L6_2 = L3_2.applyForce
      L8_2 = 100
      L9_2 = -300
      L10_2 = L3_2.x
      L11_2 = L3_2.y
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
  return L2_2
end

L0_1.new = L1_1
return L0_1
