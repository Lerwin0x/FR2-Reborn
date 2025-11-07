local L0_1

function L0_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_2.launchPad = false
  L1_2 = {}
  L1_2.width = 320
  L1_2.height = 480
  L1_2.scale = "zoomStretch"
  L1_2.audioPlayFrequency = 22050
  L0_2.content = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkQqQe4BwFdw9Xe16NpeBKBCWzTo7xkVa834sYp0TBd5Cni+9TYKVbsLThd5jBaJX3NYwz9eMNBSbDRzvRm+cRGiwjLWoDrYJhZwFXph2T+cKgEYRZnvvp3ttbMFfXXkIyTu8upnWMuuuuS+KqOXTj9KcBrAZwq5yx+J3nsIhoEWRKt81GMYh03qTh+kIW+c3dHVTG0zMiBSzh13Dq1KIXwdzgZoN+Qt6nfFcdCNwjZqKrWQa/yXDQaRFX42wkmq3nKsbKAUAsjSeKoCZ6tK6jcfH7RnSeh3jBPS0dS6JkOUksxOyxV4xDAK7oB/uuw3A/g/qmFdejw/Ib3RUo2G4wwIDAQAB"
  L1_2.google = L2_2
  L0_2.license = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.projectNumber = "183455917667"
  L1_2.google = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = "badge"
  L5_2 = "sound"
  L6_2 = "alert"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.types = L3_2
  L1_2.iphone = L2_2
  L0_2.notification = L1_2
  application = L0_2
end

L0_1()

function L0_1(...)
  local L0_2, L1_2
  L0_2 = application
  if L0_2 then
    L0_2 = type
    L1_2 = application
    L0_2 = L0_2(L1_2)
    if L0_2 == "table" then
      goto lbl_11
    end
  end
  L0_2 = {}
  application = L0_2
  ::lbl_11::
  L0_2 = application
  L1_2 = {}
  L1_2.appName = "android"
  L1_2.appVersion = "1.0"
  L1_2.userId = "345"
  L1_2.subscription = "enterprise"
  L1_2.mode = "distribution"
  L0_2.metadata = L1_2
end

L0_1()
