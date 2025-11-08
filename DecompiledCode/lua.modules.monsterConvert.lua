local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = A0_2[1]
  L1_2.a = L2_2
  L2_2 = A0_2[2]
  L1_2.b = L2_2
  L2_2 = A0_2[3]
  L1_2.c = L2_2
  L2_2 = A0_2[4]
  L1_2.d = L2_2
  L2_2 = A0_2[5]
  L1_2.e = L2_2
  L2_2 = A0_2[6]
  L1_2.f = L2_2
  L2_2 = A0_2[7]
  L1_2.g = L2_2
  L2_2 = A0_2[8]
  L1_2.h = L2_2
  return L1_2
end

L0_1.toServerFormat = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = A0_2.a
  L1_2[1] = L2_2
  L2_2 = A0_2.b
  L1_2[2] = L2_2
  L2_2 = A0_2.c
  L1_2[3] = L2_2
  L2_2 = A0_2.d
  L1_2[4] = L2_2
  L2_2 = A0_2.e
  L1_2[5] = L2_2
  L2_2 = A0_2.f
  L1_2[6] = L2_2
  L2_2 = A0_2.g
  L1_2[7] = L2_2
  L2_2 = A0_2.h
  L1_2[8] = L2_2
  return L1_2
end

L0_1.fromServerFormat = L2_1
L1_1.monsterConverter = L0_1
