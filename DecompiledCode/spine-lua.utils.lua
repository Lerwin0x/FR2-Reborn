local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.rep
    L9_2 = " "
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L9_2 == "table" then
      L9_2 = A2_2[L7_2]
      if not L9_2 then
        A2_2[L7_2] = true
        L9_2 = print
        L10_2 = L8_2
        L11_2 = "{"
        L10_2 = L10_2 .. L11_2
        L9_2(L10_2)
        L9_2 = L0_1
        L9_2 = L9_2.print
        L10_2 = L7_2
        L11_2 = A1_2 + 2
        L12_2 = A2_2
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = print
        L10_2 = L8_2
        L11_2 = "}"
        L10_2 = L10_2 .. L11_2
        L9_2(L10_2)
    end
    else
      L9_2 = io
      L9_2 = L9_2.write
      L10_2 = L8_2
      L11_2 = tostring
      L12_2 = L6_2
      L11_2 = L11_2(L12_2)
      L12_2 = " = "
      L10_2 = L10_2 .. L11_2 .. L12_2
      L9_2(L10_2)
      L9_2 = L0_1
      L9_2 = L9_2.print
      L10_2 = L7_2
      L11_2 = A1_2 + 2
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end

tablePrint = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    A1_2 = 0
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "nil" == L3_2 then
    L3_2 = print
    L4_2 = tostring
    L5_2 = nil
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      L3_2 = string
      L3_2 = L3_2.rep
      L4_2 = " "
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = print
      L5_2 = L3_2
      L6_2 = "{"
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      L4_2 = tablePrint
      L5_2 = A0_2
      L6_2 = A1_2 + 2
      L4_2(L5_2, L6_2)
      L4_2 = print
      L5_2 = L3_2
      L6_2 = "}"
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    else
      L3_2 = type
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if "string" == L3_2 then
        L3_2 = print
        L4_2 = "\""
        L5_2 = A0_2
        L6_2 = "\""
        L4_2 = L4_2 .. L5_2 .. L6_2
        L3_2(L4_2)
      else
        L3_2 = print
        L4_2 = tostring
        L5_2 = A0_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end

L0_1.print = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = nil
  return L2_2
end

L0_1.indexOf = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    A1_2[L5_2] = L6_2
  end
  return A1_2
end

L0_1.copy = L1_1
return L0_1
