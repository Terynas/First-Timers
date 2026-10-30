-- UIKit: the First Timers standard addon UI (same chrome as SnapPost Forever and ProfessionMaster).
-- Copy this file into your addon, list it first in the TOC, then build windows with ns.UIKit.
local _, ns = ...

local UIKit = {}
ns.UIKit = UIKit

-- Point this at your own copy of panel-stone.tga (no extension) to get the charcoal stone fill.
UIKit.STONE = nil
local FALLBACK_FILL = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark"
local WHITE = "Interface\\Buttons\\WHITE8X8"

UIKit.THEME = {
    window = { 1, 1, 1, 1 },
    border = { 1, 0.82, 0, 1 },
    inset = { 1, 1, 1, 1 },
    insetBorder = { 0.85, 0.70, 0.20, 1 },
    row = { 1, 1, 1, 0.95 },
    rowBorder = { 0.70, 0.58, 0.18, 0.75 },
    title = { 1, 0.82, 0 },
    subtitle = { 0.85, 0.82, 0.75 },
    parchment = { 0.93, 0.87, 0.72 },
    gold = { 0.95, 0.75, 0.25 },
}
local THEME = UIKit.THEME

UIKit.LAYOUT = {
    HEADER_H = 64,
    PAD = 16,
    SIDEBAR_W = 168,
    FOOTER_H = 40,
    ROW_H = 34,
    ROW_GAP = 4,
    ICON = 22,
}
local L = UIKit.LAYOUT

local function Fill()
    return UIKit.STONE or FALLBACK_FILL
end

local function WindowBackdrop()
    return {
        bgFile = Fill(),
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 128,
        edgeSize = 32,
        insets = { left = 11, right = 12, top = 12, bottom = 11 },
    }
end

local function InsetBackdrop()
    return {
        bgFile = Fill(),
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 128,
        edgeSize = 12,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
    }
end

local CHIP_BACKDROP = {
    bgFile = WHITE,
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true,
    tileSize = 64,
    edgeSize = 10,
    insets = { left = 2, right = 2, top = 2, bottom = 2 },
}

function UIKit.ApplyWindow(frame)
    frame:SetBackdrop(WindowBackdrop())
    frame:SetBackdropColor(THEME.window[1], THEME.window[2], THEME.window[3], THEME.window[4])
    frame:SetBackdropBorderColor(THEME.border[1], THEME.border[2], THEME.border[3], THEME.border[4])
end

function UIKit.ApplyInset(frame, r, g, b, a)
    frame:SetBackdrop(InsetBackdrop())
    frame:SetBackdropColor(r or THEME.inset[1], g or THEME.inset[2], b or THEME.inset[3], a or THEME.inset[4])
    frame:SetBackdropBorderColor(THEME.insetBorder[1], THEME.insetBorder[2], THEME.insetBorder[3], THEME.insetBorder[4])
end

function UIKit.ApplyChip(frame)
    frame:SetBackdrop(CHIP_BACKDROP)
    frame:SetBackdropColor(0.45, 0.42, 0.38, 1)
    frame:SetBackdropBorderColor(THEME.gold[1], THEME.gold[2], THEME.gold[3], 0.8)
end

function UIKit.GoldRule(parent, alpha)
    local t = parent:CreateTexture(nil, "ARTWORK")
    t:SetTexture(WHITE)
    t:SetVertexColor(THEME.gold[1], THEME.gold[2], THEME.gold[3], alpha or 0.55)
    t:SetHeight(1)
    return t
end

-- Gold-rimmed black square behind an icon; returns the holder frame and the icon texture.
function UIKit.IconFrame(parent, size)
    local holder = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    holder:SetSize(size + 4, size + 4)
    holder:SetBackdrop({ bgFile = WHITE, edgeFile = WHITE, edgeSize = 1 })
    holder:SetBackdropColor(0, 0, 0, 1)
    holder:SetBackdropBorderColor(THEME.gold[1], THEME.gold[2], THEME.gold[3], 0.9)
    local icon = holder:CreateTexture(nil, "ARTWORK")
    icon:SetPoint("TOPLEFT", 2, -2)
    icon:SetPoint("BOTTOMRIGHT", -2, 2)
    icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    return holder, icon
end

function UIKit.SectionLabel(parent, text)
    local label = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetTextColor(THEME.title[1], THEME.title[2], THEME.title[3])
    label:SetText(text)
    local rule = UIKit.GoldRule(parent, 0.45)
    rule:SetPoint("LEFT", label, "RIGHT", 8, 0)
    rule:SetPoint("RIGHT", parent, "RIGHT", -10, 0)
    return label, rule
end

function UIKit.Button(parent, text, width)
    local b = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    b:SetSize(width or 120, 24)
    b:SetText(text)
    return b
end

function UIKit.Inset(parent)
    local f = CreateFrame("Frame", nil, parent, "BackdropTemplate")
    UIKit.ApplyInset(f)
    return f
end

-- Movable, Esc-closable dialog window with title, subtitle, gold header rule and close button.
-- opts: { title, subtitle, width, height }. Content goes in window.body.
function UIKit.CreateWindow(globalName, opts)
    opts = opts or {}
    local f = CreateFrame("Frame", globalName, UIParent, "BackdropTemplate")
    f:SetSize(opts.width or 820, opts.height or 650)
    f:SetPoint("CENTER")
    f:SetFrameStrata("DIALOG")
    f:SetToplevel(true)
    f:SetClampedToScreen(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)
    UIKit.ApplyWindow(f)
    if globalName then
        tinsert(UISpecialFrames, globalName)
    end

    f.title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
    f.title:SetPoint("TOPLEFT", L.PAD + 6, -L.PAD - 2)
    f.title:SetTextColor(THEME.title[1], THEME.title[2], THEME.title[3])
    f.title:SetShadowOffset(1, -1)
    f.title:SetShadowColor(0, 0, 0, 1)
    f.title:SetText(opts.title or "")

    f.subtitle = f:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    f.subtitle:SetPoint("TOPLEFT", f.title, "BOTTOMLEFT", 0, -4)
    f.subtitle:SetTextColor(THEME.parchment[1], THEME.parchment[2], THEME.parchment[3])
    f.subtitle:SetText(opts.subtitle or "")

    f.headerRule = UIKit.GoldRule(f, 0.6)
    f.headerRule:SetPoint("TOPLEFT", L.PAD, -L.HEADER_H)
    f.headerRule:SetPoint("TOPRIGHT", -L.PAD, -L.HEADER_H)

    f.close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
    f.close:SetPoint("TOPRIGHT", -2, -2)

    f.body = CreateFrame("Frame", nil, f)
    f.body:SetPoint("TOPLEFT", L.PAD, -(L.HEADER_H + 8))
    f.body:SetPoint("BOTTOMRIGHT", -L.PAD, L.PAD)

    f:Hide()
    return f
end

-- Inset well with a vertical scroll frame; add rows to list.content via UIKit.AcquireRow.
function UIKit.ScrollList(parent)
    local well = UIKit.Inset(parent)
    local scroll = CreateFrame("ScrollFrame", nil, well, "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", 6, -6)
    scroll:SetPoint("BOTTOMRIGHT", -28, 6)
    local content = CreateFrame("Frame", nil, scroll)
    content:SetSize(1, 1)
    scroll:SetScrollChild(content)
    scroll:SetScript("OnSizeChanged", function(self, width)
        content:SetWidth(width)
    end)
    well.scroll, well.content, well.rows = scroll, content, {}
    return well
end

-- Pooled row: icon, left text, right detail, hover highlight. Reuse rows; never create per refresh.
function UIKit.AcquireRow(list, i)
    local row = list.rows[i]
    if not row then
        row = CreateFrame("Button", nil, list.content, "BackdropTemplate")
        row:SetHeight(L.ROW_H)
        row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
        UIKit.ApplyInset(row, THEME.row[1], THEME.row[2], THEME.row[3], THEME.row[4])
        row:SetBackdropBorderColor(THEME.rowBorder[1], THEME.rowBorder[2], THEME.rowBorder[3], THEME.rowBorder[4])

        row.iconFrame, row.icon = UIKit.IconFrame(row, L.ICON)
        row.iconFrame:SetPoint("LEFT", 5, 0)

        row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
        row.text:SetPoint("LEFT", row.iconFrame, "RIGHT", 8, 0)
        row.text:SetPoint("RIGHT", row, "CENTER", -4, 0)
        row.text:SetJustifyH("LEFT")
        row.text:SetWordWrap(false)
        row.text:SetTextColor(THEME.parchment[1], THEME.parchment[2], THEME.parchment[3])

        row.detail = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        row.detail:SetPoint("LEFT", row, "CENTER", 4, 0)
        row.detail:SetPoint("RIGHT", -10, 0)
        row.detail:SetJustifyH("RIGHT")
        row.detail:SetWordWrap(false)

        row.highlight = row:CreateTexture(nil, "HIGHLIGHT")
        row.highlight:SetTexture("Interface\\Buttons\\ButtonHilight-Square")
        row.highlight:SetBlendMode("ADD")
        row.highlight:SetAlpha(0.35)
        row.highlight:SetPoint("TOPLEFT", 3, -3)
        row.highlight:SetPoint("BOTTOMRIGHT", -3, 3)

        list.rows[i] = row
    end
    row:ClearAllPoints()
    row:SetPoint("TOPLEFT", 0, -(i - 1) * (L.ROW_H + L.ROW_GAP))
    row:SetPoint("RIGHT", list.content, "RIGHT", 0, 0)
    row:Show()
    return row
end

-- Hide pooled rows past `used` and size the scroll child to fit.
function UIKit.FinishRows(list, used)
    for i = used + 1, #list.rows do
        list.rows[i]:Hide()
    end
    list.content:SetHeight(math.max(1, used * (L.ROW_H + L.ROW_GAP)))
end

-- Draggable minimap button. db is a SavedVariables table; uses db.hide and db.angle.
-- opts: { name, icon, title, lines = { "Left-click: ..." }, onClick = function(mouseButton) }
function UIKit.MinimapButton(db, opts)
    if not Minimap then
        return nil
    end
    if db.angle == nil then
        db.angle = 200
    end

    local btn = CreateFrame("Button", opts.name, Minimap)
    btn:SetFrameStrata("MEDIUM")
    btn:SetFrameLevel(Minimap:GetFrameLevel() + 8)
    btn:SetSize(32, 32)
    btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
    btn:RegisterForClicks("AnyUp")
    btn:RegisterForDrag("LeftButton")

    local border = btn:CreateTexture(nil, "OVERLAY")
    border:SetSize(54, 54)
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    border:SetPoint("TOPLEFT")

    local icon = btn:CreateTexture(nil, "BACKGROUND")
    icon:SetSize(20, 20)
    icon:SetTexture(opts.icon or "Interface\\Icons\\INV_Misc_QuestionMark")
    icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
    icon:SetPoint("CENTER")

    local function Place()
        local angle = math.rad(db.angle)
        local radius = (Minimap:GetWidth() / 2) + 5
        btn:ClearAllPoints()
        btn:SetPoint("CENTER", Minimap, "CENTER", math.cos(angle) * radius, math.sin(angle) * radius)
    end

    btn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:AddLine(opts.title or "", THEME.title[1], THEME.title[2], THEME.title[3])
        for _, line in ipairs(opts.lines or {}) do
            GameTooltip:AddLine(line, 0.85, 0.85, 0.85)
        end
        GameTooltip:AddLine("Drag: move icon", 0.65, 0.65, 0.65)
        GameTooltip:Show()
    end)
    btn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    btn:SetScript("OnClick", function(_, mouseButton)
        if opts.onClick then
            opts.onClick(mouseButton)
        end
    end)
    btn:SetScript("OnDragStart", function(self)
        self:LockHighlight()
        self:SetScript("OnUpdate", function()
            local mx, my = Minimap:GetCenter()
            local px, py = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            local deg = math.deg(math.atan2(py / scale - my, px / scale - mx))
            db.angle = deg < 0 and deg + 360 or deg
            Place()
        end)
    end)
    btn:SetScript("OnDragStop", function(self)
        self:SetScript("OnUpdate", nil)
        self:UnlockHighlight()
        Place()
    end)

    function btn:Refresh()
        Place()
        self:SetShown(not db.hide)
    end

    btn:Refresh()
    return btn
end

-- Options > AddOns page via the Settings API, with the legacy Interface Options fallback.
-- checkboxes: { { key = "showMinimap", label = "...", tooltip = "...", default = true, onChange = fn } }
-- Returns an open() function.
function UIKit.RegisterOptions(addonTitle, settingsTable, checkboxes)
    local category
    if Settings and Settings.RegisterVerticalLayoutCategory and Settings.RegisterProxySetting then
        category = Settings.RegisterVerticalLayoutCategory(addonTitle)
        for _, cb in ipairs(checkboxes) do
            local function get()
                local v = settingsTable[cb.key]
                if v == nil then
                    return cb.default and true or false
                end
                return v and true or false
            end
            local function set(value)
                settingsTable[cb.key] = value and true or false
                if cb.onChange then
                    cb.onChange(settingsTable[cb.key])
                end
            end
            local variable = addonTitle:gsub("%W", "") .. "_" .. cb.key
            local setting = Settings.RegisterProxySetting(category, variable, "boolean", cb.label, cb.default, get, set)
            Settings.CreateCheckbox(category, setting, cb.tooltip)
        end
        Settings.RegisterAddOnCategory(category)
        return function()
            Settings.OpenToCategory(category.GetID and category:GetID() or addonTitle)
        end
    end

    local panel = CreateFrame("Frame")
    panel.name = addonTitle
    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(addonTitle)
    local anchor = title
    for _, cb in ipairs(checkboxes) do
        local check = CreateFrame("CheckButton", nil, panel, "UICheckButtonTemplate")
        check:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -8)
        local label = check:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
        label:SetPoint("LEFT", check, "RIGHT", 4, 0)
        label:SetText(cb.label)
        local v = settingsTable[cb.key]
        check:SetChecked(v == nil and cb.default or v)
        check:SetScript("OnClick", function(self)
            settingsTable[cb.key] = self:GetChecked() and true or false
            if cb.onChange then
                cb.onChange(settingsTable[cb.key])
            end
        end)
        anchor = check
    end
    if InterfaceOptions_AddCategory then
        InterfaceOptions_AddCategory(panel)
    end
    return function()
        if InterfaceOptionsFrame_OpenToCategory then
            InterfaceOptionsFrame_OpenToCategory(panel)
            InterfaceOptionsFrame_OpenToCategory(panel)
        end
    end
end
