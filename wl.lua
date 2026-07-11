local url = "https://raw.githubusercontent.com/solstice-wl/whitelist-Incision/refs/heads/main/hwids.lua" .. tostring(tick())
local HWIDTable = loadstring(game:HttpGet(url))()

local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
print("Current HWID:", HWID)
print("Whitelist loaded:", HWIDTable)

local allowed = false
for i,v in pairs(HWIDTable) do
    print("Checking against:", v)
    if v == HWID then
        allowed = true
        break
    end
end

if not allowed then
    game.Players.LocalPlayer:Kick("Invalid HWID")
    return
end

-- continue here
