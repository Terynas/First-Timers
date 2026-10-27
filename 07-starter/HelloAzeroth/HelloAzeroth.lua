-- HelloAzeroth: the smallest useful addon that runs on both WoW Forever and Midnight.
-- Copy this folder into Interface/AddOns/, restart the game, then type /hello.

local addonName, ns = ... -- every file in the TOC receives the same private table `ns`

local defaults = {
    greet = true,
    logins = 0,
}

-- Forever reports its own project id; fall back to the Interface number.
local function IsForever()
    if WOW_PROJECT_CAMELOT and WOW_PROJECT_ID == WOW_PROJECT_CAMELOT then
        return true
    end
    local iface = select(4, GetBuildInfo())
    return type(iface) == "number" and iface > 16000 and iface < 20000
end

local function Print(fmt, ...)
    print("|cffd6a64aHelloAzeroth|r: " .. fmt:format(...))
end

local frame = CreateFrame("Frame")

-- Set the handler before registering events.
frame:SetScript("OnEvent", function(self, event, ...)
    if self[event] then
        self[event](self, ...)
    end
end)

function frame:ADDON_LOADED(loaded)
    if loaded ~= addonName then
        return
    end
    -- SavedVariables exist from here on; fill in any missing defaults.
    HelloAzerothDB = HelloAzerothDB or {}
    for k, v in pairs(defaults) do
        if HelloAzerothDB[k] == nil then
            HelloAzerothDB[k] = v
        end
    end
    ns.db = HelloAzerothDB
    self:UnregisterEvent("ADDON_LOADED")
end

function frame:PLAYER_LOGIN()
    ns.db.logins = ns.db.logins + 1
    if ns.db.greet then
        Print("Hello %s! Client: %s. Logins seen: %d. Type /hello for options.",
            UnitName("player"), IsForever() and "WoW Forever" or "Midnight", ns.db.logins)
    end
end

frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")

SLASH_HELLOAZEROTH1 = "/hello"
SlashCmdList.HELLOAZEROTH = function(msg)
    msg = (msg or ""):lower():match("^%s*(.-)%s*$")
    if msg == "greet" then
        ns.db.greet = not ns.db.greet
        Print("Login greeting %s.", ns.db.greet and "on" or "off")
    elseif msg == "reset" then
        ns.db.logins = 0
        Print("Login counter reset.")
    else
        Print("/hello greet - toggle the login greeting")
        Print("/hello reset - reset the login counter")
    end
end
