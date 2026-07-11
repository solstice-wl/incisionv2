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

if allowed then
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/0c45707c2642f7287e4606c9d53a09fd3ee8c88cd56351fa1280265b8f80b599/download"))()
else
    game.Players.LocalPlayer:Kick("Invalid HWID")
end
