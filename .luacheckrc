-- First Timers: Lua 5.1 / WoW Forever + Midnight starter lint defaults.
std = "lua51"
max_line_length = 140
codes = true
self = false

ignore = {
    "212", -- unused argument (method self / callbacks)
    "213", -- unused loop variable
}

exclude_files = {
    "01-guides/**",
    "03-blizzard-source/**",
    "04-weak-auras/**",
    "05-libraries/**",
}

files["**/Libs/"] = { ignore = { ".*" } }
files["**/more-examples/**/Libs/"] = { ignore = { ".*" } }

read_globals = {
    "CreateFrame", "UIParent", "GameTooltip", "DEFAULT_CHAT_FRAME",
    "UnitName", "UnitGUID", "UnitClass", "GetRealmName", "GetBuildInfo",
    "C_Timer", "C_AddOns", "C_ChatInfo", "C_Item", "C_Spell", "C_Map",
    "hooksecurefunc", "InCombatLockdown", "GetTime", "wipe", "Mixin",
    "SlashCmdList", "hash_SlashCmdList",
    "WOW_PROJECT_ID", "WOW_PROJECT_MAINLINE", "WOW_PROJECT_CAMELOT",
    "issecretvalue", "canaccessvalue", "scrubsecretvalues",
    "NORMAL_FONT_COLOR", "HIGHLIGHT_FONT_COLOR",
    "Settings", "SettingsPanel",
}

-- SavedVariables and intentional addon globals for starters / examples:
globals = {
    "HelloAzerothDB",
    "SLASH_HELLOAZEROTH1",
    SlashCmdList = {
        read_only = false,
        other_fields = true,
    },
}
