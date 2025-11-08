local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = {}

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 < 1 then
      L2_2 = nil
      L3_2 = L0_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "EnterClanName"
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      return L2_2, L3_2, L4_2, L5_2
    elseif L1_2 < 3 then
      L2_2 = nil
      L3_2 = L0_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "ClanNameTooShort"
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      return L2_2, L3_2, L4_2, L5_2
    elseif 15 < L1_2 then
      L2_2 = nil
      L3_2 = L0_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "ClanNameTooLong"
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      return L2_2, L3_2, L4_2, L5_2
    else
      L2_2 = string
      L2_2 = L2_2.gsub
      L3_2 = A0_2
      L4_2 = "[^%a%d%s]"
      L5_2 = ""
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 ~= A0_2 then
        L2_2 = nil
        L3_2 = L0_1
        L3_2 = L3_2.localized
        L3_2 = L3_2.get
        L4_2 = "ClanValidCharacterMessage"
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        return L2_2, L3_2, L4_2, L5_2
      else
        return A0_2
      end
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "EnterClanName"
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2, L5_2
  end
end

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 < 1 then
      L2_2 = nil
      L3_2 = L0_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "EnterClanTag"
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      return L2_2, L3_2, L4_2, L5_2
    elseif 4 < L1_2 then
      L2_2 = nil
      L3_2 = L0_1
      L3_2 = L3_2.localized
      L3_2 = L3_2.get
      L4_2 = "ClanTagTooLong"
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      return L2_2, L3_2, L4_2, L5_2
    else
      L2_2 = string
      L2_2 = L2_2.gsub
      L3_2 = A0_2
      L4_2 = "[^%a%d]"
      L5_2 = ""
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 ~= A0_2 then
        L2_2 = nil
        L3_2 = L0_1
        L3_2 = L3_2.localized
        L3_2 = L3_2.get
        L4_2 = "ValidCharacterMessage"
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        return L2_2, L3_2, L4_2, L5_2
      else
        return A0_2
      end
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "EnterClanName"
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2, L5_2
  end
end

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "%s"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 < 1 then
      L1_2 = nil
      L2_2 = L0_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "EnterUsername"
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      return L1_2, L2_2, L3_2, L4_2
    else
      L1_2 = string
      L1_2 = L1_2.len
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 < 2 then
        L1_2 = nil
        L2_2 = L0_1
        L2_2 = L2_2.localized
        L2_2 = L2_2.get
        L3_2 = "UsernameTooShort"
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        return L1_2, L2_2, L3_2, L4_2
      else
        L1_2 = string
        L1_2 = L1_2.len
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if 15 < L1_2 then
          L1_2 = nil
          L2_2 = L0_1
          L2_2 = L2_2.localized
          L2_2 = L2_2.get
          L3_2 = "Username too long. "
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          return L1_2, L2_2, L3_2, L4_2
        else
          L1_2 = string
          L1_2 = L1_2.gsub
          L2_2 = A0_2
          L3_2 = "[^%a%d]"
          L4_2 = ""
          L1_2 = L1_2(L2_2, L3_2, L4_2)
          if L1_2 ~= A0_2 then
            L1_2 = nil
            L2_2 = L0_1
            L2_2 = L2_2.localized
            L2_2 = L2_2.get
            L3_2 = "ValidCharacterMessage"
            L2_2, L3_2, L4_2 = L2_2(L3_2)
            return L1_2, L2_2, L3_2, L4_2
          else
            return A0_2
          end
        end
      end
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "Enter Username"
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2
  end
end

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "%s"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 < 2 then
      L1_2 = nil
      L2_2 = L0_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "Username too short, minimum 2 characters"
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      return L1_2, L2_2, L3_2, L4_2, L5_2
    else
      L1_2 = string
      L1_2 = L1_2.len
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if 15 < L1_2 then
        L1_2 = nil
        L2_2 = L0_1
        L2_2 = L2_2.localized
        L2_2 = L2_2.get
        L3_2 = "Username too long, max 15 characters"
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        return L1_2, L2_2, L3_2, L4_2, L5_2
      else
        L2_2 = A0_2
        L1_2 = A0_2.match
        L3_2 = "[A-Za-z0-9]+#[0-9]"
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = {}
          L3_2 = A0_2
          L2_2 = A0_2.split
          L4_2 = "#"
          L5_2 = L1_2
          L2_2(L3_2, L4_2, L5_2)
          return L1_2
        else
          L1_2 = string
          L1_2 = L1_2.gsub
          L2_2 = A0_2
          L3_2 = "[^%a%d]"
          L4_2 = ""
          L1_2 = L1_2(L2_2, L3_2, L4_2)
          if L1_2 == A0_2 then
            L1_2 = {}
            L2_2 = A0_2
            L3_2 = nil
            L1_2[1] = L2_2
            L1_2[2] = L3_2
            return L1_2
          else
            L1_2 = nil
            L2_2 = L0_1
            L2_2 = L2_2.localized
            L2_2 = L2_2.get
            L3_2 = "Username can only contain letters, numbers and #"
            L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
            return L1_2, L2_2, L3_2, L4_2, L5_2
          end
        end
      end
    end
  else
  end
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "%s"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 <= 4 then
      L1_2 = nil
      L2_2 = L0_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "Invalid email"
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      return L1_2, L2_2, L3_2, L4_2
    else
      L2_2 = A0_2
      L1_2 = A0_2.match
      L3_2 = ".+@.+%..+"
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        return A0_2
      else
        L1_2 = nil
        L2_2 = L0_1
        L2_2 = L2_2.localized
        L2_2 = L2_2.get
        L3_2 = "Invalid email"
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        return L1_2, L2_2, L3_2, L4_2
      end
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "Enter Email"
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2
  end
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 <= 2 then
      L1_2 = nil
      L2_2 = L0_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "Password too short"
      L2_2, L3_2 = L2_2(L3_2)
      return L1_2, L2_2, L3_2
    else
      return A0_2
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "Enter Password"
    L2_2, L3_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2
  end
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "%s"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.len
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 < 3 then
      L1_2 = nil
      L2_2 = L0_1
      L2_2 = L2_2.localized
      L2_2 = L2_2.get
      L3_2 = "Too short, minimum 3 characters"
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      return L1_2, L2_2, L3_2, L4_2
    else
      L1_2 = string
      L1_2 = L1_2.len
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if 15 < L1_2 then
        L1_2 = nil
        L2_2 = L0_1
        L2_2 = L2_2.localized
        L2_2 = L2_2.get
        L3_2 = "Too long, max 15 characters"
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        return L1_2, L2_2, L3_2, L4_2
      else
        L1_2 = string
        L1_2 = L1_2.gsub
        L2_2 = A0_2
        L3_2 = "[^%a%d]"
        L4_2 = ""
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if L1_2 ~= A0_2 then
          L1_2 = nil
          L2_2 = L0_1
          L2_2 = L2_2.localized
          L2_2 = L2_2.get
          L3_2 = "Only letters and numbers"
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          return L1_2, L2_2, L3_2, L4_2
        else
          return A0_2
        end
      end
    end
  else
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.localized
    L2_2 = L2_2.get
    L3_2 = "Enter Name"
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    return L1_2, L2_2, L3_2, L4_2
  end
end

function L9_1(A0_2, A1_2)
  local L2_2
  if not A0_2 then
    A0_2 = 1000
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.text
    if L1_3 then
      L1_3 = string
      L1_3 = L1_3.len
      L2_3 = A0_3.text
      L1_3 = L1_3(L2_3)
      L2_3 = A0_2
      if L1_3 > L2_3 then
        L1_3 = A0_3.target
        L2_3 = A0_3.text
        L3_3 = L2_3
        L2_3 = L2_3.sub
        L4_3 = 1
        L5_3 = A0_2
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L1_3.text = L2_3
      end
    end
    L1_3 = A0_3.phase
    if "ended" == L1_3 then
    else
      L1_3 = A0_3.phase
      if "submitted" == L1_3 then
        L1_3 = native
        L1_3 = L1_3.setKeyboardFocus
        L2_3 = nil
        L1_3(L2_3)
        L1_3 = isAndroid
        if L1_3 then
          L1_3 = native
          L1_3 = L1_3.setProperty
          L2_3 = "androidSystemUiVisibility"
          L3_3 = "immersiveSticky"
          L1_3(L2_3, L3_3)
        end
      end
    end
    L1_3 = A1_2
    if L1_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  
  return L2_2
end

L1_1.validateClanName = L2_1
L1_1.validateClanTag = L3_1
L1_1.validateUsername = L4_1
L1_1.validateEmail = L6_1
L1_1.validatePassword = L7_1
L1_1.validateMonsterName = L8_1
L1_1.limitTextField = L9_1
L1_1.validateUsernameSearch = L5_1
L0_1.validateInput = L1_1
