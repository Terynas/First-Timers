-- StandardUI: a small addon built only from UIKit, showing the First Timers standard window.
-- Copy this folder into Interface/AddOns/, restart the game, then type /sui.
local addonName, ns = ...
local UIKit = ns.UIKit
local THEME, L = UIKit.THEME, UIKit.LAYOUT

local TITLE = "Standard UI"
local defaults = { settings = { showMinimap = true }, minimap = {}, introSeen = false }

-- Sample data; a real addon fills this from the game API.
local SECTIONS = {
    {
        name = "Herbs",
        items = {
            { "Peacebloom", "Interface\\Icons\\INV_Misc_Flower_02", "x40" },
            { "Silverleaf", "Interface\\Icons\\INV_Misc_Herb_10", "x25" },
            { "Earthroot", "Interface\\Icons\\INV_Misc_Herb_07", "x12" },
        },
    },
    {
        name = "Ore",
        items = {
            { "Copper Ore", "Interface\\Icons\\INV_Ore_Copper_01", "x60" },
            { "Tin Ore", "Interface\\Icons\\INV_Ore_Tin_01", "x18" },
        },
    },
}

local window, minimapButton, openOptions
local selected = 1

local function Print(fmt, ...)
    print("|cffd6a64a" .. TITLE .. "|r: " .. fmt:format(...))
end

local function RefreshList()
    local section = SECTIONS[selected]
    window.listLabel:SetText(section.name)
    for i, item in ipairs(section.items) do
        local row = UIKit.AcquireRow(window.list, i)
        row.text:SetText(item[1])
        row.icon:SetTexture(item[2])
        row.detail:SetText(item[3])
        row:SetScript("OnClick", function()
            Print("Clicked %s", item[1])
        end)
    end
    UIKit.FinishRows(window.list, #section.items)
    for i, tab in ipairs(window.tabs) do
        tab:SetBackdropBorderColor(THEME.insetBorder[1], THEME.insetBorder[2], THEME.insetBorder[3], i == selected and 1 or 0.35)
    end
end

local function BuildWindow()
    window = UIKit.CreateWindow("StandardUIFrame", {
        title = TITLE,
        subtitle = "The First Timers standard window: stone fill, gold chrome, pooled rows.",
        width = 640,
        height = 460,
    })
    local body = window.body

    local sidebar = UIKit.Inset(body)
    sidebar:SetPoint("TOPLEFT")
    sidebar:SetPoint("BOTTOMLEFT", 0, L.FOOTER_H)
    sidebar:SetWidth(L.SIDEBAR_W)
    local sideLabel = UIKit.SectionLabel(sidebar, "Sections")
    sideLabel:SetPoint("TOPLEFT", 10, -10)

    window.tabs = {}
    for i, section in ipairs(SECTIONS) do
        local tab = CreateFrame("Button", nil, sidebar, "BackdropTemplate")
        tab:SetHeight(36)
        tab:SetPoint("TOPLEFT", 8, -34 - (i - 1) * 40)
        tab:SetPoint("RIGHT", -8, 0)
        UIKit.ApplyInset(tab, THEME.row[1], THEME.row[2], THEME.row[3], THEME.row[4])
        local text = tab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        text:SetPoint("LEFT", 10, 0)
        text:SetText(section.name)
        tab:SetScript("OnClick", function()
            selected = i
            RefreshList()
        end)
        window.tabs[i] = tab
    end

    window.listLabel = UIKit.SectionLabel(body, "")
    window.listLabel:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 12, -6)

    window.list = UIKit.ScrollList(body)
    window.list:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 8, -26)
    window.list:SetPoint("BOTTOMRIGHT", 0, L.FOOTER_H)

    local footerRule = UIKit.GoldRule(body, 0.45)
    footerRule:SetPoint("BOTTOMLEFT", 0, L.FOOTER_H - 6)
    footerRule:SetPoint("BOTTOMRIGHT", 0, L.FOOTER_H - 6)

    local optionsButton = UIKit.Button(body, "Options", 110)
    optionsButton:SetPoint("BOTTOMRIGHT", 0, 4)
    optionsButton:SetScript("OnClick", function()
        openOptions()
    end)

    local hint = body:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    hint:SetPoint("BOTTOMLEFT", 0, 10)
    hint:SetText("/sui toggles this window. Esc closes it.")

    window:SetScript("OnShow", RefreshList)
end

local function ShowIntroOnce()
    if StandardUIDB.introSeen then
        return
    end
    StandardUIDB.introSeen = true
    Print("First time here: rows come from UIKit.AcquireRow, the frame from UIKit.CreateWindow.")
end

local function Toggle()
    if InCombatLockdown() then
        Print("Not available in combat.")
        return
    end
    if not window then
        BuildWindow()
    end
    window:SetShown(not window:IsShown())
    if window:IsShown() then
        ShowIntroOnce()
    end
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        StandardUIDB = StandardUIDB or {}
        for k, v in pairs(defaults) do
            if StandardUIDB[k] == nil then
                StandardUIDB[k] = type(v) == "table" and {} or v
            end
        end
        if StandardUIDB.settings.showMinimap == nil then
            StandardUIDB.settings.showMinimap = true
        end
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_LOGIN" then
        StandardUIDB.minimap.hide = not StandardUIDB.settings.showMinimap
        minimapButton = UIKit.MinimapButton(StandardUIDB.minimap, {
            name = "StandardUIMinimapButton",
            icon = "Interface\\Icons\\INV_Misc_Book_09",
            title = TITLE,
            lines = { "Left-click: open window", "Right-click: options" },
            onClick = function(mouseButton)
                if mouseButton == "RightButton" then
                    openOptions()
                else
                    Toggle()
                end
            end,
        })
        openOptions = UIKit.RegisterOptions(TITLE, StandardUIDB.settings, {
            {
                key = "showMinimap",
                label = "Show minimap icon",
                tooltip = "Left-click the icon to open the window; right-click for options.",
                default = true,
                onChange = function(value)
                    StandardUIDB.minimap.hide = not value
                    if minimapButton then
                        minimapButton:Refresh()
                    end
                end,
            },
        })
        self:UnregisterEvent("PLAYER_LOGIN")
    end
end)

SLASH_STANDARDUI1 = "/sui"
SlashCmdList.STANDARDUI = Toggle
