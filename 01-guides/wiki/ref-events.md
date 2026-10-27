# Events

> Source: <https://warcraft.wiki.gg/wiki/Events> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

## Contents

- [1 API systems](#API_systems)
  - [1.1 AccountStore](#AccountStore)
  - [1.2 AchievementInfo](#AchievementInfo)
  - [1.3 ActionBar](#ActionBar)
  - [1.4 AddOns](#AddOns)
  - [1.5 AdventureJournal](#AdventureJournal)
  - [1.6 AdventureMap](#AdventureMap)
  - [1.7 AlliedRaces](#AlliedRaces)
  - [1.8 AnimaDiversionInfo](#AnimaDiversionInfo)
  - [1.9 AreaPoiInfo](#AreaPoiInfo)
  - [1.10 ArtifactUI](#ArtifactUI)
  - [1.11 AssistedCombat](#AssistedCombat)
  - [1.12 AuctionHouse](#AuctionHouse)
  - [1.13 AzeriteEmpoweredItem](#AzeriteEmpoweredItem)
  - [1.14 AzeriteEssence](#AzeriteEssence)
  - [1.15 AzeriteItem](#AzeriteItem)
  - [1.16 Bank](#Bank)
  - [1.17 BarberShop](#BarberShop)
  - [1.18 BattlePet](#BattlePet)
  - [1.19 BehavioralMessaging](#BehavioralMessaging)
  - [1.20 BlackMarketInfo](#BlackMarketInfo)
  - [1.21 Browser](#Browser)
  - [1.22 Calendar](#Calendar)
  - [1.23 CatalogShop](#CatalogShop)
  - [1.24 ChallengeModeInfo](#ChallengeModeInfo)
  - [1.25 ChatInfo](#ChatInfo)
  - [1.26 Cinematic](#Cinematic)
  - [1.27 ClassTalents](#ClassTalents)
  - [1.28 ClassTrial](#ClassTrial)
  - [1.29 ClickBindings](#ClickBindings)
  - [1.30 ClientScene](#ClientScene)
  - [1.31 Club](#Club)
  - [1.32 ClubFinderInfo](#ClubFinderInfo)
  - [1.33 ColorOverrides](#ColorOverrides)
  - [1.34 CombatLog](#CombatLog)
  - [1.35 CombatLogInternal](#CombatLogInternal)
  - [1.36 CombatLogSecure](#CombatLogSecure)
  - [1.37 CombatText](#CombatText)
  - [1.38 CommentatorFrame](#CommentatorFrame)
  - [1.39 CompactUnitFrames](#CompactUnitFrames)
  - [1.40 Console](#Console)
  - [1.41 Container](#Container)
  - [1.42 ContentTracking](#ContentTracking)
  - [1.43 ContributionCollector](#ContributionCollector)
  - [1.44 CooldownViewer](#CooldownViewer)
  - [1.45 Covenant](#Covenant)
  - [1.46 CovenantCallings](#CovenantCallings)
  - [1.47 CovenantPreview](#CovenantPreview)
  - [1.48 CovenantSanctumUI](#CovenantSanctumUI)
  - [1.49 CraftingOrderUI](#CraftingOrderUI)
  - [1.50 CurrencySystem](#CurrencySystem)
  - [1.51 Cursor](#Cursor)
  - [1.52 DamageMeter](#DamageMeter)
  - [1.53 DeathAlert](#DeathAlert)
  - [1.54 DeathInfo](#DeathInfo)
  - [1.55 DelvesUI](#DelvesUI)
  - [1.56 Discord](#Discord)
  - [1.57 DuelInfo](#DuelInfo)
  - [1.58 DyeColorInfo](#DyeColorInfo)
  - [1.59 EditModeManager](#EditModeManager)
  - [1.60 EncounterInfo](#EncounterInfo)
  - [1.61 EncounterJournal](#EncounterJournal)
  - [1.62 EncounterTimeline](#EncounterTimeline)
  - [1.63 EncounterWarnings](#EncounterWarnings)
  - [1.64 EndOfMatchUI](#EndOfMatchUI)
  - [1.65 EquipmentSet](#EquipmentSet)
  - [1.66 EventSchedulerUI](#EventSchedulerUI)
  - [1.67 Expansion](#Expansion)
  - [1.68 ExternalEventURL](#ExternalEventURL)
  - [1.69 FogOfWar](#FogOfWar)
  - [1.70 FriendList](#FriendList)
  - [1.71 GMTicketInfo](#GMTicketInfo)
  - [1.72 GamePad](#GamePad)
  - [1.73 GameRules](#GameRules)
  - [1.74 GarrisonInfo](#GarrisonInfo)
  - [1.75 GenericWidgetDisplay](#GenericWidgetDisplay)
  - [1.76 Glue](#Glue)
  - [1.77 GlyphInfo](#GlyphInfo)
  - [1.78 GossipInfo](#GossipInfo)
  - [1.79 GuildBank](#GuildBank)
  - [1.80 GuildInfo](#GuildInfo)
  - [1.81 HeirloomInfo](#HeirloomInfo)
  - [1.82 HouseEditorUI](#HouseEditorUI)
  - [1.83 HouseExteriorUI](#HouseExteriorUI)
  - [1.84 HousingBasicModeUI](#HousingBasicModeUI)
  - [1.85 HousingBlueprintUI](#HousingBlueprintUI)
  - [1.86 HousingCatalogUI](#HousingCatalogUI)
  - [1.87 HousingCleanupModeUI](#HousingCleanupModeUI)
  - [1.88 HousingCustomizeModeUI](#HousingCustomizeModeUI)
  - [1.89 HousingDecorUI](#HousingDecorUI)
  - [1.90 HousingExpertModeUI](#HousingExpertModeUI)
  - [1.91 HousingInspectModeUI](#HousingInspectModeUI)
  - [1.92 HousingLayoutUI](#HousingLayoutUI)
  - [1.93 HousingNeighborhoodUI](#HousingNeighborhoodUI)
  - [1.94 HousingUI](#HousingUI)
  - [1.95 ImmersiveInteraction](#ImmersiveInteraction)
  - [1.96 InGameNavigation](#InGameNavigation)
  - [1.97 InstanceEncounter](#InstanceEncounter)
  - [1.98 InstanceLeaverInfo](#InstanceLeaverInfo)
  - [1.99 IslandsInfo](#IslandsInfo)
  - [1.100 IslandsQueue](#IslandsQueue)
  - [1.101 Item](#Item)
  - [1.102 ItemInteractionUI](#ItemInteractionUI)
  - [1.103 ItemSocketInfo](#ItemSocketInfo)
  - [1.104 ItemText](#ItemText)
  - [1.105 ItemUpgrade](#ItemUpgrade)
  - [1.106 KeyBindings](#KeyBindings)
  - [1.107 LFGInfo](#LFGInfo)
  - [1.108 LFGList](#LFGList)
  - [1.109 LegendaryCrafting](#LegendaryCrafting)
  - [1.110 LoadingScreen](#LoadingScreen)
  - [1.111 LobbyMatchmakerInfo](#LobbyMatchmakerInfo)
  - [1.112 Loot](#Loot)
  - [1.113 LootHistory](#LootHistory)
  - [1.114 LootJournal](#LootJournal)
  - [1.115 LoreText](#LoreText)
  - [1.116 LossOfControl](#LossOfControl)
  - [1.117 MailInfo](#MailInfo)
  - [1.118 MajorFactionsUI](#MajorFactionsUI)
  - [1.119 MapExplorationInfo](#MapExplorationInfo)
  - [1.120 MapUI](#MapUI)
  - [1.121 MerchantFrame](#MerchantFrame)
  - [1.122 Minimap](#Minimap)
  - [1.123 ModelInfo](#ModelInfo)
  - [1.124 MountJournal](#MountJournal)
  - [1.125 MythicPlusInfo](#MythicPlusInfo)
  - [1.126 NamePlateManager](#NamePlateManager)
  - [1.127 NeighborhoodInitiative](#NeighborhoodInitiative)
  - [1.128 PaperDollInfo](#PaperDollInfo)
  - [1.129 PartyInfo](#PartyInfo)
  - [1.130 PartyPose](#PartyPose)
  - [1.131 PerksActivities](#PerksActivities)
  - [1.132 PerksProgram](#PerksProgram)
  - [1.133 PetInfo](#PetInfo)
  - [1.134 PetJournalInfo](#PetJournalInfo)
  - [1.135 PhotoSharingUI](#PhotoSharingUI)
  - [1.136 PingManager](#PingManager)
  - [1.137 PingManagerSecure](#PingManagerSecure)
  - [1.138 PlayerChoice](#PlayerChoice)
  - [1.139 PlayerInteractionManager](#PlayerInteractionManager)
  - [1.140 PlayerMentorship](#PlayerMentorship)
  - [1.141 PlayerScript](#PlayerScript)
  - [1.142 ProfessionSpecUI](#ProfessionSpecUI)
  - [1.143 PvpInfo](#PvpInfo)
  - [1.144 QuestLog](#QuestLog)
  - [1.145 QuestOffer](#QuestOffer)
  - [1.146 QuestSession](#QuestSession)
  - [1.147 RecentAllies](#RecentAllies)
  - [1.148 RecruitAFriend](#RecruitAFriend)
  - [1.149 RemixArtifactUI](#RemixArtifactUI)
  - [1.150 ReportSystem](#ReportSystem)
  - [1.151 ReputationInfo](#ReputationInfo)
  - [1.152 ResearchInfo](#ResearchInfo)
  - [1.153 RestrictedActions](#RestrictedActions)
  - [1.154 ScenarioInfo](#ScenarioInfo)
  - [1.155 ScrappingMachineUI](#ScrappingMachineUI)
  - [1.156 ScriptWarnings](#ScriptWarnings)
  - [1.157 ScriptedAnimations](#ScriptedAnimations)
  - [1.158 SecureTransfer](#SecureTransfer)
  - [1.159 SettingsUtil](#SettingsUtil)
  - [1.160 SharedTraits](#SharedTraits)
  - [1.161 SkillInfo](#SkillInfo)
  - [1.162 SocialQueue](#SocialQueue)
  - [1.163 SocialQueueSystemStatus](#SocialQueueSystemStatus)
  - [1.164 SocialRestrictions](#SocialRestrictions)
  - [1.165 SocialUI](#SocialUI)
  - [1.166 Soulbinds](#Soulbinds)
  - [1.167 Sound](#Sound)
  - [1.168 SpecializationInfo](#SpecializationInfo)
  - [1.169 Spell](#Spell)
  - [1.170 SpellActivationOverlay](#SpellActivationOverlay)
  - [1.171 SpellBook](#SpellBook)
  - [1.172 SpellDiminishUI](#SpellDiminishUI)
  - [1.173 SplashScreen](#SplashScreen)
  - [1.174 StableInfo](#StableInfo)
  - [1.175 SuperTrackManager](#SuperTrackManager)
  - [1.176 SystemInfo](#SystemInfo)
  - [1.177 TalkingHead](#TalkingHead)
  - [1.178 TaxiMap](#TaxiMap)
  - [1.179 TextureUtils](#TextureUtils)
  - [1.180 TimerunningUI](#TimerunningUI)
  - [1.181 TooltipComparison](#TooltipComparison)
  - [1.182 TooltipInfo](#TooltipInfo)
  - [1.183 ToyBoxInfo](#ToyBoxInfo)
  - [1.184 TradeInfo](#TradeInfo)
  - [1.185 TradeSkillUI](#TradeSkillUI)
  - [1.186 Trainer](#Trainer)
  - [1.187 TransmogOutfitInfo](#TransmogOutfitInfo)
  - [1.188 Transmogrify](#Transmogrify)
  - [1.189 Tutorial](#Tutorial)
  - [1.190 UI](#UI)
  - [1.191 UIActionHandlerSystem](#UIActionHandlerSystem)
  - [1.192 UIEventToastManagerInfo](#UIEventToastManagerInfo)
  - [1.193 UIFrameManager](#UIFrameManager)
  - [1.194 UIMacros](#UIMacros)
  - [1.195 UISystemVisibilityManager](#UISystemVisibilityManager)
  - [1.196 UIWidgetManager](#UIWidgetManager)
  - [1.197 Unit](#Unit)
  - [1.198 UnitAuras](#UnitAuras)
  - [1.199 UnitRole](#UnitRole)
  - [1.200 Vehicle](#Vehicle)
  - [1.201 Video](#Video)
  - [1.202 Vignette](#Vignette)
  - [1.203 VoiceChat](#VoiceChat)
  - [1.204 WarbandSceneInfo](#WarbandSceneInfo)
  - [1.205 WeatherScript](#WeatherScript)
  - [1.206 WeeklyRewards](#WeeklyRewards)
  - [1.207 WorldLootObject](#WorldLootObject)
  - [1.208 WorldStateInfo](#WorldStateInfo)
  - [1.209 WowEntitlementInfo](#WowEntitlementInfo)
  - [1.210 WowSurvey](#WowSurvey)
  - [1.211 WowTokenUI](#WowTokenUI)
- [2 Undocumented](#Undocumented)

*For events in Azeroth such as World Events and Holidays, see [Event](https://warcraft.wiki.gg/wiki/Event "Event").*

*For [![World of Warcraft](/images/WoW_Icon_update.png?d4be1e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft") Classic events, see [Events/Classic](https://warcraft.wiki.gg/wiki/Events/Classic "Events/Classic").*

*For EventRegistry callback events, see [EventRegistry](https://warcraft.wiki.gg/wiki/EventRegistry "EventRegistry").*

**Frame Events** are messages sent by the WoW client to UI code (via [OnEvent](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEvent "UIHANDLER OnEvent") script handlers), mostly in reaction to things occurring in the game world. For a general tutorial on setting up event handling in your addon, see [Handling events](https://warcraft.wiki.gg/wiki/Handling_events "Handling events") and the [Frame:RegisterEvent](https://warcraft.wiki.gg/wiki/API:Frame_RegisterEvent "API:Frame RegisterEvent")() method.

**Event Trace**

The Event Trace window for debugging events can be opened via the [`/etrace`](https://warcraft.wiki.gg/wiki/MACRO_eventtrace "MACRO eventtrace") slash command.

![MACRO eventtrace 01.png](/images/thumb/MACRO_eventtrace_01.png/577px-MACRO_eventtrace_01.png?c38caa)

**Example**

Shows when a chat channel message appears and when you start/stop moving.

    local function OnEvent(self, event, ...)
        print(event, ...)
    end

    local f = CreateFrame("Frame")
    f:RegisterEvent("CHAT_MSG_CHANNEL")
    f:RegisterEvent("PLAYER_STARTED_MOVING")
    f:RegisterEvent("PLAYER_STOPPED_MOVING")
    f:SetScript("OnEvent", OnEvent)

# API systems

[![Note](/images/Icon-information-22x22.png?81245f)](https://warcraft.wiki.gg/wiki/File:Icon-information-22x22.png "Note")

**Note:** This page is up to date as of PTR [Patch 12.1.5](https://warcraft.wiki.gg/wiki/Patch_12.1.5/API_changes "Patch 12.1.5/API changes") (69594) Aug 28 2026

These events are categorized by system in Blizzard_APIDocumentation.

## [AccountStore](https://warcraft.wiki.gg/wiki/Category:API_systems/AccountStore "Category:API systems/AccountStore")

[ACCOUNT_STORE_CURRENCY_AVAILABLE_UPDATED](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_STORE_CURRENCY_AVAILABLE_UPDATED "Event:ACCOUNT STORE CURRENCY AVAILABLE UPDATED"): currencyID

[ACCOUNT_STORE_FRONT_UPDATED](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_STORE_FRONT_UPDATED "Event:ACCOUNT STORE FRONT UPDATED"): storeFrontID

[ACCOUNT_STORE_ITEM_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_STORE_ITEM_INFO_UPDATED "Event:ACCOUNT STORE ITEM INFO UPDATED"): itemID

[ACCOUNT_STORE_TRANSACTION_ERROR](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_STORE_TRANSACTION_ERROR "Event:ACCOUNT STORE TRANSACTION ERROR"): result

[STORE_FRONT_STATE_UPDATED](https://warcraft.wiki.gg/wiki/Event:STORE_FRONT_STATE_UPDATED "Event:STORE FRONT STATE UPDATED"): storeFrontID

## [AchievementInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/AchievementInfo "Category:API systems/AchievementInfo")

[ACHIEVEMENT_EARNED](https://warcraft.wiki.gg/wiki/Event:ACHIEVEMENT_EARNED "Event:ACHIEVEMENT EARNED"): achievementID, alreadyEarned

[ACHIEVEMENT_PLAYER_NAME](https://warcraft.wiki.gg/wiki/Event:ACHIEVEMENT_PLAYER_NAME "Event:ACHIEVEMENT PLAYER NAME"): achievementID

[ACHIEVEMENT_SEARCH_UPDATED](https://warcraft.wiki.gg/wiki/Event:ACHIEVEMENT_SEARCH_UPDATED "Event:ACHIEVEMENT SEARCH UPDATED")

[CRITERIA_COMPLETE](https://warcraft.wiki.gg/wiki/Event:CRITERIA_COMPLETE "Event:CRITERIA COMPLETE"): criteriaID

[CRITERIA_EARNED](https://warcraft.wiki.gg/wiki/Event:CRITERIA_EARNED "Event:CRITERIA EARNED"): achievementID, description, achievementAlreadyEarnedOnAccount

[CRITERIA_UPDATE](https://warcraft.wiki.gg/wiki/Event:CRITERIA_UPDATE "Event:CRITERIA UPDATE")

[INSPECT_ACHIEVEMENT_READY](https://warcraft.wiki.gg/wiki/Event:INSPECT_ACHIEVEMENT_READY "Event:INSPECT ACHIEVEMENT READY"): guid

[RECEIVED_ACHIEVEMENT_LIST](https://warcraft.wiki.gg/wiki/Event:RECEIVED_ACHIEVEMENT_LIST "Event:RECEIVED ACHIEVEMENT LIST")

[RECEIVED_ACHIEVEMENT_MEMBER_LIST](https://warcraft.wiki.gg/wiki/Event:RECEIVED_ACHIEVEMENT_MEMBER_LIST "Event:RECEIVED ACHIEVEMENT MEMBER LIST"): achievementID

[TRACKED_ACHIEVEMENT_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRACKED_ACHIEVEMENT_LIST_CHANGED "Event:TRACKED ACHIEVEMENT LIST CHANGED"): achievementID, added

[TRACKED_ACHIEVEMENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRACKED_ACHIEVEMENT_UPDATE "Event:TRACKED ACHIEVEMENT UPDATE"): achievementID, criteriaID, elapsed, duration

## [ActionBar](https://warcraft.wiki.gg/wiki/Category:API_systems/ActionBar "Category:API systems/ActionBar")

[ACTION_RANGE_CHECK_UPDATE](https://warcraft.wiki.gg/wiki/Event:ACTION_RANGE_CHECK_UPDATE "Event:ACTION RANGE CHECK UPDATE"): slot, isInRange, checksRange

[ACTION_USABLE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTION_USABLE_CHANGED "Event:ACTION USABLE CHANGED"): changes

[ACTIONBAR_HIDEGRID](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_HIDEGRID "Event:ACTIONBAR HIDEGRID")

[ACTIONBAR_PAGE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_PAGE_CHANGED "Event:ACTIONBAR PAGE CHANGED")

[ACTIONBAR_SHOW_BOTTOMLEFT](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_SHOW_BOTTOMLEFT "Event:ACTIONBAR SHOW BOTTOMLEFT")

[ACTIONBAR_SHOWGRID](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_SHOWGRID "Event:ACTIONBAR SHOWGRID")

[ACTIONBAR_SLOT_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_SLOT_CHANGED "Event:ACTIONBAR SLOT CHANGED"): slot

[ACTIONBAR_UPDATE_COOLDOWN](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_UPDATE_COOLDOWN "Event:ACTIONBAR UPDATE COOLDOWN")

[ACTIONBAR_UPDATE_STATE](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_UPDATE_STATE "Event:ACTIONBAR UPDATE STATE")

[ACTIONBAR_UPDATE_USABLE](https://warcraft.wiki.gg/wiki/Event:ACTIONBAR_UPDATE_USABLE "Event:ACTIONBAR UPDATE USABLE")

[PET_BAR_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_BAR_UPDATE "Event:PET BAR UPDATE")

[UPDATE_BONUS_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_BONUS_ACTIONBAR "Event:UPDATE BONUS ACTIONBAR")

[UPDATE_EXTRA_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_EXTRA_ACTIONBAR "Event:UPDATE EXTRA ACTIONBAR")

[UPDATE_MULTI_CAST_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_MULTI_CAST_ACTIONBAR "Event:UPDATE MULTI CAST ACTIONBAR")

[UPDATE_OVERRIDE_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_OVERRIDE_ACTIONBAR "Event:UPDATE OVERRIDE ACTIONBAR")

## [AddOns](https://warcraft.wiki.gg/wiki/Category:API_systems/AddOns "Category:API systems/AddOns")

[ADDON_LOADED](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED"): addOnName, containsBindings

[ADDONS_UNLOADING](https://warcraft.wiki.gg/wiki/Event:ADDONS_UNLOADING "Event:ADDONS UNLOADING"): closingClient

[SAVED_VARIABLES_TOO_LARGE](https://warcraft.wiki.gg/wiki/Event:SAVED_VARIABLES_TOO_LARGE "Event:SAVED VARIABLES TOO LARGE"): addOnName

## [AdventureJournal](https://warcraft.wiki.gg/wiki/Category:API_systems/AdventureJournal "Category:API systems/AdventureJournal")

[AJ_DUNGEON_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_DUNGEON_ACTION "Event:AJ DUNGEON ACTION"): lfgDungeonID

[AJ_OPEN](https://warcraft.wiki.gg/wiki/Event:AJ_OPEN "Event:AJ OPEN")

[AJ_OPEN_COLLECTIONS_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_OPEN_COLLECTIONS_ACTION "Event:AJ OPEN COLLECTIONS ACTION")

[AJ_PVE_LFG_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVE_LFG_ACTION "Event:AJ PVE LFG ACTION")

[AJ_PVP_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_ACTION "Event:AJ PVP ACTION"): battleMasterListID

[AJ_PVP_LFG_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_LFG_ACTION "Event:AJ PVP LFG ACTION")

[AJ_PVP_RBG_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_RBG_ACTION "Event:AJ PVP RBG ACTION")

[AJ_PVP_SKIRMISH_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_SKIRMISH_ACTION "Event:AJ PVP SKIRMISH ACTION")

[AJ_PVP_SPECIAL_BG_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_SPECIAL_BG_ACTION "Event:AJ PVP SPECIAL BG ACTION")

[AJ_PVP_TRAINING_GROUNDS_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_PVP_TRAINING_GROUNDS_ACTION "Event:AJ PVP TRAINING GROUNDS ACTION")

[AJ_QUEST_LOG_OPEN](https://warcraft.wiki.gg/wiki/Event:AJ_QUEST_LOG_OPEN "Event:AJ QUEST LOG OPEN"): questID, uiMapID

[AJ_RAID_ACTION](https://warcraft.wiki.gg/wiki/Event:AJ_RAID_ACTION "Event:AJ RAID ACTION"): lfgDungeonID

[AJ_REFRESH_DISPLAY](https://warcraft.wiki.gg/wiki/Event:AJ_REFRESH_DISPLAY "Event:AJ REFRESH DISPLAY"): newAdventureNotice

[AJ_REWARD_DATA_RECEIVED](https://warcraft.wiki.gg/wiki/Event:AJ_REWARD_DATA_RECEIVED "Event:AJ REWARD DATA RECEIVED")

## [AdventureMap](https://warcraft.wiki.gg/wiki/Category:API_systems/AdventureMap "Category:API systems/AdventureMap")

[ADVENTURE_MAP_CLOSE](https://warcraft.wiki.gg/wiki/Event:ADVENTURE_MAP_CLOSE "Event:ADVENTURE MAP CLOSE")

[ADVENTURE_MAP_OPEN](https://warcraft.wiki.gg/wiki/Event:ADVENTURE_MAP_OPEN "Event:ADVENTURE MAP OPEN"): followerTypeID

[ADVENTURE_MAP_QUEST_UPDATE](https://warcraft.wiki.gg/wiki/Event:ADVENTURE_MAP_QUEST_UPDATE "Event:ADVENTURE MAP QUEST UPDATE"): questID

[ADVENTURE_MAP_UPDATE_INSETS](https://warcraft.wiki.gg/wiki/Event:ADVENTURE_MAP_UPDATE_INSETS "Event:ADVENTURE MAP UPDATE INSETS")

[ADVENTURE_MAP_UPDATE_POIS](https://warcraft.wiki.gg/wiki/Event:ADVENTURE_MAP_UPDATE_POIS "Event:ADVENTURE MAP UPDATE POIS")

## [AlliedRaces](https://warcraft.wiki.gg/wiki/Category:API_systems/AlliedRaces "Category:API systems/AlliedRaces")

[ALLIED_RACE_CLOSE](https://warcraft.wiki.gg/wiki/Event:ALLIED_RACE_CLOSE "Event:ALLIED RACE CLOSE")

[ALLIED_RACE_OPEN](https://warcraft.wiki.gg/wiki/Event:ALLIED_RACE_OPEN "Event:ALLIED RACE OPEN"): raceID

## [AnimaDiversionInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/AnimaDiversionInfo "Category:API systems/AnimaDiversionInfo")

[ANIMA_DIVERSION_CLOSE](https://warcraft.wiki.gg/wiki/Event:ANIMA_DIVERSION_CLOSE "Event:ANIMA DIVERSION CLOSE")

[ANIMA_DIVERSION_OPEN](https://warcraft.wiki.gg/wiki/Event:ANIMA_DIVERSION_OPEN "Event:ANIMA DIVERSION OPEN"): info

[ANIMA_DIVERSION_TALENT_UPDATED](https://warcraft.wiki.gg/wiki/Event:ANIMA_DIVERSION_TALENT_UPDATED "Event:ANIMA DIVERSION TALENT UPDATED")

## [AreaPoiInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/AreaPoiInfo "Category:API systems/AreaPoiInfo")

[AREA_POIS_UPDATED](https://warcraft.wiki.gg/wiki/Event:AREA_POIS_UPDATED "Event:AREA POIS UPDATED")

## [ArtifactUI](https://warcraft.wiki.gg/wiki/Category:API_systems/ArtifactUI "Category:API systems/ArtifactUI")

[ARTIFACT_CLOSE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_CLOSE "Event:ARTIFACT CLOSE")

[ARTIFACT_ENDGAME_REFUND](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_ENDGAME_REFUND "Event:ARTIFACT ENDGAME REFUND"): numRefundedPowers, refundedTier, bagOrSlotIndex, slotIndex

[ARTIFACT_RELIC_FORGE_CLOSE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_RELIC_FORGE_CLOSE "Event:ARTIFACT RELIC FORGE CLOSE")

[ARTIFACT_RELIC_FORGE_PREVIEW_RELIC_CHANGED](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_RELIC_FORGE_PREVIEW_RELIC_CHANGED "Event:ARTIFACT RELIC FORGE PREVIEW RELIC CHANGED")

[ARTIFACT_RELIC_FORGE_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_RELIC_FORGE_UPDATE "Event:ARTIFACT RELIC FORGE UPDATE")

[ARTIFACT_RELIC_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_RELIC_INFO_RECEIVED "Event:ARTIFACT RELIC INFO RECEIVED")

[ARTIFACT_RESPEC_PROMPT](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_RESPEC_PROMPT "Event:ARTIFACT RESPEC PROMPT")

[ARTIFACT_TIER_CHANGED](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_TIER_CHANGED "Event:ARTIFACT TIER CHANGED"): newTier, bagOrSlotIndex, slotIndex

[ARTIFACT_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_UPDATE "Event:ARTIFACT UPDATE"): newItem

[ARTIFACT_XP_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_XP_UPDATE "Event:ARTIFACT XP UPDATE")

## [AssistedCombat](https://warcraft.wiki.gg/wiki/Category:API_systems/AssistedCombat "Category:API systems/AssistedCombat")

[ASSISTED_COMBAT_ACTION_SPELL_CAST](https://warcraft.wiki.gg/wiki/Event:ASSISTED_COMBAT_ACTION_SPELL_CAST "Event:ASSISTED COMBAT ACTION SPELL CAST")

## [AuctionHouse](https://warcraft.wiki.gg/wiki/Category:API_systems/AuctionHouse "Category:API systems/AuctionHouse")

[AUCTION_CANCELED](https://warcraft.wiki.gg/wiki/Event:AUCTION_CANCELED "Event:AUCTION CANCELED"): auctionID

[AUCTION_HOUSE_AUCTION_CREATED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_AUCTION_CREATED "Event:AUCTION HOUSE AUCTION CREATED"): auctionID

[AUCTION_HOUSE_AUCTIONS_EXPIRED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_AUCTIONS_EXPIRED "Event:AUCTION HOUSE AUCTIONS EXPIRED"): auctionID

[AUCTION_HOUSE_BROWSE_FAILURE](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_BROWSE_FAILURE "Event:AUCTION HOUSE BROWSE FAILURE")

[AUCTION_HOUSE_BROWSE_RESULTS_ADDED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_BROWSE_RESULTS_ADDED "Event:AUCTION HOUSE BROWSE RESULTS ADDED"): addedBrowseResults

[AUCTION_HOUSE_BROWSE_RESULTS_UPDATED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_BROWSE_RESULTS_UPDATED "Event:AUCTION HOUSE BROWSE RESULTS UPDATED")

[AUCTION_HOUSE_CLOSED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_CLOSED "Event:AUCTION HOUSE CLOSED")

[AUCTION_HOUSE_DISABLED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_DISABLED "Event:AUCTION HOUSE DISABLED")

[AUCTION_HOUSE_FAVORITES_UPDATED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_FAVORITES_UPDATED "Event:AUCTION HOUSE FAVORITES UPDATED")

[AUCTION_HOUSE_ITEM_DELIVERY_DELAY_UPDATE](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_ITEM_DELIVERY_DELAY_UPDATE "Event:AUCTION HOUSE ITEM DELIVERY DELAY UPDATE"): purchasedItemDeliveryDelay, cancelledItemDeliveryDelay

[AUCTION_HOUSE_NEW_BID_RECEIVED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_NEW_BID_RECEIVED "Event:AUCTION HOUSE NEW BID RECEIVED"): auctionID

[AUCTION_HOUSE_NEW_RESULTS_RECEIVED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_NEW_RESULTS_RECEIVED "Event:AUCTION HOUSE NEW RESULTS RECEIVED"): itemKey

[AUCTION_HOUSE_POST_ERROR](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_POST_ERROR "Event:AUCTION HOUSE POST ERROR")

[AUCTION_HOUSE_POST_WARNING](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_POST_WARNING "Event:AUCTION HOUSE POST WARNING")

[AUCTION_HOUSE_PURCHASE_COMPLETED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_PURCHASE_COMPLETED "Event:AUCTION HOUSE PURCHASE COMPLETED"): auctionID

[AUCTION_HOUSE_SCRIPT_DEPRECATED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SCRIPT_DEPRECATED "Event:AUCTION HOUSE SCRIPT DEPRECATED")

[AUCTION_HOUSE_SHOW](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SHOW "Event:AUCTION HOUSE SHOW")

[AUCTION_HOUSE_SHOW_COMMODITY_WON_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SHOW_COMMODITY_WON_NOTIFICATION "Event:AUCTION HOUSE SHOW COMMODITY WON NOTIFICATION"): commodityName, commodityQuantity

[AUCTION_HOUSE_SHOW_ERROR](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SHOW_ERROR "Event:AUCTION HOUSE SHOW ERROR"): error

[AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION "Event:AUCTION HOUSE SHOW FORMATTED NOTIFICATION"): notification, text, auctionID

[AUCTION_HOUSE_SHOW_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_SHOW_NOTIFICATION "Event:AUCTION HOUSE SHOW NOTIFICATION"): notification

[AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED "Event:AUCTION HOUSE THROTTLED MESSAGE DROPPED")

[AUCTION_HOUSE_THROTTLED_MESSAGE_QUEUED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_THROTTLED_MESSAGE_QUEUED "Event:AUCTION HOUSE THROTTLED MESSAGE QUEUED")

[AUCTION_HOUSE_THROTTLED_MESSAGE_RESPONSE_RECEIVED](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_THROTTLED_MESSAGE_RESPONSE_RECEIVED "Event:AUCTION HOUSE THROTTLED MESSAGE RESPONSE RECEIVED")

[AUCTION_HOUSE_THROTTLED_MESSAGE_SENT](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_THROTTLED_MESSAGE_SENT "Event:AUCTION HOUSE THROTTLED MESSAGE SENT")

[AUCTION_HOUSE_THROTTLED_SYSTEM_READY](https://warcraft.wiki.gg/wiki/Event:AUCTION_HOUSE_THROTTLED_SYSTEM_READY "Event:AUCTION HOUSE THROTTLED SYSTEM READY")

[AUCTION_MULTISELL_FAILURE](https://warcraft.wiki.gg/wiki/Event:AUCTION_MULTISELL_FAILURE "Event:AUCTION MULTISELL FAILURE")

[AUCTION_MULTISELL_START](https://warcraft.wiki.gg/wiki/Event:AUCTION_MULTISELL_START "Event:AUCTION MULTISELL START"): numRepetitions

[AUCTION_MULTISELL_UPDATE](https://warcraft.wiki.gg/wiki/Event:AUCTION_MULTISELL_UPDATE "Event:AUCTION MULTISELL UPDATE"): createdCount, totalToCreate

[BID_ADDED](https://warcraft.wiki.gg/wiki/Event:BID_ADDED "Event:BID ADDED"): bidID

[BIDS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BIDS_UPDATED "Event:BIDS UPDATED")

[COMMODITY_PRICE_UNAVAILABLE](https://warcraft.wiki.gg/wiki/Event:COMMODITY_PRICE_UNAVAILABLE "Event:COMMODITY PRICE UNAVAILABLE")

[COMMODITY_PRICE_UPDATED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_PRICE_UPDATED "Event:COMMODITY PRICE UPDATED"): updatedUnitPrice, updatedTotalPrice

[COMMODITY_PURCHASE_FAILED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_PURCHASE_FAILED "Event:COMMODITY PURCHASE FAILED")

[COMMODITY_PURCHASE_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_PURCHASE_SUCCEEDED "Event:COMMODITY PURCHASE SUCCEEDED")

[COMMODITY_PURCHASED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_PURCHASED "Event:COMMODITY PURCHASED"): itemID, quantity

[COMMODITY_SEARCH_RESULTS_ADDED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_SEARCH_RESULTS_ADDED "Event:COMMODITY SEARCH RESULTS ADDED"): itemID

[COMMODITY_SEARCH_RESULTS_RECEIVED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_SEARCH_RESULTS_RECEIVED "Event:COMMODITY SEARCH RESULTS RECEIVED")

[COMMODITY_SEARCH_RESULTS_UPDATED](https://warcraft.wiki.gg/wiki/Event:COMMODITY_SEARCH_RESULTS_UPDATED "Event:COMMODITY SEARCH RESULTS UPDATED"): itemID

[EXTRA_BROWSE_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:EXTRA_BROWSE_INFO_RECEIVED "Event:EXTRA BROWSE INFO RECEIVED"): itemID

[ITEM_KEY_ITEM_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:ITEM_KEY_ITEM_INFO_RECEIVED "Event:ITEM KEY ITEM INFO RECEIVED"): itemID

[ITEM_PURCHASED](https://warcraft.wiki.gg/wiki/Event:ITEM_PURCHASED "Event:ITEM PURCHASED"): itemID

[ITEM_SEARCH_RESULTS_ADDED](https://warcraft.wiki.gg/wiki/Event:ITEM_SEARCH_RESULTS_ADDED "Event:ITEM SEARCH RESULTS ADDED"): itemKey

[ITEM_SEARCH_RESULTS_UPDATED](https://warcraft.wiki.gg/wiki/Event:ITEM_SEARCH_RESULTS_UPDATED "Event:ITEM SEARCH RESULTS UPDATED"): itemKey, newAuctionID

[OWNED_AUCTION_BIDDER_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:OWNED_AUCTION_BIDDER_INFO_RECEIVED "Event:OWNED AUCTION BIDDER INFO RECEIVED"): auctionID, bidderName

[OWNED_AUCTIONS_UPDATED](https://warcraft.wiki.gg/wiki/Event:OWNED_AUCTIONS_UPDATED "Event:OWNED AUCTIONS UPDATED")

[REPLICATE_ITEM_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:REPLICATE_ITEM_LIST_UPDATE "Event:REPLICATE ITEM LIST UPDATE")

## [AzeriteEmpoweredItem](https://warcraft.wiki.gg/wiki/Category:API_systems/AzeriteEmpoweredItem "Category:API systems/AzeriteEmpoweredItem")

[AZERITE_EMPOWERED_ITEM_EQUIPPED_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:AZERITE_EMPOWERED_ITEM_EQUIPPED_STATUS_CHANGED "Event:AZERITE EMPOWERED ITEM EQUIPPED STATUS CHANGED"): isHeartEquipped

[AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED](https://warcraft.wiki.gg/wiki/Event:AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED "Event:AZERITE EMPOWERED ITEM SELECTION UPDATED"): azeriteEmpoweredItemLocation

## [AzeriteEssence](https://warcraft.wiki.gg/wiki/Category:API_systems/AzeriteEssence "Category:API systems/AzeriteEssence")

[AZERITE_ESSENCE_ACTIVATED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_ACTIVATED "Event:AZERITE ESSENCE ACTIVATED"): slot, essenceID

[AZERITE_ESSENCE_ACTIVATION_FAILED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_ACTIVATION_FAILED "Event:AZERITE ESSENCE ACTIVATION FAILED"): slot, essenceID

[AZERITE_ESSENCE_CHANGED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_CHANGED "Event:AZERITE ESSENCE CHANGED"): essenceID, newRank

[AZERITE_ESSENCE_FORGE_CLOSE](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_FORGE_CLOSE "Event:AZERITE ESSENCE FORGE CLOSE")

[AZERITE_ESSENCE_FORGE_OPEN](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_FORGE_OPEN "Event:AZERITE ESSENCE FORGE OPEN")

[AZERITE_ESSENCE_MILESTONE_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_MILESTONE_UNLOCKED "Event:AZERITE ESSENCE MILESTONE UNLOCKED"): milestoneID

[AZERITE_ESSENCE_UPDATE](https://warcraft.wiki.gg/wiki/Event:AZERITE_ESSENCE_UPDATE "Event:AZERITE ESSENCE UPDATE")

[PENDING_AZERITE_ESSENCE_CHANGED](https://warcraft.wiki.gg/wiki/Event:PENDING_AZERITE_ESSENCE_CHANGED "Event:PENDING AZERITE ESSENCE CHANGED"): essenceID

## [AzeriteItem](https://warcraft.wiki.gg/wiki/Category:API_systems/AzeriteItem "Category:API systems/AzeriteItem")

[AZERITE_ITEM_ENABLED_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ITEM_ENABLED_STATE_CHANGED "Event:AZERITE ITEM ENABLED STATE CHANGED"): enabled

[AZERITE_ITEM_EXPERIENCE_CHANGED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ITEM_EXPERIENCE_CHANGED "Event:AZERITE ITEM EXPERIENCE CHANGED"): azeriteItemLocation, oldExperienceAmount, newExperienceAmount

[AZERITE_ITEM_POWER_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:AZERITE_ITEM_POWER_LEVEL_CHANGED "Event:AZERITE ITEM POWER LEVEL CHANGED"): azeriteItemLocation, oldPowerLevel, newPowerLevel, unlockedEmpoweredItemsInfo, azeriteItemID

## [Bank](https://warcraft.wiki.gg/wiki/Category:API_systems/Bank "Category:API systems/Bank")

[BANK_BAG_SLOT_FLAGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BANK_BAG_SLOT_FLAGS_UPDATED "Event:BANK BAG SLOT FLAGS UPDATED"): slot

[BANK_TAB_SETTINGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BANK_TAB_SETTINGS_UPDATED "Event:BANK TAB SETTINGS UPDATED"): bankType

[BANK_TABS_CHANGED](https://warcraft.wiki.gg/wiki/Event:BANK_TABS_CHANGED "Event:BANK TABS CHANGED"): bankType

[BANKFRAME_CLOSED](https://warcraft.wiki.gg/wiki/Event:BANKFRAME_CLOSED "Event:BANKFRAME CLOSED")

[BANKFRAME_OPENED](https://warcraft.wiki.gg/wiki/Event:BANKFRAME_OPENED "Event:BANKFRAME OPENED")

[PLAYER_ACCOUNT_BANK_TAB_SLOTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_ACCOUNT_BANK_TAB_SLOTS_CHANGED "Event:PLAYER ACCOUNT BANK TAB SLOTS CHANGED"): slot

[PLAYERBANKSLOTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYERBANKSLOTS_CHANGED "Event:PLAYERBANKSLOTS CHANGED"): slot

## [BarberShop](https://warcraft.wiki.gg/wiki/Category:API_systems/BarberShop "Category:API systems/BarberShop")

[BARBER_SHOP_APPEARANCE_APPLIED](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_APPEARANCE_APPLIED "Event:BARBER SHOP APPEARANCE APPLIED")

[BARBER_SHOP_CAMERA_VALUES_UPDATED](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_CAMERA_VALUES_UPDATED "Event:BARBER SHOP CAMERA VALUES UPDATED")

[BARBER_SHOP_CLOSE](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_CLOSE "Event:BARBER SHOP CLOSE")

[BARBER_SHOP_COST_UPDATE](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_COST_UPDATE "Event:BARBER SHOP COST UPDATE")

[BARBER_SHOP_FORCE_CUSTOMIZATIONS_UPDATE](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_FORCE_CUSTOMIZATIONS_UPDATE "Event:BARBER SHOP FORCE CUSTOMIZATIONS UPDATE")

[BARBER_SHOP_OPEN](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_OPEN "Event:BARBER SHOP OPEN")

[BARBER_SHOP_RESULT](https://warcraft.wiki.gg/wiki/Event:BARBER_SHOP_RESULT "Event:BARBER SHOP RESULT"): success

## [BattlePet](https://warcraft.wiki.gg/wiki/Category:API_systems/BattlePet "Category:API systems/BattlePet")

[PET_BATTLE_ABILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_ABILITY_CHANGED "Event:PET BATTLE ABILITY CHANGED"): owner, petIndex, abilityID

[PET_BATTLE_ACTION_SELECTED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_ACTION_SELECTED "Event:PET BATTLE ACTION SELECTED")

[PET_BATTLE_AURA_APPLIED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_AURA_APPLIED "Event:PET BATTLE AURA APPLIED"): owner, petIndex, auraInstanceID

[PET_BATTLE_AURA_CANCELED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_AURA_CANCELED "Event:PET BATTLE AURA CANCELED"): owner, petIndex, auraInstanceID

[PET_BATTLE_AURA_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_AURA_CHANGED "Event:PET BATTLE AURA CHANGED"): owner, petIndex, auraInstanceID

[PET_BATTLE_CAPTURED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_CAPTURED "Event:PET BATTLE CAPTURED"): owner, petIndex

[PET_BATTLE_CLOSE](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_CLOSE "Event:PET BATTLE CLOSE")

[PET_BATTLE_FINAL_ROUND](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_FINAL_ROUND "Event:PET BATTLE FINAL ROUND"): owner

[PET_BATTLE_HEALTH_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_HEALTH_CHANGED "Event:PET BATTLE HEALTH CHANGED"): owner, petIndex, healthChange

[PET_BATTLE_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_LEVEL_CHANGED "Event:PET BATTLE LEVEL CHANGED"): owner, petIndex, newLevel

[PET_BATTLE_MAX_HEALTH_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_MAX_HEALTH_CHANGED "Event:PET BATTLE MAX HEALTH CHANGED"): owner, petIndex, healthChange

[PET_BATTLE_OPENING_DONE](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_OPENING_DONE "Event:PET BATTLE OPENING DONE")

[PET_BATTLE_OPENING_START](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_OPENING_START "Event:PET BATTLE OPENING START")

[PET_BATTLE_OVER](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_OVER "Event:PET BATTLE OVER")

[PET_BATTLE_OVERRIDE_ABILITY](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_OVERRIDE_ABILITY "Event:PET BATTLE OVERRIDE ABILITY"): abilityIndex

[PET_BATTLE_PET_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PET_CHANGED "Event:PET BATTLE PET CHANGED"): owner

[PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE "Event:PET BATTLE PET ROUND PLAYBACK COMPLETE"): roundNumber

[PET_BATTLE_PET_ROUND_RESULTS](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PET_ROUND_RESULTS "Event:PET BATTLE PET ROUND RESULTS"): roundNumber

[PET_BATTLE_PET_TYPE_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PET_TYPE_CHANGED "Event:PET BATTLE PET TYPE CHANGED"): owner, petIndex, stateValue

[PET_BATTLE_PVP_DUEL_REQUEST_CANCEL](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PVP_DUEL_REQUEST_CANCEL "Event:PET BATTLE PVP DUEL REQUEST CANCEL")

[PET_BATTLE_PVP_DUEL_REQUESTED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_PVP_DUEL_REQUESTED "Event:PET BATTLE PVP DUEL REQUESTED"): fullName

[PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED "Event:PET BATTLE QUEUE PROPOSAL ACCEPTED")

[PET_BATTLE_QUEUE_PROPOSAL_DECLINED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_QUEUE_PROPOSAL_DECLINED "Event:PET BATTLE QUEUE PROPOSAL DECLINED")

[PET_BATTLE_QUEUE_PROPOSE_MATCH](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_QUEUE_PROPOSE_MATCH "Event:PET BATTLE QUEUE PROPOSE MATCH")

[PET_BATTLE_QUEUE_STATUS](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_QUEUE_STATUS "Event:PET BATTLE QUEUE STATUS")

[PET_BATTLE_XP_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_XP_CHANGED "Event:PET BATTLE XP CHANGED"): owner, petIndex, xpChange

## [BehavioralMessaging](https://warcraft.wiki.gg/wiki/Category:API_systems/BehavioralMessaging "Category:API systems/BehavioralMessaging")

[BEHAVIORAL_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:BEHAVIORAL_NOTIFICATION "Event:BEHAVIORAL NOTIFICATION"): notificationType, dbId

## [BlackMarketInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/BlackMarketInfo "Category:API systems/BlackMarketInfo")

[BLACK_MARKET_BID_RESULT](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_BID_RESULT "Event:BLACK MARKET BID RESULT"): marketID, resultCode

[BLACK_MARKET_CLOSE](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_CLOSE "Event:BLACK MARKET CLOSE")

[BLACK_MARKET_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_ITEM_UPDATE "Event:BLACK MARKET ITEM UPDATE")

[BLACK_MARKET_OPEN](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_OPEN "Event:BLACK MARKET OPEN")

[BLACK_MARKET_OUTBID](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_OUTBID "Event:BLACK MARKET OUTBID"): marketID, itemID

[BLACK_MARKET_UNAVAILABLE](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_UNAVAILABLE "Event:BLACK MARKET UNAVAILABLE")

[BLACK_MARKET_WON](https://warcraft.wiki.gg/wiki/Event:BLACK_MARKET_WON "Event:BLACK MARKET WON"): marketID, itemID

## [Browser](https://warcraft.wiki.gg/wiki/Category:API_systems/Browser "Category:API systems/Browser")

[FULLSCREEN_BROWSER_SPINNER_HIDE](https://warcraft.wiki.gg/wiki/Event:FULLSCREEN_BROWSER_SPINNER_HIDE "Event:FULLSCREEN BROWSER SPINNER HIDE")

[FULLSCREEN_BROWSER_SPINNER_SHOW](https://warcraft.wiki.gg/wiki/Event:FULLSCREEN_BROWSER_SPINNER_SHOW "Event:FULLSCREEN BROWSER SPINNER SHOW")

[SIMPLE_BROWSER_POPUP](https://warcraft.wiki.gg/wiki/Event:SIMPLE_BROWSER_POPUP "Event:SIMPLE BROWSER POPUP"): url

[SIMPLE_BROWSER_SOCIAL_CALLBACK_INVOKED](https://warcraft.wiki.gg/wiki/Event:SIMPLE_BROWSER_SOCIAL_CALLBACK_INVOKED "Event:SIMPLE BROWSER SOCIAL CALLBACK INVOKED"): url

[SIMPLE_BROWSER_WEB_ERROR](https://warcraft.wiki.gg/wiki/Event:SIMPLE_BROWSER_WEB_ERROR "Event:SIMPLE BROWSER WEB ERROR"): errorCode

[SIMPLE_BROWSER_WEB_PROXY_FAILED](https://warcraft.wiki.gg/wiki/Event:SIMPLE_BROWSER_WEB_PROXY_FAILED "Event:SIMPLE BROWSER WEB PROXY FAILED")

[SIMPLE_CHECKOUT_CLOSED](https://warcraft.wiki.gg/wiki/Event:SIMPLE_CHECKOUT_CLOSED "Event:SIMPLE CHECKOUT CLOSED")

## [Calendar](https://warcraft.wiki.gg/wiki/Category:API_systems/Calendar "Category:API systems/Calendar")

[CALENDAR_ACTION_PENDING](https://warcraft.wiki.gg/wiki/Event:CALENDAR_ACTION_PENDING "Event:CALENDAR ACTION PENDING"): pending

[CALENDAR_CLOSE_EVENT](https://warcraft.wiki.gg/wiki/Event:CALENDAR_CLOSE_EVENT "Event:CALENDAR CLOSE EVENT")

[CALENDAR_EVENT_ALARM](https://warcraft.wiki.gg/wiki/Event:CALENDAR_EVENT_ALARM "Event:CALENDAR EVENT ALARM"): title, hour, minute

[CALENDAR_NEW_EVENT](https://warcraft.wiki.gg/wiki/Event:CALENDAR_NEW_EVENT "Event:CALENDAR NEW EVENT"): isCopy

[CALENDAR_OPEN_EVENT](https://warcraft.wiki.gg/wiki/Event:CALENDAR_OPEN_EVENT "Event:CALENDAR OPEN EVENT"): calendarType

[CALENDAR_UPDATE_ERROR](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_ERROR "Event:CALENDAR UPDATE ERROR"): errorReason

[CALENDAR_UPDATE_ERROR_WITH_COUNT](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_ERROR_WITH_COUNT "Event:CALENDAR UPDATE ERROR WITH COUNT"): errorReason, count

[CALENDAR_UPDATE_ERROR_WITH_PLAYER_NAME](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_ERROR_WITH_PLAYER_NAME "Event:CALENDAR UPDATE ERROR WITH PLAYER NAME"): errorReason, playerName

[CALENDAR_UPDATE_EVENT](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_EVENT "Event:CALENDAR UPDATE EVENT")

[CALENDAR_UPDATE_EVENT_LIST](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_EVENT_LIST "Event:CALENDAR UPDATE EVENT LIST")

[CALENDAR_UPDATE_GUILD_EVENTS](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_GUILD_EVENTS "Event:CALENDAR UPDATE GUILD EVENTS")

[CALENDAR_UPDATE_INVITE_LIST](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_INVITE_LIST "Event:CALENDAR UPDATE INVITE LIST"): hasCompleteList

[CALENDAR_UPDATE_PENDING_INVITES](https://warcraft.wiki.gg/wiki/Event:CALENDAR_UPDATE_PENDING_INVITES "Event:CALENDAR UPDATE PENDING INVITES")

## [CatalogShop](https://warcraft.wiki.gg/wiki/Category:API_systems/CatalogShop "Category:API systems/CatalogShop")

[BULK_PURCHASE_RESULT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:BULK_PURCHASE_RESULT_RECEIVED "Event:BULK PURCHASE RESULT RECEIVED"): result, productResults, bestTopUpProductID, totalCost

[BULK_REFUND_RESULT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:BULK_REFUND_RESULT_RECEIVED "Event:BULK REFUND RESULT RECEIVED"): result

[CATALOG_SHOP_ADD_PENDING_PRODUCT](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_ADD_PENDING_PRODUCT "Event:CATALOG SHOP ADD PENDING PRODUCT"): productID

[CATALOG_SHOP_DATA_REFRESH](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_DATA_REFRESH "Event:CATALOG SHOP DATA REFRESH"): shoppingSessionUUIDStr

[CATALOG_SHOP_DISABLED](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_DISABLED "Event:CATALOG SHOP DISABLED")

[CATALOG_SHOP_FETCH_FAILURE](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_FETCH_FAILURE "Event:CATALOG SHOP FETCH FAILURE"): shoppingSessionUUIDStr

[CATALOG_SHOP_FETCH_SUCCESS](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_FETCH_SUCCESS "Event:CATALOG SHOP FETCH SUCCESS"): shoppingSessionUUIDStr

[CATALOG_SHOP_OPEN_SIMPLE_CHECKOUT](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_OPEN_SIMPLE_CHECKOUT "Event:CATALOG SHOP OPEN SIMPLE CHECKOUT"): checkoutID

[CATALOG_SHOP_PURCHASE_SUCCESS](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_PURCHASE_SUCCESS "Event:CATALOG SHOP PURCHASE SUCCESS"): productID

[CATALOG_SHOP_REBUILD_SCROLL_BOX](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_REBUILD_SCROLL_BOX "Event:CATALOG SHOP REBUILD SCROLL BOX")

[CATALOG_SHOP_REFUNDABLE_DECORS_UPDATED](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_REFUNDABLE_DECORS_UPDATED "Event:CATALOG SHOP REFUNDABLE DECORS UPDATED")

[CATALOG_SHOP_REMOVE_PENDING_PRODUCT](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_REMOVE_PENDING_PRODUCT "Event:CATALOG SHOP REMOVE PENDING PRODUCT"): productID

[CATALOG_SHOP_RESULT_ERROR](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_RESULT_ERROR "Event:CATALOG SHOP RESULT ERROR")

[CATALOG_SHOP_SPECIFIC_PRODUCT_REFRESH](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_SPECIFIC_PRODUCT_REFRESH "Event:CATALOG SHOP SPECIFIC PRODUCT REFRESH"): productID

[CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE "Event:CATALOG SHOP VIRTUAL CURRENCY BALANCE UPDATE"): currencyCode, balance

[CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE_FAILURE](https://warcraft.wiki.gg/wiki/Event:CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE_FAILURE "Event:CATALOG SHOP VIRTUAL CURRENCY BALANCE UPDATE FAILURE"): currencyCode

[SET_SEEN_PRODUCTS](https://warcraft.wiki.gg/wiki/Event:SET_SEEN_PRODUCTS "Event:SET SEEN PRODUCTS"): productIds

[SHOW_NEW_PRODUCT_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:SHOW_NEW_PRODUCT_NOTIFICATION "Event:SHOW NEW PRODUCT NOTIFICATION")

## [ChallengeModeInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ChallengeModeInfo "Category:API systems/ChallengeModeInfo")

[CHALLENGE_MODE_COMPLETED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_COMPLETED "Event:CHALLENGE MODE COMPLETED")

[CHALLENGE_MODE_COMPLETED_REWARDS](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_COMPLETED_REWARDS "Event:CHALLENGE MODE COMPLETED REWARDS"): mapID, medal, timeMS, money, rewards

[CHALLENGE_MODE_DEATH_COUNT_UPDATED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_DEATH_COUNT_UPDATED "Event:CHALLENGE MODE DEATH COUNT UPDATED")

[CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN "Event:CHALLENGE MODE KEYSTONE RECEPTABLE OPEN")

[CHALLENGE_MODE_KEYSTONE_SLOTTED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_KEYSTONE_SLOTTED "Event:CHALLENGE MODE KEYSTONE SLOTTED"): keystoneID

[CHALLENGE_MODE_LEADERBOARD_RESULT](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_LEADERBOARD_RESULT "Event:CHALLENGE MODE LEADERBOARD RESULT"): mapID, challengeModeID, page, results

[CHALLENGE_MODE_LEADERS_UPDATE](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_LEADERS_UPDATE "Event:CHALLENGE MODE LEADERS UPDATE")

[CHALLENGE_MODE_LEAVER_TIMER_ENDED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_LEAVER_TIMER_ENDED "Event:CHALLENGE MODE LEAVER TIMER ENDED")

[CHALLENGE_MODE_LEAVER_TIMER_STARTED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_LEAVER_TIMER_STARTED "Event:CHALLENGE MODE LEAVER TIMER STARTED")

[CHALLENGE_MODE_MAPS_UPDATE](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_MAPS_UPDATE "Event:CHALLENGE MODE MAPS UPDATE")

[CHALLENGE_MODE_MEMBER_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_MEMBER_INFO_UPDATED "Event:CHALLENGE MODE MEMBER INFO UPDATED")

[CHALLENGE_MODE_NEW_RECORD](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_NEW_RECORD "Event:CHALLENGE MODE NEW RECORD"): mapID, timeMS, medal

[CHALLENGE_MODE_RESET](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_RESET "Event:CHALLENGE MODE RESET"): mapID

[CHALLENGE_MODE_START](https://warcraft.wiki.gg/wiki/Event:CHALLENGE_MODE_START "Event:CHALLENGE MODE START"): mapID

## [ChatInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ChatInfo "Category:API systems/ChatInfo")

[ALTERNATIVE_DEFAULT_LANGUAGE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ALTERNATIVE_DEFAULT_LANGUAGE_CHANGED "Event:ALTERNATIVE DEFAULT LANGUAGE CHANGED")

[BN_CHAT_MSG_ADDON](https://warcraft.wiki.gg/wiki/Event:BN_CHAT_MSG_ADDON "Event:BN CHAT MSG ADDON"): prefix, text, channel, senderID

[CAN_LOCAL_WHISPER_TARGET_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CAN_LOCAL_WHISPER_TARGET_RESPONSE "Event:CAN LOCAL WHISPER TARGET RESPONSE"): whisperTarget, status

[CAN_PLAYER_SPEAK_LANGUAGE_CHANGED](https://warcraft.wiki.gg/wiki/Event:CAN_PLAYER_SPEAK_LANGUAGE_CHANGED "Event:CAN PLAYER SPEAK LANGUAGE CHANGED"): languageId, canSpeakLanguage

[CAUTIONARY_CHANNEL_MESSAGE](https://warcraft.wiki.gg/wiki/Event:CAUTIONARY_CHANNEL_MESSAGE "Event:CAUTIONARY CHANNEL MESSAGE"): confirmNumber

[CAUTIONARY_CHAT_MESSAGE](https://warcraft.wiki.gg/wiki/Event:CAUTIONARY_CHAT_MESSAGE "Event:CAUTIONARY CHAT MESSAGE"): chatLineID, confirmNumber

[CHANNEL_COUNT_UPDATE](https://warcraft.wiki.gg/wiki/Event:CHANNEL_COUNT_UPDATE "Event:CHANNEL COUNT UPDATE"): displayIndex, count

[CHANNEL_FLAGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:CHANNEL_FLAGS_UPDATED "Event:CHANNEL FLAGS UPDATED"): displayIndex

[CHANNEL_INVITE_REQUEST](https://warcraft.wiki.gg/wiki/Event:CHANNEL_INVITE_REQUEST "Event:CHANNEL INVITE REQUEST"): channelID, name

[CHANNEL_LEFT](https://warcraft.wiki.gg/wiki/Event:CHANNEL_LEFT "Event:CHANNEL LEFT"): chatChannelID, name

[CHANNEL_PASSWORD_REQUEST](https://warcraft.wiki.gg/wiki/Event:CHANNEL_PASSWORD_REQUEST "Event:CHANNEL PASSWORD REQUEST"): channelID

[CHANNEL_ROSTER_UPDATE](https://warcraft.wiki.gg/wiki/Event:CHANNEL_ROSTER_UPDATE "Event:CHANNEL ROSTER UPDATE"): displayIndex, count

[CHANNEL_UI_UPDATE](https://warcraft.wiki.gg/wiki/Event:CHANNEL_UI_UPDATE "Event:CHANNEL UI UPDATE")

[CHAT_COMBAT_MSG_ARENA_POINTS_GAIN](https://warcraft.wiki.gg/wiki/Event:CHAT_COMBAT_MSG_ARENA_POINTS_GAIN "Event:CHAT COMBAT MSG ARENA POINTS GAIN"): *CHAT_MSG*

[CHAT_LOGGING_CHANGED](https://warcraft.wiki.gg/wiki/Event:CHAT_LOGGING_CHANGED "Event:CHAT LOGGING CHANGED"): whichLog, isEnabled

[CHAT_MSG_ACHIEVEMENT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_ACHIEVEMENT "Event:CHAT MSG ACHIEVEMENT"): *CHAT_MSG*

[CHAT_MSG_ADDON](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_ADDON "Event:CHAT MSG ADDON"): prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID

[CHAT_MSG_ADDON_LOGGED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_ADDON_LOGGED "Event:CHAT MSG ADDON LOGGED"): prefix, text, channel, sender, target, zoneChannelID, localID, name, instanceID

[CHAT_MSG_AFK](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_AFK "Event:CHAT MSG AFK"): *CHAT_MSG*

[CHAT_MSG_BG_SYSTEM_ALLIANCE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BG_SYSTEM_ALLIANCE "Event:CHAT MSG BG SYSTEM ALLIANCE"): *CHAT_MSG*

[CHAT_MSG_BG_SYSTEM_HORDE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BG_SYSTEM_HORDE "Event:CHAT MSG BG SYSTEM HORDE"): *CHAT_MSG*

[CHAT_MSG_BG_SYSTEM_NEUTRAL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BG_SYSTEM_NEUTRAL "Event:CHAT MSG BG SYSTEM NEUTRAL"): *CHAT_MSG*

[CHAT_MSG_BN](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN "Event:CHAT MSG BN"): *CHAT_MSG*

[CHAT_MSG_BN_INLINE_TOAST_ALERT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_INLINE_TOAST_ALERT "Event:CHAT MSG BN INLINE TOAST ALERT"): *CHAT_MSG*

[CHAT_MSG_BN_INLINE_TOAST_BROADCAST](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_INLINE_TOAST_BROADCAST "Event:CHAT MSG BN INLINE TOAST BROADCAST"): *CHAT_MSG*

[CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM "Event:CHAT MSG BN INLINE TOAST BROADCAST INFORM"): *CHAT_MSG*

[CHAT_MSG_BN_INLINE_TOAST_CONVERSATION](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_INLINE_TOAST_CONVERSATION "Event:CHAT MSG BN INLINE TOAST CONVERSATION"): *CHAT_MSG*

[CHAT_MSG_BN_WHISPER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_WHISPER "Event:CHAT MSG BN WHISPER"): *CHAT_MSG*

[CHAT_MSG_BN_WHISPER_INFORM](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_WHISPER_INFORM "Event:CHAT MSG BN WHISPER INFORM"): *CHAT_MSG*

[CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE "Event:CHAT MSG BN WHISPER PLAYER OFFLINE"): *CHAT_MSG*

[CHAT_MSG_CHANNEL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL "Event:CHAT MSG CHANNEL"): *CHAT_MSG*

[CHAT_MSG_CHANNEL_JOIN](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_JOIN "Event:CHAT MSG CHANNEL JOIN"): *CHAT_MSG*

[CHAT_MSG_CHANNEL_LEAVE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_LEAVE "Event:CHAT MSG CHANNEL LEAVE"): *CHAT_MSG*

[CHAT_MSG_CHANNEL_LEAVE_PREVENTED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_LEAVE_PREVENTED "Event:CHAT MSG CHANNEL LEAVE PREVENTED"): channelName

[CHAT_MSG_CHANNEL_LIST](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_LIST "Event:CHAT MSG CHANNEL LIST"): *CHAT_MSG*

[CHAT_MSG_CHANNEL_NOTICE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_NOTICE "Event:CHAT MSG CHANNEL NOTICE"): *CHAT_MSG*

[CHAT_MSG_CHANNEL_NOTICE_USER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL_NOTICE_USER "Event:CHAT MSG CHANNEL NOTICE USER"): *CHAT_MSG*

[CHAT_MSG_COMBAT_FACTION_CHANGE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_COMBAT_FACTION_CHANGE "Event:CHAT MSG COMBAT FACTION CHANGE"): *CHAT_MSG*

[CHAT_MSG_COMBAT_HONOR_GAIN](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_COMBAT_HONOR_GAIN "Event:CHAT MSG COMBAT HONOR GAIN"): *CHAT_MSG*

[CHAT_MSG_COMBAT_MISC_INFO](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_COMBAT_MISC_INFO "Event:CHAT MSG COMBAT MISC INFO"): *CHAT_MSG*

[CHAT_MSG_COMBAT_XP_GAIN](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_COMBAT_XP_GAIN "Event:CHAT MSG COMBAT XP GAIN"): *CHAT_MSG*

[CHAT_MSG_COMMUNITIES_CHANNEL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_COMMUNITIES_CHANNEL "Event:CHAT MSG COMMUNITIES CHANNEL"): *CHAT_MSG*

[CHAT_MSG_CURRENCY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CURRENCY "Event:CHAT MSG CURRENCY"): *CHAT_MSG*

[CHAT_MSG_DND](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_DND "Event:CHAT MSG DND"): *CHAT_MSG*

[CHAT_MSG_EMOTE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_EMOTE "Event:CHAT MSG EMOTE"): *CHAT_MSG*

[CHAT_MSG_FILTERED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_FILTERED "Event:CHAT MSG FILTERED"): *CHAT_MSG*

[CHAT_MSG_GUILD](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_GUILD "Event:CHAT MSG GUILD"): *CHAT_MSG*

[CHAT_MSG_GUILD_ACHIEVEMENT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_GUILD_ACHIEVEMENT "Event:CHAT MSG GUILD ACHIEVEMENT"): *CHAT_MSG*

[CHAT_MSG_GUILD_DISCORD](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_GUILD_DISCORD "Event:CHAT MSG GUILD DISCORD"): *CHAT_MSG*

[CHAT_MSG_GUILD_ITEM_LOOTED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_GUILD_ITEM_LOOTED "Event:CHAT MSG GUILD ITEM LOOTED"): *CHAT_MSG*

[CHAT_MSG_IGNORED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_IGNORED "Event:CHAT MSG IGNORED"): *CHAT_MSG*

[CHAT_MSG_INSTANCE_CHAT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_INSTANCE_CHAT "Event:CHAT MSG INSTANCE CHAT"): *CHAT_MSG*

[CHAT_MSG_INSTANCE_CHAT_LEADER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_INSTANCE_CHAT_LEADER "Event:CHAT MSG INSTANCE CHAT LEADER"): *CHAT_MSG*

[CHAT_MSG_LOOT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_LOOT "Event:CHAT MSG LOOT"): *CHAT_MSG*

[CHAT_MSG_MONEY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONEY "Event:CHAT MSG MONEY"): *CHAT_MSG*

[CHAT_MSG_MONSTER_EMOTE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONSTER_EMOTE "Event:CHAT MSG MONSTER EMOTE"): *CHAT_MSG*

[CHAT_MSG_MONSTER_PARTY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONSTER_PARTY "Event:CHAT MSG MONSTER PARTY"): *CHAT_MSG*

[CHAT_MSG_MONSTER_SAY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONSTER_SAY "Event:CHAT MSG MONSTER SAY"): *CHAT_MSG*

[CHAT_MSG_MONSTER_WHISPER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONSTER_WHISPER "Event:CHAT MSG MONSTER WHISPER"): *CHAT_MSG*

[CHAT_MSG_MONSTER_YELL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_MONSTER_YELL "Event:CHAT MSG MONSTER YELL"): *CHAT_MSG*

[CHAT_MSG_OFFICER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_OFFICER "Event:CHAT MSG OFFICER"): *CHAT_MSG*

[CHAT_MSG_OPENING](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_OPENING "Event:CHAT MSG OPENING"): *CHAT_MSG*

[CHAT_MSG_PARTY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PARTY "Event:CHAT MSG PARTY"): *CHAT_MSG*

[CHAT_MSG_PARTY_LEADER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PARTY_LEADER "Event:CHAT MSG PARTY LEADER"): *CHAT_MSG*

[CHAT_MSG_PET_BATTLE_COMBAT_LOG](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PET_BATTLE_COMBAT_LOG "Event:CHAT MSG PET BATTLE COMBAT LOG"): *CHAT_MSG*

[CHAT_MSG_PET_BATTLE_INFO](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PET_BATTLE_INFO "Event:CHAT MSG PET BATTLE INFO"): *CHAT_MSG*

[CHAT_MSG_PET_INFO](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PET_INFO "Event:CHAT MSG PET INFO"): *CHAT_MSG*

[CHAT_MSG_PING](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_PING "Event:CHAT MSG PING"): *CHAT_MSG*

[CHAT_MSG_RAID](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RAID "Event:CHAT MSG RAID"): *CHAT_MSG*

[CHAT_MSG_RAID_BOSS_EMOTE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RAID_BOSS_EMOTE "Event:CHAT MSG RAID BOSS EMOTE"): *CHAT_MSG*

[CHAT_MSG_RAID_BOSS_WHISPER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RAID_BOSS_WHISPER "Event:CHAT MSG RAID BOSS WHISPER"): *CHAT_MSG*

[CHAT_MSG_RAID_LEADER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RAID_LEADER "Event:CHAT MSG RAID LEADER"): *CHAT_MSG*

[CHAT_MSG_RAID_WARNING](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RAID_WARNING "Event:CHAT MSG RAID WARNING"): *CHAT_MSG*

[CHAT_MSG_RESTRICTED](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_RESTRICTED "Event:CHAT MSG RESTRICTED"): *CHAT_MSG*

[CHAT_MSG_SAY](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_SAY "Event:CHAT MSG SAY"): *CHAT_MSG*

[CHAT_MSG_SKILL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_SKILL "Event:CHAT MSG SKILL"): *CHAT_MSG*

[CHAT_MSG_SYSTEM](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_SYSTEM "Event:CHAT MSG SYSTEM"): *CHAT_MSG*

[CHAT_MSG_TARGETICONS](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_TARGETICONS "Event:CHAT MSG TARGETICONS"): *CHAT_MSG*

[CHAT_MSG_TEXT_EMOTE](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_TEXT_EMOTE "Event:CHAT MSG TEXT EMOTE"): *CHAT_MSG*

[CHAT_MSG_TRADESKILLS](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_TRADESKILLS "Event:CHAT MSG TRADESKILLS"): *CHAT_MSG*

[CHAT_MSG_VOICE_TEXT](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_VOICE_TEXT "Event:CHAT MSG VOICE TEXT"): *CHAT_MSG*

[CHAT_MSG_WHISPER](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_WHISPER "Event:CHAT MSG WHISPER"): *CHAT_MSG*

[CHAT_MSG_WHISPER_INFORM](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_WHISPER_INFORM "Event:CHAT MSG WHISPER INFORM"): *CHAT_MSG*

[CHAT_MSG_YELL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_YELL "Event:CHAT MSG YELL"): *CHAT_MSG*

[CHAT_REGIONAL_SEND_FAILED](https://warcraft.wiki.gg/wiki/Event:CHAT_REGIONAL_SEND_FAILED "Event:CHAT REGIONAL SEND FAILED")

[CHAT_REGIONAL_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:CHAT_REGIONAL_STATUS_CHANGED "Event:CHAT REGIONAL STATUS CHANGED"): isServiceAvailable

[CHAT_SERVER_DISCONNECTED](https://warcraft.wiki.gg/wiki/Event:CHAT_SERVER_DISCONNECTED "Event:CHAT SERVER DISCONNECTED"): isInitialMessage

[CHAT_SERVER_RECONNECTED](https://warcraft.wiki.gg/wiki/Event:CHAT_SERVER_RECONNECTED "Event:CHAT SERVER RECONNECTED")

[CLEAR_BOSS_EMOTES](https://warcraft.wiki.gg/wiki/Event:CLEAR_BOSS_EMOTES "Event:CLEAR BOSS EMOTES")

[DAILY_RESET_INSTANCE_WELCOME](https://warcraft.wiki.gg/wiki/Event:DAILY_RESET_INSTANCE_WELCOME "Event:DAILY RESET INSTANCE WELCOME"): mapname, timeLeft

[INSTANCE_RESET_WARNING](https://warcraft.wiki.gg/wiki/Event:INSTANCE_RESET_WARNING "Event:INSTANCE RESET WARNING"): warningMessage, timeLeft

[LANGUAGE_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:LANGUAGE_LIST_CHANGED "Event:LANGUAGE LIST CHANGED")

[NOTIFY_CHAT_SUPPRESSED](https://warcraft.wiki.gg/wiki/Event:NOTIFY_CHAT_SUPPRESSED "Event:NOTIFY CHAT SUPPRESSED")

[QUEST_BOSS_EMOTE](https://warcraft.wiki.gg/wiki/Event:QUEST_BOSS_EMOTE "Event:QUEST BOSS EMOTE"): text, playerName, displayTime, enableBossEmoteWarningSound

[RAID_BOSS_EMOTE](https://warcraft.wiki.gg/wiki/Event:RAID_BOSS_EMOTE "Event:RAID BOSS EMOTE"): text, playerName, displayTime, enableBossEmoteWarningSound

[RAID_BOSS_WHISPER](https://warcraft.wiki.gg/wiki/Event:RAID_BOSS_WHISPER "Event:RAID BOSS WHISPER"): text, playerName, displayTime, enableBossEmoteWarningSound

[RAID_INSTANCE_WELCOME](https://warcraft.wiki.gg/wiki/Event:RAID_INSTANCE_WELCOME "Event:RAID INSTANCE WELCOME"): mapname, timeLeft, locked, extended

[UPDATE_CHAT_COLOR](https://warcraft.wiki.gg/wiki/Event:UPDATE_CHAT_COLOR "Event:UPDATE CHAT COLOR"): name, r, g, b

[UPDATE_CHAT_COLOR_NAME_BY_CLASS](https://warcraft.wiki.gg/wiki/Event:UPDATE_CHAT_COLOR_NAME_BY_CLASS "Event:UPDATE CHAT COLOR NAME BY CLASS"): name, colorNameByClass

[UPDATE_CHAT_WINDOWS](https://warcraft.wiki.gg/wiki/Event:UPDATE_CHAT_WINDOWS "Event:UPDATE CHAT WINDOWS")

[UPDATE_FLOATING_CHAT_WINDOWS](https://warcraft.wiki.gg/wiki/Event:UPDATE_FLOATING_CHAT_WINDOWS "Event:UPDATE FLOATING CHAT WINDOWS")

## [Cinematic](https://warcraft.wiki.gg/wiki/Category:API_systems/Cinematic "Category:API systems/Cinematic")

[CINEMATIC_START](https://warcraft.wiki.gg/wiki/Event:CINEMATIC_START "Event:CINEMATIC START"): canBeCancelled, forcedAspectRatio

[CINEMATIC_STOP](https://warcraft.wiki.gg/wiki/Event:CINEMATIC_STOP "Event:CINEMATIC STOP")

[HIDE_SUBTITLE](https://warcraft.wiki.gg/wiki/Event:HIDE_SUBTITLE "Event:HIDE SUBTITLE")

[PLAY_MOVIE](https://warcraft.wiki.gg/wiki/Event:PLAY_MOVIE "Event:PLAY MOVIE"): movieID

[SHOW_SUBTITLE](https://warcraft.wiki.gg/wiki/Event:SHOW_SUBTITLE "Event:SHOW SUBTITLE"): subtitle, sender

[STOP_MOVIE](https://warcraft.wiki.gg/wiki/Event:STOP_MOVIE "Event:STOP MOVIE")

## [ClassTalents](https://warcraft.wiki.gg/wiki/Category:API_systems/ClassTalents "Category:API systems/ClassTalents")

[ACTIVE_COMBAT_CONFIG_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTIVE_COMBAT_CONFIG_CHANGED "Event:ACTIVE COMBAT CONFIG CHANGED"): configID

[CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_INDEX](https://warcraft.wiki.gg/wiki/Event:CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_INDEX "Event:CLASS TALENTS SWITCH TO LOADOUT BY INDEX"): loadoutIndex

[CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_NAME](https://warcraft.wiki.gg/wiki/Event:CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_NAME "Event:CLASS TALENTS SWITCH TO LOADOUT BY NAME"): loadoutName

[CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_INDEX](https://warcraft.wiki.gg/wiki/Event:CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_INDEX "Event:CLASS TALENTS SWITCH TO SPECIALIZATION BY INDEX"): specIndex

[CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_NAME](https://warcraft.wiki.gg/wiki/Event:CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_NAME "Event:CLASS TALENTS SWITCH TO SPECIALIZATION BY NAME"): specName

[SELECTED_LOADOUT_CHANGED](https://warcraft.wiki.gg/wiki/Event:SELECTED_LOADOUT_CHANGED "Event:SELECTED LOADOUT CHANGED")

[SPECIALIZATION_CHANGE_CAST_FAILED](https://warcraft.wiki.gg/wiki/Event:SPECIALIZATION_CHANGE_CAST_FAILED "Event:SPECIALIZATION CHANGE CAST FAILED")

[STARTER_BUILD_ACTIVATION_FAILED](https://warcraft.wiki.gg/wiki/Event:STARTER_BUILD_ACTIVATION_FAILED "Event:STARTER BUILD ACTIVATION FAILED")

## [ClassTrial](https://warcraft.wiki.gg/wiki/Category:API_systems/ClassTrial "Category:API systems/ClassTrial")

[CLASS_TRIAL_TIMER_START](https://warcraft.wiki.gg/wiki/Event:CLASS_TRIAL_TIMER_START "Event:CLASS TRIAL TIMER START")

[CLASS_TRIAL_UPGRADE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:CLASS_TRIAL_UPGRADE_COMPLETE "Event:CLASS TRIAL UPGRADE COMPLETE")

## [ClickBindings](https://warcraft.wiki.gg/wiki/Category:API_systems/ClickBindings "Category:API systems/ClickBindings")

[CLICKBINDINGS_SET_HIGHLIGHTS_SHOWN](https://warcraft.wiki.gg/wiki/Event:CLICKBINDINGS_SET_HIGHLIGHTS_SHOWN "Event:CLICKBINDINGS SET HIGHLIGHTS SHOWN"): showHighlights

## [ClientScene](https://warcraft.wiki.gg/wiki/Category:API_systems/ClientScene "Category:API systems/ClientScene")

[CLIENT_SCENE_CLOSED](https://warcraft.wiki.gg/wiki/Event:CLIENT_SCENE_CLOSED "Event:CLIENT SCENE CLOSED")

[CLIENT_SCENE_OPENED](https://warcraft.wiki.gg/wiki/Event:CLIENT_SCENE_OPENED "Event:CLIENT SCENE OPENED"): sceneType

## [Club](https://warcraft.wiki.gg/wiki/Category:API_systems/Club "Category:API systems/Club")

[AVATAR_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:AVATAR_LIST_UPDATED "Event:AVATAR LIST UPDATED"): clubType

[CLUB_ADDED](https://warcraft.wiki.gg/wiki/Event:CLUB_ADDED "Event:CLUB ADDED"): clubId

[CLUB_ERROR](https://warcraft.wiki.gg/wiki/Event:CLUB_ERROR "Event:CLUB ERROR"): action, error, clubType

[CLUB_INVITATION_ADDED_FOR_SELF](https://warcraft.wiki.gg/wiki/Event:CLUB_INVITATION_ADDED_FOR_SELF "Event:CLUB INVITATION ADDED FOR SELF"): invitation

[CLUB_INVITATION_REMOVED_FOR_SELF](https://warcraft.wiki.gg/wiki/Event:CLUB_INVITATION_REMOVED_FOR_SELF "Event:CLUB INVITATION REMOVED FOR SELF"): invitationId

[CLUB_INVITATIONS_RECEIVED_FOR_CLUB](https://warcraft.wiki.gg/wiki/Event:CLUB_INVITATIONS_RECEIVED_FOR_CLUB "Event:CLUB INVITATIONS RECEIVED FOR CLUB"): clubId

[CLUB_MEMBER_ADDED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBER_ADDED "Event:CLUB MEMBER ADDED"): clubId, memberId

[CLUB_MEMBER_PRESENCE_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBER_PRESENCE_UPDATED "Event:CLUB MEMBER PRESENCE UPDATED"): clubId, memberId, presence

[CLUB_MEMBER_REMOVED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBER_REMOVED "Event:CLUB MEMBER REMOVED"): clubId, memberId

[CLUB_MEMBER_ROLE_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBER_ROLE_UPDATED "Event:CLUB MEMBER ROLE UPDATED"): clubId, memberId, roleId

[CLUB_MEMBER_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBER_UPDATED "Event:CLUB MEMBER UPDATED"): clubId, memberId

[CLUB_MEMBERS_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_MEMBERS_UPDATED "Event:CLUB MEMBERS UPDATED"): clubId

[CLUB_MESSAGE_ADDED](https://warcraft.wiki.gg/wiki/Event:CLUB_MESSAGE_ADDED "Event:CLUB MESSAGE ADDED"): clubId, streamId, messageId

[CLUB_MESSAGE_HISTORY_RECEIVED](https://warcraft.wiki.gg/wiki/Event:CLUB_MESSAGE_HISTORY_RECEIVED "Event:CLUB MESSAGE HISTORY RECEIVED"): clubId, streamId, downloadedRange, contiguousRange

[CLUB_MESSAGE_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_MESSAGE_UPDATED "Event:CLUB MESSAGE UPDATED"): clubId, streamId, messageId

[CLUB_REMOVED](https://warcraft.wiki.gg/wiki/Event:CLUB_REMOVED "Event:CLUB REMOVED"): clubId

[CLUB_REMOVED_MESSAGE](https://warcraft.wiki.gg/wiki/Event:CLUB_REMOVED_MESSAGE "Event:CLUB REMOVED MESSAGE"): clubName, clubRemovedReason

[CLUB_SELF_MEMBER_ROLE_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_SELF_MEMBER_ROLE_UPDATED "Event:CLUB SELF MEMBER ROLE UPDATED"): clubId, roleId

[CLUB_STREAM_ADDED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAM_ADDED "Event:CLUB STREAM ADDED"): clubId, streamId

[CLUB_STREAM_REMOVED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAM_REMOVED "Event:CLUB STREAM REMOVED"): clubId, streamId

[CLUB_STREAM_SUBSCRIBED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAM_SUBSCRIBED "Event:CLUB STREAM SUBSCRIBED"): clubId, streamId

[CLUB_STREAM_UNSUBSCRIBED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAM_UNSUBSCRIBED "Event:CLUB STREAM UNSUBSCRIBED"): clubId, streamId

[CLUB_STREAM_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAM_UPDATED "Event:CLUB STREAM UPDATED"): clubId, streamId

[CLUB_STREAMS_LOADED](https://warcraft.wiki.gg/wiki/Event:CLUB_STREAMS_LOADED "Event:CLUB STREAMS LOADED"): clubId

[CLUB_TICKET_CREATED](https://warcraft.wiki.gg/wiki/Event:CLUB_TICKET_CREATED "Event:CLUB TICKET CREATED"): clubId, ticketInfo

[CLUB_TICKET_RECEIVED](https://warcraft.wiki.gg/wiki/Event:CLUB_TICKET_RECEIVED "Event:CLUB TICKET RECEIVED"): ticket

[CLUB_TICKETS_RECEIVED](https://warcraft.wiki.gg/wiki/Event:CLUB_TICKETS_RECEIVED "Event:CLUB TICKETS RECEIVED"): clubId

[CLUB_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_UPDATED "Event:CLUB UPDATED"): clubId

[INITIAL_CLUBS_LOADED](https://warcraft.wiki.gg/wiki/Event:INITIAL_CLUBS_LOADED "Event:INITIAL CLUBS LOADED")

[STREAM_VIEW_MARKER_UPDATED](https://warcraft.wiki.gg/wiki/Event:STREAM_VIEW_MARKER_UPDATED "Event:STREAM VIEW MARKER UPDATED"): clubId, streamId, lastReadTime

## [ClubFinderInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ClubFinderInfo "Category:API systems/ClubFinderInfo")

[CLUB_FINDER_APPLICANT_INVITE_RECIEVED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_APPLICANT_INVITE_RECIEVED "Event:CLUB FINDER APPLICANT INVITE RECIEVED"): clubFinderGUIDs

[CLUB_FINDER_APPLICATIONS_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_APPLICATIONS_UPDATED "Event:CLUB FINDER APPLICATIONS UPDATED"): type, clubFinderGUIDs

[CLUB_FINDER_CAN_WHISPER_APPLICANT](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_CAN_WHISPER_APPLICANT "Event:CLUB FINDER CAN WHISPER APPLICANT"): applicant

[CLUB_FINDER_CLUB_LIST_RETURNED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_CLUB_LIST_RETURNED "Event:CLUB FINDER CLUB LIST RETURNED"): type

[CLUB_FINDER_CLUB_REPORTED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_CLUB_REPORTED "Event:CLUB FINDER CLUB REPORTED"): type, clubFinderGUID

[CLUB_FINDER_COMMUNITY_OFFLINE_JOIN](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_COMMUNITY_OFFLINE_JOIN "Event:CLUB FINDER COMMUNITY OFFLINE JOIN"): clubId

[CLUB_FINDER_ENABLED_OR_DISABLED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_ENABLED_OR_DISABLED "Event:CLUB FINDER ENABLED OR DISABLED")

[CLUB_FINDER_GUILD_REALM_NAME_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_GUILD_REALM_NAME_UPDATED "Event:CLUB FINDER GUILD REALM NAME UPDATED"): clubFinderGUID, realmName

[CLUB_FINDER_LINKED_CLUB_RETURNED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_LINKED_CLUB_RETURNED "Event:CLUB FINDER LINKED CLUB RETURNED"): clubInfo

[CLUB_FINDER_MEMBERSHIP_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_MEMBERSHIP_LIST_CHANGED "Event:CLUB FINDER MEMBERSHIP LIST CHANGED")

[CLUB_FINDER_PLAYER_PENDING_LIST_RECIEVED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_PLAYER_PENDING_LIST_RECIEVED "Event:CLUB FINDER PLAYER PENDING LIST RECIEVED"): type

[CLUB_FINDER_POST_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_POST_UPDATED "Event:CLUB FINDER POST UPDATED"): clubFinderGUIDs

[CLUB_FINDER_RECRUIT_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_RECRUIT_LIST_CHANGED "Event:CLUB FINDER RECRUIT LIST CHANGED")

[CLUB_FINDER_RECRUITMENT_POST_RETURNED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_RECRUITMENT_POST_RETURNED "Event:CLUB FINDER RECRUITMENT POST RETURNED"): type

[CLUB_FINDER_RECRUITS_UPDATED](https://warcraft.wiki.gg/wiki/Event:CLUB_FINDER_RECRUITS_UPDATED "Event:CLUB FINDER RECRUITS UPDATED"): type

## [ColorOverrides](https://warcraft.wiki.gg/wiki/Category:API_systems/ColorOverrides "Category:API systems/ColorOverrides")

[COLOR_OVERRIDE_UPDATED](https://warcraft.wiki.gg/wiki/Event:COLOR_OVERRIDE_UPDATED "Event:COLOR OVERRIDE UPDATED"): overrideType

[COLOR_OVERRIDES_RESET](https://warcraft.wiki.gg/wiki/Event:COLOR_OVERRIDES_RESET "Event:COLOR OVERRIDES RESET")

## [CombatLog](https://warcraft.wiki.gg/wiki/Category:API_systems/CombatLog "Category:API systems/CombatLog")

[COMBAT_LOG_ENTRIES_CLEARED](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_ENTRIES_CLEARED "Event:COMBAT LOG ENTRIES CLEARED")

[COMBAT_LOG_EVENT](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_EVENT "Event:COMBAT LOG EVENT")

[COMBAT_LOG_EVENT_UNFILTERED](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_EVENT_UNFILTERED "Event:COMBAT LOG EVENT UNFILTERED")

[COMBAT_LOG_MESSAGE_LIMIT_CHANGED](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_MESSAGE_LIMIT_CHANGED "Event:COMBAT LOG MESSAGE LIMIT CHANGED"): messageLimit

## [CombatLogInternal](https://warcraft.wiki.gg/wiki/Category:API_systems/CombatLogInternal "Category:API systems/CombatLogInternal")

[COMBAT_LOG_EVENT_INTERNAL_UNFILTERED](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_EVENT_INTERNAL_UNFILTERED "Event:COMBAT LOG EVENT INTERNAL UNFILTERED")

## [CombatLogSecure](https://warcraft.wiki.gg/wiki/Category:API_systems/CombatLogSecure "Category:API systems/CombatLogSecure")

[COMBAT_LOG_APPLY_FILTER_SETTINGS](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_APPLY_FILTER_SETTINGS "Event:COMBAT LOG APPLY FILTER SETTINGS"): filterSettings

[COMBAT_LOG_MESSAGE](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_MESSAGE "Event:COMBAT LOG MESSAGE"): message, colorR, colorG, colorB, order

[COMBAT_LOG_REFILTER_ENTRIES](https://warcraft.wiki.gg/wiki/Event:COMBAT_LOG_REFILTER_ENTRIES "Event:COMBAT LOG REFILTER ENTRIES")

## [CombatText](https://warcraft.wiki.gg/wiki/Category:API_systems/CombatText "Category:API systems/CombatText")

[COMBAT_TEXT_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMBAT_TEXT_UPDATE "Event:COMBAT TEXT UPDATE"): combatTextType

## [CommentatorFrame](https://warcraft.wiki.gg/wiki/Category:API_systems/CommentatorFrame "Category:API systems/CommentatorFrame")

[COMMENTATOR_COMBAT_EVENT](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_COMBAT_EVENT "Event:COMMENTATOR COMBAT EVENT")

[COMMENTATOR_ENTER_WORLD](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_ENTER_WORLD "Event:COMMENTATOR ENTER WORLD")

[COMMENTATOR_HISTORY_FLUSHED](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_HISTORY_FLUSHED "Event:COMMENTATOR HISTORY FLUSHED")

[COMMENTATOR_IMMEDIATE_FOV_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_IMMEDIATE_FOV_UPDATE "Event:COMMENTATOR IMMEDIATE FOV UPDATE"): fov

[COMMENTATOR_MAP_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_MAP_UPDATE "Event:COMMENTATOR MAP UPDATE")

[COMMENTATOR_PLAYER_NAME_OVERRIDE_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_PLAYER_NAME_OVERRIDE_UPDATE "Event:COMMENTATOR PLAYER NAME OVERRIDE UPDATE"): nameToOverride, overrideName

[COMMENTATOR_PLAYER_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_PLAYER_UPDATE "Event:COMMENTATOR PLAYER UPDATE")

[COMMENTATOR_RESET_SETTINGS](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_RESET_SETTINGS "Event:COMMENTATOR RESET SETTINGS")

[COMMENTATOR_TEAM_NAME_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_TEAM_NAME_UPDATE "Event:COMMENTATOR TEAM NAME UPDATE"): teamName

[COMMENTATOR_TEAMS_SWAPPED](https://warcraft.wiki.gg/wiki/Event:COMMENTATOR_TEAMS_SWAPPED "Event:COMMENTATOR TEAMS SWAPPED"): swapped

## [CompactUnitFrames](https://warcraft.wiki.gg/wiki/Category:API_systems/CompactUnitFrames "Category:API systems/CompactUnitFrames")

[COMPACT_UNIT_FRAME_PROFILES_LOADED](https://warcraft.wiki.gg/wiki/Event:COMPACT_UNIT_FRAME_PROFILES_LOADED "Event:COMPACT UNIT FRAME PROFILES LOADED")

## [Console](https://warcraft.wiki.gg/wiki/Category:API_systems/Console "Category:API systems/Console")

[CONSOLE_CLEAR](https://warcraft.wiki.gg/wiki/Event:CONSOLE_CLEAR "Event:CONSOLE CLEAR")

[CONSOLE_COLORS_CHANGED](https://warcraft.wiki.gg/wiki/Event:CONSOLE_COLORS_CHANGED "Event:CONSOLE COLORS CHANGED")

[CONSOLE_FONT_SIZE_CHANGED](https://warcraft.wiki.gg/wiki/Event:CONSOLE_FONT_SIZE_CHANGED "Event:CONSOLE FONT SIZE CHANGED")

[CONSOLE_LOG](https://warcraft.wiki.gg/wiki/Event:CONSOLE_LOG "Event:CONSOLE LOG"): message

[CONSOLE_MESSAGE](https://warcraft.wiki.gg/wiki/Event:CONSOLE_MESSAGE "Event:CONSOLE MESSAGE"): message, colorType

[CVAR_UPDATE](https://warcraft.wiki.gg/wiki/Event:CVAR_UPDATE "Event:CVAR UPDATE"): eventName, value

[TOGGLE_CONSOLE](https://warcraft.wiki.gg/wiki/Event:TOGGLE_CONSOLE "Event:TOGGLE CONSOLE"): showConsole

## [Container](https://warcraft.wiki.gg/wiki/Category:API_systems/Container "Category:API systems/Container")

[BAG_CLOSED](https://warcraft.wiki.gg/wiki/Event:BAG_CLOSED "Event:BAG CLOSED"): bagID

[BAG_CONTAINER_UPDATE](https://warcraft.wiki.gg/wiki/Event:BAG_CONTAINER_UPDATE "Event:BAG CONTAINER UPDATE")

[BAG_NEW_ITEMS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BAG_NEW_ITEMS_UPDATED "Event:BAG NEW ITEMS UPDATED")

[BAG_OPEN](https://warcraft.wiki.gg/wiki/Event:BAG_OPEN "Event:BAG OPEN"): bagID

[BAG_OVERFLOW_WITH_FULL_INVENTORY](https://warcraft.wiki.gg/wiki/Event:BAG_OVERFLOW_WITH_FULL_INVENTORY "Event:BAG OVERFLOW WITH FULL INVENTORY")

[BAG_SLOT_FLAGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BAG_SLOT_FLAGS_UPDATED "Event:BAG SLOT FLAGS UPDATED"): slot

[BAG_UPDATE](https://warcraft.wiki.gg/wiki/Event:BAG_UPDATE "Event:BAG UPDATE"): bagID

[BAG_UPDATE_COOLDOWN](https://warcraft.wiki.gg/wiki/Event:BAG_UPDATE_COOLDOWN "Event:BAG UPDATE COOLDOWN")

[BAG_UPDATE_DELAYED](https://warcraft.wiki.gg/wiki/Event:BAG_UPDATE_DELAYED "Event:BAG UPDATE DELAYED")

[EQUIP_BIND_REFUNDABLE_CONFIRM](https://warcraft.wiki.gg/wiki/Event:EQUIP_BIND_REFUNDABLE_CONFIRM "Event:EQUIP BIND REFUNDABLE CONFIRM"): slot, itemLocation

[EQUIP_BIND_TRADEABLE_CONFIRM](https://warcraft.wiki.gg/wiki/Event:EQUIP_BIND_TRADEABLE_CONFIRM "Event:EQUIP BIND TRADEABLE CONFIRM"): slot, itemLocation

[EXPAND_BAG_BAR_CHANGED](https://warcraft.wiki.gg/wiki/Event:EXPAND_BAG_BAR_CHANGED "Event:EXPAND BAG BAR CHANGED"): expandBagBar

[INVENTORY_SEARCH_UPDATE](https://warcraft.wiki.gg/wiki/Event:INVENTORY_SEARCH_UPDATE "Event:INVENTORY SEARCH UPDATE")

[ITEM_LOCK_CHANGED](https://warcraft.wiki.gg/wiki/Event:ITEM_LOCK_CHANGED "Event:ITEM LOCK CHANGED"): bagOrSlotIndex, slotIndex

[ITEM_LOCKED](https://warcraft.wiki.gg/wiki/Event:ITEM_LOCKED "Event:ITEM LOCKED"): bagOrSlotIndex, slotIndex

[ITEM_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:ITEM_UNLOCKED "Event:ITEM UNLOCKED"): bagOrSlotIndex, slotIndex

[USE_COMBINED_BAGS_CHANGED](https://warcraft.wiki.gg/wiki/Event:USE_COMBINED_BAGS_CHANGED "Event:USE COMBINED BAGS CHANGED"): useCombinedBags

## [ContentTracking](https://warcraft.wiki.gg/wiki/Category:API_systems/ContentTracking "Category:API systems/ContentTracking")

[CONTENT_TRACKING_IS_ENABLED_UPDATE](https://warcraft.wiki.gg/wiki/Event:CONTENT_TRACKING_IS_ENABLED_UPDATE "Event:CONTENT TRACKING IS ENABLED UPDATE"): isEnabled

[CONTENT_TRACKING_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:CONTENT_TRACKING_LIST_UPDATE "Event:CONTENT TRACKING LIST UPDATE")

[CONTENT_TRACKING_UPDATE](https://warcraft.wiki.gg/wiki/Event:CONTENT_TRACKING_UPDATE "Event:CONTENT TRACKING UPDATE"): type, id, isTracked

[TRACKABLE_INFO_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRACKABLE_INFO_UPDATE "Event:TRACKABLE INFO UPDATE"): type, id

[TRACKING_TARGET_INFO_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRACKING_TARGET_INFO_UPDATE "Event:TRACKING TARGET INFO UPDATE"): targetType, targetID

## [ContributionCollector](https://warcraft.wiki.gg/wiki/Category:API_systems/ContributionCollector "Category:API systems/ContributionCollector")

[CONTRIBUTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:CONTRIBUTION_CHANGED "Event:CONTRIBUTION CHANGED"): state, result, name, ...contributionID

[CONTRIBUTION_COLLECTOR_PENDING](https://warcraft.wiki.gg/wiki/Event:CONTRIBUTION_COLLECTOR_PENDING "Event:CONTRIBUTION COLLECTOR PENDING"): contributionID, isPending, result

[CONTRIBUTION_COLLECTOR_UPDATE](https://warcraft.wiki.gg/wiki/Event:CONTRIBUTION_COLLECTOR_UPDATE "Event:CONTRIBUTION COLLECTOR UPDATE")

[CONTRIBUTION_COLLECTOR_UPDATE_SINGLE](https://warcraft.wiki.gg/wiki/Event:CONTRIBUTION_COLLECTOR_UPDATE_SINGLE "Event:CONTRIBUTION COLLECTOR UPDATE SINGLE"): contributionID

## [CooldownViewer](https://warcraft.wiki.gg/wiki/Category:API_systems/CooldownViewer "Category:API systems/CooldownViewer")

[COOLDOWN_VIEWER_DATA_LOADED](https://warcraft.wiki.gg/wiki/Event:COOLDOWN_VIEWER_DATA_LOADED "Event:COOLDOWN VIEWER DATA LOADED")

[COOLDOWN_VIEWER_SPELL_OVERRIDE_UPDATED](https://warcraft.wiki.gg/wiki/Event:COOLDOWN_VIEWER_SPELL_OVERRIDE_UPDATED "Event:COOLDOWN VIEWER SPELL OVERRIDE UPDATED"): baseSpellID, overrideSpellID

[COOLDOWN_VIEWER_TABLE_HOTFIXED](https://warcraft.wiki.gg/wiki/Event:COOLDOWN_VIEWER_TABLE_HOTFIXED "Event:COOLDOWN VIEWER TABLE HOTFIXED")

## [Covenant](https://warcraft.wiki.gg/wiki/Category:API_systems/Covenant "Category:API systems/Covenant")

[COVENANT_CHOSEN](https://warcraft.wiki.gg/wiki/Event:COVENANT_CHOSEN "Event:COVENANT CHOSEN"): covenantID

## [CovenantCallings](https://warcraft.wiki.gg/wiki/Category:API_systems/CovenantCallings "Category:API systems/CovenantCallings")

[COVENANT_CALLINGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:COVENANT_CALLINGS_UPDATED "Event:COVENANT CALLINGS UPDATED"): callings

## [CovenantPreview](https://warcraft.wiki.gg/wiki/Category:API_systems/CovenantPreview "Category:API systems/CovenantPreview")

[COVENANT_PREVIEW_CLOSE](https://warcraft.wiki.gg/wiki/Event:COVENANT_PREVIEW_CLOSE "Event:COVENANT PREVIEW CLOSE")

[COVENANT_PREVIEW_OPEN](https://warcraft.wiki.gg/wiki/Event:COVENANT_PREVIEW_OPEN "Event:COVENANT PREVIEW OPEN"): previewInfo

## [CovenantSanctumUI](https://warcraft.wiki.gg/wiki/Category:API_systems/CovenantSanctumUI "Category:API systems/CovenantSanctumUI")

[COVENANT_RENOWN_CATCH_UP_STATE_UPDATE](https://warcraft.wiki.gg/wiki/Event:COVENANT_RENOWN_CATCH_UP_STATE_UPDATE "Event:COVENANT RENOWN CATCH UP STATE UPDATE")

[COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED "Event:COVENANT SANCTUM RENOWN LEVEL CHANGED"): newRenownLevel, oldRenownLevel

## [CraftingOrderUI](https://warcraft.wiki.gg/wiki/Category:API_systems/CraftingOrderUI "Category:API systems/CraftingOrderUI")

[CRAFTING_HOUSE_DISABLED](https://warcraft.wiki.gg/wiki/Event:CRAFTING_HOUSE_DISABLED "Event:CRAFTING HOUSE DISABLED")

[CRAFTINGORDERS_CAN_REQUEST](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CAN_REQUEST "Event:CRAFTINGORDERS CAN REQUEST")

[CRAFTINGORDERS_CLAIM_ORDER_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CLAIM_ORDER_RESPONSE "Event:CRAFTINGORDERS CLAIM ORDER RESPONSE"): result, orderID

[CRAFTINGORDERS_CLAIMED_ORDER_ADDED](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CLAIMED_ORDER_ADDED "Event:CRAFTINGORDERS CLAIMED ORDER ADDED")

[CRAFTINGORDERS_CLAIMED_ORDER_REMOVED](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CLAIMED_ORDER_REMOVED "Event:CRAFTINGORDERS CLAIMED ORDER REMOVED")

[CRAFTINGORDERS_CLAIMED_ORDER_UPDATED](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CLAIMED_ORDER_UPDATED "Event:CRAFTINGORDERS CLAIMED ORDER UPDATED"): orderID

[CRAFTINGORDERS_CRAFT_ORDER_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CRAFT_ORDER_RESPONSE "Event:CRAFTINGORDERS CRAFT ORDER RESPONSE"): result, orderID

[CRAFTINGORDERS_CUSTOMER_FAVORITES_CHANGED](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CUSTOMER_FAVORITES_CHANGED "Event:CRAFTINGORDERS CUSTOMER FAVORITES CHANGED")

[CRAFTINGORDERS_CUSTOMER_OPTIONS_PARSED](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_CUSTOMER_OPTIONS_PARSED "Event:CRAFTINGORDERS CUSTOMER OPTIONS PARSED")

[CRAFTINGORDERS_DISPLAY_CRAFTER_FULFILLED_MSG](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_DISPLAY_CRAFTER_FULFILLED_MSG "Event:CRAFTINGORDERS DISPLAY CRAFTER FULFILLED MSG"): orderTypeString, itemNameString, playerNameString, tipAmount, quantityCrafted

[CRAFTINGORDERS_FULFILL_ORDER_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_FULFILL_ORDER_RESPONSE "Event:CRAFTINGORDERS FULFILL ORDER RESPONSE"): result, orderID

[CRAFTINGORDERS_HIDE_CRAFTER](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_HIDE_CRAFTER "Event:CRAFTINGORDERS HIDE CRAFTER")

[CRAFTINGORDERS_HIDE_CUSTOMER](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_HIDE_CUSTOMER "Event:CRAFTINGORDERS HIDE CUSTOMER")

[CRAFTINGORDERS_ORDER_CANCEL_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_ORDER_CANCEL_RESPONSE "Event:CRAFTINGORDERS ORDER CANCEL RESPONSE"): result

[CRAFTINGORDERS_ORDER_PLACEMENT_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_ORDER_PLACEMENT_RESPONSE "Event:CRAFTINGORDERS ORDER PLACEMENT RESPONSE"): result

[CRAFTINGORDERS_REJECT_ORDER_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_REJECT_ORDER_RESPONSE "Event:CRAFTINGORDERS REJECT ORDER RESPONSE"): result, orderID

[CRAFTINGORDERS_RELEASE_ORDER_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_RELEASE_ORDER_RESPONSE "Event:CRAFTINGORDERS RELEASE ORDER RESPONSE"): result, orderID

[CRAFTINGORDERS_SHOW_CRAFTER](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_SHOW_CRAFTER "Event:CRAFTINGORDERS SHOW CRAFTER")

[CRAFTINGORDERS_SHOW_CUSTOMER](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_SHOW_CUSTOMER "Event:CRAFTINGORDERS SHOW CUSTOMER")

[CRAFTINGORDERS_UNEXPECTED_ERROR](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_UNEXPECTED_ERROR "Event:CRAFTINGORDERS UNEXPECTED ERROR")

[CRAFTINGORDERS_UPDATE_CUSTOMER_NAME](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_UPDATE_CUSTOMER_NAME "Event:CRAFTINGORDERS UPDATE CUSTOMER NAME"): customerName, orderID

[CRAFTINGORDERS_UPDATE_ORDER_COUNT](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_UPDATE_ORDER_COUNT "Event:CRAFTINGORDERS UPDATE ORDER COUNT"): orderType, numOrders

[CRAFTINGORDERS_UPDATE_PERSONAL_ORDER_COUNTS](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_UPDATE_PERSONAL_ORDER_COUNTS "Event:CRAFTINGORDERS UPDATE PERSONAL ORDER COUNTS")

[CRAFTINGORDERS_UPDATE_REWARDS](https://warcraft.wiki.gg/wiki/Event:CRAFTINGORDERS_UPDATE_REWARDS "Event:CRAFTINGORDERS UPDATE REWARDS"): npcOrderRewards, orderID

## [CurrencySystem](https://warcraft.wiki.gg/wiki/Category:API_systems/CurrencySystem "Category:API systems/CurrencySystem")

[ACCOUNT_CHARACTER_CURRENCY_DATA_RECEIVED](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_CHARACTER_CURRENCY_DATA_RECEIVED "Event:ACCOUNT CHARACTER CURRENCY DATA RECEIVED")

[ACCOUNT_MONEY](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_MONEY "Event:ACCOUNT MONEY")

[CURRENCY_DISPLAY_UPDATE](https://warcraft.wiki.gg/wiki/Event:CURRENCY_DISPLAY_UPDATE "Event:CURRENCY DISPLAY UPDATE"): currencyType, quantity, quantityChange, quantityGainSource, destroyReason

[CURRENCY_TRANSFER_FAILED](https://warcraft.wiki.gg/wiki/Event:CURRENCY_TRANSFER_FAILED "Event:CURRENCY TRANSFER FAILED"): failureReason

[CURRENCY_TRANSFER_INITIATED](https://warcraft.wiki.gg/wiki/Event:CURRENCY_TRANSFER_INITIATED "Event:CURRENCY TRANSFER INITIATED")

[CURRENCY_TRANSFER_LOG_UPDATE](https://warcraft.wiki.gg/wiki/Event:CURRENCY_TRANSFER_LOG_UPDATE "Event:CURRENCY TRANSFER LOG UPDATE")

[CURRENCY_TRANSFER_SUCCESS](https://warcraft.wiki.gg/wiki/Event:CURRENCY_TRANSFER_SUCCESS "Event:CURRENCY TRANSFER SUCCESS")

[PLAYER_MONEY](https://warcraft.wiki.gg/wiki/Event:PLAYER_MONEY "Event:PLAYER MONEY")

## [Cursor](https://warcraft.wiki.gg/wiki/Category:API_systems/Cursor "Category:API systems/Cursor")

[BATTLE_PET_CURSOR_CLEAR](https://warcraft.wiki.gg/wiki/Event:BATTLE_PET_CURSOR_CLEAR "Event:BATTLE PET CURSOR CLEAR")

[CURSOR_CHANGED](https://warcraft.wiki.gg/wiki/Event:CURSOR_CHANGED "Event:CURSOR CHANGED"): isDefault, newCursorType, oldCursorType, oldCursorVirtualID

[MOUNT_CURSOR_CLEAR](https://warcraft.wiki.gg/wiki/Event:MOUNT_CURSOR_CLEAR "Event:MOUNT CURSOR CLEAR")

[WORLD_CURSOR_TOOLTIP_UPDATE](https://warcraft.wiki.gg/wiki/Event:WORLD_CURSOR_TOOLTIP_UPDATE "Event:WORLD CURSOR TOOLTIP UPDATE"): anchorType

## [DamageMeter](https://warcraft.wiki.gg/wiki/Category:API_systems/DamageMeter "Category:API systems/DamageMeter")

[DAMAGE_METER_COMBAT_SESSION_UPDATED](https://warcraft.wiki.gg/wiki/Event:DAMAGE_METER_COMBAT_SESSION_UPDATED "Event:DAMAGE METER COMBAT SESSION UPDATED"): type, sessionID

[DAMAGE_METER_CURRENT_SESSION_UPDATED](https://warcraft.wiki.gg/wiki/Event:DAMAGE_METER_CURRENT_SESSION_UPDATED "Event:DAMAGE METER CURRENT SESSION UPDATED")

[DAMAGE_METER_RESET](https://warcraft.wiki.gg/wiki/Event:DAMAGE_METER_RESET "Event:DAMAGE METER RESET")

## [DeathAlert](https://warcraft.wiki.gg/wiki/Category:API_systems/DeathAlert "Category:API systems/DeathAlert")

[HARDCORE_DEATHS](https://warcraft.wiki.gg/wiki/Event:HARDCORE_DEATHS "Event:HARDCORE DEATHS"): memberName

## [DeathInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/DeathInfo "Category:API systems/DeathInfo")

[AREA_SPIRIT_HEALER_IN_RANGE](https://warcraft.wiki.gg/wiki/Event:AREA_SPIRIT_HEALER_IN_RANGE "Event:AREA SPIRIT HEALER IN RANGE")

[AREA_SPIRIT_HEALER_OUT_OF_RANGE](https://warcraft.wiki.gg/wiki/Event:AREA_SPIRIT_HEALER_OUT_OF_RANGE "Event:AREA SPIRIT HEALER OUT OF RANGE")

[CEMETERY_PREFERENCE_UPDATED](https://warcraft.wiki.gg/wiki/Event:CEMETERY_PREFERENCE_UPDATED "Event:CEMETERY PREFERENCE UPDATED")

[CONFIRM_XP_LOSS](https://warcraft.wiki.gg/wiki/Event:CONFIRM_XP_LOSS "Event:CONFIRM XP LOSS")

[CORPSE_IN_INSTANCE](https://warcraft.wiki.gg/wiki/Event:CORPSE_IN_INSTANCE "Event:CORPSE IN INSTANCE")

[CORPSE_IN_RANGE](https://warcraft.wiki.gg/wiki/Event:CORPSE_IN_RANGE "Event:CORPSE IN RANGE")

[CORPSE_OUT_OF_RANGE](https://warcraft.wiki.gg/wiki/Event:CORPSE_OUT_OF_RANGE "Event:CORPSE OUT OF RANGE")

[PLAYER_ALIVE](https://warcraft.wiki.gg/wiki/Event:PLAYER_ALIVE "Event:PLAYER ALIVE")

[PLAYER_DEAD](https://warcraft.wiki.gg/wiki/Event:PLAYER_DEAD "Event:PLAYER DEAD")

[PLAYER_SKINNED](https://warcraft.wiki.gg/wiki/Event:PLAYER_SKINNED "Event:PLAYER SKINNED"): hasFreeRepop

[PLAYER_UNGHOST](https://warcraft.wiki.gg/wiki/Event:PLAYER_UNGHOST "Event:PLAYER UNGHOST")

[REQUEST_CEMETERY_LIST_RESPONSE](https://warcraft.wiki.gg/wiki/Event:REQUEST_CEMETERY_LIST_RESPONSE "Event:REQUEST CEMETERY LIST RESPONSE"): isGossipTriggered

[RESURRECT_REQUEST](https://warcraft.wiki.gg/wiki/Event:RESURRECT_REQUEST "Event:RESURRECT REQUEST"): inviter

[SELF_RES_SPELL_CHANGED](https://warcraft.wiki.gg/wiki/Event:SELF_RES_SPELL_CHANGED "Event:SELF RES SPELL CHANGED")

## [DelvesUI](https://warcraft.wiki.gg/wiki/Category:API_systems/DelvesUI "Category:API systems/DelvesUI")

[ACTIVE_DELVE_DATA_UPDATE](https://warcraft.wiki.gg/wiki/Event:ACTIVE_DELVE_DATA_UPDATE "Event:ACTIVE DELVE DATA UPDATE")

[DELVE_ASSIST_ACTION](https://warcraft.wiki.gg/wiki/Event:DELVE_ASSIST_ACTION "Event:DELVE ASSIST ACTION"): data

[DELVES_ACCOUNT_DATA_ELEMENT_CHANGED](https://warcraft.wiki.gg/wiki/Event:DELVES_ACCOUNT_DATA_ELEMENT_CHANGED "Event:DELVES ACCOUNT DATA ELEMENT CHANGED")

[PARTY_ELIGIBILITY_FOR_DELVE_TIERS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PARTY_ELIGIBILITY_FOR_DELVE_TIERS_CHANGED "Event:PARTY ELIGIBILITY FOR DELVE TIERS CHANGED"): playerName, maxEligibleLevel

[SHOW_DELVES_COMPANION_CONFIGURATION_UI](https://warcraft.wiki.gg/wiki/Event:SHOW_DELVES_COMPANION_CONFIGURATION_UI "Event:SHOW DELVES COMPANION CONFIGURATION UI")

[WALK_IN_DATA_UPDATE](https://warcraft.wiki.gg/wiki/Event:WALK_IN_DATA_UPDATE "Event:WALK IN DATA UPDATE")

## [Discord](https://warcraft.wiki.gg/wiki/Category:API_systems/Discord "Category:API systems/Discord")

[DISCORD_GUILD_ACHIEVEMENT](https://warcraft.wiki.gg/wiki/Event:DISCORD_GUILD_ACHIEVEMENT "Event:DISCORD GUILD ACHIEVEMENT"): achievementID

[DISCORD_GUILD_LOBBY_UPDATE](https://warcraft.wiki.gg/wiki/Event:DISCORD_GUILD_LOBBY_UPDATE "Event:DISCORD GUILD LOBBY UPDATE")

[DISCORD_GUILD_SETTINGS_UPDATE](https://warcraft.wiki.gg/wiki/Event:DISCORD_GUILD_SETTINGS_UPDATE "Event:DISCORD GUILD SETTINGS UPDATE")

[DISCORD_LINK_UPDATE](https://warcraft.wiki.gg/wiki/Event:DISCORD_LINK_UPDATE "Event:DISCORD LINK UPDATE")

[DISCORD_SERVER_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:DISCORD_SERVER_LIST_UPDATE "Event:DISCORD SERVER LIST UPDATE")

[DISCORD_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:DISCORD_STATUS_UPDATE "Event:DISCORD STATUS UPDATE")

## [DuelInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/DuelInfo "Category:API systems/DuelInfo")

[DUEL_FINISHED](https://warcraft.wiki.gg/wiki/Event:DUEL_FINISHED "Event:DUEL FINISHED")

[DUEL_INBOUNDS](https://warcraft.wiki.gg/wiki/Event:DUEL_INBOUNDS "Event:DUEL INBOUNDS")

[DUEL_OUTOFBOUNDS](https://warcraft.wiki.gg/wiki/Event:DUEL_OUTOFBOUNDS "Event:DUEL OUTOFBOUNDS")

[DUEL_REQUESTED](https://warcraft.wiki.gg/wiki/Event:DUEL_REQUESTED "Event:DUEL REQUESTED"): playerName

[DUEL_TO_THE_DEATH_REQUESTED](https://warcraft.wiki.gg/wiki/Event:DUEL_TO_THE_DEATH_REQUESTED "Event:DUEL TO THE DEATH REQUESTED"): playerName

## [DyeColorInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/DyeColorInfo "Category:API systems/DyeColorInfo")

[DYE_COLOR_CATEGORY_UPDATED](https://warcraft.wiki.gg/wiki/Event:DYE_COLOR_CATEGORY_UPDATED "Event:DYE COLOR CATEGORY UPDATED"): dyeColorCategoryID

[DYE_COLOR_UPDATED](https://warcraft.wiki.gg/wiki/Event:DYE_COLOR_UPDATED "Event:DYE COLOR UPDATED"): dyeColorID

## [EditModeManager](https://warcraft.wiki.gg/wiki/Category:API_systems/EditModeManager "Category:API systems/EditModeManager")

[EDIT_MODE_LAYOUTS_UPDATED](https://warcraft.wiki.gg/wiki/Event:EDIT_MODE_LAYOUTS_UPDATED "Event:EDIT MODE LAYOUTS UPDATED"): layoutInfo, reconcileLayouts

## [EncounterInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/EncounterInfo "Category:API systems/EncounterInfo")

[BOSS_KILL](https://warcraft.wiki.gg/wiki/Event:BOSS_KILL "Event:BOSS KILL"): encounterID, encounterName

[DISABLE_LOW_LEVEL_RAID](https://warcraft.wiki.gg/wiki/Event:DISABLE_LOW_LEVEL_RAID "Event:DISABLE LOW LEVEL RAID")

[ENABLE_LOW_LEVEL_RAID](https://warcraft.wiki.gg/wiki/Event:ENABLE_LOW_LEVEL_RAID "Event:ENABLE LOW LEVEL RAID")

[ENCOUNTER_END](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_END "Event:ENCOUNTER END"): encounterID, encounterName, difficultyID, groupSize, success, encounterUnitStatus

[ENCOUNTER_START](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_START "Event:ENCOUNTER START"): encounterID, encounterName, difficultyID, groupSize

[INSTANCE_LOCK_START](https://warcraft.wiki.gg/wiki/Event:INSTANCE_LOCK_START "Event:INSTANCE LOCK START")

[INSTANCE_LOCK_STOP](https://warcraft.wiki.gg/wiki/Event:INSTANCE_LOCK_STOP "Event:INSTANCE LOCK STOP")

[INSTANCE_LOCK_WARNING](https://warcraft.wiki.gg/wiki/Event:INSTANCE_LOCK_WARNING "Event:INSTANCE LOCK WARNING")

[RAID_TARGET_UPDATE](https://warcraft.wiki.gg/wiki/Event:RAID_TARGET_UPDATE "Event:RAID TARGET UPDATE")

[UPDATE_INSTANCE_INFO](https://warcraft.wiki.gg/wiki/Event:UPDATE_INSTANCE_INFO "Event:UPDATE INSTANCE INFO")

## [EncounterJournal](https://warcraft.wiki.gg/wiki/Category:API_systems/EncounterJournal "Category:API systems/EncounterJournal")

[EJ_DIFFICULTY_UPDATE](https://warcraft.wiki.gg/wiki/Event:EJ_DIFFICULTY_UPDATE "Event:EJ DIFFICULTY UPDATE"): difficultyID

[EJ_LOOT_DATA_RECIEVED](https://warcraft.wiki.gg/wiki/Event:EJ_LOOT_DATA_RECIEVED "Event:EJ LOOT DATA RECIEVED"): itemID

[SHOW_JOURNEYS_UI](https://warcraft.wiki.gg/wiki/Event:SHOW_JOURNEYS_UI "Event:SHOW JOURNEYS UI"): factionID

## [EncounterTimeline](https://warcraft.wiki.gg/wiki/Category:API_systems/EncounterTimeline "Category:API systems/EncounterTimeline")

[ENCOUNTER_TIMELINE_EVENT_ADDED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_ADDED "Event:ENCOUNTER TIMELINE EVENT ADDED"): eventInfo

[ENCOUNTER_TIMELINE_EVENT_BLOCK_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_BLOCK_STATE_CHANGED "Event:ENCOUNTER TIMELINE EVENT BLOCK STATE CHANGED"): eventID

[ENCOUNTER_TIMELINE_EVENT_COLOR_CHANGED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_COLOR_CHANGED "Event:ENCOUNTER TIMELINE EVENT COLOR CHANGED"): eventID

[ENCOUNTER_TIMELINE_EVENT_HIGHLIGHT](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_HIGHLIGHT "Event:ENCOUNTER TIMELINE EVENT HIGHLIGHT"): eventID

[ENCOUNTER_TIMELINE_EVENT_REMOVED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_REMOVED "Event:ENCOUNTER TIMELINE EVENT REMOVED"): eventID

[ENCOUNTER_TIMELINE_EVENT_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_STATE_CHANGED "Event:ENCOUNTER TIMELINE EVENT STATE CHANGED"): eventID

[ENCOUNTER_TIMELINE_EVENT_TRACK_CHANGED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_EVENT_TRACK_CHANGED "Event:ENCOUNTER TIMELINE EVENT TRACK CHANGED"): eventID

[ENCOUNTER_TIMELINE_LAYOUT_UPDATED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_LAYOUT_UPDATED "Event:ENCOUNTER TIMELINE LAYOUT UPDATED")

[ENCOUNTER_TIMELINE_STATE_UPDATED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_STATE_UPDATED "Event:ENCOUNTER TIMELINE STATE UPDATED")

[ENCOUNTER_TIMELINE_VIEW_ACTIVATED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_VIEW_ACTIVATED "Event:ENCOUNTER TIMELINE VIEW ACTIVATED"): viewType

[ENCOUNTER_TIMELINE_VIEW_DEACTIVATED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_TIMELINE_VIEW_DEACTIVATED "Event:ENCOUNTER TIMELINE VIEW DEACTIVATED"): viewType

## [EncounterWarnings](https://warcraft.wiki.gg/wiki/Category:API_systems/EncounterWarnings "Category:API systems/EncounterWarnings")

[ENCOUNTER_WARNING](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_WARNING "Event:ENCOUNTER WARNING"): encounterWarningInfo

## [EndOfMatchUI](https://warcraft.wiki.gg/wiki/Category:API_systems/EndOfMatchUI "Category:API systems/EndOfMatchUI")

[SHOW_END_OF_MATCH_UI](https://warcraft.wiki.gg/wiki/Event:SHOW_END_OF_MATCH_UI "Event:SHOW END OF MATCH UI")

## [EquipmentSet](https://warcraft.wiki.gg/wiki/Category:API_systems/EquipmentSet "Category:API systems/EquipmentSet")

[EQUIPMENT_SETS_CHANGED](https://warcraft.wiki.gg/wiki/Event:EQUIPMENT_SETS_CHANGED "Event:EQUIPMENT SETS CHANGED")

[EQUIPMENT_SWAP_FINISHED](https://warcraft.wiki.gg/wiki/Event:EQUIPMENT_SWAP_FINISHED "Event:EQUIPMENT SWAP FINISHED"): result, setID

[EQUIPMENT_SWAP_PENDING](https://warcraft.wiki.gg/wiki/Event:EQUIPMENT_SWAP_PENDING "Event:EQUIPMENT SWAP PENDING")

[TRANSMOG_CUSTOM_SETS_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_CUSTOM_SETS_CHANGED "Event:TRANSMOG CUSTOM SETS CHANGED")

## [EventSchedulerUI](https://warcraft.wiki.gg/wiki/Category:API_systems/EventSchedulerUI "Category:API systems/EventSchedulerUI")

[EVENT_SCHEDULER_UPDATE](https://warcraft.wiki.gg/wiki/Event:EVENT_SCHEDULER_UPDATE "Event:EVENT SCHEDULER UPDATE")

## [Expansion](https://warcraft.wiki.gg/wiki/Category:API_systems/Expansion "Category:API systems/Expansion")

[MAX_EXPANSION_LEVEL_UPDATED](https://warcraft.wiki.gg/wiki/Event:MAX_EXPANSION_LEVEL_UPDATED "Event:MAX EXPANSION LEVEL UPDATED")

[MIN_EXPANSION_LEVEL_UPDATED](https://warcraft.wiki.gg/wiki/Event:MIN_EXPANSION_LEVEL_UPDATED "Event:MIN EXPANSION LEVEL UPDATED")

[SHOW_SUBSCRIPTION_INTERSTITIAL](https://warcraft.wiki.gg/wiki/Event:SHOW_SUBSCRIPTION_INTERSTITIAL "Event:SHOW SUBSCRIPTION INTERSTITIAL"): type

## [ExternalEventURL](https://warcraft.wiki.gg/wiki/Category:API_systems/ExternalEventURL "Category:API systems/ExternalEventURL")

[EXTERNAL_EVENT_LAUNCH_URL_FAILED](https://warcraft.wiki.gg/wiki/Event:EXTERNAL_EVENT_LAUNCH_URL_FAILED "Event:EXTERNAL EVENT LAUNCH URL FAILED")

## [FogOfWar](https://warcraft.wiki.gg/wiki/Category:API_systems/FogOfWar "Category:API systems/FogOfWar")

[FOG_OF_WAR_UPDATED](https://warcraft.wiki.gg/wiki/Event:FOG_OF_WAR_UPDATED "Event:FOG OF WAR UPDATED")

## [FriendList](https://warcraft.wiki.gg/wiki/Category:API_systems/FriendList "Category:API systems/FriendList")

[BATTLE_NET_FRIEND_TAG_ENABLED_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BATTLE_NET_FRIEND_TAG_ENABLED_STATUS_UPDATED "Event:BATTLE NET FRIEND TAG ENABLED STATUS UPDATED")

[BATTLE_NET_TITLE_FRIEND_CUSTOM_NAME_ENABLED_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:BATTLE_NET_TITLE_FRIEND_CUSTOM_NAME_ENABLED_STATUS_UPDATED "Event:BATTLE NET TITLE FRIEND CUSTOM NAME ENABLED STATUS UPDATED")

[BN_BLOCK_FAILED_TOO_MANY](https://warcraft.wiki.gg/wiki/Event:BN_BLOCK_FAILED_TOO_MANY "Event:BN BLOCK FAILED TOO MANY"): blockType

[BN_BLOCK_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:BN_BLOCK_LIST_UPDATED "Event:BN BLOCK LIST UPDATED")

[BN_CHAT_WHISPER_UNDELIVERABLE](https://warcraft.wiki.gg/wiki/Event:BN_CHAT_WHISPER_UNDELIVERABLE "Event:BN CHAT WHISPER UNDELIVERABLE"): senderID

[BN_CONNECTED](https://warcraft.wiki.gg/wiki/Event:BN_CONNECTED "Event:BN CONNECTED"): suppressNotification

[BN_CUSTOM_MESSAGE_CHANGED](https://warcraft.wiki.gg/wiki/Event:BN_CUSTOM_MESSAGE_CHANGED "Event:BN CUSTOM MESSAGE CHANGED"): id

[BN_CUSTOM_MESSAGE_LOADED](https://warcraft.wiki.gg/wiki/Event:BN_CUSTOM_MESSAGE_LOADED "Event:BN CUSTOM MESSAGE LOADED")

[BN_DISCONNECTED](https://warcraft.wiki.gg/wiki/Event:BN_DISCONNECTED "Event:BN DISCONNECTED"): result, suppressNotification

[BN_FRIEND_ACCOUNT_OFFLINE](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_ACCOUNT_OFFLINE "Event:BN FRIEND ACCOUNT OFFLINE"): friendId, isCompanionApp

[BN_FRIEND_ACCOUNT_ONLINE](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_ACCOUNT_ONLINE "Event:BN FRIEND ACCOUNT ONLINE"): friendId, isCompanionApp

[BN_FRIEND_INFO_CHANGED](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_INFO_CHANGED "Event:BN FRIEND INFO CHANGED"): friendIndex

[BN_FRIEND_INVITE_ADDED](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_INVITE_ADDED "Event:BN FRIEND INVITE ADDED"): accountID

[BN_FRIEND_INVITE_LIST_INITIALIZED](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_INVITE_LIST_INITIALIZED "Event:BN FRIEND INVITE LIST INITIALIZED"): listSize

[BN_FRIEND_INVITE_REMOVED](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_INVITE_REMOVED "Event:BN FRIEND INVITE REMOVED")

[BN_FRIEND_LIST_SIZE_CHANGED](https://warcraft.wiki.gg/wiki/Event:BN_FRIEND_LIST_SIZE_CHANGED "Event:BN FRIEND LIST SIZE CHANGED"): accountID

[BN_INFO_CHANGED](https://warcraft.wiki.gg/wiki/Event:BN_INFO_CHANGED "Event:BN INFO CHANGED")

[BN_REQUEST_FOF_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:BN_REQUEST_FOF_SUCCEEDED "Event:BN REQUEST FOF SUCCEEDED")

[CONFIRM_BATTLE_NET_FRIEND_INVITE_SHOW](https://warcraft.wiki.gg/wiki/Event:CONFIRM_BATTLE_NET_FRIEND_INVITE_SHOW "Event:CONFIRM BATTLE NET FRIEND INVITE SHOW"): name, friendLevel

[FRIENDLIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:FRIENDLIST_UPDATE "Event:FRIENDLIST UPDATE")

[IGNORELIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:IGNORELIST_UPDATE "Event:IGNORELIST UPDATE")

[LEGACY_FRIEND_SYSTEM_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:LEGACY_FRIEND_SYSTEM_STATUS_UPDATED "Event:LEGACY FRIEND SYSTEM STATUS UPDATED")

[MUTELIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:MUTELIST_UPDATE "Event:MUTELIST UPDATE")

[NEW_MATCHMAKING_PARTY_INVITE](https://warcraft.wiki.gg/wiki/Event:NEW_MATCHMAKING_PARTY_INVITE "Event:NEW MATCHMAKING PARTY INVITE")

[REJECTED_MATCHMAKING_PARTY_INVITE](https://warcraft.wiki.gg/wiki/Event:REJECTED_MATCHMAKING_PARTY_INVITE "Event:REJECTED MATCHMAKING PARTY INVITE"): name

[SOCIAL_UI_FRIENDS_LIST_SYSTEM_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOCIAL_UI_FRIENDS_LIST_SYSTEM_STATUS_UPDATED "Event:SOCIAL UI FRIENDS LIST SYSTEM STATUS UPDATED")

[WHO_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:WHO_LIST_UPDATE "Event:WHO LIST UPDATE")

## [GMTicketInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/GMTicketInfo "Category:API systems/GMTicketInfo")

[GM_PLAYER_INFO](https://warcraft.wiki.gg/wiki/Event:GM_PLAYER_INFO "Event:GM PLAYER INFO"): name, info

[ITEM_RESTORATION_BUTTON_STATUS](https://warcraft.wiki.gg/wiki/Event:ITEM_RESTORATION_BUTTON_STATUS "Event:ITEM RESTORATION BUTTON STATUS")

[PETITION_CLOSED](https://warcraft.wiki.gg/wiki/Event:PETITION_CLOSED "Event:PETITION CLOSED")

[PETITION_SHOW](https://warcraft.wiki.gg/wiki/Event:PETITION_SHOW "Event:PETITION SHOW")

[PLAYER_REPORT_SUBMITTED](https://warcraft.wiki.gg/wiki/Event:PLAYER_REPORT_SUBMITTED "Event:PLAYER REPORT SUBMITTED"): invitedByGUID

[QUICK_TICKET_SYSTEM_STATUS](https://warcraft.wiki.gg/wiki/Event:QUICK_TICKET_SYSTEM_STATUS "Event:QUICK TICKET SYSTEM STATUS")

[QUICK_TICKET_THROTTLE_CHANGED](https://warcraft.wiki.gg/wiki/Event:QUICK_TICKET_THROTTLE_CHANGED "Event:QUICK TICKET THROTTLE CHANGED")

[UPDATE_WEB_TICKET](https://warcraft.wiki.gg/wiki/Event:UPDATE_WEB_TICKET "Event:UPDATE WEB TICKET"): hasTicket, numTickets, ticketStatus, caseIndex, waitTimeMinutes, waitMessage, caseTitle, caseDescription

## [GamePad](https://warcraft.wiki.gg/wiki/Category:API_systems/GamePad "Category:API systems/GamePad")

[GAME_PAD_ACTIVE_CHANGED](https://warcraft.wiki.gg/wiki/Event:GAME_PAD_ACTIVE_CHANGED "Event:GAME PAD ACTIVE CHANGED"): isActive

[GAME_PAD_CONFIGS_CHANGED](https://warcraft.wiki.gg/wiki/Event:GAME_PAD_CONFIGS_CHANGED "Event:GAME PAD CONFIGS CHANGED")

[GAME_PAD_CONNECTED](https://warcraft.wiki.gg/wiki/Event:GAME_PAD_CONNECTED "Event:GAME PAD CONNECTED")

[GAME_PAD_DISCONNECTED](https://warcraft.wiki.gg/wiki/Event:GAME_PAD_DISCONNECTED "Event:GAME PAD DISCONNECTED")

[GAME_PAD_POWER_CHANGED](https://warcraft.wiki.gg/wiki/Event:GAME_PAD_POWER_CHANGED "Event:GAME PAD POWER CHANGED"): powerLevel

## [GameRules](https://warcraft.wiki.gg/wiki/Category:API_systems/GameRules "Category:API systems/GameRules")

[ACTIVE_GAME_MODE_UPDATED](https://warcraft.wiki.gg/wiki/Event:ACTIVE_GAME_MODE_UPDATED "Event:ACTIVE GAME MODE UPDATED"): gameMode

[AVAILABLE_GAME_MODES_UPDATED](https://warcraft.wiki.gg/wiki/Event:AVAILABLE_GAME_MODES_UPDATED "Event:AVAILABLE GAME MODES UPDATED")

[EVENT_REALM_QUEUES_UPDATED](https://warcraft.wiki.gg/wiki/Event:EVENT_REALM_QUEUES_UPDATED "Event:EVENT REALM QUEUES UPDATED"): eventRealmQueues

[GAME_MODE_DISPLAY_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:GAME_MODE_DISPLAY_INFO_UPDATED "Event:GAME MODE DISPLAY INFO UPDATED")

[GAME_MODE_DISPLAY_MODE_TOGGLE_DISABLED](https://warcraft.wiki.gg/wiki/Event:GAME_MODE_DISPLAY_MODE_TOGGLE_DISABLED "Event:GAME MODE DISPLAY MODE TOGGLE DISABLED"): gameModeRecordID, disabled

## [GarrisonInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/GarrisonInfo "Category:API systems/GarrisonInfo")

[GARRISON_ARCHITECT_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_ARCHITECT_CLOSED "Event:GARRISON ARCHITECT CLOSED")

[GARRISON_ARCHITECT_OPENED](https://warcraft.wiki.gg/wiki/Event:GARRISON_ARCHITECT_OPENED "Event:GARRISON ARCHITECT OPENED"): followerTypeID

[GARRISON_BUILDING_ACTIVATABLE](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_ACTIVATABLE "Event:GARRISON BUILDING ACTIVATABLE"): buildingName, garrisonType

[GARRISON_BUILDING_ACTIVATED](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_ACTIVATED "Event:GARRISON BUILDING ACTIVATED"): garrisonPlotInstanceID, garrisonBuildingID

[GARRISON_BUILDING_ERROR](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_ERROR "Event:GARRISON BUILDING ERROR")

[GARRISON_BUILDING_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_LIST_UPDATE "Event:GARRISON BUILDING LIST UPDATE"): categoryID

[GARRISON_BUILDING_PLACED](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_PLACED "Event:GARRISON BUILDING PLACED"): garrisonPlotInstanceID, newPlacement

[GARRISON_BUILDING_REMOVED](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_REMOVED "Event:GARRISON BUILDING REMOVED"): garrPlotInstanceID, garrBuildingID

[GARRISON_BUILDING_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_BUILDING_UPDATE "Event:GARRISON BUILDING UPDATE"): garrisonBuildingID, garrPlotInstanceID

[GARRISON_FOLLOWER_ADDED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_ADDED "Event:GARRISON FOLLOWER ADDED"): followerDbID, followerName, followerClassName, followerLevel, followerQuality, isUpgraded, textureKit, followerTypeID

[GARRISON_FOLLOWER_CATEGORIES_UPDATED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_CATEGORIES_UPDATED "Event:GARRISON FOLLOWER CATEGORIES UPDATED")

[GARRISON_FOLLOWER_DURABILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_DURABILITY_CHANGED "Event:GARRISON FOLLOWER DURABILITY CHANGED"): garrFollowerTypeID, followerDbID, followerDurability

[GARRISON_FOLLOWER_HEALED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_HEALED "Event:GARRISON FOLLOWER HEALED"): followerID

[GARRISON_FOLLOWER_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_LIST_UPDATE "Event:GARRISON FOLLOWER LIST UPDATE"): followerTypeID

[GARRISON_FOLLOWER_REMOVED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_REMOVED "Event:GARRISON FOLLOWER REMOVED"): followerTypeID

[GARRISON_FOLLOWER_UPGRADED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_UPGRADED "Event:GARRISON FOLLOWER UPGRADED"): followerDbID

[GARRISON_FOLLOWER_XP_CHANGED](https://warcraft.wiki.gg/wiki/Event:GARRISON_FOLLOWER_XP_CHANGED "Event:GARRISON FOLLOWER XP CHANGED"): garrFollowerTypeID, followerDbID, xpChange, oldFollowerXp, oldFollowerLevel, oldFollowerQuality

[GARRISON_HIDE_LANDING_PAGE](https://warcraft.wiki.gg/wiki/Event:GARRISON_HIDE_LANDING_PAGE "Event:GARRISON HIDE LANDING PAGE")

[GARRISON_INVASION_AVAILABLE](https://warcraft.wiki.gg/wiki/Event:GARRISON_INVASION_AVAILABLE "Event:GARRISON INVASION AVAILABLE")

[GARRISON_INVASION_UNAVAILABLE](https://warcraft.wiki.gg/wiki/Event:GARRISON_INVASION_UNAVAILABLE "Event:GARRISON INVASION UNAVAILABLE")

[GARRISON_LANDINGPAGE_SHIPMENTS](https://warcraft.wiki.gg/wiki/Event:GARRISON_LANDINGPAGE_SHIPMENTS "Event:GARRISON LANDINGPAGE SHIPMENTS")

[GARRISON_MISSION_AREA_BONUS_ADDED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_AREA_BONUS_ADDED "Event:GARRISON MISSION AREA BONUS ADDED"): garrisonMissonBonusAbilityID

[GARRISON_MISSION_BONUS_ROLL_COMPLETE](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_BONUS_ROLL_COMPLETE "Event:GARRISON MISSION BONUS ROLL COMPLETE"): missionID, success

[GARRISON_MISSION_COMPLETE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_COMPLETE_RESPONSE "Event:GARRISON MISSION COMPLETE RESPONSE"): missionID, canComplete, success, bonusRollSuccess, followerDeaths, autoCombatResult

[GARRISON_MISSION_FINISHED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_FINISHED "Event:GARRISON MISSION FINISHED"): followerTypeID, missionID

[GARRISON_MISSION_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_LIST_UPDATE "Event:GARRISON MISSION LIST UPDATE"): garrFollowerTypeID

[GARRISON_MISSION_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_NPC_CLOSED "Event:GARRISON MISSION NPC CLOSED")

[GARRISON_MISSION_NPC_OPENED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_NPC_OPENED "Event:GARRISON MISSION NPC OPENED"): followerTypeID

[GARRISON_MISSION_REWARD_INFO](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_REWARD_INFO "Event:GARRISON MISSION REWARD INFO"): missionID, followerDbID

[GARRISON_MISSION_STARTED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_STARTED "Event:GARRISON MISSION STARTED"): garrFollowerTypeID, missionID

[GARRISON_MONUMENT_CLOSE_UI](https://warcraft.wiki.gg/wiki/Event:GARRISON_MONUMENT_CLOSE_UI "Event:GARRISON MONUMENT CLOSE UI")

[GARRISON_MONUMENT_LIST_LOADED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MONUMENT_LIST_LOADED "Event:GARRISON MONUMENT LIST LOADED"): success

[GARRISON_MONUMENT_REPLACED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MONUMENT_REPLACED "Event:GARRISON MONUMENT REPLACED"): success

[GARRISON_MONUMENT_SELECTED_TROPHY_ID_LOADED](https://warcraft.wiki.gg/wiki/Event:GARRISON_MONUMENT_SELECTED_TROPHY_ID_LOADED "Event:GARRISON MONUMENT SELECTED TROPHY ID LOADED"): success

[GARRISON_MONUMENT_SHOW_UI](https://warcraft.wiki.gg/wiki/Event:GARRISON_MONUMENT_SHOW_UI "Event:GARRISON MONUMENT SHOW UI")

[GARRISON_RANDOM_MISSION_ADDED](https://warcraft.wiki.gg/wiki/Event:GARRISON_RANDOM_MISSION_ADDED "Event:GARRISON RANDOM MISSION ADDED"): followerTypeID, missionID

[GARRISON_RECALL_PORTAL_LAST_USED_TIME](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECALL_PORTAL_LAST_USED_TIME "Event:GARRISON RECALL PORTAL LAST USED TIME"): success, recallPortalLastUsedTime

[GARRISON_RECALL_PORTAL_USED](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECALL_PORTAL_USED "Event:GARRISON RECALL PORTAL USED"): success

[GARRISON_RECRUIT_FOLLOWER_RESULT](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECRUIT_FOLLOWER_RESULT "Event:GARRISON RECRUIT FOLLOWER RESULT")

[GARRISON_RECRUITMENT_FOLLOWERS_GENERATED](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECRUITMENT_FOLLOWERS_GENERATED "Event:GARRISON RECRUITMENT FOLLOWERS GENERATED")

[GARRISON_RECRUITMENT_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECRUITMENT_NPC_CLOSED "Event:GARRISON RECRUITMENT NPC CLOSED")

[GARRISON_RECRUITMENT_NPC_OPENED](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECRUITMENT_NPC_OPENED "Event:GARRISON RECRUITMENT NPC OPENED"): followerTypeID

[GARRISON_RECRUITMENT_READY](https://warcraft.wiki.gg/wiki/Event:GARRISON_RECRUITMENT_READY "Event:GARRISON RECRUITMENT READY")

[GARRISON_SHIPMENT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:GARRISON_SHIPMENT_RECEIVED "Event:GARRISON SHIPMENT RECEIVED")

[GARRISON_SHIPYARD_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_SHIPYARD_NPC_CLOSED "Event:GARRISON SHIPYARD NPC CLOSED")

[GARRISON_SHIPYARD_NPC_OPENED](https://warcraft.wiki.gg/wiki/Event:GARRISON_SHIPYARD_NPC_OPENED "Event:GARRISON SHIPYARD NPC OPENED"): followerTypeID

[GARRISON_SHOW_LANDING_PAGE](https://warcraft.wiki.gg/wiki/Event:GARRISON_SHOW_LANDING_PAGE "Event:GARRISON SHOW LANDING PAGE")

[GARRISON_SPEC_GROUP_UPDATED](https://warcraft.wiki.gg/wiki/Event:GARRISON_SPEC_GROUP_UPDATED "Event:GARRISON SPEC GROUP UPDATED"): garrTypeID, specID

[GARRISON_SPEC_GROUPS_CLEARED](https://warcraft.wiki.gg/wiki/Event:GARRISON_SPEC_GROUPS_CLEARED "Event:GARRISON SPEC GROUPS CLEARED"): garrTypeID

[GARRISON_TALENT_COMPLETE](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_COMPLETE "Event:GARRISON TALENT COMPLETE"): garrTypeID, doAlert

[GARRISON_TALENT_EVENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_EVENT_UPDATE "Event:GARRISON TALENT EVENT UPDATE"): eventType, eventID

[GARRISON_TALENT_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_NPC_CLOSED "Event:GARRISON TALENT NPC CLOSED")

[GARRISON_TALENT_NPC_OPENED](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_NPC_OPENED "Event:GARRISON TALENT NPC OPENED"): garrisonTypeID, garrisonTalentTreeID

[GARRISON_TALENT_RESEARCH_STARTED](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_RESEARCH_STARTED "Event:GARRISON TALENT RESEARCH STARTED"): garrTypeID, garrisonTalentTreeID, garrTalentID

[GARRISON_TALENT_UNLOCKS_RESULT](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_UNLOCKS_RESULT "Event:GARRISON TALENT UNLOCKS RESULT")

[GARRISON_TALENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_TALENT_UPDATE "Event:GARRISON TALENT UPDATE"): garrTypeID

[GARRISON_TRADESKILL_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:GARRISON_TRADESKILL_NPC_CLOSED "Event:GARRISON TRADESKILL NPC CLOSED")

[GARRISON_UPDATE](https://warcraft.wiki.gg/wiki/Event:GARRISON_UPDATE "Event:GARRISON UPDATE")

[GARRISON_UPGRADEABLE_RESULT](https://warcraft.wiki.gg/wiki/Event:GARRISON_UPGRADEABLE_RESULT "Event:GARRISON UPGRADEABLE RESULT"): garrisonUpgradeable

[GARRISON_USE_PARTY_GARRISON_CHANGED](https://warcraft.wiki.gg/wiki/Event:GARRISON_USE_PARTY_GARRISON_CHANGED "Event:GARRISON USE PARTY GARRISON CHANGED")

[SHIPMENT_CRAFTER_CLOSED](https://warcraft.wiki.gg/wiki/Event:SHIPMENT_CRAFTER_CLOSED "Event:SHIPMENT CRAFTER CLOSED")

[SHIPMENT_CRAFTER_INFO](https://warcraft.wiki.gg/wiki/Event:SHIPMENT_CRAFTER_INFO "Event:SHIPMENT CRAFTER INFO"): success, shipmentCount, maxShipments, ownedShipments, plotInstanceID

[SHIPMENT_CRAFTER_OPENED](https://warcraft.wiki.gg/wiki/Event:SHIPMENT_CRAFTER_OPENED "Event:SHIPMENT CRAFTER OPENED"): charShipmentContainerID

[SHIPMENT_CRAFTER_REAGENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:SHIPMENT_CRAFTER_REAGENT_UPDATE "Event:SHIPMENT CRAFTER REAGENT UPDATE")

[SHIPMENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:SHIPMENT_UPDATE "Event:SHIPMENT UPDATE"): shipmentStarted, hasAttachedFollower

## [GenericWidgetDisplay](https://warcraft.wiki.gg/wiki/Category:API_systems/GenericWidgetDisplay "Category:API systems/GenericWidgetDisplay")

[GENERIC_WIDGET_DISPLAY_SHOW](https://warcraft.wiki.gg/wiki/Event:GENERIC_WIDGET_DISPLAY_SHOW "Event:GENERIC WIDGET DISPLAY SHOW"): info

## [Glue](https://warcraft.wiki.gg/wiki/Category:API_systems/Glue "Category:API systems/Glue")

[ACCOUNT_CVARS_LOADED](https://warcraft.wiki.gg/wiki/Event:ACCOUNT_CVARS_LOADED "Event:ACCOUNT CVARS LOADED")

## [GlyphInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/GlyphInfo "Category:API systems/GlyphInfo")

[ACTIVATE_GLYPH](https://warcraft.wiki.gg/wiki/Event:ACTIVATE_GLYPH "Event:ACTIVATE GLYPH"): spellID

[CANCEL_GLYPH_CAST](https://warcraft.wiki.gg/wiki/Event:CANCEL_GLYPH_CAST "Event:CANCEL GLYPH CAST")

[USE_GLYPH](https://warcraft.wiki.gg/wiki/Event:USE_GLYPH "Event:USE GLYPH"): spellID

## [GossipInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/GossipInfo "Category:API systems/GossipInfo")

[DYNAMIC_GOSSIP_POI_UPDATED](https://warcraft.wiki.gg/wiki/Event:DYNAMIC_GOSSIP_POI_UPDATED "Event:DYNAMIC GOSSIP POI UPDATED")

[GOSSIP_CLOSED](https://warcraft.wiki.gg/wiki/Event:GOSSIP_CLOSED "Event:GOSSIP CLOSED"): interactionIsContinuing

[GOSSIP_CONFIRM](https://warcraft.wiki.gg/wiki/Event:GOSSIP_CONFIRM "Event:GOSSIP CONFIRM"): gossipID, text, cost

[GOSSIP_CONFIRM_CANCEL](https://warcraft.wiki.gg/wiki/Event:GOSSIP_CONFIRM_CANCEL "Event:GOSSIP CONFIRM CANCEL")

[GOSSIP_ENTER_CODE](https://warcraft.wiki.gg/wiki/Event:GOSSIP_ENTER_CODE "Event:GOSSIP ENTER CODE"): gossipID

[GOSSIP_OPTIONS_REFRESHED](https://warcraft.wiki.gg/wiki/Event:GOSSIP_OPTIONS_REFRESHED "Event:GOSSIP OPTIONS REFRESHED")

[GOSSIP_SHOW](https://warcraft.wiki.gg/wiki/Event:GOSSIP_SHOW "Event:GOSSIP SHOW"): uiTextureKit

## [GuildBank](https://warcraft.wiki.gg/wiki/Category:API_systems/GuildBank "Category:API systems/GuildBank")

[GUILDBANK_ITEM_LOCK_CHANGED](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_ITEM_LOCK_CHANGED "Event:GUILDBANK ITEM LOCK CHANGED")

[GUILDBANK_TEXT_CHANGED](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_TEXT_CHANGED "Event:GUILDBANK TEXT CHANGED"): guildBankTab

[GUILDBANK_UPDATE_MONEY](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_UPDATE_MONEY "Event:GUILDBANK UPDATE MONEY")

[GUILDBANK_UPDATE_TABS](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_UPDATE_TABS "Event:GUILDBANK UPDATE TABS")

[GUILDBANK_UPDATE_TEXT](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_UPDATE_TEXT "Event:GUILDBANK UPDATE TEXT"): guildBankTab

[GUILDBANK_UPDATE_WITHDRAWMONEY](https://warcraft.wiki.gg/wiki/Event:GUILDBANK_UPDATE_WITHDRAWMONEY "Event:GUILDBANK UPDATE WITHDRAWMONEY")

[GUILDBANKBAGSLOTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:GUILDBANKBAGSLOTS_CHANGED "Event:GUILDBANKBAGSLOTS CHANGED")

[GUILDBANKFRAME_CLOSED](https://warcraft.wiki.gg/wiki/Event:GUILDBANKFRAME_CLOSED "Event:GUILDBANKFRAME CLOSED")

[GUILDBANKFRAME_OPENED](https://warcraft.wiki.gg/wiki/Event:GUILDBANKFRAME_OPENED "Event:GUILDBANKFRAME OPENED")

[GUILDBANKLOG_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILDBANKLOG_UPDATE "Event:GUILDBANKLOG UPDATE")

## [GuildInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/GuildInfo "Category:API systems/GuildInfo")

[CLOSE_TABARD_FRAME](https://warcraft.wiki.gg/wiki/Event:CLOSE_TABARD_FRAME "Event:CLOSE TABARD FRAME")

[DISABLE_DECLINE_GUILD_INVITE](https://warcraft.wiki.gg/wiki/Event:DISABLE_DECLINE_GUILD_INVITE "Event:DISABLE DECLINE GUILD INVITE")

[ENABLE_DECLINE_GUILD_INVITE](https://warcraft.wiki.gg/wiki/Event:ENABLE_DECLINE_GUILD_INVITE "Event:ENABLE DECLINE GUILD INVITE")

[GUILD_CHALLENGE_COMPLETED](https://warcraft.wiki.gg/wiki/Event:GUILD_CHALLENGE_COMPLETED "Event:GUILD CHALLENGE COMPLETED"): challengeType, currentCount, maxCount, goldAwarded

[GUILD_CHALLENGE_UPDATED](https://warcraft.wiki.gg/wiki/Event:GUILD_CHALLENGE_UPDATED "Event:GUILD CHALLENGE UPDATED")

[GUILD_EVENT_LOG_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_EVENT_LOG_UPDATE "Event:GUILD EVENT LOG UPDATE")

[GUILD_INVITE_CANCEL](https://warcraft.wiki.gg/wiki/Event:GUILD_INVITE_CANCEL "Event:GUILD INVITE CANCEL")

[GUILD_INVITE_REQUEST](https://warcraft.wiki.gg/wiki/Event:GUILD_INVITE_REQUEST "Event:GUILD INVITE REQUEST"): inviter, guildName, guildAchievementPoints, oldGuildName, isNewGuild, tabardInfo

[GUILD_MOTD](https://warcraft.wiki.gg/wiki/Event:GUILD_MOTD "Event:GUILD MOTD"): motdText

[GUILD_NEWS_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_NEWS_UPDATE "Event:GUILD NEWS UPDATE")

[GUILD_PARTY_STATE_UPDATED](https://warcraft.wiki.gg/wiki/Event:GUILD_PARTY_STATE_UPDATED "Event:GUILD PARTY STATE UPDATED"): inGuildParty

[GUILD_RANKS_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_RANKS_UPDATE "Event:GUILD RANKS UPDATE")

[GUILD_RANKS_UPDATE_ACTIVE_PLAYER](https://warcraft.wiki.gg/wiki/Event:GUILD_RANKS_UPDATE_ACTIVE_PLAYER "Event:GUILD RANKS UPDATE ACTIVE PLAYER")

[GUILD_RECIPE_KNOWN_BY_MEMBERS](https://warcraft.wiki.gg/wiki/Event:GUILD_RECIPE_KNOWN_BY_MEMBERS "Event:GUILD RECIPE KNOWN BY MEMBERS")

[GUILD_REGISTRAR_CLOSED](https://warcraft.wiki.gg/wiki/Event:GUILD_REGISTRAR_CLOSED "Event:GUILD REGISTRAR CLOSED")

[GUILD_REGISTRAR_SHOW](https://warcraft.wiki.gg/wiki/Event:GUILD_REGISTRAR_SHOW "Event:GUILD REGISTRAR SHOW")

[GUILD_RENAME_NAME_CHECK](https://warcraft.wiki.gg/wiki/Event:GUILD_RENAME_NAME_CHECK "Event:GUILD RENAME NAME CHECK"): desiredName, status, nameErrorToken

[GUILD_RENAME_REFUND_RESULT](https://warcraft.wiki.gg/wiki/Event:GUILD_RENAME_REFUND_RESULT "Event:GUILD RENAME REFUND RESULT"): guildName, status

[GUILD_RENAME_REQUIRED](https://warcraft.wiki.gg/wiki/Event:GUILD_RENAME_REQUIRED "Event:GUILD RENAME REQUIRED"): flagSet

[GUILD_RENAME_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_RENAME_STATUS_UPDATE "Event:GUILD RENAME STATUS UPDATE"): status

[GUILD_REWARDS_LIST](https://warcraft.wiki.gg/wiki/Event:GUILD_REWARDS_LIST "Event:GUILD REWARDS LIST")

[GUILD_REWARDS_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_REWARDS_LIST_UPDATE "Event:GUILD REWARDS LIST UPDATE")

[GUILD_ROSTER_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_ROSTER_UPDATE "Event:GUILD ROSTER UPDATE"): canRequestRosterUpdate

[GUILD_TRADESKILL_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILD_TRADESKILL_UPDATE "Event:GUILD TRADESKILL UPDATE")

[GUILDTABARD_UPDATE](https://warcraft.wiki.gg/wiki/Event:GUILDTABARD_UPDATE "Event:GUILDTABARD UPDATE")

[OPEN_TABARD_FRAME](https://warcraft.wiki.gg/wiki/Event:OPEN_TABARD_FRAME "Event:OPEN TABARD FRAME")

[PLAYER_GUILD_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_GUILD_UPDATE "Event:PLAYER GUILD UPDATE"): unitTarget

[REQUESTED_GUILD_RENAME_RESULT](https://warcraft.wiki.gg/wiki/Event:REQUESTED_GUILD_RENAME_RESULT "Event:REQUESTED GUILD RENAME RESULT"): newName, status

[REQUIRED_GUILD_RENAME_RESULT](https://warcraft.wiki.gg/wiki/Event:REQUIRED_GUILD_RENAME_RESULT "Event:REQUIRED GUILD RENAME RESULT"): success

[TABARD_CANSAVE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TABARD_CANSAVE_CHANGED "Event:TABARD CANSAVE CHANGED")

[TABARD_SAVE_PENDING](https://warcraft.wiki.gg/wiki/Event:TABARD_SAVE_PENDING "Event:TABARD SAVE PENDING")

[UNIT_GUILD_LEVEL](https://warcraft.wiki.gg/wiki/Event:UNIT_GUILD_LEVEL "Event:UNIT GUILD LEVEL"): newLevel

## [HeirloomInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/HeirloomInfo "Category:API systems/HeirloomInfo")

[HEIRLOOM_UPGRADE_TARGETING_CHANGED](https://warcraft.wiki.gg/wiki/Event:HEIRLOOM_UPGRADE_TARGETING_CHANGED "Event:HEIRLOOM UPGRADE TARGETING CHANGED"): pendingHeirloomUpgradeSpellcast

[HEIRLOOMS_UPDATED](https://warcraft.wiki.gg/wiki/Event:HEIRLOOMS_UPDATED "Event:HEIRLOOMS UPDATED"): itemID, updateReason, hideUntilLearned

## [HouseEditorUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HouseEditorUI "Category:API systems/HouseEditorUI")

[HOUSE_EDITOR_AVAILABILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSE_EDITOR_AVAILABILITY_CHANGED "Event:HOUSE EDITOR AVAILABILITY CHANGED")

[HOUSE_EDITOR_MODE_CHANGE_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSE_EDITOR_MODE_CHANGE_FAILURE "Event:HOUSE EDITOR MODE CHANGE FAILURE"): result

[HOUSE_EDITOR_MODE_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSE_EDITOR_MODE_CHANGED "Event:HOUSE EDITOR MODE CHANGED"): currentEditMode

## [HouseExteriorUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HouseExteriorUI "Category:API systems/HouseExteriorUI")

[HOUSE_EXTERIOR_DECOR_HIDDEN_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSE_EXTERIOR_DECOR_HIDDEN_CHANGED "Event:HOUSE EXTERIOR DECOR HIDDEN CHANGED"): isDecorHidden

[HOUSE_EXTERIOR_TYPE_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:HOUSE_EXTERIOR_TYPE_UNLOCKED "Event:HOUSE EXTERIOR TYPE UNLOCKED"): fixtureID

[HOUSING_CORE_FIXTURE_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CORE_FIXTURE_CHANGED "Event:HOUSING CORE FIXTURE CHANGED"): coreFixtureType

[HOUSING_FIXTURE_HOVER_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_HOVER_CHANGED "Event:HOUSING FIXTURE HOVER CHANGED"): anyHovered

[HOUSING_FIXTURE_POINT_FRAME_ADDED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_POINT_FRAME_ADDED "Event:HOUSING FIXTURE POINT FRAME ADDED"): pointFrame

[HOUSING_FIXTURE_POINT_FRAME_RELEASED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_POINT_FRAME_RELEASED "Event:HOUSING FIXTURE POINT FRAME RELEASED"): pointFrame

[HOUSING_FIXTURE_POINT_FRAMES_RELEASED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_POINT_FRAMES_RELEASED "Event:HOUSING FIXTURE POINT FRAMES RELEASED")

[HOUSING_FIXTURE_POINT_SELECTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_POINT_SELECTION_CHANGED "Event:HOUSING FIXTURE POINT SELECTION CHANGED"): hasSelection

[HOUSING_FIXTURE_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:HOUSING_FIXTURE_UNLOCKED "Event:HOUSING FIXTURE UNLOCKED"): fixtureID

[HOUSING_SET_EXTERIOR_HOUSE_SIZE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:HOUSING_SET_EXTERIOR_HOUSE_SIZE_RESPONSE "Event:HOUSING SET EXTERIOR HOUSE SIZE RESPONSE"): result

[HOUSING_SET_EXTERIOR_HOUSE_TYPE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:HOUSING_SET_EXTERIOR_HOUSE_TYPE_RESPONSE "Event:HOUSING SET EXTERIOR HOUSE TYPE RESPONSE"): result

[HOUSING_SET_FIXTURE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:HOUSING_SET_FIXTURE_RESPONSE "Event:HOUSING SET FIXTURE RESPONSE"): result

## [HousingBasicModeUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingBasicModeUI "Category:API systems/HousingBasicModeUI")

[HOUSING_BASIC_MODE_HOVERED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BASIC_MODE_HOVERED_TARGET_CHANGED "Event:HOUSING BASIC MODE HOVERED TARGET CHANGED"): hasHoveredTarget, targetType

[HOUSING_BASIC_MODE_PLACEMENT_FLAGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BASIC_MODE_PLACEMENT_FLAGS_UPDATED "Event:HOUSING BASIC MODE PLACEMENT FLAGS UPDATED"): targetType, activeFlags

[HOUSING_BASIC_MODE_SELECTED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BASIC_MODE_SELECTED_TARGET_CHANGED "Event:HOUSING BASIC MODE SELECTED TARGET CHANGED"): hasSelectedTarget, targetType, isPreview

[HOUSING_DECOR_FREE_PLACE_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_FREE_PLACE_STATUS_CHANGED "Event:HOUSING DECOR FREE PLACE STATUS CHANGED"): isFreePlaceEnabled

[HOUSING_DECOR_GRID_SNAP_OCCURRED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_GRID_SNAP_OCCURRED "Event:HOUSING DECOR GRID SNAP OCCURRED")

[HOUSING_DECOR_GRID_SNAP_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_GRID_SNAP_STATUS_CHANGED "Event:HOUSING DECOR GRID SNAP STATUS CHANGED"): isGridSnapEnabled

## [HousingBlueprintUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingBlueprintUI "Category:API systems/HousingBlueprintUI")

[HOUSING_BLUEPRINT_COLLECTION_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_COLLECTION_FAILURE "Event:HOUSING BLUEPRINT COLLECTION FAILURE"): result

[HOUSING_BLUEPRINT_COLLECTION_RECEIVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_COLLECTION_RECEIVED "Event:HOUSING BLUEPRINT COLLECTION RECEIVED"): collection

[HOUSING_BLUEPRINT_CONTENTS_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_CONTENTS_FAILURE "Event:HOUSING BLUEPRINT CONTENTS FAILURE"): blueprintShareCode, result

[HOUSING_BLUEPRINT_CONTENTS_RECEIVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_CONTENTS_RECEIVED "Event:HOUSING BLUEPRINT CONTENTS RECEIVED"): contentInfo

[HOUSING_BLUEPRINT_DELETE_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_DELETE_FAILURE "Event:HOUSING BLUEPRINT DELETE FAILURE"): blueprintID, result

[HOUSING_BLUEPRINT_DELETE_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_DELETE_SUCCESS "Event:HOUSING BLUEPRINT DELETE SUCCESS"): blueprintID

[HOUSING_BLUEPRINT_EXPORT_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_EXPORT_FAILURE "Event:HOUSING BLUEPRINT EXPORT FAILURE"): result

[HOUSING_BLUEPRINT_EXPORT_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_EXPORT_SUCCESS "Event:HOUSING BLUEPRINT EXPORT SUCCESS"): blueprintShareCode

[HOUSING_BLUEPRINT_IMPORT_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_IMPORT_FAILURE "Event:HOUSING BLUEPRINT IMPORT FAILURE"): result

[HOUSING_BLUEPRINT_IMPORT_STARTED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_IMPORT_STARTED "Event:HOUSING BLUEPRINT IMPORT STARTED")

[HOUSING_BLUEPRINT_IMPORT_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_IMPORT_SUCCESS "Event:HOUSING BLUEPRINT IMPORT SUCCESS")

[HOUSING_BLUEPRINT_RENAME_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_RENAME_FAILURE "Event:HOUSING BLUEPRINT RENAME FAILURE"): blueprintID, result

[HOUSING_BLUEPRINT_RENAME_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINT_RENAME_SUCCESS "Event:HOUSING BLUEPRINT RENAME SUCCESS"): blueprintID, name

[HOUSING_BLUEPRINTS_AVAILABILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_BLUEPRINTS_AVAILABILITY_CHANGED "Event:HOUSING BLUEPRINTS AVAILABILITY CHANGED")

## [HousingCatalogUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingCatalogUI "Category:API systems/HousingCatalogUI")

[HOUSING_CATALOG_CATEGORY_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CATALOG_CATEGORY_UPDATED "Event:HOUSING CATALOG CATEGORY UPDATED"): categoryID

[HOUSING_CATALOG_SUBCATEGORY_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CATALOG_SUBCATEGORY_UPDATED "Event:HOUSING CATALOG SUBCATEGORY UPDATED"): subcategoryID

[HOUSING_DECOR_ADD_TO_PREVIEW_LIST](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_ADD_TO_PREVIEW_LIST "Event:HOUSING DECOR ADD TO PREVIEW LIST"): previewItemData

[HOUSING_DECOR_PREVIEW_LIST_REMOVE_FROM_WORLD](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PREVIEW_LIST_REMOVE_FROM_WORLD "Event:HOUSING DECOR PREVIEW LIST REMOVE FROM WORLD"): decorGUID

[HOUSING_DECOR_PREVIEW_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PREVIEW_LIST_UPDATED "Event:HOUSING DECOR PREVIEW LIST UPDATED")

[HOUSING_REFUND_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_REFUND_LIST_UPDATED "Event:HOUSING REFUND LIST UPDATED")

[HOUSING_STORAGE_ENTRY_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_STORAGE_ENTRY_UPDATED "Event:HOUSING STORAGE ENTRY UPDATED"): entryVariantID

[HOUSING_STORAGE_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_STORAGE_UPDATED "Event:HOUSING STORAGE UPDATED")

## [HousingCleanupModeUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingCleanupModeUI "Category:API systems/HousingCleanupModeUI")

[HOUSING_CLEANUP_MODE_HOVERED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CLEANUP_MODE_HOVERED_TARGET_CHANGED "Event:HOUSING CLEANUP MODE HOVERED TARGET CHANGED"): hasHoveredTarget, targetType

[HOUSING_CLEANUP_MODE_TARGET_SELECTED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CLEANUP_MODE_TARGET_SELECTED "Event:HOUSING CLEANUP MODE TARGET SELECTED")

## [HousingCustomizeModeUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingCustomizeModeUI "Category:API systems/HousingCustomizeModeUI")

[HOUSING_CUSTOMIZE_MODE_HOVERED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CUSTOMIZE_MODE_HOVERED_TARGET_CHANGED "Event:HOUSING CUSTOMIZE MODE HOVERED TARGET CHANGED"): hasHoveredTarget, targetType

[HOUSING_CUSTOMIZE_MODE_SELECTED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_CUSTOMIZE_MODE_SELECTED_TARGET_CHANGED "Event:HOUSING CUSTOMIZE MODE SELECTED TARGET CHANGED"): hasSelectedTarget, targetType

[HOUSING_DECOR_CUSTOMIZATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_CUSTOMIZATION_CHANGED "Event:HOUSING DECOR CUSTOMIZATION CHANGED"): decorGUID

[HOUSING_DECOR_DYE_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_DYE_FAILURE "Event:HOUSING DECOR DYE FAILURE"): decorGUID, housingResult

[HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGE_FAILED](https://warcraft.wiki.gg/wiki/Event:HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGE_FAILED "Event:HOUSING ROOM COMPONENT CUSTOMIZATION CHANGE FAILED"): roomGUID, componentID, housingResult

[HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGED "Event:HOUSING ROOM COMPONENT CUSTOMIZATION CHANGED"): roomGUID, componentID

## [HousingDecorUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingDecorUI "Category:API systems/HousingDecorUI")

[HOUSE_DECOR_ADDED_TO_CHEST](https://warcraft.wiki.gg/wiki/Event:HOUSE_DECOR_ADDED_TO_CHEST "Event:HOUSE DECOR ADDED TO CHEST"): decorGUID, decorID

[HOUSE_EXTERIOR_POSITION_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSE_EXTERIOR_POSITION_FAILURE "Event:HOUSE EXTERIOR POSITION FAILURE"): housingResult

[HOUSE_EXTERIOR_POSITION_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSE_EXTERIOR_POSITION_SUCCESS "Event:HOUSE EXTERIOR POSITION SUCCESS")

[HOUSING_DECOR_GRID_VISIBILITY_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_GRID_VISIBILITY_STATUS_CHANGED "Event:HOUSING DECOR GRID VISIBILITY STATUS CHANGED"): isGridVisible

[HOUSING_DECOR_PLACE_FAILURE](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PLACE_FAILURE "Event:HOUSING DECOR PLACE FAILURE"): housingResult

[HOUSING_DECOR_PLACE_SUCCESS](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PLACE_SUCCESS "Event:HOUSING DECOR PLACE SUCCESS"): decorGUID, size, isNew, isPreview

[HOUSING_DECOR_PREVIEW_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PREVIEW_STATE_CHANGED "Event:HOUSING DECOR PREVIEW STATE CHANGED"): isPreviewState

[HOUSING_DECOR_REMOVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_REMOVED "Event:HOUSING DECOR REMOVED"): decorGUID

[HOUSING_DECOR_SELECT_RESPONSE](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_SELECT_RESPONSE "Event:HOUSING DECOR SELECT RESPONSE"): result

[HOUSING_NEW_DECOR_PLACE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:HOUSING_NEW_DECOR_PLACE_COMPLETE "Event:HOUSING NEW DECOR PLACE COMPLETE"): decorGUID

[HOUSING_NUM_DECOR_PLACED_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_NUM_DECOR_PLACED_CHANGED "Event:HOUSING NUM DECOR PLACED CHANGED")

## [HousingExpertModeUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingExpertModeUI "Category:API systems/HousingExpertModeUI")

[HOUSING_DECOR_PRECISION_MANIPULATION_EVENT](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PRECISION_MANIPULATION_EVENT "Event:HOUSING DECOR PRECISION MANIPULATION EVENT"): event

[HOUSING_DECOR_PRECISION_MANIPULATION_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PRECISION_MANIPULATION_STATUS_CHANGED "Event:HOUSING DECOR PRECISION MANIPULATION STATUS CHANGED"): isManipulatingSelection

[HOUSING_DECOR_PRECISION_SUBMODE_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_DECOR_PRECISION_SUBMODE_CHANGED "Event:HOUSING DECOR PRECISION SUBMODE CHANGED"): activeSubmode

[HOUSING_EXPERT_MODE_HOVERED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_EXPERT_MODE_HOVERED_TARGET_CHANGED "Event:HOUSING EXPERT MODE HOVERED TARGET CHANGED"): hasHoveredTarget, targetType

[HOUSING_EXPERT_MODE_PLACEMENT_FLAGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_EXPERT_MODE_PLACEMENT_FLAGS_UPDATED "Event:HOUSING EXPERT MODE PLACEMENT FLAGS UPDATED"): targetType, activeFlags

[HOUSING_EXPERT_MODE_SELECTED_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_EXPERT_MODE_SELECTED_TARGET_CHANGED "Event:HOUSING EXPERT MODE SELECTED TARGET CHANGED"): hasSelectedTarget, targetType

## [HousingInspectModeUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingInspectModeUI "Category:API systems/HousingInspectModeUI")

[HOUSING_INSPECT_MODE_DECOR_HOVERED_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_INSPECT_MODE_DECOR_HOVERED_CHANGED "Event:HOUSING INSPECT MODE DECOR HOVERED CHANGED")

[HOUSING_INSPECT_MODE_STATE_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_INSPECT_MODE_STATE_UPDATED "Event:HOUSING INSPECT MODE STATE UPDATED")

## [HousingLayoutUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingLayoutUI "Category:API systems/HousingLayoutUI")

[HOUSING_LAYOUT_DOOR_SELECTED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_DOOR_SELECTED "Event:HOUSING LAYOUT DOOR SELECTED"): roomGUID, componentID

[HOUSING_LAYOUT_DOOR_SELECTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_DOOR_SELECTION_CHANGED "Event:HOUSING LAYOUT DOOR SELECTION CHANGED"): hasSelection

[HOUSING_LAYOUT_DRAG_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_DRAG_TARGET_CHANGED "Event:HOUSING LAYOUT DRAG TARGET CHANGED"): isDraggingRoom

[HOUSING_LAYOUT_FLOORPLAN_SELECTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_FLOORPLAN_SELECTION_CHANGED "Event:HOUSING LAYOUT FLOORPLAN SELECTION CHANGED"): hasSelection, roomID, blueprintShareCode

[HOUSING_LAYOUT_OCCUPIED_FLOOR_RANGE_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_OCCUPIED_FLOOR_RANGE_CHANGED "Event:HOUSING LAYOUT OCCUPIED FLOOR RANGE CHANGED"): lowestFloor, highestFloor

[HOUSING_LAYOUT_PIN_FRAME_ADDED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_PIN_FRAME_ADDED "Event:HOUSING LAYOUT PIN FRAME ADDED"): pinFrame

[HOUSING_LAYOUT_PIN_FRAME_RELEASED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_PIN_FRAME_RELEASED "Event:HOUSING LAYOUT PIN FRAME RELEASED"): pinFrame

[HOUSING_LAYOUT_PIN_FRAMES_RELEASED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_PIN_FRAMES_RELEASED "Event:HOUSING LAYOUT PIN FRAMES RELEASED")

[HOUSING_LAYOUT_ROOM_COMPONENT_THEME_SET_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_COMPONENT_THEME_SET_CHANGED "Event:HOUSING LAYOUT ROOM COMPONENT THEME SET CHANGED"): roomGUID, componentID, newThemeSet, result

[HOUSING_LAYOUT_ROOM_MOVE_INVALID](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_MOVE_INVALID "Event:HOUSING LAYOUT ROOM MOVE INVALID")

[HOUSING_LAYOUT_ROOM_MOVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_MOVED "Event:HOUSING LAYOUT ROOM MOVED")

[HOUSING_LAYOUT_ROOM_RECEIVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_RECEIVED "Event:HOUSING LAYOUT ROOM RECEIVED"): playAddedSound

[HOUSING_LAYOUT_ROOM_REMOVED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_REMOVED "Event:HOUSING LAYOUT ROOM REMOVED")

[HOUSING_LAYOUT_ROOM_RETURNED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_RETURNED "Event:HOUSING LAYOUT ROOM RETURNED")

[HOUSING_LAYOUT_ROOM_SELECTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_SELECTION_CHANGED "Event:HOUSING LAYOUT ROOM SELECTION CHANGED"): hasSelection

[HOUSING_LAYOUT_ROOM_SNAPPED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_ROOM_SNAPPED "Event:HOUSING LAYOUT ROOM SNAPPED")

[HOUSING_LAYOUT_VIEWED_FLOOR_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSING_LAYOUT_VIEWED_FLOOR_CHANGED "Event:HOUSING LAYOUT VIEWED FLOOR CHANGED"): floor

[SHOW_STAIR_DIRECTION_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:SHOW_STAIR_DIRECTION_CONFIRMATION "Event:SHOW STAIR DIRECTION CONFIRMATION")

## [HousingNeighborhoodUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingNeighborhoodUI "Category:API systems/HousingNeighborhoodUI")

[CANCEL_NEIGHBORHOOD_INVITE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:CANCEL_NEIGHBORHOOD_INVITE_RESPONSE "Event:CANCEL NEIGHBORHOOD INVITE RESPONSE"): result, playerName

[CLOSE_PLOT_CORNERSTONE](https://warcraft.wiki.gg/wiki/Event:CLOSE_PLOT_CORNERSTONE "Event:CLOSE PLOT CORNERSTONE")

[NEIGHBORHOOD_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_INFO_UPDATED "Event:NEIGHBORHOOD INFO UPDATED"): neighborhoodInfo

[NEIGHBORHOOD_INVITE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_INVITE_RESPONSE "Event:NEIGHBORHOOD INVITE RESPONSE"): result

[NEIGHBORHOOD_MAP_DATA_UPDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_MAP_DATA_UPDATED "Event:NEIGHBORHOOD MAP DATA UPDATED")

[NEIGHBORHOOD_NAME_UPDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_NAME_UPDATED "Event:NEIGHBORHOOD NAME UPDATED"): neighborhoodGuid, neighborhoodName

[OPEN_PLOT_CORNERSTONE](https://warcraft.wiki.gg/wiki/Event:OPEN_PLOT_CORNERSTONE "Event:OPEN PLOT CORNERSTONE")

[PENDING_NEIGHBORHOOD_INVITES_RECIEVED](https://warcraft.wiki.gg/wiki/Event:PENDING_NEIGHBORHOOD_INVITES_RECIEVED "Event:PENDING NEIGHBORHOOD INVITES RECIEVED"): result, pendingInviteList

[PURCHASE_PLOT_RESULT](https://warcraft.wiki.gg/wiki/Event:PURCHASE_PLOT_RESULT "Event:PURCHASE PLOT RESULT"): result

[SHOW_PLAYER_EVICTED_DIALOG](https://warcraft.wiki.gg/wiki/Event:SHOW_PLAYER_EVICTED_DIALOG "Event:SHOW PLAYER EVICTED DIALOG")

[UPDATE_BULLETIN_BOARD_MEMBER_TYPE](https://warcraft.wiki.gg/wiki/Event:UPDATE_BULLETIN_BOARD_MEMBER_TYPE "Event:UPDATE BULLETIN BOARD MEMBER TYPE"): player, residentType

[UPDATE_BULLETIN_BOARD_ROSTER](https://warcraft.wiki.gg/wiki/Event:UPDATE_BULLETIN_BOARD_ROSTER "Event:UPDATE BULLETIN BOARD ROSTER"): neighborhoodInfo, rosterMemberList

[UPDATE_BULLETIN_BOARD_ROSTER_STATUSES](https://warcraft.wiki.gg/wiki/Event:UPDATE_BULLETIN_BOARD_ROSTER_STATUSES "Event:UPDATE BULLETIN BOARD ROSTER STATUSES"): rosterMemberList

## [HousingUI](https://warcraft.wiki.gg/wiki/Category:API_systems/HousingUI "Category:API systems/HousingUI")

[ADD_NEIGHBORHOOD_CHARTER_SIGNATURE](https://warcraft.wiki.gg/wiki/Event:ADD_NEIGHBORHOOD_CHARTER_SIGNATURE "Event:ADD NEIGHBORHOOD CHARTER SIGNATURE"): signature

[B_NET_NEIGHBORHOOD_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:B_NET_NEIGHBORHOOD_LIST_UPDATED "Event:B NET NEIGHBORHOOD LIST UPDATED"): result, neighborhoodInfos

[CLOSE_CHARTER_CONFIRMATION_UI](https://warcraft.wiki.gg/wiki/Event:CLOSE_CHARTER_CONFIRMATION_UI "Event:CLOSE CHARTER CONFIRMATION UI")

[CLOSE_CREATE_CHARTER_NEIGHBORHOOD_UI](https://warcraft.wiki.gg/wiki/Event:CLOSE_CREATE_CHARTER_NEIGHBORHOOD_UI "Event:CLOSE CREATE CHARTER NEIGHBORHOOD UI")

[CLOSE_CREATE_GUILD_NEIGHBORHOOD_UI](https://warcraft.wiki.gg/wiki/Event:CLOSE_CREATE_GUILD_NEIGHBORHOOD_UI "Event:CLOSE CREATE GUILD NEIGHBORHOOD UI")

[CREATE_NEIGHBORHOOD_RESULT](https://warcraft.wiki.gg/wiki/Event:CREATE_NEIGHBORHOOD_RESULT "Event:CREATE NEIGHBORHOOD RESULT"): result, neighborhoodName

[CURRENT_HOUSE_INFO_RECIEVED](https://warcraft.wiki.gg/wiki/Event:CURRENT_HOUSE_INFO_RECIEVED "Event:CURRENT HOUSE INFO RECIEVED"): houseInfo

[CURRENT_HOUSE_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:CURRENT_HOUSE_INFO_UPDATED "Event:CURRENT HOUSE INFO UPDATED"): houseInfo

[DECLINE_NEIGHBORHOOD_INVITATION_RESPONSE](https://warcraft.wiki.gg/wiki/Event:DECLINE_NEIGHBORHOOD_INVITATION_RESPONSE "Event:DECLINE NEIGHBORHOOD INVITATION RESPONSE"): success

[FORCE_REFRESH_HOUSE_FINDER](https://warcraft.wiki.gg/wiki/Event:FORCE_REFRESH_HOUSE_FINDER "Event:FORCE REFRESH HOUSE FINDER")

[HOUSE_FINDER_NEIGHBORHOOD_DATA_RECIEVED](https://warcraft.wiki.gg/wiki/Event:HOUSE_FINDER_NEIGHBORHOOD_DATA_RECIEVED "Event:HOUSE FINDER NEIGHBORHOOD DATA RECIEVED"): neighborhoodPlots

[HOUSE_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSE_INFO_UPDATED "Event:HOUSE INFO UPDATED")

[HOUSE_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:HOUSE_LEVEL_CHANGED "Event:HOUSE LEVEL CHANGED"): newHouseLevelInfo

[HOUSE_LEVEL_FAVOR_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSE_LEVEL_FAVOR_UPDATED "Event:HOUSE LEVEL FAVOR UPDATED"): houseLevelFavor

[HOUSE_PLOT_ENTERED](https://warcraft.wiki.gg/wiki/Event:HOUSE_PLOT_ENTERED "Event:HOUSE PLOT ENTERED")

[HOUSE_PLOT_EXITED](https://warcraft.wiki.gg/wiki/Event:HOUSE_PLOT_EXITED "Event:HOUSE PLOT EXITED")

[HOUSE_RESERVATION_RESPONSE_RECIEVED](https://warcraft.wiki.gg/wiki/Event:HOUSE_RESERVATION_RESPONSE_RECIEVED "Event:HOUSE RESERVATION RESPONSE RECIEVED"): result

[HOUSE_RESET_COMPLETED](https://warcraft.wiki.gg/wiki/Event:HOUSE_RESET_COMPLETED "Event:HOUSE RESET COMPLETED")

[HOUSE_RESET_FAILED](https://warcraft.wiki.gg/wiki/Event:HOUSE_RESET_FAILED "Event:HOUSE RESET FAILED"): result

[HOUSING_MARKET_AVAILABILITY_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_MARKET_AVAILABILITY_UPDATED "Event:HOUSING MARKET AVAILABILITY UPDATED")

[HOUSING_SERVICES_AVAILABILITY_UPDATED](https://warcraft.wiki.gg/wiki/Event:HOUSING_SERVICES_AVAILABILITY_UPDATED "Event:HOUSING SERVICES AVAILABILITY UPDATED")

[IGNORE_NEIGHBORHOOD_RESPONSE](https://warcraft.wiki.gg/wiki/Event:IGNORE_NEIGHBORHOOD_RESPONSE "Event:IGNORE NEIGHBORHOOD RESPONSE"): success, neighborhoodGuid

[MOVE_OUT_RESERVATION_UPDATED](https://warcraft.wiki.gg/wiki/Event:MOVE_OUT_RESERVATION_UPDATED "Event:MOVE OUT RESERVATION UPDATED")

[NEIGHBORHOOD_GUILD_SIZE_VALIDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_GUILD_SIZE_VALIDATED "Event:NEIGHBORHOOD GUILD SIZE VALIDATED"): approved

[NEIGHBORHOOD_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_LIST_UPDATED "Event:NEIGHBORHOOD LIST UPDATED"): result, neighborhoodInfos

[NEIGHBORHOOD_NAME_VALIDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_NAME_VALIDATED "Event:NEIGHBORHOOD NAME VALIDATED"): approved

[NEW_HOUSING_ITEM_ACQUIRED](https://warcraft.wiki.gg/wiki/Event:NEW_HOUSING_ITEM_ACQUIRED "Event:NEW HOUSING ITEM ACQUIRED"): itemType, itemName, icon

[OPEN_CHARTER_CONFIRMATION_UI](https://warcraft.wiki.gg/wiki/Event:OPEN_CHARTER_CONFIRMATION_UI "Event:OPEN CHARTER CONFIRMATION UI"): neighborhoodName, locationName

[OPEN_CREATE_CHARTER_NEIGHBORHOOD_UI](https://warcraft.wiki.gg/wiki/Event:OPEN_CREATE_CHARTER_NEIGHBORHOOD_UI "Event:OPEN CREATE CHARTER NEIGHBORHOOD UI"): locationName

[OPEN_CREATE_GUILD_NEIGHBORHOOD_UI](https://warcraft.wiki.gg/wiki/Event:OPEN_CREATE_GUILD_NEIGHBORHOOD_UI "Event:OPEN CREATE GUILD NEIGHBORHOOD UI"): locationName

[OPEN_NEIGHBORHOOD_CHARTER](https://warcraft.wiki.gg/wiki/Event:OPEN_NEIGHBORHOOD_CHARTER "Event:OPEN NEIGHBORHOOD CHARTER"): neighborhoodInfo, signatures, requiredSignatures

[OPEN_NEIGHBORHOOD_CHARTER_SIGNATURE_REQUEST](https://warcraft.wiki.gg/wiki/Event:OPEN_NEIGHBORHOOD_CHARTER_SIGNATURE_REQUEST "Event:OPEN NEIGHBORHOOD CHARTER SIGNATURE REQUEST"): neighborhoodInfo

[PLAYER_CHARACTER_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:PLAYER_CHARACTER_LIST_UPDATED "Event:PLAYER CHARACTER LIST UPDATED"): characterInfos, ownerListIndex

[PLAYER_HOUSE_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:PLAYER_HOUSE_LIST_UPDATED "Event:PLAYER HOUSE LIST UPDATED"): houseInfos

[RECEIVED_HOUSE_LEVEL_REWARDS](https://warcraft.wiki.gg/wiki/Event:RECEIVED_HOUSE_LEVEL_REWARDS "Event:RECEIVED HOUSE LEVEL REWARDS"): level, rewards

[REMOVE_NEIGHBORHOOD_CHARTER_SIGNATURE](https://warcraft.wiki.gg/wiki/Event:REMOVE_NEIGHBORHOOD_CHARTER_SIGNATURE "Event:REMOVE NEIGHBORHOOD CHARTER SIGNATURE"): signature

[SHOW_NEIGHBORHOOD_OWNERSHIP_TRANSFER_DIALOG](https://warcraft.wiki.gg/wiki/Event:SHOW_NEIGHBORHOOD_OWNERSHIP_TRANSFER_DIALOG "Event:SHOW NEIGHBORHOOD OWNERSHIP TRANSFER DIALOG"): neighborhoodName, cosmeticOwnerName

[TRACKED_HOUSE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRACKED_HOUSE_CHANGED "Event:TRACKED HOUSE CHANGED"): trackedHouse

[VIEW_HOUSES_LIST_RECIEVED](https://warcraft.wiki.gg/wiki/Event:VIEW_HOUSES_LIST_RECIEVED "Event:VIEW HOUSES LIST RECIEVED"): houseInfos

## [ImmersiveInteraction](https://warcraft.wiki.gg/wiki/Category:API_systems/ImmersiveInteraction "Category:API systems/ImmersiveInteraction")

[IMMERSIVE_INTERACTION_BEGIN](https://warcraft.wiki.gg/wiki/Event:IMMERSIVE_INTERACTION_BEGIN "Event:IMMERSIVE INTERACTION BEGIN")

[IMMERSIVE_INTERACTION_END](https://warcraft.wiki.gg/wiki/Event:IMMERSIVE_INTERACTION_END "Event:IMMERSIVE INTERACTION END")

## [InGameNavigation](https://warcraft.wiki.gg/wiki/Category:API_systems/InGameNavigation "Category:API systems/InGameNavigation")

[NAVIGATION_DESTINATION_REACHED](https://warcraft.wiki.gg/wiki/Event:NAVIGATION_DESTINATION_REACHED "Event:NAVIGATION DESTINATION REACHED"): isWaypoint

[NAVIGATION_FRAME_CREATED](https://warcraft.wiki.gg/wiki/Event:NAVIGATION_FRAME_CREATED "Event:NAVIGATION FRAME CREATED"): region

[NAVIGATION_FRAME_DESTROYED](https://warcraft.wiki.gg/wiki/Event:NAVIGATION_FRAME_DESTROYED "Event:NAVIGATION FRAME DESTROYED")

## [InstanceEncounter](https://warcraft.wiki.gg/wiki/Category:API_systems/InstanceEncounter "Category:API systems/InstanceEncounter")

[ENCOUNTER_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_STATE_CHANGED "Event:ENCOUNTER STATE CHANGED"): isInProgress

[INSTANCE_ENCOUNTER_ADD_TIMER](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ENCOUNTER_ADD_TIMER "Event:INSTANCE ENCOUNTER ADD TIMER"): timeRemaining

[INSTANCE_ENCOUNTER_ENGAGE_UNIT](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ENCOUNTER_ENGAGE_UNIT "Event:INSTANCE ENCOUNTER ENGAGE UNIT")

[INSTANCE_ENCOUNTER_OBJECTIVE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ENCOUNTER_OBJECTIVE_COMPLETE "Event:INSTANCE ENCOUNTER OBJECTIVE COMPLETE"): objectiveID

[INSTANCE_ENCOUNTER_OBJECTIVE_START](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ENCOUNTER_OBJECTIVE_START "Event:INSTANCE ENCOUNTER OBJECTIVE START"): objectiveID, objectiveProgress

[INSTANCE_ENCOUNTER_OBJECTIVE_UPDATE](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ENCOUNTER_OBJECTIVE_UPDATE "Event:INSTANCE ENCOUNTER OBJECTIVE UPDATE"): objectiveID, objectiveProgress

## [InstanceLeaverInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/InstanceLeaverInfo "Category:API systems/InstanceLeaverInfo")

[INSTANCE_LEAVER_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:INSTANCE_LEAVER_STATUS_CHANGED "Event:INSTANCE LEAVER STATUS CHANGED"): isLeaver

## [IslandsInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/IslandsInfo "Category:API systems/IslandsInfo")

[ISLAND_AZERITE_GAIN](https://warcraft.wiki.gg/wiki/Event:ISLAND_AZERITE_GAIN "Event:ISLAND AZERITE GAIN"): amount, gainedByPlayer, factionIndex, gainedBy, gainedFrom

## [IslandsQueue](https://warcraft.wiki.gg/wiki/Category:API_systems/IslandsQueue "Category:API systems/IslandsQueue")

[ISLANDS_QUEUE_CLOSE](https://warcraft.wiki.gg/wiki/Event:ISLANDS_QUEUE_CLOSE "Event:ISLANDS QUEUE CLOSE")

[ISLANDS_QUEUE_OPEN](https://warcraft.wiki.gg/wiki/Event:ISLANDS_QUEUE_OPEN "Event:ISLANDS QUEUE OPEN")

## [Item](https://warcraft.wiki.gg/wiki/Category:API_systems/Item "Category:API systems/Item")

[ACTION_WILL_BIND_ITEM](https://warcraft.wiki.gg/wiki/Event:ACTION_WILL_BIND_ITEM "Event:ACTION WILL BIND ITEM")

[BIND_ENCHANT](https://warcraft.wiki.gg/wiki/Event:BIND_ENCHANT "Event:BIND ENCHANT")

[CHARACTER_ITEM_FIXUP_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:CHARACTER_ITEM_FIXUP_NOTIFICATION "Event:CHARACTER ITEM FIXUP NOTIFICATION"): fixupVersion

[CONFIRM_BEFORE_USE](https://warcraft.wiki.gg/wiki/Event:CONFIRM_BEFORE_USE "Event:CONFIRM BEFORE USE")

[CONVERT_TO_BIND_TO_ACCOUNT_CONFIRM](https://warcraft.wiki.gg/wiki/Event:CONVERT_TO_BIND_TO_ACCOUNT_CONFIRM "Event:CONVERT TO BIND TO ACCOUNT CONFIRM")

[DELETE_ITEM_CONFIRM](https://warcraft.wiki.gg/wiki/Event:DELETE_ITEM_CONFIRM "Event:DELETE ITEM CONFIRM"): itemName, qualityID, bonding, questWarn

[END_BOUND_TRADEABLE](https://warcraft.wiki.gg/wiki/Event:END_BOUND_TRADEABLE "Event:END BOUND TRADEABLE"): reason

[GET_ITEM_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:GET_ITEM_INFO_RECEIVED "Event:GET ITEM INFO RECEIVED"): itemID, success

[ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:ITEM_CHANGED "Event:ITEM CHANGED"): previousHyperlink, newHyperlink

[ITEM_CONVERSION_DATA_READY](https://warcraft.wiki.gg/wiki/Event:ITEM_CONVERSION_DATA_READY "Event:ITEM CONVERSION DATA READY"): itemGUID

[ITEM_COUNT_CHANGED](https://warcraft.wiki.gg/wiki/Event:ITEM_COUNT_CHANGED "Event:ITEM COUNT CHANGED"): itemID

[ITEM_DATA_LOAD_RESULT](https://warcraft.wiki.gg/wiki/Event:ITEM_DATA_LOAD_RESULT "Event:ITEM DATA LOAD RESULT"): itemID, success

[MERCHANT_CONFIRM_TRADE_TIMER_REMOVAL](https://warcraft.wiki.gg/wiki/Event:MERCHANT_CONFIRM_TRADE_TIMER_REMOVAL "Event:MERCHANT CONFIRM TRADE TIMER REMOVAL"): itemLink

[REPLACE_ENCHANT](https://warcraft.wiki.gg/wiki/Event:REPLACE_ENCHANT "Event:REPLACE ENCHANT"): existingStr, replacementStr

[REPLACE_TRADESKILL_ENCHANT](https://warcraft.wiki.gg/wiki/Event:REPLACE_TRADESKILL_ENCHANT "Event:REPLACE TRADESKILL ENCHANT"): existing, replacement

[TRADE_REPLACE_ENCHANT](https://warcraft.wiki.gg/wiki/Event:TRADE_REPLACE_ENCHANT "Event:TRADE REPLACE ENCHANT"): existing, replacement

[USE_BIND_CONFIRM](https://warcraft.wiki.gg/wiki/Event:USE_BIND_CONFIRM "Event:USE BIND CONFIRM")

[USE_NO_REFUND_CONFIRM](https://warcraft.wiki.gg/wiki/Event:USE_NO_REFUND_CONFIRM "Event:USE NO REFUND CONFIRM")

[WEAPON_ENCHANT_CHANGED](https://warcraft.wiki.gg/wiki/Event:WEAPON_ENCHANT_CHANGED "Event:WEAPON ENCHANT CHANGED")

## [ItemInteractionUI](https://warcraft.wiki.gg/wiki/Category:API_systems/ItemInteractionUI "Category:API systems/ItemInteractionUI")

[ITEM_INTERACTION_CHARGE_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:ITEM_INTERACTION_CHARGE_INFO_UPDATED "Event:ITEM INTERACTION CHARGE INFO UPDATED")

[ITEM_INTERACTION_ITEM_SELECTION_UPDATED](https://warcraft.wiki.gg/wiki/Event:ITEM_INTERACTION_ITEM_SELECTION_UPDATED "Event:ITEM INTERACTION ITEM SELECTION UPDATED"): itemLocation

## [ItemSocketInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ItemSocketInfo "Category:API systems/ItemSocketInfo")

[SOCKET_INFO_ACCEPT](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_ACCEPT "Event:SOCKET INFO ACCEPT")

[SOCKET_INFO_BIND_CONFIRM](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_BIND_CONFIRM "Event:SOCKET INFO BIND CONFIRM")

[SOCKET_INFO_CLOSE](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_CLOSE "Event:SOCKET INFO CLOSE")

[SOCKET_INFO_FAILURE](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_FAILURE "Event:SOCKET INFO FAILURE")

[SOCKET_INFO_REFUNDABLE_CONFIRM](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_REFUNDABLE_CONFIRM "Event:SOCKET INFO REFUNDABLE CONFIRM")

[SOCKET_INFO_SUCCESS](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_SUCCESS "Event:SOCKET INFO SUCCESS")

[SOCKET_INFO_UI_EVENT_REGISTRATION_UPDATE](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_UI_EVENT_REGISTRATION_UPDATE "Event:SOCKET INFO UI EVENT REGISTRATION UPDATE"): uiType

[SOCKET_INFO_UPDATE](https://warcraft.wiki.gg/wiki/Event:SOCKET_INFO_UPDATE "Event:SOCKET INFO UPDATE")

## [ItemText](https://warcraft.wiki.gg/wiki/Category:API_systems/ItemText "Category:API systems/ItemText")

[ITEM_TEXT_BEGIN](https://warcraft.wiki.gg/wiki/Event:ITEM_TEXT_BEGIN "Event:ITEM TEXT BEGIN")

[ITEM_TEXT_CLOSED](https://warcraft.wiki.gg/wiki/Event:ITEM_TEXT_CLOSED "Event:ITEM TEXT CLOSED")

[ITEM_TEXT_READY](https://warcraft.wiki.gg/wiki/Event:ITEM_TEXT_READY "Event:ITEM TEXT READY")

[ITEM_TEXT_TRANSLATION](https://warcraft.wiki.gg/wiki/Event:ITEM_TEXT_TRANSLATION "Event:ITEM TEXT TRANSLATION"): delay

## [ItemUpgrade](https://warcraft.wiki.gg/wiki/Category:API_systems/ItemUpgrade "Category:API systems/ItemUpgrade")

[ITEM_UPGRADE_FAILED](https://warcraft.wiki.gg/wiki/Event:ITEM_UPGRADE_FAILED "Event:ITEM UPGRADE FAILED")

[ITEM_UPGRADE_MASTER_SET_ITEM](https://warcraft.wiki.gg/wiki/Event:ITEM_UPGRADE_MASTER_SET_ITEM "Event:ITEM UPGRADE MASTER SET ITEM")

[ITEM_UPGRADE_MASTER_UPDATE](https://warcraft.wiki.gg/wiki/Event:ITEM_UPGRADE_MASTER_UPDATE "Event:ITEM UPGRADE MASTER UPDATE")

## [KeyBindings](https://warcraft.wiki.gg/wiki/Category:API_systems/KeyBindings "Category:API systems/KeyBindings")

[BINDINGS_LOADED](https://warcraft.wiki.gg/wiki/Event:BINDINGS_LOADED "Event:BINDINGS LOADED")

[MODIFIER_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:MODIFIER_STATE_CHANGED "Event:MODIFIER STATE CHANGED"): key, down

[NOTIFY_TURN_STRAFE_CHANGE](https://warcraft.wiki.gg/wiki/Event:NOTIFY_TURN_STRAFE_CHANGE "Event:NOTIFY TURN STRAFE CHANGE")

[UPDATE_BINDINGS](https://warcraft.wiki.gg/wiki/Event:UPDATE_BINDINGS "Event:UPDATE BINDINGS")

## [LFGInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/LFGInfo "Category:API systems/LFGInfo")

[ISLAND_COMPLETED](https://warcraft.wiki.gg/wiki/Event:ISLAND_COMPLETED "Event:ISLAND COMPLETED"): mapID, winner

[LFG_BOOT_PROPOSAL_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_BOOT_PROPOSAL_UPDATE "Event:LFG BOOT PROPOSAL UPDATE")

[LFG_COMPLETION_REWARD](https://warcraft.wiki.gg/wiki/Event:LFG_COMPLETION_REWARD "Event:LFG COMPLETION REWARD")

[LFG_COOLDOWNS_UPDATED](https://warcraft.wiki.gg/wiki/Event:LFG_COOLDOWNS_UPDATED "Event:LFG COOLDOWNS UPDATED")

[LFG_ENABLED_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:LFG_ENABLED_STATE_CHANGED "Event:LFG ENABLED STATE CHANGED")

[LFG_INVALID_ERROR_MESSAGE](https://warcraft.wiki.gg/wiki/Event:LFG_INVALID_ERROR_MESSAGE "Event:LFG INVALID ERROR MESSAGE"): reason, subReason1, subReason2

[LFG_LOCK_INFO_RECEIVED](https://warcraft.wiki.gg/wiki/Event:LFG_LOCK_INFO_RECEIVED "Event:LFG LOCK INFO RECEIVED")

[LFG_OFFER_CONTINUE](https://warcraft.wiki.gg/wiki/Event:LFG_OFFER_CONTINUE "Event:LFG OFFER CONTINUE"): name, lfgDungeonsID, typeID

[LFG_OPEN_FROM_GOSSIP](https://warcraft.wiki.gg/wiki/Event:LFG_OPEN_FROM_GOSSIP "Event:LFG OPEN FROM GOSSIP"): dungeonID

[LFG_PROPOSAL_DONE](https://warcraft.wiki.gg/wiki/Event:LFG_PROPOSAL_DONE "Event:LFG PROPOSAL DONE")

[LFG_PROPOSAL_FAILED](https://warcraft.wiki.gg/wiki/Event:LFG_PROPOSAL_FAILED "Event:LFG PROPOSAL FAILED")

[LFG_PROPOSAL_SHOW](https://warcraft.wiki.gg/wiki/Event:LFG_PROPOSAL_SHOW "Event:LFG PROPOSAL SHOW")

[LFG_PROPOSAL_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:LFG_PROPOSAL_SUCCEEDED "Event:LFG PROPOSAL SUCCEEDED")

[LFG_PROPOSAL_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_PROPOSAL_UPDATE "Event:LFG PROPOSAL UPDATE")

[LFG_QUEUE_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_QUEUE_STATUS_UPDATE "Event:LFG QUEUE STATUS UPDATE")

[LFG_READY_CHECK_DECLINED](https://warcraft.wiki.gg/wiki/Event:LFG_READY_CHECK_DECLINED "Event:LFG READY CHECK DECLINED"): name

[LFG_READY_CHECK_HIDE](https://warcraft.wiki.gg/wiki/Event:LFG_READY_CHECK_HIDE "Event:LFG READY CHECK HIDE")

[LFG_READY_CHECK_PLAYER_IS_READY](https://warcraft.wiki.gg/wiki/Event:LFG_READY_CHECK_PLAYER_IS_READY "Event:LFG READY CHECK PLAYER IS READY"): name

[LFG_READY_CHECK_SHOW](https://warcraft.wiki.gg/wiki/Event:LFG_READY_CHECK_SHOW "Event:LFG READY CHECK SHOW"): isRequeue

[LFG_READY_CHECK_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_READY_CHECK_UPDATE "Event:LFG READY CHECK UPDATE")

[LFG_ROLE_CHECK_DECLINED](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_CHECK_DECLINED "Event:LFG ROLE CHECK DECLINED")

[LFG_ROLE_CHECK_HIDE](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_CHECK_HIDE "Event:LFG ROLE CHECK HIDE")

[LFG_ROLE_CHECK_ROLE_CHOSEN](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_CHECK_ROLE_CHOSEN "Event:LFG ROLE CHECK ROLE CHOSEN"): name, isTank, isHealer, isDamage

[LFG_ROLE_CHECK_SHOW](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_CHECK_SHOW "Event:LFG ROLE CHECK SHOW"): isRequeue

[LFG_ROLE_CHECK_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_CHECK_UPDATE "Event:LFG ROLE CHECK UPDATE")

[LFG_ROLE_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_ROLE_UPDATE "Event:LFG ROLE UPDATE")

[LFG_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_UPDATE "Event:LFG UPDATE")

[LFG_UPDATE_RANDOM_INFO](https://warcraft.wiki.gg/wiki/Event:LFG_UPDATE_RANDOM_INFO "Event:LFG UPDATE RANDOM INFO")

[SHOW_LFG_EXPAND_SEARCH_PROMPT](https://warcraft.wiki.gg/wiki/Event:SHOW_LFG_EXPAND_SEARCH_PROMPT "Event:SHOW LFG EXPAND SEARCH PROMPT")

[UPDATE_LFG_LIST](https://warcraft.wiki.gg/wiki/Event:UPDATE_LFG_LIST "Event:UPDATE LFG LIST")

[WARFRONT_COMPLETED](https://warcraft.wiki.gg/wiki/Event:WARFRONT_COMPLETED "Event:WARFRONT COMPLETED"): mapID, winner

## [LFGList](https://warcraft.wiki.gg/wiki/Category:API_systems/LFGList "Category:API systems/LFGList")

[LFG_GROUP_DELISTED_LEADERSHIP_CHANGE](https://warcraft.wiki.gg/wiki/Event:LFG_GROUP_DELISTED_LEADERSHIP_CHANGE "Event:LFG GROUP DELISTED LEADERSHIP CHANGE"): listingName, automaticDelistTimeRemaining

[LFG_LIST_ACTIVE_ENTRY_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_ACTIVE_ENTRY_UPDATE "Event:LFG LIST ACTIVE ENTRY UPDATE"): created

[LFG_LIST_APPLICANT_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_APPLICANT_LIST_UPDATED "Event:LFG LIST APPLICANT LIST UPDATED"): newPendingEntry, newPendingEntryWithData

[LFG_LIST_APPLICANT_UPDATED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_APPLICANT_UPDATED "Event:LFG LIST APPLICANT UPDATED"): applicantID

[LFG_LIST_APPLICATION_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_APPLICATION_STATUS_UPDATED "Event:LFG LIST APPLICATION STATUS UPDATED"): searchResultID, newStatus, oldStatus, groupName

[LFG_LIST_AVAILABILITY_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_AVAILABILITY_UPDATE "Event:LFG LIST AVAILABILITY UPDATE")

[LFG_LIST_CENSORED_ACTIVE_ENTRY_UPDATE](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_CENSORED_ACTIVE_ENTRY_UPDATE "Event:LFG LIST CENSORED ACTIVE ENTRY UPDATE"): isCensored

[LFG_LIST_ENTRY_CREATION_FAILED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_ENTRY_CREATION_FAILED "Event:LFG LIST ENTRY CREATION FAILED")

[LFG_LIST_ENTRY_EXPIRED_TIMEOUT](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_ENTRY_EXPIRED_TIMEOUT "Event:LFG LIST ENTRY EXPIRED TIMEOUT")

[LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS "Event:LFG LIST ENTRY EXPIRED TOO MANY PLAYERS")

[LFG_LIST_JOINED_GROUP](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_JOINED_GROUP "Event:LFG LIST JOINED GROUP"): searchResultID, groupName

[LFG_LIST_REVEALED_CENSORED_ACTIVE_ENTRY](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_REVEALED_CENSORED_ACTIVE_ENTRY "Event:LFG LIST REVEALED CENSORED ACTIVE ENTRY")

[LFG_LIST_SEARCH_FAILED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_SEARCH_FAILED "Event:LFG LIST SEARCH FAILED"): reason

[LFG_LIST_SEARCH_RESULT_UPDATED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_SEARCH_RESULT_UPDATED "Event:LFG LIST SEARCH RESULT UPDATED"): searchResultID

[LFG_LIST_SEARCH_RESULTS_RECEIVED](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_SEARCH_RESULTS_RECEIVED "Event:LFG LIST SEARCH RESULTS RECEIVED")

[LFG_LIST_UPDATE_SEARCH_RESULTS](https://warcraft.wiki.gg/wiki/Event:LFG_LIST_UPDATE_SEARCH_RESULTS "Event:LFG LIST UPDATE SEARCH RESULTS")

## [LegendaryCrafting](https://warcraft.wiki.gg/wiki/Category:API_systems/LegendaryCrafting "Category:API systems/LegendaryCrafting")

[NEW_RUNEFORGE_POWER_ADDED](https://warcraft.wiki.gg/wiki/Event:NEW_RUNEFORGE_POWER_ADDED "Event:NEW RUNEFORGE POWER ADDED"): powerID

[RUNEFORGE_LEGENDARY_CRAFTING_CLOSED](https://warcraft.wiki.gg/wiki/Event:RUNEFORGE_LEGENDARY_CRAFTING_CLOSED "Event:RUNEFORGE LEGENDARY CRAFTING CLOSED")

[RUNEFORGE_LEGENDARY_CRAFTING_OPENED](https://warcraft.wiki.gg/wiki/Event:RUNEFORGE_LEGENDARY_CRAFTING_OPENED "Event:RUNEFORGE LEGENDARY CRAFTING OPENED"): isUpgrade

[RUNEFORGE_POWER_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:RUNEFORGE_POWER_INFO_UPDATED "Event:RUNEFORGE POWER INFO UPDATED"): powerID

## [LoadingScreen](https://warcraft.wiki.gg/wiki/Category:API_systems/LoadingScreen "Category:API systems/LoadingScreen")

[LOADING_SCREEN_DISABLED](https://warcraft.wiki.gg/wiki/Event:LOADING_SCREEN_DISABLED "Event:LOADING SCREEN DISABLED")

[LOADING_SCREEN_ENABLED](https://warcraft.wiki.gg/wiki/Event:LOADING_SCREEN_ENABLED "Event:LOADING SCREEN ENABLED")

## [LobbyMatchmakerInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/LobbyMatchmakerInfo "Category:API systems/LobbyMatchmakerInfo")

[LOBBY_MATCHMAKER_QUEUE_ABANDONED](https://warcraft.wiki.gg/wiki/Event:LOBBY_MATCHMAKER_QUEUE_ABANDONED "Event:LOBBY MATCHMAKER QUEUE ABANDONED")

[LOBBY_MATCHMAKER_QUEUE_ERROR](https://warcraft.wiki.gg/wiki/Event:LOBBY_MATCHMAKER_QUEUE_ERROR "Event:LOBBY MATCHMAKER QUEUE ERROR")

[LOBBY_MATCHMAKER_QUEUE_EXPIRED](https://warcraft.wiki.gg/wiki/Event:LOBBY_MATCHMAKER_QUEUE_EXPIRED "Event:LOBBY MATCHMAKER QUEUE EXPIRED")

[LOBBY_MATCHMAKER_QUEUE_POPPED](https://warcraft.wiki.gg/wiki/Event:LOBBY_MATCHMAKER_QUEUE_POPPED "Event:LOBBY MATCHMAKER QUEUE POPPED")

[LOBBY_MATCHMAKER_QUEUE_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:LOBBY_MATCHMAKER_QUEUE_STATUS_UPDATE "Event:LOBBY MATCHMAKER QUEUE STATUS UPDATE")

## [Loot](https://warcraft.wiki.gg/wiki/Category:API_systems/Loot "Category:API systems/Loot")

[AZERITE_EMPOWERED_ITEM_LOOTED](https://warcraft.wiki.gg/wiki/Event:AZERITE_EMPOWERED_ITEM_LOOTED "Event:AZERITE EMPOWERED ITEM LOOTED"): itemLink

[BONUS_ROLL_ACTIVATE](https://warcraft.wiki.gg/wiki/Event:BONUS_ROLL_ACTIVATE "Event:BONUS ROLL ACTIVATE")

[BONUS_ROLL_DEACTIVATE](https://warcraft.wiki.gg/wiki/Event:BONUS_ROLL_DEACTIVATE "Event:BONUS ROLL DEACTIVATE")

[BONUS_ROLL_FAILED](https://warcraft.wiki.gg/wiki/Event:BONUS_ROLL_FAILED "Event:BONUS ROLL FAILED")

[BONUS_ROLL_RESULT](https://warcraft.wiki.gg/wiki/Event:BONUS_ROLL_RESULT "Event:BONUS ROLL RESULT"): typeIdentifier, itemLink, quantity, specID, sex, personalLootToast, currencyID, isSecondaryResult, corrupted

[BONUS_ROLL_STARTED](https://warcraft.wiki.gg/wiki/Event:BONUS_ROLL_STARTED "Event:BONUS ROLL STARTED")

[CANCEL_ALL_LOOT_ROLLS](https://warcraft.wiki.gg/wiki/Event:CANCEL_ALL_LOOT_ROLLS "Event:CANCEL ALL LOOT ROLLS")

[CANCEL_LOOT_ROLL](https://warcraft.wiki.gg/wiki/Event:CANCEL_LOOT_ROLL "Event:CANCEL LOOT ROLL"): rollID

[CONFIRM_DISENCHANT_ROLL](https://warcraft.wiki.gg/wiki/Event:CONFIRM_DISENCHANT_ROLL "Event:CONFIRM DISENCHANT ROLL"): rollID, rollType

[CONFIRM_LOOT_ROLL](https://warcraft.wiki.gg/wiki/Event:CONFIRM_LOOT_ROLL "Event:CONFIRM LOOT ROLL"): rollID, rollType, confirmReason

[ENCOUNTER_LOOT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:ENCOUNTER_LOOT_RECEIVED "Event:ENCOUNTER LOOT RECEIVED"): encounterID, itemID, itemLink, quantity, itemName, fileName

[GARRISON_MISSION_BONUS_ROLL_LOOT](https://warcraft.wiki.gg/wiki/Event:GARRISON_MISSION_BONUS_ROLL_LOOT "Event:GARRISON MISSION BONUS ROLL LOOT"): itemID, quantity

[ITEM_PUSH](https://warcraft.wiki.gg/wiki/Event:ITEM_PUSH "Event:ITEM PUSH"): bagSlot, iconFileID

[LEGACY_LOOT_RULES_CHANGED](https://warcraft.wiki.gg/wiki/Event:LEGACY_LOOT_RULES_CHANGED "Event:LEGACY LOOT RULES CHANGED"): isLegacyLootModeEnabled

[LOOT_BIND_CONFIRM](https://warcraft.wiki.gg/wiki/Event:LOOT_BIND_CONFIRM "Event:LOOT BIND CONFIRM"): lootSlot

[LOOT_CLOSED](https://warcraft.wiki.gg/wiki/Event:LOOT_CLOSED "Event:LOOT CLOSED")

[LOOT_ITEM_AVAILABLE](https://warcraft.wiki.gg/wiki/Event:LOOT_ITEM_AVAILABLE "Event:LOOT ITEM AVAILABLE"): itemTooltip, lootHandle

[LOOT_ITEM_ROLL_WON](https://warcraft.wiki.gg/wiki/Event:LOOT_ITEM_ROLL_WON "Event:LOOT ITEM ROLL WON"): itemLink, rollQuantity, rollType, roll, upgraded

[LOOT_OPENED](https://warcraft.wiki.gg/wiki/Event:LOOT_OPENED "Event:LOOT OPENED"): autoLoot, isFromItem

[LOOT_READY](https://warcraft.wiki.gg/wiki/Event:LOOT_READY "Event:LOOT READY"): autoloot

[LOOT_ROLLS_COMPLETE](https://warcraft.wiki.gg/wiki/Event:LOOT_ROLLS_COMPLETE "Event:LOOT ROLLS COMPLETE"): lootHandle

[LOOT_SLOT_CHANGED](https://warcraft.wiki.gg/wiki/Event:LOOT_SLOT_CHANGED "Event:LOOT SLOT CHANGED"): lootSlot

[LOOT_SLOT_CLEARED](https://warcraft.wiki.gg/wiki/Event:LOOT_SLOT_CLEARED "Event:LOOT SLOT CLEARED"): lootSlot

[MAIN_SPEC_NEED_ROLL](https://warcraft.wiki.gg/wiki/Event:MAIN_SPEC_NEED_ROLL "Event:MAIN SPEC NEED ROLL"): rollID, roll, isWinning

[OPEN_MASTER_LOOT_LIST](https://warcraft.wiki.gg/wiki/Event:OPEN_MASTER_LOOT_LIST "Event:OPEN MASTER LOOT LIST")

[PET_BATTLE_LOOT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:PET_BATTLE_LOOT_RECEIVED "Event:PET BATTLE LOOT RECEIVED"): typeIdentifier, itemLink, quantity

[PLAYER_LOOT_SPEC_UPDATED](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOOT_SPEC_UPDATED "Event:PLAYER LOOT SPEC UPDATED")

[QUEST_CURRENCY_LOOT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:QUEST_CURRENCY_LOOT_RECEIVED "Event:QUEST CURRENCY LOOT RECEIVED"): questID, currencyId, quantity

[QUEST_LOOT_RECEIVED](https://warcraft.wiki.gg/wiki/Event:QUEST_LOOT_RECEIVED "Event:QUEST LOOT RECEIVED"): questID, itemLink, quantity

[SHOW_LOOT_TOAST](https://warcraft.wiki.gg/wiki/Event:SHOW_LOOT_TOAST "Event:SHOW LOOT TOAST"): typeIdentifier, itemLink, quantity, specID, sex, personalLootToast, toastMethod, lessAwesome, upgraded, corrupted

[SHOW_LOOT_TOAST_LEGENDARY_LOOTED](https://warcraft.wiki.gg/wiki/Event:SHOW_LOOT_TOAST_LEGENDARY_LOOTED "Event:SHOW LOOT TOAST LEGENDARY LOOTED"): itemLink

[SHOW_LOOT_TOAST_UPGRADE](https://warcraft.wiki.gg/wiki/Event:SHOW_LOOT_TOAST_UPGRADE "Event:SHOW LOOT TOAST UPGRADE"): itemLink, quantity, specID, sex, baseQuality, personalLootToast, lessAwesome

[SHOW_PVP_FACTION_LOOT_TOAST](https://warcraft.wiki.gg/wiki/Event:SHOW_PVP_FACTION_LOOT_TOAST "Event:SHOW PVP FACTION LOOT TOAST"): typeIdentifier, itemLink, quantity, specID, sex, personalLootToast, lessAwesome

[SHOW_RATED_PVP_REWARD_TOAST](https://warcraft.wiki.gg/wiki/Event:SHOW_RATED_PVP_REWARD_TOAST "Event:SHOW RATED PVP REWARD TOAST"): typeIdentifier, itemLink, quantity, specID, sex, personalLootToast, lessAwesome

[START_LOOT_ROLL](https://warcraft.wiki.gg/wiki/Event:START_LOOT_ROLL "Event:START LOOT ROLL"): rollID, rollTime, lootHandle

[TRIAL_CAP_REACHED_MONEY](https://warcraft.wiki.gg/wiki/Event:TRIAL_CAP_REACHED_MONEY "Event:TRIAL CAP REACHED MONEY")

[UPDATE_MASTER_LOOT_LIST](https://warcraft.wiki.gg/wiki/Event:UPDATE_MASTER_LOOT_LIST "Event:UPDATE MASTER LOOT LIST")

## [LootHistory](https://warcraft.wiki.gg/wiki/Category:API_systems/LootHistory "Category:API systems/LootHistory")

[LOOT_HISTORY_CLEAR_HISTORY](https://warcraft.wiki.gg/wiki/Event:LOOT_HISTORY_CLEAR_HISTORY "Event:LOOT HISTORY CLEAR HISTORY")

[LOOT_HISTORY_GO_TO_ENCOUNTER](https://warcraft.wiki.gg/wiki/Event:LOOT_HISTORY_GO_TO_ENCOUNTER "Event:LOOT HISTORY GO TO ENCOUNTER"): encounterID

[LOOT_HISTORY_ONE_HUNDRED_ROLL](https://warcraft.wiki.gg/wiki/Event:LOOT_HISTORY_ONE_HUNDRED_ROLL "Event:LOOT HISTORY ONE HUNDRED ROLL"): encounterID, lootListID

[LOOT_HISTORY_UPDATE_DROP](https://warcraft.wiki.gg/wiki/Event:LOOT_HISTORY_UPDATE_DROP "Event:LOOT HISTORY UPDATE DROP"): encounterID, lootListID

[LOOT_HISTORY_UPDATE_ENCOUNTER](https://warcraft.wiki.gg/wiki/Event:LOOT_HISTORY_UPDATE_ENCOUNTER "Event:LOOT HISTORY UPDATE ENCOUNTER"): encounterID

## [LootJournal](https://warcraft.wiki.gg/wiki/Category:API_systems/LootJournal "Category:API systems/LootJournal")

[LOOT_JOURNAL_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:LOOT_JOURNAL_ITEM_UPDATE "Event:LOOT JOURNAL ITEM UPDATE")

## [LoreText](https://warcraft.wiki.gg/wiki/Category:API_systems/LoreText "Category:API systems/LoreText")

[LORE_TEXT_UPDATED_CAMPAIGN](https://warcraft.wiki.gg/wiki/Event:LORE_TEXT_UPDATED_CAMPAIGN "Event:LORE TEXT UPDATED CAMPAIGN"): campaignID, textEntries

## [LossOfControl](https://warcraft.wiki.gg/wiki/Category:API_systems/LossOfControl "Category:API systems/LossOfControl")

[LOSS_OF_CONTROL_ADDED](https://warcraft.wiki.gg/wiki/Event:LOSS_OF_CONTROL_ADDED "Event:LOSS OF CONTROL ADDED"): unitTarget, effectIndex

[LOSS_OF_CONTROL_COMMENTATOR_ADDED](https://warcraft.wiki.gg/wiki/Event:LOSS_OF_CONTROL_COMMENTATOR_ADDED "Event:LOSS OF CONTROL COMMENTATOR ADDED"): victim, effectIndex

[LOSS_OF_CONTROL_COMMENTATOR_UPDATE](https://warcraft.wiki.gg/wiki/Event:LOSS_OF_CONTROL_COMMENTATOR_UPDATE "Event:LOSS OF CONTROL COMMENTATOR UPDATE"): victim

[LOSS_OF_CONTROL_UPDATE](https://warcraft.wiki.gg/wiki/Event:LOSS_OF_CONTROL_UPDATE "Event:LOSS OF CONTROL UPDATE"): unitTarget

[PLAYER_CONTROL_GAINED](https://warcraft.wiki.gg/wiki/Event:PLAYER_CONTROL_GAINED "Event:PLAYER CONTROL GAINED")

[PLAYER_CONTROL_LOST](https://warcraft.wiki.gg/wiki/Event:PLAYER_CONTROL_LOST "Event:PLAYER CONTROL LOST")

## [MailInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/MailInfo "Category:API systems/MailInfo")

[CLOSE_INBOX_ITEM](https://warcraft.wiki.gg/wiki/Event:CLOSE_INBOX_ITEM "Event:CLOSE INBOX ITEM"): mailIndex

[MAIL_CLOSED](https://warcraft.wiki.gg/wiki/Event:MAIL_CLOSED "Event:MAIL CLOSED")

[MAIL_FAILED](https://warcraft.wiki.gg/wiki/Event:MAIL_FAILED "Event:MAIL FAILED"): itemID

[MAIL_INBOX_UPDATE](https://warcraft.wiki.gg/wiki/Event:MAIL_INBOX_UPDATE "Event:MAIL INBOX UPDATE")

[MAIL_LOCK_SEND_ITEMS](https://warcraft.wiki.gg/wiki/Event:MAIL_LOCK_SEND_ITEMS "Event:MAIL LOCK SEND ITEMS"): attachSlot, itemLink

[MAIL_SEND_INFO_UPDATE](https://warcraft.wiki.gg/wiki/Event:MAIL_SEND_INFO_UPDATE "Event:MAIL SEND INFO UPDATE")

[MAIL_SEND_SUCCESS](https://warcraft.wiki.gg/wiki/Event:MAIL_SEND_SUCCESS "Event:MAIL SEND SUCCESS")

[MAIL_SHOW](https://warcraft.wiki.gg/wiki/Event:MAIL_SHOW "Event:MAIL SHOW")

[MAIL_SUCCESS](https://warcraft.wiki.gg/wiki/Event:MAIL_SUCCESS "Event:MAIL SUCCESS"): itemID

[MAIL_UNLOCK_SEND_ITEMS](https://warcraft.wiki.gg/wiki/Event:MAIL_UNLOCK_SEND_ITEMS "Event:MAIL UNLOCK SEND ITEMS")

[SEND_MAIL_COD_CHANGED](https://warcraft.wiki.gg/wiki/Event:SEND_MAIL_COD_CHANGED "Event:SEND MAIL COD CHANGED")

[SEND_MAIL_MONEY_CHANGED](https://warcraft.wiki.gg/wiki/Event:SEND_MAIL_MONEY_CHANGED "Event:SEND MAIL MONEY CHANGED")

[UPDATE_PENDING_MAIL](https://warcraft.wiki.gg/wiki/Event:UPDATE_PENDING_MAIL "Event:UPDATE PENDING MAIL")

## [MajorFactionsUI](https://warcraft.wiki.gg/wiki/Category:API_systems/MajorFactionsUI "Category:API systems/MajorFactionsUI")

[MAJOR_FACTION_INTERACTION_ENDED](https://warcraft.wiki.gg/wiki/Event:MAJOR_FACTION_INTERACTION_ENDED "Event:MAJOR FACTION INTERACTION ENDED")

[MAJOR_FACTION_INTERACTION_STARTED](https://warcraft.wiki.gg/wiki/Event:MAJOR_FACTION_INTERACTION_STARTED "Event:MAJOR FACTION INTERACTION STARTED")

[MAJOR_FACTION_RENOWN_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:MAJOR_FACTION_RENOWN_LEVEL_CHANGED "Event:MAJOR FACTION RENOWN LEVEL CHANGED"): majorFactionID, newRenownLevel, oldRenownLevel

[MAJOR_FACTION_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:MAJOR_FACTION_UNLOCKED "Event:MAJOR FACTION UNLOCKED"): majorFactionID

## [MapExplorationInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/MapExplorationInfo "Category:API systems/MapExplorationInfo")

[MAP_EXPLORATION_UPDATED](https://warcraft.wiki.gg/wiki/Event:MAP_EXPLORATION_UPDATED "Event:MAP EXPLORATION UPDATED")

## [MapUI](https://warcraft.wiki.gg/wiki/Category:API_systems/MapUI "Category:API systems/MapUI")

[NEW_WMO_CHUNK](https://warcraft.wiki.gg/wiki/Event:NEW_WMO_CHUNK "Event:NEW WMO CHUNK")

[PLAYER_MAP_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_MAP_CHANGED "Event:PLAYER MAP CHANGED"): oldMapID, newMapID

[USER_WAYPOINT_UPDATED](https://warcraft.wiki.gg/wiki/Event:USER_WAYPOINT_UPDATED "Event:USER WAYPOINT UPDATED")

[WORLD_MAP_OPEN](https://warcraft.wiki.gg/wiki/Event:WORLD_MAP_OPEN "Event:WORLD MAP OPEN"): uiMapID

[ZONE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ZONE_CHANGED "Event:ZONE CHANGED")

[ZONE_CHANGED_INDOORS](https://warcraft.wiki.gg/wiki/Event:ZONE_CHANGED_INDOORS "Event:ZONE CHANGED INDOORS")

[ZONE_CHANGED_NEW_AREA](https://warcraft.wiki.gg/wiki/Event:ZONE_CHANGED_NEW_AREA "Event:ZONE CHANGED NEW AREA")

## [MerchantFrame](https://warcraft.wiki.gg/wiki/Category:API_systems/MerchantFrame "Category:API systems/MerchantFrame")

[MERCHANT_CLOSED](https://warcraft.wiki.gg/wiki/Event:MERCHANT_CLOSED "Event:MERCHANT CLOSED")

[MERCHANT_FILTER_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:MERCHANT_FILTER_ITEM_UPDATE "Event:MERCHANT FILTER ITEM UPDATE"): itemID

[MERCHANT_SHOW](https://warcraft.wiki.gg/wiki/Event:MERCHANT_SHOW "Event:MERCHANT SHOW")

[MERCHANT_UPDATE](https://warcraft.wiki.gg/wiki/Event:MERCHANT_UPDATE "Event:MERCHANT UPDATE")

## [Minimap](https://warcraft.wiki.gg/wiki/Category:API_systems/Minimap "Category:API systems/Minimap")

[MINIMAP_PING](https://warcraft.wiki.gg/wiki/Event:MINIMAP_PING "Event:MINIMAP PING"): unitTarget, y, x

[MINIMAP_UPDATE_TRACKING](https://warcraft.wiki.gg/wiki/Event:MINIMAP_UPDATE_TRACKING "Event:MINIMAP UPDATE TRACKING")

[MINIMAP_UPDATE_ZOOM](https://warcraft.wiki.gg/wiki/Event:MINIMAP_UPDATE_ZOOM "Event:MINIMAP UPDATE ZOOM")

[PLAYER_INSIDE_QUEST_BLOB_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_INSIDE_QUEST_BLOB_STATE_CHANGED "Event:PLAYER INSIDE QUEST BLOB STATE CHANGED"): questID, isInside

## [ModelInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ModelInfo "Category:API systems/ModelInfo")

[UI_MODEL_SCENE_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:UI_MODEL_SCENE_INFO_UPDATED "Event:UI MODEL SCENE INFO UPDATED")

## [MountJournal](https://warcraft.wiki.gg/wiki/Category:API_systems/MountJournal "Category:API systems/MountJournal")

[MOUNT_EQUIPMENT_APPLY_RESULT](https://warcraft.wiki.gg/wiki/Event:MOUNT_EQUIPMENT_APPLY_RESULT "Event:MOUNT EQUIPMENT APPLY RESULT"): success

[MOUNT_JOURNAL_SEARCH_UPDATED](https://warcraft.wiki.gg/wiki/Event:MOUNT_JOURNAL_SEARCH_UPDATED "Event:MOUNT JOURNAL SEARCH UPDATED")

[MOUNT_JOURNAL_USABILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:MOUNT_JOURNAL_USABILITY_CHANGED "Event:MOUNT JOURNAL USABILITY CHANGED")

[NEW_MOUNT_ADDED](https://warcraft.wiki.gg/wiki/Event:NEW_MOUNT_ADDED "Event:NEW MOUNT ADDED"): mountID

## [MythicPlusInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/MythicPlusInfo "Category:API systems/MythicPlusInfo")

[MYTHIC_PLUS_CURRENT_AFFIX_UPDATE](https://warcraft.wiki.gg/wiki/Event:MYTHIC_PLUS_CURRENT_AFFIX_UPDATE "Event:MYTHIC PLUS CURRENT AFFIX UPDATE")

[MYTHIC_PLUS_NEW_WEEKLY_RECORD](https://warcraft.wiki.gg/wiki/Event:MYTHIC_PLUS_NEW_WEEKLY_RECORD "Event:MYTHIC PLUS NEW WEEKLY RECORD"): mapChallengeModeID, completionMilliseconds, level

## [NamePlateManager](https://warcraft.wiki.gg/wiki/Category:API_systems/NamePlateManager "Category:API systems/NamePlateManager")

[FORBIDDEN_NAME_PLATE_CREATED](https://warcraft.wiki.gg/wiki/Event:FORBIDDEN_NAME_PLATE_CREATED "Event:FORBIDDEN NAME PLATE CREATED"): namePlateFrame

[FORBIDDEN_NAME_PLATE_UNIT_ADDED](https://warcraft.wiki.gg/wiki/Event:FORBIDDEN_NAME_PLATE_UNIT_ADDED "Event:FORBIDDEN NAME PLATE UNIT ADDED"): unitToken

[FORBIDDEN_NAME_PLATE_UNIT_REMOVED](https://warcraft.wiki.gg/wiki/Event:FORBIDDEN_NAME_PLATE_UNIT_REMOVED "Event:FORBIDDEN NAME PLATE UNIT REMOVED"): unitToken

[NAME_PLATE_CREATED](https://warcraft.wiki.gg/wiki/Event:NAME_PLATE_CREATED "Event:NAME PLATE CREATED"): namePlateFrame

[NAME_PLATE_UNIT_ADDED](https://warcraft.wiki.gg/wiki/Event:NAME_PLATE_UNIT_ADDED "Event:NAME PLATE UNIT ADDED"): unitToken

[NAME_PLATE_UNIT_BEHIND_CAMERA_CHANGED](https://warcraft.wiki.gg/wiki/Event:NAME_PLATE_UNIT_BEHIND_CAMERA_CHANGED "Event:NAME PLATE UNIT BEHIND CAMERA CHANGED"): unitTarget, isBehindCamera

[NAME_PLATE_UNIT_REMOVED](https://warcraft.wiki.gg/wiki/Event:NAME_PLATE_UNIT_REMOVED "Event:NAME PLATE UNIT REMOVED"): unitToken

## [NeighborhoodInitiative](https://warcraft.wiki.gg/wiki/Category:API_systems/NeighborhoodInitiative "Category:API systems/NeighborhoodInitiative")

[INITIATIVE_ACTIVITY_LOG_UPDATED](https://warcraft.wiki.gg/wiki/Event:INITIATIVE_ACTIVITY_LOG_UPDATED "Event:INITIATIVE ACTIVITY LOG UPDATED")

[INITIATIVE_COMPLETED](https://warcraft.wiki.gg/wiki/Event:INITIATIVE_COMPLETED "Event:INITIATIVE COMPLETED"): initiativeTitle

[INITIATIVE_TASK_COMPLETED](https://warcraft.wiki.gg/wiki/Event:INITIATIVE_TASK_COMPLETED "Event:INITIATIVE TASK COMPLETED"): taskName

[INITIATIVE_TASKS_TRACKED_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:INITIATIVE_TASKS_TRACKED_LIST_CHANGED "Event:INITIATIVE TASKS TRACKED LIST CHANGED"): initiativeTaskID, added

[INITIATIVE_TASKS_TRACKED_UPDATED](https://warcraft.wiki.gg/wiki/Event:INITIATIVE_TASKS_TRACKED_UPDATED "Event:INITIATIVE TASKS TRACKED UPDATED")

[NEIGHBORHOOD_INITIATIVE_UPDATED](https://warcraft.wiki.gg/wiki/Event:NEIGHBORHOOD_INITIATIVE_UPDATED "Event:NEIGHBORHOOD INITIATIVE UPDATED")

## [PaperDollInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/PaperDollInfo "Category:API systems/PaperDollInfo")

[AVOIDANCE_UPDATE](https://warcraft.wiki.gg/wiki/Event:AVOIDANCE_UPDATE "Event:AVOIDANCE UPDATE")

[CHARACTER_POINTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:CHARACTER_POINTS_CHANGED "Event:CHARACTER POINTS CHANGED"): change

[CHARACTER_UPGRADE_SPELL_TIER_SET](https://warcraft.wiki.gg/wiki/Event:CHARACTER_UPGRADE_SPELL_TIER_SET "Event:CHARACTER UPGRADE SPELL TIER SET"): tierIndex

[COMBAT_RATING_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMBAT_RATING_UPDATE "Event:COMBAT RATING UPDATE")

[DISABLE_XP_GAIN](https://warcraft.wiki.gg/wiki/Event:DISABLE_XP_GAIN "Event:DISABLE XP GAIN")

[ENABLE_XP_GAIN](https://warcraft.wiki.gg/wiki/Event:ENABLE_XP_GAIN "Event:ENABLE XP GAIN")

[EQUIP_BIND_CONFIRM](https://warcraft.wiki.gg/wiki/Event:EQUIP_BIND_CONFIRM "Event:EQUIP BIND CONFIRM"): slot, itemLocation

[INSPECT_HONOR_UPDATE](https://warcraft.wiki.gg/wiki/Event:INSPECT_HONOR_UPDATE "Event:INSPECT HONOR UPDATE")

[INSPECT_READY](https://warcraft.wiki.gg/wiki/Event:INSPECT_READY "Event:INSPECT READY"): inspecteeGUID

[LIFESTEAL_UPDATE](https://warcraft.wiki.gg/wiki/Event:LIFESTEAL_UPDATE "Event:LIFESTEAL UPDATE")

[MASTERY_UPDATE](https://warcraft.wiki.gg/wiki/Event:MASTERY_UPDATE "Event:MASTERY UPDATE")

[PET_SPELL_POWER_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_SPELL_POWER_UPDATE "Event:PET SPELL POWER UPDATE")

[PLAYER_AVG_ITEM_LEVEL_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_AVG_ITEM_LEVEL_UPDATE "Event:PLAYER AVG ITEM LEVEL UPDATE")

[PLAYER_EQUIPMENT_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_EQUIPMENT_CHANGED "Event:PLAYER EQUIPMENT CHANGED"): equipmentSlot, hasCurrent

[PROFESSION_EQUIPMENT_CHANGED](https://warcraft.wiki.gg/wiki/Event:PROFESSION_EQUIPMENT_CHANGED "Event:PROFESSION EQUIPMENT CHANGED"): skillLineID, isTool

[PVP_POWER_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_POWER_UPDATE "Event:PVP POWER UPDATE")

[SPEED_UPDATE](https://warcraft.wiki.gg/wiki/Event:SPEED_UPDATE "Event:SPEED UPDATE")

[SPELL_POWER_CHANGED](https://warcraft.wiki.gg/wiki/Event:SPELL_POWER_CHANGED "Event:SPELL POWER CHANGED")

[STURDINESS_UPDATE](https://warcraft.wiki.gg/wiki/Event:STURDINESS_UPDATE "Event:STURDINESS UPDATE")

[UPDATE_FACTION](https://warcraft.wiki.gg/wiki/Event:UPDATE_FACTION "Event:UPDATE FACTION")

[UPDATE_INVENTORY_ALERTS](https://warcraft.wiki.gg/wiki/Event:UPDATE_INVENTORY_ALERTS "Event:UPDATE INVENTORY ALERTS")

[UPDATE_INVENTORY_DURABILITY](https://warcraft.wiki.gg/wiki/Event:UPDATE_INVENTORY_DURABILITY "Event:UPDATE INVENTORY DURABILITY")

[WEAPON_SLOT_CHANGED](https://warcraft.wiki.gg/wiki/Event:WEAPON_SLOT_CHANGED "Event:WEAPON SLOT CHANGED")

## [PartyInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/PartyInfo "Category:API systems/PartyInfo")

[BNET_REQUEST_INVITE_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:BNET_REQUEST_INVITE_CONFIRMATION "Event:BNET REQUEST INVITE CONFIRMATION"): gameAccountID, questSessionActive, tank, healer, dps

[CONVERT_TO_RAID_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:CONVERT_TO_RAID_CONFIRMATION "Event:CONVERT TO RAID CONFIRMATION")

[ENTERED_DIFFERENT_INSTANCE_FROM_PARTY](https://warcraft.wiki.gg/wiki/Event:ENTERED_DIFFERENT_INSTANCE_FROM_PARTY "Event:ENTERED DIFFERENT INSTANCE FROM PARTY")

[GROUP_FORMED](https://warcraft.wiki.gg/wiki/Event:GROUP_FORMED "Event:GROUP FORMED"): category, partyGUID

[GROUP_INVITE_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:GROUP_INVITE_CONFIRMATION "Event:GROUP INVITE CONFIRMATION")

[GROUP_JOINED](https://warcraft.wiki.gg/wiki/Event:GROUP_JOINED "Event:GROUP JOINED"): category, partyGUID

[GROUP_LEFT](https://warcraft.wiki.gg/wiki/Event:GROUP_LEFT "Event:GROUP LEFT"): category, partyGUID

[GROUP_ROSTER_UPDATE](https://warcraft.wiki.gg/wiki/Event:GROUP_ROSTER_UPDATE "Event:GROUP ROSTER UPDATE")

[INSTANCE_ABANDON_VOTE_FINISHED](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ABANDON_VOTE_FINISHED "Event:INSTANCE ABANDON VOTE FINISHED"): votePassed

[INSTANCE_ABANDON_VOTE_STARTED](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ABANDON_VOTE_STARTED "Event:INSTANCE ABANDON VOTE STARTED")

[INSTANCE_ABANDON_VOTE_UPDATED](https://warcraft.wiki.gg/wiki/Event:INSTANCE_ABANDON_VOTE_UPDATED "Event:INSTANCE ABANDON VOTE UPDATED")

[INSTANCE_BOOT_START](https://warcraft.wiki.gg/wiki/Event:INSTANCE_BOOT_START "Event:INSTANCE BOOT START")

[INSTANCE_BOOT_STOP](https://warcraft.wiki.gg/wiki/Event:INSTANCE_BOOT_STOP "Event:INSTANCE BOOT STOP")

[INSTANCE_GROUP_SIZE_CHANGED](https://warcraft.wiki.gg/wiki/Event:INSTANCE_GROUP_SIZE_CHANGED "Event:INSTANCE GROUP SIZE CHANGED")

[INVITE_TO_PARTY_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:INVITE_TO_PARTY_CONFIRMATION "Event:INVITE TO PARTY CONFIRMATION"): targetName, willConvertToRaid, questSessionActive

[INVITE_TRAVEL_PASS_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:INVITE_TRAVEL_PASS_CONFIRMATION "Event:INVITE TRAVEL PASS CONFIRMATION"): targetName, targetGUID, willConvertToRaid, questSessionActive

[LEAVE_PARTY_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:LEAVE_PARTY_CONFIRMATION "Event:LEAVE PARTY CONFIRMATION"): reason

[PARTY_INVITE_CANCEL](https://warcraft.wiki.gg/wiki/Event:PARTY_INVITE_CANCEL "Event:PARTY INVITE CANCEL")

[PARTY_INVITE_REQUEST](https://warcraft.wiki.gg/wiki/Event:PARTY_INVITE_REQUEST "Event:PARTY INVITE REQUEST"): name, isTank, isHealer, isDamage, isNativeRealm, allowMultipleRoles, inviterGUID, questSessionActive

[PARTY_LEADER_CHANGED](https://warcraft.wiki.gg/wiki/Event:PARTY_LEADER_CHANGED "Event:PARTY LEADER CHANGED")

[PARTY_LFG_RESTRICTED](https://warcraft.wiki.gg/wiki/Event:PARTY_LFG_RESTRICTED "Event:PARTY LFG RESTRICTED")

[PARTY_LOOT_METHOD_CHANGED](https://warcraft.wiki.gg/wiki/Event:PARTY_LOOT_METHOD_CHANGED "Event:PARTY LOOT METHOD CHANGED")

[PARTY_MEMBER_DISABLE](https://warcraft.wiki.gg/wiki/Event:PARTY_MEMBER_DISABLE "Event:PARTY MEMBER DISABLE"): unitTarget

[PARTY_MEMBER_ENABLE](https://warcraft.wiki.gg/wiki/Event:PARTY_MEMBER_ENABLE "Event:PARTY MEMBER ENABLE"): unitTarget

[PLAYER_DIFFICULTY_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_DIFFICULTY_CHANGED "Event:PLAYER DIFFICULTY CHANGED")

[PLAYER_ROLES_ASSIGNED](https://warcraft.wiki.gg/wiki/Event:PLAYER_ROLES_ASSIGNED "Event:PLAYER ROLES ASSIGNED")

[RAID_ROSTER_UPDATE](https://warcraft.wiki.gg/wiki/Event:RAID_ROSTER_UPDATE "Event:RAID ROSTER UPDATE")

[READY_CHECK](https://warcraft.wiki.gg/wiki/Event:READY_CHECK "Event:READY CHECK"): initiatorName, readyCheckTimeLeft

[READY_CHECK_CONFIRM](https://warcraft.wiki.gg/wiki/Event:READY_CHECK_CONFIRM "Event:READY CHECK CONFIRM"): unitTarget, isReady

[READY_CHECK_FINISHED](https://warcraft.wiki.gg/wiki/Event:READY_CHECK_FINISHED "Event:READY CHECK FINISHED"): preempted

[REQUEST_INVITE_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:REQUEST_INVITE_CONFIRMATION "Event:REQUEST INVITE CONFIRMATION"): targetName, partyLevelLink, questSessionActive, tank, healer, dps

[VOTE_KICK_REASON_NEEDED](https://warcraft.wiki.gg/wiki/Event:VOTE_KICK_REASON_NEEDED "Event:VOTE KICK REASON NEEDED"): name, resultGUID

## [PartyPose](https://warcraft.wiki.gg/wiki/Category:API_systems/PartyPose "Category:API systems/PartyPose")

[SHOW_PARTY_POSE_UI](https://warcraft.wiki.gg/wiki/Event:SHOW_PARTY_POSE_UI "Event:SHOW PARTY POSE UI"): mapID, won

## [PerksActivities](https://warcraft.wiki.gg/wiki/Category:API_systems/PerksActivities "Category:API systems/PerksActivities")

[PERKS_ACTIVITIES_TRACKED_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:PERKS_ACTIVITIES_TRACKED_LIST_CHANGED "Event:PERKS ACTIVITIES TRACKED LIST CHANGED"): perksActivityID, added

[PERKS_ACTIVITIES_TRACKED_UPDATED](https://warcraft.wiki.gg/wiki/Event:PERKS_ACTIVITIES_TRACKED_UPDATED "Event:PERKS ACTIVITIES TRACKED UPDATED")

[PERKS_ACTIVITIES_UPDATED](https://warcraft.wiki.gg/wiki/Event:PERKS_ACTIVITIES_UPDATED "Event:PERKS ACTIVITIES UPDATED")

[PERKS_ACTIVITY_COMPLETED](https://warcraft.wiki.gg/wiki/Event:PERKS_ACTIVITY_COMPLETED "Event:PERKS ACTIVITY COMPLETED"): perksActivityID

## [PerksProgram](https://warcraft.wiki.gg/wiki/Category:API_systems/PerksProgram "Category:API systems/PerksProgram")

[CHEST_REWARDS_UPDATED_FROM_SERVER](https://warcraft.wiki.gg/wiki/Event:CHEST_REWARDS_UPDATED_FROM_SERVER "Event:CHEST REWARDS UPDATED FROM SERVER")

[PERKS_PROGRAM_ADD_PENDING_SHOP_ITEM](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_ADD_PENDING_SHOP_ITEM "Event:PERKS PROGRAM ADD PENDING SHOP ITEM"): vendorItemID

[PERKS_PROGRAM_CLOSE](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_CLOSE "Event:PERKS PROGRAM CLOSE")

[PERKS_PROGRAM_CURRENCY_AWARDED](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_CURRENCY_AWARDED "Event:PERKS PROGRAM CURRENCY AWARDED"): value

[PERKS_PROGRAM_CURRENCY_REFRESH](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_CURRENCY_REFRESH "Event:PERKS PROGRAM CURRENCY REFRESH"): oldValue, newValue

[PERKS_PROGRAM_DATA_REFRESH](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_DATA_REFRESH "Event:PERKS PROGRAM DATA REFRESH")

[PERKS_PROGRAM_DATA_SPECIFIC_ITEM_REFRESH](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_DATA_SPECIFIC_ITEM_REFRESH "Event:PERKS PROGRAM DATA SPECIFIC ITEM REFRESH"): vendorItemID

[PERKS_PROGRAM_DISABLED](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_DISABLED "Event:PERKS PROGRAM DISABLED")

[PERKS_PROGRAM_OPEN](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_OPEN "Event:PERKS PROGRAM OPEN")

[PERKS_PROGRAM_PURCHASE_CART_SUCCESS](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_PURCHASE_CART_SUCCESS "Event:PERKS PROGRAM PURCHASE CART SUCCESS"): vendorItemIDs

[PERKS_PROGRAM_PURCHASE_SUCCESS](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_PURCHASE_SUCCESS "Event:PERKS PROGRAM PURCHASE SUCCESS"): vendorItemID

[PERKS_PROGRAM_REFUND_SUCCESS](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_REFUND_SUCCESS "Event:PERKS PROGRAM REFUND SUCCESS"): vendorItemID

[PERKS_PROGRAM_REMOVE_PENDING_SHOP_ITEM](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_REMOVE_PENDING_SHOP_ITEM "Event:PERKS PROGRAM REMOVE PENDING SHOP ITEM"): vendorItemID

[PERKS_PROGRAM_RESULT_ERROR](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_RESULT_ERROR "Event:PERKS PROGRAM RESULT ERROR")

[PERKS_PROGRAM_SET_FROZEN_ITEM](https://warcraft.wiki.gg/wiki/Event:PERKS_PROGRAM_SET_FROZEN_ITEM "Event:PERKS PROGRAM SET FROZEN ITEM"): vendorItemID

## [PetInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/PetInfo "Category:API systems/PetInfo")

[PET_ATTACK_START](https://warcraft.wiki.gg/wiki/Event:PET_ATTACK_START "Event:PET ATTACK START")

[PET_ATTACK_STOP](https://warcraft.wiki.gg/wiki/Event:PET_ATTACK_STOP "Event:PET ATTACK STOP")

[PET_BAR_HIDEGRID](https://warcraft.wiki.gg/wiki/Event:PET_BAR_HIDEGRID "Event:PET BAR HIDEGRID")

[PET_BAR_SHOWGRID](https://warcraft.wiki.gg/wiki/Event:PET_BAR_SHOWGRID "Event:PET BAR SHOWGRID")

[PET_BAR_UPDATE_COOLDOWN](https://warcraft.wiki.gg/wiki/Event:PET_BAR_UPDATE_COOLDOWN "Event:PET BAR UPDATE COOLDOWN")

[PET_DISMISS_START](https://warcraft.wiki.gg/wiki/Event:PET_DISMISS_START "Event:PET DISMISS START"): delay

[PET_FORCE_NAME_DECLENSION](https://warcraft.wiki.gg/wiki/Event:PET_FORCE_NAME_DECLENSION "Event:PET FORCE NAME DECLENSION"): name, petNumber, declinedName1, declinedName2, declinedName3, declinedName4, declinedName5

[PET_UI_CLOSE](https://warcraft.wiki.gg/wiki/Event:PET_UI_CLOSE "Event:PET UI CLOSE")

[RAISED_AS_GHOUL](https://warcraft.wiki.gg/wiki/Event:RAISED_AS_GHOUL "Event:RAISED AS GHOUL")

[UPDATE_POSSESS_BAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_POSSESS_BAR "Event:UPDATE POSSESS BAR")

[UPDATE_VEHICLE_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:UPDATE_VEHICLE_ACTIONBAR "Event:UPDATE VEHICLE ACTIONBAR")

## [PetJournalInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/PetJournalInfo "Category:API systems/PetJournalInfo")

[BATTLEPET_FORCE_NAME_DECLENSION](https://warcraft.wiki.gg/wiki/Event:BATTLEPET_FORCE_NAME_DECLENSION "Event:BATTLEPET FORCE NAME DECLENSION"): name, battlePetGUID

[COMPANION_LEARNED](https://warcraft.wiki.gg/wiki/Event:COMPANION_LEARNED "Event:COMPANION LEARNED")

[COMPANION_UNLEARNED](https://warcraft.wiki.gg/wiki/Event:COMPANION_UNLEARNED "Event:COMPANION UNLEARNED")

[COMPANION_UPDATE](https://warcraft.wiki.gg/wiki/Event:COMPANION_UPDATE "Event:COMPANION UPDATE"): companionType

[NEW_PET_ADDED](https://warcraft.wiki.gg/wiki/Event:NEW_PET_ADDED "Event:NEW PET ADDED"): battlePetGUID

[PET_JOURNAL_AUTO_SLOTTED_PET](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_AUTO_SLOTTED_PET "Event:PET JOURNAL AUTO SLOTTED PET"): slotIndex, battlePetGUID

[PET_JOURNAL_CAGE_FAILED](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_CAGE_FAILED "Event:PET JOURNAL CAGE FAILED")

[PET_JOURNAL_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_LIST_UPDATE "Event:PET JOURNAL LIST UPDATE")

[PET_JOURNAL_NEW_BATTLE_SLOT](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_NEW_BATTLE_SLOT "Event:PET JOURNAL NEW BATTLE SLOT")

[PET_JOURNAL_PET_DELETED](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_PET_DELETED "Event:PET JOURNAL PET DELETED"): battlePetGUID

[PET_JOURNAL_PET_RESTORED](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_PET_RESTORED "Event:PET JOURNAL PET RESTORED"): battlePetGUID

[PET_JOURNAL_PET_REVOKED](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_PET_REVOKED "Event:PET JOURNAL PET REVOKED"): battlePetGUID

[PET_JOURNAL_PETS_HEALED](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_PETS_HEALED "Event:PET JOURNAL PETS HEALED")

[PET_JOURNAL_TRAP_LEVEL_SET](https://warcraft.wiki.gg/wiki/Event:PET_JOURNAL_TRAP_LEVEL_SET "Event:PET JOURNAL TRAP LEVEL SET"): trapLevel

[UPDATE_SUMMONPETS_ACTION](https://warcraft.wiki.gg/wiki/Event:UPDATE_SUMMONPETS_ACTION "Event:UPDATE SUMMONPETS ACTION")

## [PhotoSharingUI](https://warcraft.wiki.gg/wiki/Category:API_systems/PhotoSharingUI "Category:API systems/PhotoSharingUI")

[PHOTO_SHARING_AUTHORIZATION_NEEDED](https://warcraft.wiki.gg/wiki/Event:PHOTO_SHARING_AUTHORIZATION_NEEDED "Event:PHOTO SHARING AUTHORIZATION NEEDED")

[PHOTO_SHARING_AUTHORIZATION_UPDATED](https://warcraft.wiki.gg/wiki/Event:PHOTO_SHARING_AUTHORIZATION_UPDATED "Event:PHOTO SHARING AUTHORIZATION UPDATED"): showNotification

[PHOTO_SHARING_PHOTO_UPLOAD_STATUS](https://warcraft.wiki.gg/wiki/Event:PHOTO_SHARING_PHOTO_UPLOAD_STATUS "Event:PHOTO SHARING PHOTO UPLOAD STATUS"): uploadStatus

[PHOTO_SHARING_SCREENSHOT_READY](https://warcraft.wiki.gg/wiki/Event:PHOTO_SHARING_SCREENSHOT_READY "Event:PHOTO SHARING SCREENSHOT READY")

[PHOTO_SHARING_THIRD_PARTY_AUTHORIZATION_NEEDED](https://warcraft.wiki.gg/wiki/Event:PHOTO_SHARING_THIRD_PARTY_AUTHORIZATION_NEEDED "Event:PHOTO SHARING THIRD PARTY AUTHORIZATION NEEDED"): authUrl

## [PingManager](https://warcraft.wiki.gg/wiki/Category:API_systems/PingManager "Category:API systems/PingManager")

[PING_SYSTEM_ERROR](https://warcraft.wiki.gg/wiki/Event:PING_SYSTEM_ERROR "Event:PING SYSTEM ERROR"): error

## [PingManagerSecure](https://warcraft.wiki.gg/wiki/Category:API_systems/PingManagerSecure "Category:API systems/PingManagerSecure")

[UNIT_PING_PIN_ADDED](https://warcraft.wiki.gg/wiki/Event:UNIT_PING_PIN_ADDED?action=edit&redlink=1 "Event:UNIT PING PIN ADDED (page does not exist)"): guid, uiTextureKit

[UNIT_PING_PIN_REMOVED](https://warcraft.wiki.gg/wiki/Event:UNIT_PING_PIN_REMOVED?action=edit&redlink=1 "Event:UNIT PING PIN REMOVED (page does not exist)"): guid

## [PlayerChoice](https://warcraft.wiki.gg/wiki/Category:API_systems/PlayerChoice "Category:API systems/PlayerChoice")

[PLAYER_CHOICE_CLOSE](https://warcraft.wiki.gg/wiki/Event:PLAYER_CHOICE_CLOSE "Event:PLAYER CHOICE CLOSE")

[PLAYER_CHOICE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_CHOICE_UPDATE "Event:PLAYER CHOICE UPDATE")

## [PlayerInteractionManager](https://warcraft.wiki.gg/wiki/Category:API_systems/PlayerInteractionManager "Category:API systems/PlayerInteractionManager")

[PLAYER_INTERACTION_MANAGER_FRAME_HIDE](https://warcraft.wiki.gg/wiki/Event:PLAYER_INTERACTION_MANAGER_FRAME_HIDE "Event:PLAYER INTERACTION MANAGER FRAME HIDE"): type

[PLAYER_INTERACTION_MANAGER_FRAME_SHOW](https://warcraft.wiki.gg/wiki/Event:PLAYER_INTERACTION_MANAGER_FRAME_SHOW "Event:PLAYER INTERACTION MANAGER FRAME SHOW"): type

## [PlayerMentorship](https://warcraft.wiki.gg/wiki/Category:API_systems/PlayerMentorship "Category:API systems/PlayerMentorship")

[MENTORSHIP_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:MENTORSHIP_STATUS_CHANGED "Event:MENTORSHIP STATUS CHANGED")

[NEWCOMER_GRADUATION](https://warcraft.wiki.gg/wiki/Event:NEWCOMER_GRADUATION "Event:NEWCOMER GRADUATION")

## [PlayerScript](https://warcraft.wiki.gg/wiki/Category:API_systems/PlayerScript "Category:API systems/PlayerScript")

[PLAYER_IN_COMBAT_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_IN_COMBAT_CHANGED "Event:PLAYER IN COMBAT CHANGED"): inCombat

[PLAYER_TARGET_DIED](https://warcraft.wiki.gg/wiki/Event:PLAYER_TARGET_DIED "Event:PLAYER TARGET DIED")

## [ProfessionSpecUI](https://warcraft.wiki.gg/wiki/Category:API_systems/ProfessionSpecUI "Category:API systems/ProfessionSpecUI")

[SKILL_LINE_SPECS_RANKS_CHANGED](https://warcraft.wiki.gg/wiki/Event:SKILL_LINE_SPECS_RANKS_CHANGED "Event:SKILL LINE SPECS RANKS CHANGED")

[SKILL_LINE_SPECS_UNLOCKED](https://warcraft.wiki.gg/wiki/Event:SKILL_LINE_SPECS_UNLOCKED "Event:SKILL LINE SPECS UNLOCKED"): skillLineID, tradeSkillID

## [PvpInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/PvpInfo "Category:API systems/PvpInfo")

[ARENA_OPPONENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARENA_OPPONENT_UPDATE "Event:ARENA OPPONENT UPDATE"): unitToken, updateReason

[ARENA_PREP_OPPONENT_SPECIALIZATIONS](https://warcraft.wiki.gg/wiki/Event:ARENA_PREP_OPPONENT_SPECIALIZATIONS "Event:ARENA PREP OPPONENT SPECIALIZATIONS")

[ARENA_SEASON_WORLD_STATE](https://warcraft.wiki.gg/wiki/Event:ARENA_SEASON_WORLD_STATE "Event:ARENA SEASON WORLD STATE")

[BATTLEFIELD_AUTO_QUEUE](https://warcraft.wiki.gg/wiki/Event:BATTLEFIELD_AUTO_QUEUE "Event:BATTLEFIELD AUTO QUEUE")

[BATTLEFIELD_AUTO_QUEUE_EJECT](https://warcraft.wiki.gg/wiki/Event:BATTLEFIELD_AUTO_QUEUE_EJECT "Event:BATTLEFIELD AUTO QUEUE EJECT")

[BATTLEFIELD_QUEUE_TIMEOUT](https://warcraft.wiki.gg/wiki/Event:BATTLEFIELD_QUEUE_TIMEOUT "Event:BATTLEFIELD QUEUE TIMEOUT")

[BATTLEFIELDS_CLOSED](https://warcraft.wiki.gg/wiki/Event:BATTLEFIELDS_CLOSED "Event:BATTLEFIELDS CLOSED")

[BATTLEFIELDS_SHOW](https://warcraft.wiki.gg/wiki/Event:BATTLEFIELDS_SHOW "Event:BATTLEFIELDS SHOW"): isArena, battleMasterListID

[BATTLEGROUND_OBJECTIVES_UPDATE](https://warcraft.wiki.gg/wiki/Event:BATTLEGROUND_OBJECTIVES_UPDATE "Event:BATTLEGROUND OBJECTIVES UPDATE")

[BATTLEGROUND_POINTS_UPDATE](https://warcraft.wiki.gg/wiki/Event:BATTLEGROUND_POINTS_UPDATE "Event:BATTLEGROUND POINTS UPDATE")

[GDF_SIM_COMPLETE](https://warcraft.wiki.gg/wiki/Event:GDF_SIM_COMPLETE "Event:GDF SIM COMPLETE")

[HONOR_LEVEL_UPDATE](https://warcraft.wiki.gg/wiki/Event:HONOR_LEVEL_UPDATE "Event:HONOR LEVEL UPDATE"): isHigherLevel

[NOTIFY_PVP_AFK_RESULT](https://warcraft.wiki.gg/wiki/Event:NOTIFY_PVP_AFK_RESULT "Event:NOTIFY PVP AFK RESULT"): offender, numBlackMarksOnOffender, numPlayersIHaveReported

[PLAYER_ENTERING_BATTLEGROUND](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_BATTLEGROUND "Event:PLAYER ENTERING BATTLEGROUND")

[PLAYER_JOINED_PVP_MATCH](https://warcraft.wiki.gg/wiki/Event:PLAYER_JOINED_PVP_MATCH "Event:PLAYER JOINED PVP MATCH")

[POST_MATCH_CURRENCY_REWARD_UPDATE](https://warcraft.wiki.gg/wiki/Event:POST_MATCH_CURRENCY_REWARD_UPDATE "Event:POST MATCH CURRENCY REWARD UPDATE"): reward

[POST_MATCH_ITEM_REWARD_UPDATE](https://warcraft.wiki.gg/wiki/Event:POST_MATCH_ITEM_REWARD_UPDATE "Event:POST MATCH ITEM REWARD UPDATE")

[PVP_BRAWL_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:PVP_BRAWL_INFO_UPDATED "Event:PVP BRAWL INFO UPDATED")

[PVP_MATCH_ACTIVE](https://warcraft.wiki.gg/wiki/Event:PVP_MATCH_ACTIVE "Event:PVP MATCH ACTIVE")

[PVP_MATCH_COMPLETE](https://warcraft.wiki.gg/wiki/Event:PVP_MATCH_COMPLETE "Event:PVP MATCH COMPLETE"): winner, duration

[PVP_MATCH_INACTIVE](https://warcraft.wiki.gg/wiki/Event:PVP_MATCH_INACTIVE "Event:PVP MATCH INACTIVE")

[PVP_MATCH_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:PVP_MATCH_STATE_CHANGED "Event:PVP MATCH STATE CHANGED")

[PVP_RATED_STATS_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_RATED_STATS_UPDATE "Event:PVP RATED STATS UPDATE")

[PVP_REWARDS_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_REWARDS_UPDATE "Event:PVP REWARDS UPDATE")

[PVP_ROLE_POPUP_HIDE](https://warcraft.wiki.gg/wiki/Event:PVP_ROLE_POPUP_HIDE "Event:PVP ROLE POPUP HIDE"): readyCheckInfo

[PVP_ROLE_POPUP_SHOW](https://warcraft.wiki.gg/wiki/Event:PVP_ROLE_POPUP_SHOW "Event:PVP ROLE POPUP SHOW"): readyCheckInfo

[PVP_ROLE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_ROLE_UPDATE "Event:PVP ROLE UPDATE")

[PVP_SPECIAL_EVENT_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:PVP_SPECIAL_EVENT_INFO_UPDATED "Event:PVP SPECIAL EVENT INFO UPDATED")

[PVP_TYPES_ENABLED](https://warcraft.wiki.gg/wiki/Event:PVP_TYPES_ENABLED "Event:PVP TYPES ENABLED"): wargameBattlegrounds, ratedBattlegrounds, ratedArenas, ratedSoloShuffle, ratedBGBlitz

[PVP_VEHICLE_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:PVP_VEHICLE_INFO_UPDATED "Event:PVP VEHICLE INFO UPDATED")

[PVP_WORLDSTATE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_WORLDSTATE_UPDATE "Event:PVP WORLDSTATE UPDATE")

[PVPQUEUE_ANYWHERE_SHOW](https://warcraft.wiki.gg/wiki/Event:PVPQUEUE_ANYWHERE_SHOW "Event:PVPQUEUE ANYWHERE SHOW")

[PVPQUEUE_ANYWHERE_UPDATE_AVAILABLE](https://warcraft.wiki.gg/wiki/Event:PVPQUEUE_ANYWHERE_UPDATE_AVAILABLE "Event:PVPQUEUE ANYWHERE UPDATE AVAILABLE")

[TRAINING_GROUNDS_ENABLED_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRAINING_GROUNDS_ENABLED_STATUS_UPDATED "Event:TRAINING GROUNDS ENABLED STATUS UPDATED")

[UPDATE_ACTIVE_BATTLEFIELD](https://warcraft.wiki.gg/wiki/Event:UPDATE_ACTIVE_BATTLEFIELD "Event:UPDATE ACTIVE BATTLEFIELD")

[UPDATE_BATTLEFIELD_SCORE](https://warcraft.wiki.gg/wiki/Event:UPDATE_BATTLEFIELD_SCORE "Event:UPDATE BATTLEFIELD SCORE")

[UPDATE_BATTLEFIELD_STATUS](https://warcraft.wiki.gg/wiki/Event:UPDATE_BATTLEFIELD_STATUS "Event:UPDATE BATTLEFIELD STATUS"): battleFieldIndex

[WAR_MODE_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:WAR_MODE_STATUS_UPDATE "Event:WAR MODE STATUS UPDATE"): warModeEnabled

[WARGAME_INVITE_SENT](https://warcraft.wiki.gg/wiki/Event:WARGAME_INVITE_SENT "Event:WARGAME INVITE SENT")

[WARGAME_REQUEST_RESPONSE](https://warcraft.wiki.gg/wiki/Event:WARGAME_REQUEST_RESPONSE "Event:WARGAME REQUEST RESPONSE"): responderGUID, responderName, accepted

[WARGAME_REQUESTED](https://warcraft.wiki.gg/wiki/Event:WARGAME_REQUESTED "Event:WARGAME REQUESTED"): opposingPartyMemberName, battlegroundName, timeoutSeconds, tournamentRules

[WORLD_PVP_QUEUE](https://warcraft.wiki.gg/wiki/Event:WORLD_PVP_QUEUE "Event:WORLD PVP QUEUE")

## [QuestLog](https://warcraft.wiki.gg/wiki/Category:API_systems/QuestLog "Category:API systems/QuestLog")

[QUEST_ACCEPTED](https://warcraft.wiki.gg/wiki/Event:QUEST_ACCEPTED "Event:QUEST ACCEPTED"): questId

[QUEST_AUTOCOMPLETE](https://warcraft.wiki.gg/wiki/Event:QUEST_AUTOCOMPLETE "Event:QUEST AUTOCOMPLETE"): questId

[QUEST_COMPLETE](https://warcraft.wiki.gg/wiki/Event:QUEST_COMPLETE "Event:QUEST COMPLETE")

[QUEST_DATA_LOAD_RESULT](https://warcraft.wiki.gg/wiki/Event:QUEST_DATA_LOAD_RESULT "Event:QUEST DATA LOAD RESULT"): questID, success

[QUEST_DETAIL](https://warcraft.wiki.gg/wiki/Event:QUEST_DETAIL "Event:QUEST DETAIL"): questStartItemID

[QUEST_LOG_CRITERIA_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUEST_LOG_CRITERIA_UPDATE "Event:QUEST LOG CRITERIA UPDATE"): questID, specificTreeID, description, numFulfilled, numRequired

[QUEST_LOG_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUEST_LOG_UPDATE "Event:QUEST LOG UPDATE")

[QUEST_POI_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUEST_POI_UPDATE "Event:QUEST POI UPDATE")

[QUEST_REMOVED](https://warcraft.wiki.gg/wiki/Event:QUEST_REMOVED "Event:QUEST REMOVED"): questID, wasReplayQuest

[QUEST_TURNED_IN](https://warcraft.wiki.gg/wiki/Event:QUEST_TURNED_IN "Event:QUEST TURNED IN"): questID, xpReward, moneyReward

[QUEST_WATCH_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:QUEST_WATCH_LIST_CHANGED "Event:QUEST WATCH LIST CHANGED"): questID, added

[QUEST_WATCH_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUEST_WATCH_UPDATE "Event:QUEST WATCH UPDATE"): questID

[QUESTLINE_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUESTLINE_UPDATE "Event:QUESTLINE UPDATE"): requestRequired

[TASK_PROGRESS_UPDATE](https://warcraft.wiki.gg/wiki/Event:TASK_PROGRESS_UPDATE "Event:TASK PROGRESS UPDATE")

[TREASURE_PICKER_CACHE_FLUSH](https://warcraft.wiki.gg/wiki/Event:TREASURE_PICKER_CACHE_FLUSH "Event:TREASURE PICKER CACHE FLUSH")

[WAYPOINT_UPDATE](https://warcraft.wiki.gg/wiki/Event:WAYPOINT_UPDATE "Event:WAYPOINT UPDATE")

[WORLD_QUEST_COMPLETED_BY_SPELL](https://warcraft.wiki.gg/wiki/Event:WORLD_QUEST_COMPLETED_BY_SPELL "Event:WORLD QUEST COMPLETED BY SPELL"): questID

## [QuestOffer](https://warcraft.wiki.gg/wiki/Category:API_systems/QuestOffer "Category:API systems/QuestOffer")

[QUEST_ACCEPT_CONFIRM](https://warcraft.wiki.gg/wiki/Event:QUEST_ACCEPT_CONFIRM "Event:QUEST ACCEPT CONFIRM"): name, questTitle, questID

[QUEST_FINISHED](https://warcraft.wiki.gg/wiki/Event:QUEST_FINISHED "Event:QUEST FINISHED")

[QUEST_GREETING](https://warcraft.wiki.gg/wiki/Event:QUEST_GREETING "Event:QUEST GREETING")

[QUEST_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:QUEST_ITEM_UPDATE "Event:QUEST ITEM UPDATE")

[QUEST_PROGRESS](https://warcraft.wiki.gg/wiki/Event:QUEST_PROGRESS "Event:QUEST PROGRESS")

## [QuestSession](https://warcraft.wiki.gg/wiki/Category:API_systems/QuestSession "Category:API systems/QuestSession")

[QUEST_SESSION_CREATED](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_CREATED "Event:QUEST SESSION CREATED")

[QUEST_SESSION_DESTROYED](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_DESTROYED "Event:QUEST SESSION DESTROYED")

[QUEST_SESSION_ENABLED_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_ENABLED_STATE_CHANGED "Event:QUEST SESSION ENABLED STATE CHANGED"): enabled

[QUEST_SESSION_JOINED](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_JOINED "Event:QUEST SESSION JOINED")

[QUEST_SESSION_LEFT](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_LEFT "Event:QUEST SESSION LEFT")

[QUEST_SESSION_MEMBER_CONFIRM](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_MEMBER_CONFIRM "Event:QUEST SESSION MEMBER CONFIRM")

[QUEST_SESSION_MEMBER_START_RESPONSE](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_MEMBER_START_RESPONSE "Event:QUEST SESSION MEMBER START RESPONSE"): guid, response

[QUEST_SESSION_NOTIFICATION](https://warcraft.wiki.gg/wiki/Event:QUEST_SESSION_NOTIFICATION "Event:QUEST SESSION NOTIFICATION"): result, guid

## [RecentAllies](https://warcraft.wiki.gg/wiki/Category:API_systems/RecentAllies "Category:API systems/RecentAllies")

[LET_RECENT_ALLIES_SEE_LOCATION_SETTING_UPDATED](https://warcraft.wiki.gg/wiki/Event:LET_RECENT_ALLIES_SEE_LOCATION_SETTING_UPDATED "Event:LET RECENT ALLIES SEE LOCATION SETTING UPDATED")

[RECENT_ALLIES_CACHE_UPDATE](https://warcraft.wiki.gg/wiki/Event:RECENT_ALLIES_CACHE_UPDATE "Event:RECENT ALLIES CACHE UPDATE")

[RECENT_ALLIES_DATA_READY](https://warcraft.wiki.gg/wiki/Event:RECENT_ALLIES_DATA_READY "Event:RECENT ALLIES DATA READY")

[RECENT_ALLIES_SYSTEM_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:RECENT_ALLIES_SYSTEM_STATUS_UPDATED "Event:RECENT ALLIES SYSTEM STATUS UPDATED")

[RECENT_ALLY_DATA_UPDATED](https://warcraft.wiki.gg/wiki/Event:RECENT_ALLY_DATA_UPDATED "Event:RECENT ALLY DATA UPDATED"): characterGUID

## [RecruitAFriend](https://warcraft.wiki.gg/wiki/Category:API_systems/RecruitAFriend "Category:API systems/RecruitAFriend")

[RAF_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:RAF_INFO_UPDATED "Event:RAF INFO UPDATED"): info

[RAF_RECRUITING_ENABLED_STATUS](https://warcraft.wiki.gg/wiki/Event:RAF_RECRUITING_ENABLED_STATUS "Event:RAF RECRUITING ENABLED STATUS"): enabled

[RAF_REWARD_CLAIM_FAILED](https://warcraft.wiki.gg/wiki/Event:RAF_REWARD_CLAIM_FAILED "Event:RAF REWARD CLAIM FAILED")

[RAF_SYSTEM_ENABLED_STATUS](https://warcraft.wiki.gg/wiki/Event:RAF_SYSTEM_ENABLED_STATUS "Event:RAF SYSTEM ENABLED STATUS"): enabled

[RAF_SYSTEM_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:RAF_SYSTEM_INFO_UPDATED "Event:RAF SYSTEM INFO UPDATED"): systemInfo

## [RemixArtifactUI](https://warcraft.wiki.gg/wiki/Category:API_systems/RemixArtifactUI "Category:API systems/RemixArtifactUI")

[REMIX_ARTIFACT_ITEM_SPECS_LOADED](https://warcraft.wiki.gg/wiki/Event:REMIX_ARTIFACT_ITEM_SPECS_LOADED "Event:REMIX ARTIFACT ITEM SPECS LOADED"): success

[REMIX_ARTIFACT_UPDATE](https://warcraft.wiki.gg/wiki/Event:REMIX_ARTIFACT_UPDATE "Event:REMIX ARTIFACT UPDATE")

## [ReportSystem](https://warcraft.wiki.gg/wiki/Category:API_systems/ReportSystem "Category:API systems/ReportSystem")

[REPORT_PLAYER_RESULT](https://warcraft.wiki.gg/wiki/Event:REPORT_PLAYER_RESULT "Event:REPORT PLAYER RESULT"): result, reportType

[REPORT_SCREENSHOT_READY](https://warcraft.wiki.gg/wiki/Event:REPORT_SCREENSHOT_READY "Event:REPORT SCREENSHOT READY")

## [ReputationInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ReputationInfo "Category:API systems/ReputationInfo")

[FACTION_STANDING_CHANGED](https://warcraft.wiki.gg/wiki/Event:FACTION_STANDING_CHANGED "Event:FACTION STANDING CHANGED"): factionID, updatedStanding

## [ResearchInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ResearchInfo "Category:API systems/ResearchInfo")

[ARCHAEOLOGY_CLOSED](https://warcraft.wiki.gg/wiki/Event:ARCHAEOLOGY_CLOSED "Event:ARCHAEOLOGY CLOSED")

[ARCHAEOLOGY_FIND_COMPLETE](https://warcraft.wiki.gg/wiki/Event:ARCHAEOLOGY_FIND_COMPLETE "Event:ARCHAEOLOGY FIND COMPLETE"): numFindsCompleted, totalFinds, researchBranchID

[ARCHAEOLOGY_SURVEY_CAST](https://warcraft.wiki.gg/wiki/Event:ARCHAEOLOGY_SURVEY_CAST "Event:ARCHAEOLOGY SURVEY CAST"): numFindsCompleted, totalFinds, researchBranchID, successfulFind

[ARCHAEOLOGY_TOGGLE](https://warcraft.wiki.gg/wiki/Event:ARCHAEOLOGY_TOGGLE "Event:ARCHAEOLOGY TOGGLE")

[ARTIFACT_DIGSITE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:ARTIFACT_DIGSITE_COMPLETE "Event:ARTIFACT DIGSITE COMPLETE"): researchBranchID

[RESEARCH_ARTIFACT_COMPLETE](https://warcraft.wiki.gg/wiki/Event:RESEARCH_ARTIFACT_COMPLETE "Event:RESEARCH ARTIFACT COMPLETE"): name

[RESEARCH_ARTIFACT_DIG_SITE_UPDATED](https://warcraft.wiki.gg/wiki/Event:RESEARCH_ARTIFACT_DIG_SITE_UPDATED "Event:RESEARCH ARTIFACT DIG SITE UPDATED")

[RESEARCH_ARTIFACT_UPDATE](https://warcraft.wiki.gg/wiki/Event:RESEARCH_ARTIFACT_UPDATE "Event:RESEARCH ARTIFACT UPDATE")

## [RestrictedActions](https://warcraft.wiki.gg/wiki/Category:API_systems/RestrictedActions "Category:API systems/RestrictedActions")

[ADDON_ACTION_BLOCKED](https://warcraft.wiki.gg/wiki/Event:ADDON_ACTION_BLOCKED "Event:ADDON ACTION BLOCKED"): isTainted, function

[ADDON_ACTION_FORBIDDEN](https://warcraft.wiki.gg/wiki/Event:ADDON_ACTION_FORBIDDEN "Event:ADDON ACTION FORBIDDEN"): isTainted, function

[ADDON_RESTRICTION_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:ADDON_RESTRICTION_STATE_CHANGED "Event:ADDON RESTRICTION STATE CHANGED"): type, state

[MACRO_ACTION_BLOCKED](https://warcraft.wiki.gg/wiki/Event:MACRO_ACTION_BLOCKED "Event:MACRO ACTION BLOCKED"): function

[MACRO_ACTION_FORBIDDEN](https://warcraft.wiki.gg/wiki/Event:MACRO_ACTION_FORBIDDEN "Event:MACRO ACTION FORBIDDEN"): function

## [ScenarioInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ScenarioInfo "Category:API systems/ScenarioInfo")

[JAILERS_TOWER_LEVEL_UPDATE](https://warcraft.wiki.gg/wiki/Event:JAILERS_TOWER_LEVEL_UPDATE "Event:JAILERS TOWER LEVEL UPDATE"): level, type

[SCENARIO_BONUS_OBJECTIVE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_BONUS_OBJECTIVE_COMPLETE "Event:SCENARIO BONUS OBJECTIVE COMPLETE"): bonusObjectiveID

[SCENARIO_BONUS_VISIBILITY_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_BONUS_VISIBILITY_UPDATE "Event:SCENARIO BONUS VISIBILITY UPDATE")

[SCENARIO_COMPLETED](https://warcraft.wiki.gg/wiki/Event:SCENARIO_COMPLETED "Event:SCENARIO COMPLETED"): questID, xp, money

[SCENARIO_CRITERIA_SHOW_STATE_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_CRITERIA_SHOW_STATE_UPDATE "Event:SCENARIO CRITERIA SHOW STATE UPDATE"): show

[SCENARIO_CRITERIA_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_CRITERIA_UPDATE "Event:SCENARIO CRITERIA UPDATE"): criteriaID

[SCENARIO_POI_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_POI_UPDATE "Event:SCENARIO POI UPDATE")

[SCENARIO_SPELL_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_SPELL_UPDATE "Event:SCENARIO SPELL UPDATE")

[SCENARIO_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCENARIO_UPDATE "Event:SCENARIO UPDATE"): newStep

## [ScrappingMachineUI](https://warcraft.wiki.gg/wiki/Category:API_systems/ScrappingMachineUI "Category:API systems/ScrappingMachineUI")

[SCRAPPING_MACHINE_ITEM_ADDED](https://warcraft.wiki.gg/wiki/Event:SCRAPPING_MACHINE_ITEM_ADDED "Event:SCRAPPING MACHINE ITEM ADDED"): index

[SCRAPPING_MACHINE_ITEM_REMOVED](https://warcraft.wiki.gg/wiki/Event:SCRAPPING_MACHINE_ITEM_REMOVED "Event:SCRAPPING MACHINE ITEM REMOVED"): index

[SCRAPPING_MACHINE_PENDING_ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:SCRAPPING_MACHINE_PENDING_ITEM_CHANGED "Event:SCRAPPING MACHINE PENDING ITEM CHANGED")

[SCRAPPING_MACHINE_SCRAPPING_FINISHED](https://warcraft.wiki.gg/wiki/Event:SCRAPPING_MACHINE_SCRAPPING_FINISHED "Event:SCRAPPING MACHINE SCRAPPING FINISHED")

## [ScriptWarnings](https://warcraft.wiki.gg/wiki/Category:API_systems/ScriptWarnings "Category:API systems/ScriptWarnings")

[LUA_WARNING](https://warcraft.wiki.gg/wiki/Event:LUA_WARNING "Event:LUA WARNING"): warningText

## [ScriptedAnimations](https://warcraft.wiki.gg/wiki/Category:API_systems/ScriptedAnimations "Category:API systems/ScriptedAnimations")

[SCRIPTED_ANIMATIONS_UPDATE](https://warcraft.wiki.gg/wiki/Event:SCRIPTED_ANIMATIONS_UPDATE "Event:SCRIPTED ANIMATIONS UPDATE")

## [SecureTransfer](https://warcraft.wiki.gg/wiki/Category:API_systems/SecureTransfer "Category:API systems/SecureTransfer")

[SECURE_TRANSFER_CANCEL](https://warcraft.wiki.gg/wiki/Event:SECURE_TRANSFER_CANCEL "Event:SECURE TRANSFER CANCEL")

[SECURE_TRANSFER_CONFIRM_HOUSING_PURCHASE](https://warcraft.wiki.gg/wiki/Event:SECURE_TRANSFER_CONFIRM_HOUSING_PURCHASE "Event:SECURE TRANSFER CONFIRM HOUSING PURCHASE")

[SECURE_TRANSFER_CONFIRM_SEND_MAIL](https://warcraft.wiki.gg/wiki/Event:SECURE_TRANSFER_CONFIRM_SEND_MAIL "Event:SECURE TRANSFER CONFIRM SEND MAIL")

[SECURE_TRANSFER_CONFIRM_TRADE_ACCEPT](https://warcraft.wiki.gg/wiki/Event:SECURE_TRANSFER_CONFIRM_TRADE_ACCEPT "Event:SECURE TRANSFER CONFIRM TRADE ACCEPT")

[SECURE_TRANSFER_HOUSING_CURRENCY_PURCHASE_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:SECURE_TRANSFER_HOUSING_CURRENCY_PURCHASE_CONFIRMATION "Event:SECURE TRANSFER HOUSING CURRENCY PURCHASE CONFIRMATION")

## [SettingsUtil](https://warcraft.wiki.gg/wiki/Category:API_systems/SettingsUtil "Category:API systems/SettingsUtil")

[SETTINGS_LOADED](https://warcraft.wiki.gg/wiki/Event:SETTINGS_LOADED "Event:SETTINGS LOADED")

[SETTINGS_PANEL_OPEN](https://warcraft.wiki.gg/wiki/Event:SETTINGS_PANEL_OPEN "Event:SETTINGS PANEL OPEN"): openToCategoryID, scrollToElementName

## [SharedTraits](https://warcraft.wiki.gg/wiki/Category:API_systems/SharedTraits "Category:API systems/SharedTraits")

[CONFIG_COMMIT_FAILED](https://warcraft.wiki.gg/wiki/Event:CONFIG_COMMIT_FAILED "Event:CONFIG COMMIT FAILED"): configID

[TRAIT_COND_INFO_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRAIT_COND_INFO_CHANGED "Event:TRAIT COND INFO CHANGED"): condID

[TRAIT_CONFIG_CREATED](https://warcraft.wiki.gg/wiki/Event:TRAIT_CONFIG_CREATED "Event:TRAIT CONFIG CREATED"): configInfo

[TRAIT_CONFIG_DELETED](https://warcraft.wiki.gg/wiki/Event:TRAIT_CONFIG_DELETED "Event:TRAIT CONFIG DELETED"): configID

[TRAIT_CONFIG_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRAIT_CONFIG_LIST_UPDATED "Event:TRAIT CONFIG LIST UPDATED")

[TRAIT_CONFIG_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRAIT_CONFIG_UPDATED "Event:TRAIT CONFIG UPDATED"): configID

[TRAIT_NODE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRAIT_NODE_CHANGED "Event:TRAIT NODE CHANGED"): nodeID

[TRAIT_NODE_CHANGED_PARTIAL](https://warcraft.wiki.gg/wiki/Event:TRAIT_NODE_CHANGED_PARTIAL "Event:TRAIT NODE CHANGED PARTIAL"): ID, info

[TRAIT_NODE_ENTRY_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRAIT_NODE_ENTRY_UPDATED "Event:TRAIT NODE ENTRY UPDATED"): nodeEntryID

[TRAIT_SUB_TREE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRAIT_SUB_TREE_CHANGED "Event:TRAIT SUB TREE CHANGED"): subTreeID

[TRAIT_SYSTEM_INTERACTION_STARTED](https://warcraft.wiki.gg/wiki/Event:TRAIT_SYSTEM_INTERACTION_STARTED "Event:TRAIT SYSTEM INTERACTION STARTED"): treeID

[TRAIT_SYSTEM_NPC_CLOSED](https://warcraft.wiki.gg/wiki/Event:TRAIT_SYSTEM_NPC_CLOSED "Event:TRAIT SYSTEM NPC CLOSED")

[TRAIT_TREE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRAIT_TREE_CHANGED "Event:TRAIT TREE CHANGED"): treeID

[TRAIT_TREE_CURRENCY_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRAIT_TREE_CURRENCY_INFO_UPDATED "Event:TRAIT TREE CURRENCY INFO UPDATED"): treeID

[TRY_PURCHASE_TO_NODE_PARTIAL_SUCCESS](https://warcraft.wiki.gg/wiki/Event:TRY_PURCHASE_TO_NODE_PARTIAL_SUCCESS "Event:TRY PURCHASE TO NODE PARTIAL SUCCESS"): nodeFinishedOn

## [SkillInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/SkillInfo "Category:API systems/SkillInfo")

[SKILL_LINES_CHANGED](https://warcraft.wiki.gg/wiki/Event:SKILL_LINES_CHANGED "Event:SKILL LINES CHANGED")

## [SocialQueue](https://warcraft.wiki.gg/wiki/Category:API_systems/SocialQueue "Category:API systems/SocialQueue")

[SOCIAL_QUEUE_CONFIG_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOCIAL_QUEUE_CONFIG_UPDATED "Event:SOCIAL QUEUE CONFIG UPDATED")

[SOCIAL_QUEUE_UPDATE](https://warcraft.wiki.gg/wiki/Event:SOCIAL_QUEUE_UPDATE "Event:SOCIAL QUEUE UPDATE"): groupGUID, numAddedItems

## [SocialQueueSystemStatus](https://warcraft.wiki.gg/wiki/Category:API_systems/SocialQueueSystemStatus "Category:API systems/SocialQueueSystemStatus")

[SOCIAL_UI_SOCIAL_QUEUE_SYSTEM_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOCIAL_UI_SOCIAL_QUEUE_SYSTEM_STATUS_UPDATED "Event:SOCIAL UI SOCIAL QUEUE SYSTEM STATUS UPDATED")

## [SocialRestrictions](https://warcraft.wiki.gg/wiki/Category:API_systems/SocialRestrictions "Category:API systems/SocialRestrictions")

[ALERT_REGIONAL_CHAT_DISABLED](https://warcraft.wiki.gg/wiki/Event:ALERT_REGIONAL_CHAT_DISABLED "Event:ALERT REGIONAL CHAT DISABLED")

[CHAT_DISABLED_CHANGE_FAILED](https://warcraft.wiki.gg/wiki/Event:CHAT_DISABLED_CHANGE_FAILED "Event:CHAT DISABLED CHANGE FAILED"): disabled

[CHAT_DISABLED_CHANGED](https://warcraft.wiki.gg/wiki/Event:CHAT_DISABLED_CHANGED "Event:CHAT DISABLED CHANGED"): disabled

## [SocialUI](https://warcraft.wiki.gg/wiki/Category:API_systems/SocialUI "Category:API systems/SocialUI")

[SOCIAL_UI_SYSTEM_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOCIAL_UI_SYSTEM_STATUS_UPDATED "Event:SOCIAL UI SYSTEM STATUS UPDATED")

## [Soulbinds](https://warcraft.wiki.gg/wiki/Category:API_systems/Soulbinds "Category:API systems/Soulbinds")

[SOULBIND_ACTIVATED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_ACTIVATED "Event:SOULBIND ACTIVATED"): soulbindID

[SOULBIND_CONDUIT_COLLECTION_CLEARED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_CONDUIT_COLLECTION_CLEARED "Event:SOULBIND CONDUIT COLLECTION CLEARED")

[SOULBIND_CONDUIT_COLLECTION_REMOVED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_CONDUIT_COLLECTION_REMOVED "Event:SOULBIND CONDUIT COLLECTION REMOVED"): conduitID

[SOULBIND_CONDUIT_COLLECTION_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_CONDUIT_COLLECTION_UPDATED "Event:SOULBIND CONDUIT COLLECTION UPDATED"): collectionData

[SOULBIND_CONDUIT_INSTALLED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_CONDUIT_INSTALLED "Event:SOULBIND CONDUIT INSTALLED"): nodeID, data

[SOULBIND_CONDUIT_UNINSTALLED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_CONDUIT_UNINSTALLED "Event:SOULBIND CONDUIT UNINSTALLED"): nodeID, data

[SOULBIND_FORGE_INTERACTION_ENDED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_FORGE_INTERACTION_ENDED "Event:SOULBIND FORGE INTERACTION ENDED")

[SOULBIND_FORGE_INTERACTION_STARTED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_FORGE_INTERACTION_STARTED "Event:SOULBIND FORGE INTERACTION STARTED")

[SOULBIND_NODE_LEARNED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_NODE_LEARNED "Event:SOULBIND NODE LEARNED"): nodeID

[SOULBIND_NODE_UNLEARNED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_NODE_UNLEARNED "Event:SOULBIND NODE UNLEARNED"): nodeID

[SOULBIND_NODE_UPDATED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_NODE_UPDATED "Event:SOULBIND NODE UPDATED"): nodeID

[SOULBIND_PATH_CHANGED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_PATH_CHANGED "Event:SOULBIND PATH CHANGED")

[SOULBIND_PENDING_CONDUIT_CHANGED](https://warcraft.wiki.gg/wiki/Event:SOULBIND_PENDING_CONDUIT_CHANGED "Event:SOULBIND PENDING CONDUIT CHANGED"): nodeID, conduitID

## [Sound](https://warcraft.wiki.gg/wiki/Category:API_systems/Sound "Category:API systems/Sound")

[SOUND_DEVICE_UPDATE](https://warcraft.wiki.gg/wiki/Event:SOUND_DEVICE_UPDATE "Event:SOUND DEVICE UPDATE")

[SOUNDKIT_FINISHED](https://warcraft.wiki.gg/wiki/Event:SOUNDKIT_FINISHED "Event:SOUNDKIT FINISHED"): soundHandle

## [SpecializationInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/SpecializationInfo "Category:API systems/SpecializationInfo")

[ACTIVE_TALENT_GROUP_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTIVE_TALENT_GROUP_CHANGED "Event:ACTIVE TALENT GROUP CHANGED"): curr, prev

[CONFIRM_PET_UNLEARN](https://warcraft.wiki.gg/wiki/Event:CONFIRM_PET_UNLEARN "Event:CONFIRM PET UNLEARN"): cost

[CONFIRM_TALENT_WIPE](https://warcraft.wiki.gg/wiki/Event:CONFIRM_TALENT_WIPE "Event:CONFIRM TALENT WIPE"): cost, respecType

[PET_SPECIALIZATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:PET_SPECIALIZATION_CHANGED "Event:PET SPECIALIZATION CHANGED")

[PLAYER_LEARN_PVP_TALENT_FAILED](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEARN_PVP_TALENT_FAILED "Event:PLAYER LEARN PVP TALENT FAILED")

[PLAYER_LEARN_TALENT_FAILED](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEARN_TALENT_FAILED "Event:PLAYER LEARN TALENT FAILED")

[PLAYER_PVP_TALENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_PVP_TALENT_UPDATE "Event:PLAYER PVP TALENT UPDATE")

[PLAYER_TALENT_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_TALENT_UPDATE "Event:PLAYER TALENT UPDATE")

[SPEC_INVOLUNTARILY_CHANGED](https://warcraft.wiki.gg/wiki/Event:SPEC_INVOLUNTARILY_CHANGED "Event:SPEC INVOLUNTARILY CHANGED"): isPet

[TALENTS_INVOLUNTARILY_RESET](https://warcraft.wiki.gg/wiki/Event:TALENTS_INVOLUNTARILY_RESET "Event:TALENTS INVOLUNTARILY RESET"): isPetTalents

## [Spell](https://warcraft.wiki.gg/wiki/Category:API_systems/Spell "Category:API systems/Spell")

[ENCHANT_SPELL_COMPLETED](https://warcraft.wiki.gg/wiki/Event:ENCHANT_SPELL_COMPLETED "Event:ENCHANT SPELL COMPLETED"): successful, enchantedItem

[ENCHANT_SPELL_SELECTED](https://warcraft.wiki.gg/wiki/Event:ENCHANT_SPELL_SELECTED "Event:ENCHANT SPELL SELECTED")

[SPELL_DATA_LOAD_RESULT](https://warcraft.wiki.gg/wiki/Event:SPELL_DATA_LOAD_RESULT "Event:SPELL DATA LOAD RESULT"): spellID, success

[SPELL_RANGE_CHECK_UPDATE](https://warcraft.wiki.gg/wiki/Event:SPELL_RANGE_CHECK_UPDATE "Event:SPELL RANGE CHECK UPDATE"): spellIdentifier, isInRange, checksRange

[SPELL_TEXT_UPDATE](https://warcraft.wiki.gg/wiki/Event:SPELL_TEXT_UPDATE "Event:SPELL TEXT UPDATE"): spellID

[UPDATE_SPELL_TARGET_ITEM_CONTEXT](https://warcraft.wiki.gg/wiki/Event:UPDATE_SPELL_TARGET_ITEM_CONTEXT "Event:UPDATE SPELL TARGET ITEM CONTEXT")

## [SpellActivationOverlay](https://warcraft.wiki.gg/wiki/Category:API_systems/SpellActivationOverlay "Category:API systems/SpellActivationOverlay")

[SPELL_ACTIVATION_OVERLAY_GLOW_HIDE](https://warcraft.wiki.gg/wiki/Event:SPELL_ACTIVATION_OVERLAY_GLOW_HIDE "Event:SPELL ACTIVATION OVERLAY GLOW HIDE"): spellID

[SPELL_ACTIVATION_OVERLAY_GLOW_SHOW](https://warcraft.wiki.gg/wiki/Event:SPELL_ACTIVATION_OVERLAY_GLOW_SHOW "Event:SPELL ACTIVATION OVERLAY GLOW SHOW"): spellID

[SPELL_ACTIVATION_OVERLAY_HIDE](https://warcraft.wiki.gg/wiki/Event:SPELL_ACTIVATION_OVERLAY_HIDE "Event:SPELL ACTIVATION OVERLAY HIDE"): spellID

[SPELL_ACTIVATION_OVERLAY_SHOW](https://warcraft.wiki.gg/wiki/Event:SPELL_ACTIVATION_OVERLAY_SHOW "Event:SPELL ACTIVATION OVERLAY SHOW"): spellID, overlayFileDataID, locationType, scale, r, g, b

## [SpellBook](https://warcraft.wiki.gg/wiki/Category:API_systems/SpellBook "Category:API systems/SpellBook")

[CURRENT_SPELL_CAST_CHANGED](https://warcraft.wiki.gg/wiki/Event:CURRENT_SPELL_CAST_CHANGED "Event:CURRENT SPELL CAST CHANGED"): cancelledCast

[LEARNED_SPELL_IN_SKILL_LINE](https://warcraft.wiki.gg/wiki/Event:LEARNED_SPELL_IN_SKILL_LINE "Event:LEARNED SPELL IN SKILL LINE"): spellID, skillLineIndex, isGuildPerkSpell

[MAX_SPELL_START_RECOVERY_OFFSET_CHANGED](https://warcraft.wiki.gg/wiki/Event:MAX_SPELL_START_RECOVERY_OFFSET_CHANGED "Event:MAX SPELL START RECOVERY OFFSET CHANGED"): clampedNewQueueWindowMs

[PLAYER_TOTEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_TOTEM_UPDATE "Event:PLAYER TOTEM UPDATE"): totemSlot

[SPELL_FLYOUT_UPDATE](https://warcraft.wiki.gg/wiki/Event:SPELL_FLYOUT_UPDATE "Event:SPELL FLYOUT UPDATE"): flyoutID, spellID, isLearned

[SPELL_PUSHED_TO_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:SPELL_PUSHED_TO_ACTIONBAR "Event:SPELL PUSHED TO ACTIONBAR"): spellID, slot, page

[SPELL_PUSHED_TO_FLYOUT_ON_ACTIONBAR](https://warcraft.wiki.gg/wiki/Event:SPELL_PUSHED_TO_FLYOUT_ON_ACTIONBAR "Event:SPELL PUSHED TO FLYOUT ON ACTIONBAR"): spellID, flyoutSlot, flyoutPage

[SPELL_UPDATE_CHARGES](https://warcraft.wiki.gg/wiki/Event:SPELL_UPDATE_CHARGES "Event:SPELL UPDATE CHARGES")

[SPELL_UPDATE_COOLDOWN](https://warcraft.wiki.gg/wiki/Event:SPELL_UPDATE_COOLDOWN "Event:SPELL UPDATE COOLDOWN"): spellID, baseSpellID, category, startRecoveryCategory, itemID

[SPELL_UPDATE_ICON](https://warcraft.wiki.gg/wiki/Event:SPELL_UPDATE_ICON "Event:SPELL UPDATE ICON"): spellID

[SPELL_UPDATE_USABLE](https://warcraft.wiki.gg/wiki/Event:SPELL_UPDATE_USABLE "Event:SPELL UPDATE USABLE")

[SPELL_UPDATE_USES](https://warcraft.wiki.gg/wiki/Event:SPELL_UPDATE_USES "Event:SPELL UPDATE USES"): spellID, baseSpellID

[SPELLS_CHANGED](https://warcraft.wiki.gg/wiki/Event:SPELLS_CHANGED "Event:SPELLS CHANGED")

[START_AUTOREPEAT_SPELL](https://warcraft.wiki.gg/wiki/Event:START_AUTOREPEAT_SPELL "Event:START AUTOREPEAT SPELL")

[STOP_AUTOREPEAT_SPELL](https://warcraft.wiki.gg/wiki/Event:STOP_AUTOREPEAT_SPELL "Event:STOP AUTOREPEAT SPELL")

[UPDATE_SHAPESHIFT_COOLDOWN](https://warcraft.wiki.gg/wiki/Event:UPDATE_SHAPESHIFT_COOLDOWN "Event:UPDATE SHAPESHIFT COOLDOWN")

[UPDATE_SHAPESHIFT_FORM](https://warcraft.wiki.gg/wiki/Event:UPDATE_SHAPESHIFT_FORM "Event:UPDATE SHAPESHIFT FORM")

[UPDATE_SHAPESHIFT_FORMS](https://warcraft.wiki.gg/wiki/Event:UPDATE_SHAPESHIFT_FORMS "Event:UPDATE SHAPESHIFT FORMS")

[UPDATE_SHAPESHIFT_USABLE](https://warcraft.wiki.gg/wiki/Event:UPDATE_SHAPESHIFT_USABLE "Event:UPDATE SHAPESHIFT USABLE")

## [SpellDiminishUI](https://warcraft.wiki.gg/wiki/Category:API_systems/SpellDiminishUI "Category:API systems/SpellDiminishUI")

[UNIT_SPELL_DIMINISH_CATEGORY_STATE_UPDATED](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELL_DIMINISH_CATEGORY_STATE_UPDATED "Event:UNIT SPELL DIMINISH CATEGORY STATE UPDATED"): unitTarget, trackerInfo

## [SplashScreen](https://warcraft.wiki.gg/wiki/Category:API_systems/SplashScreen "Category:API systems/SplashScreen")

[OPEN_SPLASH_SCREEN](https://warcraft.wiki.gg/wiki/Event:OPEN_SPLASH_SCREEN "Event:OPEN SPLASH SCREEN"): info

## [StableInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/StableInfo "Category:API systems/StableInfo")

[PET_INFO_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_INFO_UPDATE "Event:PET INFO UPDATE")

[PET_STABLE_CLOSED](https://warcraft.wiki.gg/wiki/Event:PET_STABLE_CLOSED "Event:PET STABLE CLOSED")

[PET_STABLE_FAVORITES_UPDATED](https://warcraft.wiki.gg/wiki/Event:PET_STABLE_FAVORITES_UPDATED "Event:PET STABLE FAVORITES UPDATED")

[PET_STABLE_SHOW](https://warcraft.wiki.gg/wiki/Event:PET_STABLE_SHOW "Event:PET STABLE SHOW")

[PET_STABLE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_STABLE_UPDATE "Event:PET STABLE UPDATE")

## [SuperTrackManager](https://warcraft.wiki.gg/wiki/Category:API_systems/SuperTrackManager "Category:API systems/SuperTrackManager")

[SUPER_TRACKING_CHANGED](https://warcraft.wiki.gg/wiki/Event:SUPER_TRACKING_CHANGED "Event:SUPER TRACKING CHANGED")

[SUPER_TRACKING_PATH_UPDATED](https://warcraft.wiki.gg/wiki/Event:SUPER_TRACKING_PATH_UPDATED "Event:SUPER TRACKING PATH UPDATED")

## [SystemInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/SystemInfo "Category:API systems/SystemInfo")

[CAPTUREFRAMES_FAILED](https://warcraft.wiki.gg/wiki/Event:CAPTUREFRAMES_FAILED "Event:CAPTUREFRAMES FAILED")

[CAPTUREFRAMES_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:CAPTUREFRAMES_SUCCEEDED "Event:CAPTUREFRAMES SUCCEEDED")

[DISABLE_TAXI_BENCHMARK](https://warcraft.wiki.gg/wiki/Event:DISABLE_TAXI_BENCHMARK "Event:DISABLE TAXI BENCHMARK")

[ENABLE_TAXI_BENCHMARK](https://warcraft.wiki.gg/wiki/Event:ENABLE_TAXI_BENCHMARK "Event:ENABLE TAXI BENCHMARK")

[FIRST_FRAME_RENDERED](https://warcraft.wiki.gg/wiki/Event:FIRST_FRAME_RENDERED "Event:FIRST FRAME RENDERED")

[GENERIC_ERROR](https://warcraft.wiki.gg/wiki/Event:GENERIC_ERROR "Event:GENERIC ERROR"): errorMessage

[GLOBAL_MOUSE_DOWN](https://warcraft.wiki.gg/wiki/Event:GLOBAL_MOUSE_DOWN "Event:GLOBAL MOUSE DOWN"): button

[GLOBAL_MOUSE_UP](https://warcraft.wiki.gg/wiki/Event:GLOBAL_MOUSE_UP "Event:GLOBAL MOUSE UP"): button

[INITIAL_HOTFIXES_APPLIED](https://warcraft.wiki.gg/wiki/Event:INITIAL_HOTFIXES_APPLIED "Event:INITIAL HOTFIXES APPLIED")

[LOC_RESULT](https://warcraft.wiki.gg/wiki/Event:LOC_RESULT "Event:LOC RESULT"): result

[LOGOUT_CANCEL](https://warcraft.wiki.gg/wiki/Event:LOGOUT_CANCEL "Event:LOGOUT CANCEL")

[PLAYER_CAMPING](https://warcraft.wiki.gg/wiki/Event:PLAYER_CAMPING "Event:PLAYER CAMPING")

[PLAYER_ENTERING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD "Event:PLAYER ENTERING WORLD"): isInitialLogin, isReloadingUi

[PLAYER_LEAVING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEAVING_WORLD "Event:PLAYER LEAVING WORLD")

[PLAYER_LOGIN](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGIN "Event:PLAYER LOGIN")

[PLAYER_LOGOUT](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGOUT "Event:PLAYER LOGOUT")

[PLAYER_QUITING](https://warcraft.wiki.gg/wiki/Event:PLAYER_QUITING "Event:PLAYER QUITING")

[SEARCH_DB_LOADED](https://warcraft.wiki.gg/wiki/Event:SEARCH_DB_LOADED "Event:SEARCH DB LOADED")

[STREAMING_ICON](https://warcraft.wiki.gg/wiki/Event:STREAMING_ICON "Event:STREAMING ICON"): streamingStatus

[SYSMSG](https://warcraft.wiki.gg/wiki/Event:SYSMSG "Event:SYSMSG"): string, r, g, b

[TIME_PLAYED_MSG](https://warcraft.wiki.gg/wiki/Event:TIME_PLAYED_MSG "Event:TIME PLAYED MSG"): totalTimePlayed, timePlayedThisLevel

[UI_ERROR_MESSAGE](https://warcraft.wiki.gg/wiki/Event:UI_ERROR_MESSAGE "Event:UI ERROR MESSAGE"): errorType, message

[UI_ERROR_POPUP](https://warcraft.wiki.gg/wiki/Event:UI_ERROR_POPUP "Event:UI ERROR POPUP"): errorType, message

[UI_INFO_MESSAGE](https://warcraft.wiki.gg/wiki/Event:UI_INFO_MESSAGE "Event:UI INFO MESSAGE"): errorType, message

[VARIABLES_LOADED](https://warcraft.wiki.gg/wiki/Event:VARIABLES_LOADED "Event:VARIABLES LOADED")

[WOW_MOUSE_NOT_FOUND](https://warcraft.wiki.gg/wiki/Event:WOW_MOUSE_NOT_FOUND "Event:WOW MOUSE NOT FOUND")

## [TalkingHead](https://warcraft.wiki.gg/wiki/Category:API_systems/TalkingHead "Category:API systems/TalkingHead")

[TALKINGHEAD_CLOSE](https://warcraft.wiki.gg/wiki/Event:TALKINGHEAD_CLOSE "Event:TALKINGHEAD CLOSE")

[TALKINGHEAD_REQUESTED](https://warcraft.wiki.gg/wiki/Event:TALKINGHEAD_REQUESTED "Event:TALKINGHEAD REQUESTED")

## [TaxiMap](https://warcraft.wiki.gg/wiki/Category:API_systems/TaxiMap "Category:API systems/TaxiMap")

[TAXI_NODE_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:TAXI_NODE_STATUS_CHANGED "Event:TAXI NODE STATUS CHANGED")

[TAXIMAP_CLOSED](https://warcraft.wiki.gg/wiki/Event:TAXIMAP_CLOSED "Event:TAXIMAP CLOSED")

[TAXIMAP_OPENED](https://warcraft.wiki.gg/wiki/Event:TAXIMAP_OPENED "Event:TAXIMAP OPENED"): system

## [TextureUtils](https://warcraft.wiki.gg/wiki/Category:API_systems/TextureUtils "Category:API systems/TextureUtils")

[URL_TEXTURE_REQUEST_RESULT](https://warcraft.wiki.gg/wiki/Event:URL_TEXTURE_REQUEST_RESULT "Event:URL TEXTURE REQUEST RESULT"): texture, result

## [TimerunningUI](https://warcraft.wiki.gg/wiki/Category:API_systems/TimerunningUI "Category:API systems/TimerunningUI")

[REMIX_END_OF_EVENT](https://warcraft.wiki.gg/wiki/Event:REMIX_END_OF_EVENT "Event:REMIX END OF EVENT")

## [TooltipComparison](https://warcraft.wiki.gg/wiki/Category:API_systems/TooltipComparison "Category:API systems/TooltipComparison")

[TOOLTIP_SHOW_ITEM_COMPARISON](https://warcraft.wiki.gg/wiki/Event:TOOLTIP_SHOW_ITEM_COMPARISON "Event:TOOLTIP SHOW ITEM COMPARISON"): comparisonItem, tooltip, anchorFrame

## [TooltipInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/TooltipInfo "Category:API systems/TooltipInfo")

[HIDE_HYPERLINK_TOOLTIP](https://warcraft.wiki.gg/wiki/Event:HIDE_HYPERLINK_TOOLTIP "Event:HIDE HYPERLINK TOOLTIP")

[SHOW_HYPERLINK_TOOLTIP](https://warcraft.wiki.gg/wiki/Event:SHOW_HYPERLINK_TOOLTIP "Event:SHOW HYPERLINK TOOLTIP"): hyperlink

[TOOLTIP_DATA_UPDATE](https://warcraft.wiki.gg/wiki/Event:TOOLTIP_DATA_UPDATE "Event:TOOLTIP DATA UPDATE"): dataInstanceID

## [ToyBoxInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/ToyBoxInfo "Category:API systems/ToyBoxInfo")

[NEW_TOY_ADDED](https://warcraft.wiki.gg/wiki/Event:NEW_TOY_ADDED "Event:NEW TOY ADDED"): itemID

[TOYS_UPDATED](https://warcraft.wiki.gg/wiki/Event:TOYS_UPDATED "Event:TOYS UPDATED"): itemID, isNew, hasFanfare

## [TradeInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/TradeInfo "Category:API systems/TradeInfo")

[PLAYER_TRADE_CURRENCY](https://warcraft.wiki.gg/wiki/Event:PLAYER_TRADE_CURRENCY "Event:PLAYER TRADE CURRENCY")

[PLAYER_TRADE_MONEY](https://warcraft.wiki.gg/wiki/Event:PLAYER_TRADE_MONEY "Event:PLAYER TRADE MONEY")

[TRADE_ACCEPT_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_ACCEPT_UPDATE "Event:TRADE ACCEPT UPDATE"): playerAccepted, targetAccepted

[TRADE_CLOSED](https://warcraft.wiki.gg/wiki/Event:TRADE_CLOSED "Event:TRADE CLOSED")

[TRADE_CURRENCY_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_CURRENCY_CHANGED "Event:TRADE CURRENCY CHANGED")

[TRADE_MONEY_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_MONEY_CHANGED "Event:TRADE MONEY CHANGED")

[TRADE_PLAYER_ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_PLAYER_ITEM_CHANGED "Event:TRADE PLAYER ITEM CHANGED"): tradeSlotIndex

[TRADE_POTENTIAL_BIND_ENCHANT](https://warcraft.wiki.gg/wiki/Event:TRADE_POTENTIAL_BIND_ENCHANT "Event:TRADE POTENTIAL BIND ENCHANT"): canBecomeBoundForTrade

[TRADE_POTENTIAL_REMOVE_TRANSMOG](https://warcraft.wiki.gg/wiki/Event:TRADE_POTENTIAL_REMOVE_TRANSMOG "Event:TRADE POTENTIAL REMOVE TRANSMOG"): itemLink, tradeSlotIndex

[TRADE_REQUEST](https://warcraft.wiki.gg/wiki/Event:TRADE_REQUEST "Event:TRADE REQUEST"): name

[TRADE_REQUEST_CANCEL](https://warcraft.wiki.gg/wiki/Event:TRADE_REQUEST_CANCEL "Event:TRADE REQUEST CANCEL")

[TRADE_SHOW](https://warcraft.wiki.gg/wiki/Event:TRADE_SHOW "Event:TRADE SHOW")

[TRADE_TARGET_ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_TARGET_ITEM_CHANGED "Event:TRADE TARGET ITEM CHANGED"): tradeSlotIndex

[TRADE_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_UPDATE "Event:TRADE UPDATE")

[TRADE_UPDATE_WARNINGS](https://warcraft.wiki.gg/wiki/Event:TRADE_UPDATE_WARNINGS "Event:TRADE UPDATE WARNINGS")

## [TradeSkillUI](https://warcraft.wiki.gg/wiki/Category:API_systems/TradeSkillUI "Category:API systems/TradeSkillUI")

[CRAFTING_DETAILS_UPDATE](https://warcraft.wiki.gg/wiki/Event:CRAFTING_DETAILS_UPDATE "Event:CRAFTING DETAILS UPDATE")

[NEW_RECIPE_LEARNED](https://warcraft.wiki.gg/wiki/Event:NEW_RECIPE_LEARNED "Event:NEW RECIPE LEARNED"): recipeID, recipeLevel, baseRecipeID

[OBLITERUM_FORGE_PENDING_ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:OBLITERUM_FORGE_PENDING_ITEM_CHANGED "Event:OBLITERUM FORGE PENDING ITEM CHANGED")

[OPEN_RECIPE_RESPONSE](https://warcraft.wiki.gg/wiki/Event:OPEN_RECIPE_RESPONSE "Event:OPEN RECIPE RESPONSE"): recipeID, skillLineID, expansionSkillLineID

[PROFESSION_RESPEC_CONFIRMATION](https://warcraft.wiki.gg/wiki/Event:PROFESSION_RESPEC_CONFIRMATION "Event:PROFESSION RESPEC CONFIRMATION"): skillName

[TRACKED_RECIPE_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRACKED_RECIPE_UPDATE "Event:TRACKED RECIPE UPDATE"): recipeID, tracked

[TRADE_SKILL_CLOSE](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_CLOSE "Event:TRADE SKILL CLOSE")

[TRADE_SKILL_CRAFT_BEGIN](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_CRAFT_BEGIN "Event:TRADE SKILL CRAFT BEGIN"): recipeSpellID

[TRADE_SKILL_CRAFTING_REAGENT_BONUS_TEXT_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_CRAFTING_REAGENT_BONUS_TEXT_UPDATED "Event:TRADE SKILL CRAFTING REAGENT BONUS TEXT UPDATED"): itemID

[TRADE_SKILL_CURRENCY_REWARD_RESULT](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_CURRENCY_REWARD_RESULT "Event:TRADE SKILL CURRENCY REWARD RESULT"): data

[TRADE_SKILL_DATA_SOURCE_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_DATA_SOURCE_CHANGED "Event:TRADE SKILL DATA SOURCE CHANGED")

[TRADE_SKILL_DATA_SOURCE_CHANGING](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_DATA_SOURCE_CHANGING "Event:TRADE SKILL DATA SOURCE CHANGING")

[TRADE_SKILL_DETAILS_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_DETAILS_UPDATE "Event:TRADE SKILL DETAILS UPDATE")

[TRADE_SKILL_FAVORITES_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_FAVORITES_CHANGED "Event:TRADE SKILL FAVORITES CHANGED"): isFavorite, recipeSpellID

[TRADE_SKILL_ITEM_CRAFTED_RESULT](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_ITEM_CRAFTED_RESULT "Event:TRADE SKILL ITEM CRAFTED RESULT"): data

[TRADE_SKILL_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_ITEM_UPDATE "Event:TRADE SKILL ITEM UPDATE"): itemGUID

[TRADE_SKILL_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_LIST_UPDATE "Event:TRADE SKILL LIST UPDATE")

[TRADE_SKILL_NAME_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_NAME_UPDATE "Event:TRADE SKILL NAME UPDATE")

[TRADE_SKILL_SHOW](https://warcraft.wiki.gg/wiki/Event:TRADE_SKILL_SHOW "Event:TRADE SKILL SHOW")

[UPDATE_TRADESKILL_CAST_STOPPED](https://warcraft.wiki.gg/wiki/Event:UPDATE_TRADESKILL_CAST_STOPPED "Event:UPDATE TRADESKILL CAST STOPPED"): isScrapping

## [Trainer](https://warcraft.wiki.gg/wiki/Category:API_systems/Trainer "Category:API systems/Trainer")

[TRAINER_CLOSED](https://warcraft.wiki.gg/wiki/Event:TRAINER_CLOSED "Event:TRAINER CLOSED")

[TRAINER_DESCRIPTION_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRAINER_DESCRIPTION_UPDATE "Event:TRAINER DESCRIPTION UPDATE")

[TRAINER_SERVICE_INFO_NAME_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRAINER_SERVICE_INFO_NAME_UPDATE "Event:TRAINER SERVICE INFO NAME UPDATE")

[TRAINER_SHOW](https://warcraft.wiki.gg/wiki/Event:TRAINER_SHOW "Event:TRAINER SHOW")

[TRAINER_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRAINER_UPDATE "Event:TRAINER UPDATE")

## [TransmogOutfitInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/TransmogOutfitInfo "Category:API systems/TransmogOutfitInfo")

[TRANSMOG_DISPLAYED_OUTFIT_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_DISPLAYED_OUTFIT_CHANGED "Event:TRANSMOG DISPLAYED OUTFIT CHANGED")

[TRANSMOG_OUTFITS_CHANGED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_OUTFITS_CHANGED "Event:TRANSMOG OUTFITS CHANGED"): newOutfitID

[VIEWED_TRANSMOG_OUTFIT_CHANGED](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_CHANGED "Event:VIEWED TRANSMOG OUTFIT CHANGED")

[VIEWED_TRANSMOG_OUTFIT_SECONDARY_SLOTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_SECONDARY_SLOTS_CHANGED "Event:VIEWED TRANSMOG OUTFIT SECONDARY SLOTS CHANGED")

[VIEWED_TRANSMOG_OUTFIT_SITUATIONS_CHANGED](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_SITUATIONS_CHANGED "Event:VIEWED TRANSMOG OUTFIT SITUATIONS CHANGED")

[VIEWED_TRANSMOG_OUTFIT_SLOT_REFRESH](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_SLOT_REFRESH "Event:VIEWED TRANSMOG OUTFIT SLOT REFRESH")

[VIEWED_TRANSMOG_OUTFIT_SLOT_SAVE_SUCCESS](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_SLOT_SAVE_SUCCESS "Event:VIEWED TRANSMOG OUTFIT SLOT SAVE SUCCESS"): slot, type, option

[VIEWED_TRANSMOG_OUTFIT_SLOT_WEAPON_OPTION_CHANGED](https://warcraft.wiki.gg/wiki/Event:VIEWED_TRANSMOG_OUTFIT_SLOT_WEAPON_OPTION_CHANGED "Event:VIEWED TRANSMOG OUTFIT SLOT WEAPON OPTION CHANGED"): slot, weaponOption

## [Transmogrify](https://warcraft.wiki.gg/wiki/Category:API_systems/Transmogrify "Category:API systems/Transmogrify")

[TRANSMOG_COLLECTION_CAMERA_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_CAMERA_UPDATE "Event:TRANSMOG COLLECTION CAMERA UPDATE")

[TRANSMOG_COLLECTION_ITEM_FAVORITE_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_ITEM_FAVORITE_UPDATE "Event:TRANSMOG COLLECTION ITEM FAVORITE UPDATE"): itemAppearanceID, isFavorite

[TRANSMOG_COLLECTION_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_ITEM_UPDATE "Event:TRANSMOG COLLECTION ITEM UPDATE")

[TRANSMOG_COLLECTION_SOURCE_ADDED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_SOURCE_ADDED "Event:TRANSMOG COLLECTION SOURCE ADDED"): itemModifiedAppearanceID

[TRANSMOG_COLLECTION_SOURCE_REMOVED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_SOURCE_REMOVED "Event:TRANSMOG COLLECTION SOURCE REMOVED"): itemModifiedAppearanceID

[TRANSMOG_COLLECTION_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COLLECTION_UPDATED "Event:TRANSMOG COLLECTION UPDATED"): collectionIndex, modID, itemAppearanceID, reason

[TRANSMOG_COSMETIC_COLLECTION_SOURCE_ADDED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_COSMETIC_COLLECTION_SOURCE_ADDED "Event:TRANSMOG COSMETIC COLLECTION SOURCE ADDED"): itemModifiedAppearanceID

[TRANSMOG_SEARCH_UPDATED](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_SEARCH_UPDATED "Event:TRANSMOG SEARCH UPDATED"): searchType, collectionType

[TRANSMOG_SETS_UPDATE_FAVORITE](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_SETS_UPDATE_FAVORITE "Event:TRANSMOG SETS UPDATE FAVORITE")

[TRANSMOG_SOURCE_COLLECTABILITY_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOG_SOURCE_COLLECTABILITY_UPDATE "Event:TRANSMOG SOURCE COLLECTABILITY UPDATE"): itemModifiedAppearanceID, collectable

[TRANSMOGRIFY_CLOSE](https://warcraft.wiki.gg/wiki/Event:TRANSMOGRIFY_CLOSE "Event:TRANSMOGRIFY CLOSE")

[TRANSMOGRIFY_ITEM_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOGRIFY_ITEM_UPDATE "Event:TRANSMOGRIFY ITEM UPDATE")

[TRANSMOGRIFY_OPEN](https://warcraft.wiki.gg/wiki/Event:TRANSMOGRIFY_OPEN "Event:TRANSMOGRIFY OPEN")

[TRANSMOGRIFY_SUCCESS](https://warcraft.wiki.gg/wiki/Event:TRANSMOGRIFY_SUCCESS "Event:TRANSMOGRIFY SUCCESS"): transmogLocation

[TRANSMOGRIFY_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRANSMOGRIFY_UPDATE "Event:TRANSMOGRIFY UPDATE"): transmogLocation, action

## [Tutorial](https://warcraft.wiki.gg/wiki/Category:API_systems/Tutorial "Category:API systems/Tutorial")

[LEAVING_TUTORIAL_AREA](https://warcraft.wiki.gg/wiki/Event:LEAVING_TUTORIAL_AREA "Event:LEAVING TUTORIAL AREA")

[NPE_TUTORIAL_UPDATE](https://warcraft.wiki.gg/wiki/Event:NPE_TUTORIAL_UPDATE "Event:NPE TUTORIAL UPDATE")

[TUTORIAL_COMBAT_EVENT](https://warcraft.wiki.gg/wiki/Event:TUTORIAL_COMBAT_EVENT "Event:TUTORIAL COMBAT EVENT")

[TUTORIAL_HIGHLIGHT_SPELL](https://warcraft.wiki.gg/wiki/Event:TUTORIAL_HIGHLIGHT_SPELL "Event:TUTORIAL HIGHLIGHT SPELL"): spellID, tutorialGlobalStringTag

[TUTORIAL_TRIGGER](https://warcraft.wiki.gg/wiki/Event:TUTORIAL_TRIGGER "Event:TUTORIAL TRIGGER"): tutorialIndex, forceShow

[TUTORIAL_UNHIGHLIGHT_SPELL](https://warcraft.wiki.gg/wiki/Event:TUTORIAL_UNHIGHLIGHT_SPELL "Event:TUTORIAL UNHIGHLIGHT SPELL")

## [UI](https://warcraft.wiki.gg/wiki/Category:API_systems/UI "Category:API systems/UI")

[NOTCHED_DISPLAY_MODE_CHANGED](https://warcraft.wiki.gg/wiki/Event:NOTCHED_DISPLAY_MODE_CHANGED "Event:NOTCHED DISPLAY MODE CHANGED")

[UI_SCALE_CHANGED](https://warcraft.wiki.gg/wiki/Event:UI_SCALE_CHANGED "Event:UI SCALE CHANGED")

## [UIActionHandlerSystem](https://warcraft.wiki.gg/wiki/Category:API_systems/UIActionHandlerSystem "Category:API systems/UIActionHandlerSystem")

[HANDLE_UI_ACTION](https://warcraft.wiki.gg/wiki/Event:HANDLE_UI_ACTION "Event:HANDLE UI ACTION"): actionType

## [UIEventToastManagerInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/UIEventToastManagerInfo "Category:API systems/UIEventToastManagerInfo")

[DISPLAY_EVENT_TOAST_LINK](https://warcraft.wiki.gg/wiki/Event:DISPLAY_EVENT_TOAST_LINK "Event:DISPLAY EVENT TOAST LINK"): link

[DISPLAY_EVENT_TOASTS](https://warcraft.wiki.gg/wiki/Event:DISPLAY_EVENT_TOASTS "Event:DISPLAY EVENT TOASTS")

## [UIFrameManager](https://warcraft.wiki.gg/wiki/Category:API_systems/UIFrameManager "Category:API systems/UIFrameManager")

[FRAME_MANAGER_UPDATE_ALL](https://warcraft.wiki.gg/wiki/Event:FRAME_MANAGER_UPDATE_ALL "Event:FRAME MANAGER UPDATE ALL")

[FRAME_MANAGER_UPDATE_FRAME](https://warcraft.wiki.gg/wiki/Event:FRAME_MANAGER_UPDATE_FRAME "Event:FRAME MANAGER UPDATE FRAME"): type, show

## [UIMacros](https://warcraft.wiki.gg/wiki/Category:API_systems/UIMacros "Category:API systems/UIMacros")

[UPDATE_MACROS](https://warcraft.wiki.gg/wiki/Event:UPDATE_MACROS "Event:UPDATE MACROS")

## [UISystemVisibilityManager](https://warcraft.wiki.gg/wiki/Category:API_systems/UISystemVisibilityManager "Category:API systems/UISystemVisibilityManager")

[SYSTEM_VISIBILITY_CHANGED](https://warcraft.wiki.gg/wiki/Event:SYSTEM_VISIBILITY_CHANGED "Event:SYSTEM VISIBILITY CHANGED")

## [UIWidgetManager](https://warcraft.wiki.gg/wiki/Category:API_systems/UIWidgetManager "Category:API systems/UIWidgetManager")

[UPDATE_ALL_UI_WIDGETS](https://warcraft.wiki.gg/wiki/Event:UPDATE_ALL_UI_WIDGETS "Event:UPDATE ALL UI WIDGETS")

[UPDATE_UI_WIDGET](https://warcraft.wiki.gg/wiki/Event:UPDATE_UI_WIDGET "Event:UPDATE UI WIDGET"): widgetInfo

## [Unit](https://warcraft.wiki.gg/wiki/Category:API_systems/Unit "Category:API systems/Unit")

[ACTIVE_PLAYER_SPECIALIZATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:ACTIVE_PLAYER_SPECIALIZATION_CHANGED "Event:ACTIVE PLAYER SPECIALIZATION CHANGED")

[ARENA_COOLDOWNS_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARENA_COOLDOWNS_UPDATE "Event:ARENA COOLDOWNS UPDATE")

[ARENA_CROWD_CONTROL_SPELL_UPDATE](https://warcraft.wiki.gg/wiki/Event:ARENA_CROWD_CONTROL_SPELL_UPDATE "Event:ARENA CROWD CONTROL SPELL UPDATE"): unitTarget, spellID

[AUTOFOLLOW_BEGIN](https://warcraft.wiki.gg/wiki/Event:AUTOFOLLOW_BEGIN "Event:AUTOFOLLOW BEGIN"): name

[AUTOFOLLOW_END](https://warcraft.wiki.gg/wiki/Event:AUTOFOLLOW_END "Event:AUTOFOLLOW END")

[CANCEL_SUMMON](https://warcraft.wiki.gg/wiki/Event:CANCEL_SUMMON "Event:CANCEL SUMMON")

[COMBO_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:COMBO_TARGET_CHANGED "Event:COMBO TARGET CHANGED")

[CONFIRM_BINDER](https://warcraft.wiki.gg/wiki/Event:CONFIRM_BINDER "Event:CONFIRM BINDER"): areaName

[CONFIRM_SUMMON](https://warcraft.wiki.gg/wiki/Event:CONFIRM_SUMMON "Event:CONFIRM SUMMON"): summonReason, skippingStartExperience

[ECLIPSE_DIRECTION_CHANGE](https://warcraft.wiki.gg/wiki/Event:ECLIPSE_DIRECTION_CHANGE "Event:ECLIPSE DIRECTION CHANGE"): direction

[HEARTHSTONE_BOUND](https://warcraft.wiki.gg/wiki/Event:HEARTHSTONE_BOUND "Event:HEARTHSTONE BOUND")

[HONOR_XP_UPDATE](https://warcraft.wiki.gg/wiki/Event:HONOR_XP_UPDATE "Event:HONOR XP UPDATE"): unitTarget

[INCOMING_RESURRECT_CHANGED](https://warcraft.wiki.gg/wiki/Event:INCOMING_RESURRECT_CHANGED "Event:INCOMING RESURRECT CHANGED"): unitTarget

[INCOMING_SUMMON_CHANGED](https://warcraft.wiki.gg/wiki/Event:INCOMING_SUMMON_CHANGED "Event:INCOMING SUMMON CHANGED"): unitTarget

[KNOWN_TITLES_UPDATE](https://warcraft.wiki.gg/wiki/Event:KNOWN_TITLES_UPDATE "Event:KNOWN TITLES UPDATE"): unitTarget

[LOCALPLAYER_PET_RENAMED](https://warcraft.wiki.gg/wiki/Event:LOCALPLAYER_PET_RENAMED "Event:LOCALPLAYER PET RENAMED")

[MIRROR_TIMER_PAUSE](https://warcraft.wiki.gg/wiki/Event:MIRROR_TIMER_PAUSE "Event:MIRROR TIMER PAUSE"): timerName, paused

[MIRROR_TIMER_START](https://warcraft.wiki.gg/wiki/Event:MIRROR_TIMER_START "Event:MIRROR TIMER START"): timerName, value, maxValue, scale, paused, timerLabel

[MIRROR_TIMER_STOP](https://warcraft.wiki.gg/wiki/Event:MIRROR_TIMER_STOP "Event:MIRROR TIMER STOP"): timerName

[NEUTRAL_FACTION_SELECT_RESULT](https://warcraft.wiki.gg/wiki/Event:NEUTRAL_FACTION_SELECT_RESULT "Event:NEUTRAL FACTION SELECT RESULT"): success

[OBJECT_ENTERED_AOI](https://warcraft.wiki.gg/wiki/Event:OBJECT_ENTERED_AOI "Event:OBJECT ENTERED AOI"): guid

[OBJECT_LEFT_AOI](https://warcraft.wiki.gg/wiki/Event:OBJECT_LEFT_AOI "Event:OBJECT LEFT AOI"): guid

[PARTY_KILL](https://warcraft.wiki.gg/wiki/Event:PARTY_KILL "Event:PARTY KILL"): attackerGUID, targetGUID

[PET_BAR_UPDATE_USABLE](https://warcraft.wiki.gg/wiki/Event:PET_BAR_UPDATE_USABLE "Event:PET BAR UPDATE USABLE")

[PET_UI_UPDATE](https://warcraft.wiki.gg/wiki/Event:PET_UI_UPDATE "Event:PET UI UPDATE")

[PLAYER_CAN_GLIDE_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_CAN_GLIDE_CHANGED "Event:PLAYER CAN GLIDE CHANGED"): canGlide

[PLAYER_DAMAGE_DONE_MODS](https://warcraft.wiki.gg/wiki/Event:PLAYER_DAMAGE_DONE_MODS "Event:PLAYER DAMAGE DONE MODS"): unitTarget

[PLAYER_ENTER_COMBAT](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTER_COMBAT "Event:PLAYER ENTER COMBAT")

[PLAYER_FARSIGHT_FOCUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_FARSIGHT_FOCUS_CHANGED "Event:PLAYER FARSIGHT FOCUS CHANGED")

[PLAYER_FLAGS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_FLAGS_CHANGED "Event:PLAYER FLAGS CHANGED"): unitTarget

[PLAYER_FOCUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_FOCUS_CHANGED "Event:PLAYER FOCUS CHANGED")

[PLAYER_IMPULSE_APPLIED](https://warcraft.wiki.gg/wiki/Event:PLAYER_IMPULSE_APPLIED "Event:PLAYER IMPULSE APPLIED")

[PLAYER_IS_GLIDING_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_IS_GLIDING_CHANGED "Event:PLAYER IS GLIDING CHANGED"): isGliding

[PLAYER_LEAVE_COMBAT](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEAVE_COMBAT "Event:PLAYER LEAVE COMBAT")

[PLAYER_LEVEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEVEL_CHANGED "Event:PLAYER LEVEL CHANGED"): oldLevel, newLevel, real

[PLAYER_LEVEL_UP](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEVEL_UP "Event:PLAYER LEVEL UP"): level, healthDelta, powerDelta, numNewTalents, numNewPvpTalentSlots, strengthDelta, agilityDelta, staminaDelta, intellectDelta

[PLAYER_MAX_LEVEL_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_MAX_LEVEL_UPDATE "Event:PLAYER MAX LEVEL UPDATE"): unitTarget

[PLAYER_MOUNT_DISPLAY_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_MOUNT_DISPLAY_CHANGED "Event:PLAYER MOUNT DISPLAY CHANGED")

[PLAYER_PVP_KILLS_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_PVP_KILLS_CHANGED "Event:PLAYER PVP KILLS CHANGED"): unitTarget

[PLAYER_PVP_RANK_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_PVP_RANK_CHANGED "Event:PLAYER PVP RANK CHANGED"): unitTarget

[PLAYER_REGEN_DISABLED](https://warcraft.wiki.gg/wiki/Event:PLAYER_REGEN_DISABLED "Event:PLAYER REGEN DISABLED")

[PLAYER_REGEN_ENABLED](https://warcraft.wiki.gg/wiki/Event:PLAYER_REGEN_ENABLED "Event:PLAYER REGEN ENABLED")

[PLAYER_SOFT_ENEMY_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_SOFT_ENEMY_CHANGED "Event:PLAYER SOFT ENEMY CHANGED")

[PLAYER_SOFT_FRIEND_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_SOFT_FRIEND_CHANGED "Event:PLAYER SOFT FRIEND CHANGED")

[PLAYER_SOFT_INTERACT_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_SOFT_INTERACT_CHANGED "Event:PLAYER SOFT INTERACT CHANGED"): oldTarget, newTarget

[PLAYER_SOFT_TARGET_INTERACTION](https://warcraft.wiki.gg/wiki/Event:PLAYER_SOFT_TARGET_INTERACTION "Event:PLAYER SOFT TARGET INTERACTION")

[PLAYER_SPECIALIZATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_SPECIALIZATION_CHANGED "Event:PLAYER SPECIALIZATION CHANGED"): unitTarget

[PLAYER_STARTED_LOOKING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STARTED_LOOKING "Event:PLAYER STARTED LOOKING")

[PLAYER_STARTED_MOVING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STARTED_MOVING "Event:PLAYER STARTED MOVING")

[PLAYER_STARTED_TURNING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STARTED_TURNING "Event:PLAYER STARTED TURNING")

[PLAYER_STOPPED_LOOKING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STOPPED_LOOKING "Event:PLAYER STOPPED LOOKING")

[PLAYER_STOPPED_MOVING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STOPPED_MOVING "Event:PLAYER STOPPED MOVING")

[PLAYER_STOPPED_TURNING](https://warcraft.wiki.gg/wiki/Event:PLAYER_STOPPED_TURNING "Event:PLAYER STOPPED TURNING")

[PLAYER_TARGET_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYER_TARGET_CHANGED "Event:PLAYER TARGET CHANGED")

[PLAYER_TRIAL_XP_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_TRIAL_XP_UPDATE "Event:PLAYER TRIAL XP UPDATE"): unitTarget

[PLAYER_UPDATE_RESTING](https://warcraft.wiki.gg/wiki/Event:PLAYER_UPDATE_RESTING "Event:PLAYER UPDATE RESTING")

[PLAYER_XP_UPDATE](https://warcraft.wiki.gg/wiki/Event:PLAYER_XP_UPDATE "Event:PLAYER XP UPDATE"): unitTarget

[PORTRAITS_UPDATED](https://warcraft.wiki.gg/wiki/Event:PORTRAITS_UPDATED "Event:PORTRAITS UPDATED")

[PROVING_GROUNDS_SCORE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PROVING_GROUNDS_SCORE_UPDATE "Event:PROVING GROUNDS SCORE UPDATE"): points

[PVP_TIMER_UPDATE](https://warcraft.wiki.gg/wiki/Event:PVP_TIMER_UPDATE "Event:PVP TIMER UPDATE"): unitTarget

[RUNE_POWER_UPDATE](https://warcraft.wiki.gg/wiki/Event:RUNE_POWER_UPDATE "Event:RUNE POWER UPDATE"): runeIndex, added

[RUNE_TYPE_UPDATE](https://warcraft.wiki.gg/wiki/Event:RUNE_TYPE_UPDATE "Event:RUNE TYPE UPDATE"): runeIndex

[SHOW_FACTION_SELECT_UI](https://warcraft.wiki.gg/wiki/Event:SHOW_FACTION_SELECT_UI "Event:SHOW FACTION SELECT UI")

[SPELL_CONFIRMATION_PROMPT](https://warcraft.wiki.gg/wiki/Event:SPELL_CONFIRMATION_PROMPT "Event:SPELL CONFIRMATION PROMPT"): spellID, effectValue, message, duration, currencyTypesID, currencyCost, currentDifficulty, displayItemID, itemContext, treasureContextLevel

[SPELL_CONFIRMATION_TIMEOUT](https://warcraft.wiki.gg/wiki/Event:SPELL_CONFIRMATION_TIMEOUT "Event:SPELL CONFIRMATION TIMEOUT"): spellID, effectValue

[UNIT_ABSORB_AMOUNT_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_ABSORB_AMOUNT_CHANGED "Event:UNIT ABSORB AMOUNT CHANGED"): unitTarget

[UNIT_AREA_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_AREA_CHANGED "Event:UNIT AREA CHANGED"): unitTarget

[UNIT_ARENA_COOLDOWNS_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_ARENA_COOLDOWNS_UPDATE "Event:UNIT ARENA COOLDOWNS UPDATE"): unitTarget

[UNIT_ATTACK](https://warcraft.wiki.gg/wiki/Event:UNIT_ATTACK "Event:UNIT ATTACK"): unitTarget

[UNIT_ATTACK_POWER](https://warcraft.wiki.gg/wiki/Event:UNIT_ATTACK_POWER "Event:UNIT ATTACK POWER"): unitTarget

[UNIT_ATTACK_SPEED](https://warcraft.wiki.gg/wiki/Event:UNIT_ATTACK_SPEED "Event:UNIT ATTACK SPEED"): unitTarget

[UNIT_CHEAT_TOGGLE_EVENT](https://warcraft.wiki.gg/wiki/Event:UNIT_CHEAT_TOGGLE_EVENT "Event:UNIT CHEAT TOGGLE EVENT")

[UNIT_CLASSIFICATION_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_CLASSIFICATION_CHANGED "Event:UNIT CLASSIFICATION CHANGED"): unitTarget

[UNIT_COMBAT](https://warcraft.wiki.gg/wiki/Event:UNIT_COMBAT "Event:UNIT COMBAT"): unitTarget, event, flagText, amount, schoolMask

[UNIT_CONNECTION](https://warcraft.wiki.gg/wiki/Event:UNIT_CONNECTION "Event:UNIT CONNECTION"): unitTarget, isConnected

[UNIT_CTR_OPTIONS](https://warcraft.wiki.gg/wiki/Event:UNIT_CTR_OPTIONS "Event:UNIT CTR OPTIONS"): unitTarget

[UNIT_DAMAGE](https://warcraft.wiki.gg/wiki/Event:UNIT_DAMAGE "Event:UNIT DAMAGE"): unitTarget

[UNIT_DEFENSE](https://warcraft.wiki.gg/wiki/Event:UNIT_DEFENSE "Event:UNIT DEFENSE"): unitTarget

[UNIT_DIED](https://warcraft.wiki.gg/wiki/Event:UNIT_DIED "Event:UNIT DIED"): unitGUID

[UNIT_DISPLAYPOWER](https://warcraft.wiki.gg/wiki/Event:UNIT_DISPLAYPOWER "Event:UNIT DISPLAYPOWER"): unitTarget

[UNIT_DISTANCE_CHECK_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_DISTANCE_CHECK_UPDATE "Event:UNIT DISTANCE CHECK UPDATE"): unitTarget, isInDistance

[UNIT_FACTION](https://warcraft.wiki.gg/wiki/Event:UNIT_FACTION "Event:UNIT FACTION"): unitTarget

[UNIT_FLAGS](https://warcraft.wiki.gg/wiki/Event:UNIT_FLAGS "Event:UNIT FLAGS"): unitTarget

[UNIT_FORM_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_FORM_CHANGED "Event:UNIT FORM CHANGED"): unitTarget

[UNIT_HEAL_ABSORB_AMOUNT_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_HEAL_ABSORB_AMOUNT_CHANGED "Event:UNIT HEAL ABSORB AMOUNT CHANGED"): unitTarget

[UNIT_HEAL_PREDICTION](https://warcraft.wiki.gg/wiki/Event:UNIT_HEAL_PREDICTION "Event:UNIT HEAL PREDICTION"): unitTarget

[UNIT_HEALTH](https://warcraft.wiki.gg/wiki/Event:UNIT_HEALTH "Event:UNIT HEALTH"): unitTarget

[UNIT_IN_RANGE_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_IN_RANGE_UPDATE "Event:UNIT IN RANGE UPDATE"): unitTarget, isInRange

[UNIT_INVENTORY_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_INVENTORY_CHANGED "Event:UNIT INVENTORY CHANGED"): unitTarget

[UNIT_LEVEL](https://warcraft.wiki.gg/wiki/Event:UNIT_LEVEL "Event:UNIT LEVEL"): unitTarget

[UNIT_LOOT](https://warcraft.wiki.gg/wiki/Event:UNIT_LOOT "Event:UNIT LOOT"): unitGUID, hasLoot

[UNIT_MANA](https://warcraft.wiki.gg/wiki/Event:UNIT_MANA "Event:UNIT MANA"): unitTarget

[UNIT_MAX_HEALTH_MODIFIERS_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_MAX_HEALTH_MODIFIERS_CHANGED "Event:UNIT MAX HEALTH MODIFIERS CHANGED"): unitTarget, percentMaxHealthAdjusted

[UNIT_MAXHEALTH](https://warcraft.wiki.gg/wiki/Event:UNIT_MAXHEALTH "Event:UNIT MAXHEALTH"): unitTarget

[UNIT_MAXPOWER](https://warcraft.wiki.gg/wiki/Event:UNIT_MAXPOWER "Event:UNIT MAXPOWER"): unitTarget, powerType

[UNIT_MODEL_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_MODEL_CHANGED "Event:UNIT MODEL CHANGED"): unitTarget

[UNIT_NAME_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_NAME_UPDATE "Event:UNIT NAME UPDATE"): unitTarget

[UNIT_OTHER_PARTY_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_OTHER_PARTY_CHANGED "Event:UNIT OTHER PARTY CHANGED"): unitTarget

[UNIT_PET](https://warcraft.wiki.gg/wiki/Event:UNIT_PET "Event:UNIT PET"): unitTarget

[UNIT_PET_EXPERIENCE](https://warcraft.wiki.gg/wiki/Event:UNIT_PET_EXPERIENCE "Event:UNIT PET EXPERIENCE"): unitTarget

[UNIT_PHASE](https://warcraft.wiki.gg/wiki/Event:UNIT_PHASE "Event:UNIT PHASE"): unitTarget

[UNIT_PORTRAIT_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_PORTRAIT_UPDATE "Event:UNIT PORTRAIT UPDATE"): unitTarget

[UNIT_POWER_BAR_HIDE](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_BAR_HIDE "Event:UNIT POWER BAR HIDE"): unitTarget

[UNIT_POWER_BAR_SHOW](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_BAR_SHOW "Event:UNIT POWER BAR SHOW"): unitTarget

[UNIT_POWER_BAR_TIMER_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_BAR_TIMER_UPDATE "Event:UNIT POWER BAR TIMER UPDATE"): unitTarget

[UNIT_POWER_FREQUENT](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_FREQUENT "Event:UNIT POWER FREQUENT"): unitTarget, powerType

[UNIT_POWER_POINT_CHARGE](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_POINT_CHARGE "Event:UNIT POWER POINT CHARGE"): unitTarget

[UNIT_POWER_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_POWER_UPDATE "Event:UNIT POWER UPDATE"): unitTarget, powerType

[UNIT_QUEST_LOG_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_QUEST_LOG_CHANGED "Event:UNIT QUEST LOG CHANGED"): unitTarget

[UNIT_RANGED_ATTACK_POWER](https://warcraft.wiki.gg/wiki/Event:UNIT_RANGED_ATTACK_POWER "Event:UNIT RANGED ATTACK POWER"): unitTarget

[UNIT_RANGEDDAMAGE](https://warcraft.wiki.gg/wiki/Event:UNIT_RANGEDDAMAGE "Event:UNIT RANGEDDAMAGE"): unitTarget

[UNIT_RESISTANCES](https://warcraft.wiki.gg/wiki/Event:UNIT_RESISTANCES "Event:UNIT RESISTANCES"): unitTarget

[UNIT_SPELL_HASTE](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELL_HASTE "Event:UNIT SPELL HASTE"): unitTarget

[UNIT_SPELLCAST_CHANNEL_START](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_CHANNEL_START "Event:UNIT SPELLCAST CHANNEL START"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_CHANNEL_STOP](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_CHANNEL_STOP "Event:UNIT SPELLCAST CHANNEL STOP"): unitTarget, castGUID, spellID, interruptedBy, castBarID

[UNIT_SPELLCAST_CHANNEL_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_CHANNEL_UPDATE "Event:UNIT SPELLCAST CHANNEL UPDATE"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_DELAYED](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_DELAYED "Event:UNIT SPELLCAST DELAYED"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_EMPOWER_START](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_EMPOWER_START "Event:UNIT SPELLCAST EMPOWER START"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_EMPOWER_STOP](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_EMPOWER_STOP "Event:UNIT SPELLCAST EMPOWER STOP"): unitTarget, castGUID, spellID, complete, interruptedBy, castBarID

[UNIT_SPELLCAST_EMPOWER_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_EMPOWER_UPDATE "Event:UNIT SPELLCAST EMPOWER UPDATE"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_FAILED](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_FAILED "Event:UNIT SPELLCAST FAILED"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_FAILED_QUIET](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_FAILED_QUIET "Event:UNIT SPELLCAST FAILED QUIET"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_INTERRUPTED](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_INTERRUPTED "Event:UNIT SPELLCAST INTERRUPTED"): unitTarget, castGUID, spellID, interruptedBy, castBarID

[UNIT_SPELLCAST_INTERRUPTIBLE](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_INTERRUPTIBLE "Event:UNIT SPELLCAST INTERRUPTIBLE"): unitTarget

[UNIT_SPELLCAST_NOT_INTERRUPTIBLE](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_NOT_INTERRUPTIBLE "Event:UNIT SPELLCAST NOT INTERRUPTIBLE"): unitTarget

[UNIT_SPELLCAST_RETICLE_CLEAR](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_RETICLE_CLEAR "Event:UNIT SPELLCAST RETICLE CLEAR"): unitTarget, castGUID, spellID

[UNIT_SPELLCAST_RETICLE_TARGET](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_RETICLE_TARGET "Event:UNIT SPELLCAST RETICLE TARGET"): unitTarget, castGUID, spellID

[UNIT_SPELLCAST_SENT](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_SENT "Event:UNIT SPELLCAST SENT"): unitTarget, target, castGUID, spellID

[UNIT_SPELLCAST_START](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_START "Event:UNIT SPELLCAST START"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_STOP](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_STOP "Event:UNIT SPELLCAST STOP"): unitTarget, castGUID, spellID, castBarID

[UNIT_SPELLCAST_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:UNIT_SPELLCAST_SUCCEEDED "Event:UNIT SPELLCAST SUCCEEDED"): unitTarget, castGUID, spellID, castBarID

[UNIT_STATS](https://warcraft.wiki.gg/wiki/Event:UNIT_STATS "Event:UNIT STATS"): unitTarget

[UNIT_TARGET](https://warcraft.wiki.gg/wiki/Event:UNIT_TARGET "Event:UNIT TARGET"): unitTarget

[UNIT_TARGETABLE_CHANGED](https://warcraft.wiki.gg/wiki/Event:UNIT_TARGETABLE_CHANGED "Event:UNIT TARGETABLE CHANGED"): unitTarget

[UNIT_THREAT_LIST_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_THREAT_LIST_UPDATE "Event:UNIT THREAT LIST UPDATE"): unitTarget

[UNIT_THREAT_SITUATION_UPDATE](https://warcraft.wiki.gg/wiki/Event:UNIT_THREAT_SITUATION_UPDATE "Event:UNIT THREAT SITUATION UPDATE"): unitTarget

[UPDATE_EXHAUSTION](https://warcraft.wiki.gg/wiki/Event:UPDATE_EXHAUSTION "Event:UPDATE EXHAUSTION")

[UPDATE_MOUSEOVER_UNIT](https://warcraft.wiki.gg/wiki/Event:UPDATE_MOUSEOVER_UNIT "Event:UPDATE MOUSEOVER UNIT")

[UPDATE_STEALTH](https://warcraft.wiki.gg/wiki/Event:UPDATE_STEALTH "Event:UPDATE STEALTH")

[VEHICLE_ANGLE_UPDATE](https://warcraft.wiki.gg/wiki/Event:VEHICLE_ANGLE_UPDATE "Event:VEHICLE ANGLE UPDATE"): normalizedPitch, radians

## [UnitAuras](https://warcraft.wiki.gg/wiki/Category:API_systems/UnitAuras "Category:API systems/UnitAuras")

[AURA_DATA_PROVIDER_SWITCH](https://warcraft.wiki.gg/wiki/Event:AURA_DATA_PROVIDER_SWITCH "Event:AURA DATA PROVIDER SWITCH"): useRealDataProvider

[GROUP_BUFF_VISUAL_ALERTS_CHANGED](https://warcraft.wiki.gg/wiki/Event:GROUP_BUFF_VISUAL_ALERTS_CHANGED "Event:GROUP BUFF VISUAL ALERTS CHANGED"): visualAlerts

[HIDDEN_GROUP_BUFFS_CHANGED](https://warcraft.wiki.gg/wiki/Event:HIDDEN_GROUP_BUFFS_CHANGED "Event:HIDDEN GROUP BUFFS CHANGED"): spellIDs

[UNIT_AURA](https://warcraft.wiki.gg/wiki/Event:UNIT_AURA "Event:UNIT AURA"): unitTarget, updateInfo

[UNIT_AURA_BLOCK_LIST_CLEARED](https://warcraft.wiki.gg/wiki/Event:UNIT_AURA_BLOCK_LIST_CLEARED "Event:UNIT AURA BLOCK LIST CLEARED"): unitTarget

[UNIT_AURA_BLOCKED](https://warcraft.wiki.gg/wiki/Event:UNIT_AURA_BLOCKED "Event:UNIT AURA BLOCKED"): unitTarget, auraInstanceID

## [UnitRole](https://warcraft.wiki.gg/wiki/Category:API_systems/UnitRole "Category:API systems/UnitRole")

[ROLE_CHANGED_INFORM](https://warcraft.wiki.gg/wiki/Event:ROLE_CHANGED_INFORM "Event:ROLE CHANGED INFORM"): changedName, fromName, oldRole, newRole

[ROLE_POLL_BEGIN](https://warcraft.wiki.gg/wiki/Event:ROLE_POLL_BEGIN "Event:ROLE POLL BEGIN"): fromName

## [Vehicle](https://warcraft.wiki.gg/wiki/Category:API_systems/Vehicle "Category:API systems/Vehicle")

[PLAYER_GAINS_VEHICLE_DATA](https://warcraft.wiki.gg/wiki/Event:PLAYER_GAINS_VEHICLE_DATA "Event:PLAYER GAINS VEHICLE DATA"): unitTarget, vehicleUIIndicatorID

[PLAYER_LOSES_VEHICLE_DATA](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOSES_VEHICLE_DATA "Event:PLAYER LOSES VEHICLE DATA"): unitTarget

[UNIT_ENTERED_VEHICLE](https://warcraft.wiki.gg/wiki/Event:UNIT_ENTERED_VEHICLE "Event:UNIT ENTERED VEHICLE"): unitTarget, showVehicleFrame, isControlSeat, vehicleUIIndicatorID, vehicleGUID, mayChooseExit, hasPitch

[UNIT_ENTERING_VEHICLE](https://warcraft.wiki.gg/wiki/Event:UNIT_ENTERING_VEHICLE "Event:UNIT ENTERING VEHICLE"): unitTarget, showVehicleFrame, isControlSeat, vehicleUIIndicatorID, vehicleGUID, mayChooseExit, hasPitch

[UNIT_EXITED_VEHICLE](https://warcraft.wiki.gg/wiki/Event:UNIT_EXITED_VEHICLE "Event:UNIT EXITED VEHICLE"): unitTarget

[UNIT_EXITING_VEHICLE](https://warcraft.wiki.gg/wiki/Event:UNIT_EXITING_VEHICLE "Event:UNIT EXITING VEHICLE"): unitTarget

[VEHICLE_ANGLE_SHOW](https://warcraft.wiki.gg/wiki/Event:VEHICLE_ANGLE_SHOW "Event:VEHICLE ANGLE SHOW"): shouldShow

[VEHICLE_PASSENGERS_CHANGED](https://warcraft.wiki.gg/wiki/Event:VEHICLE_PASSENGERS_CHANGED "Event:VEHICLE PASSENGERS CHANGED")

[VEHICLE_POWER_SHOW](https://warcraft.wiki.gg/wiki/Event:VEHICLE_POWER_SHOW "Event:VEHICLE POWER SHOW"): shouldShow

[VEHICLE_UPDATE](https://warcraft.wiki.gg/wiki/Event:VEHICLE_UPDATE "Event:VEHICLE UPDATE")

## [Video](https://warcraft.wiki.gg/wiki/Category:API_systems/Video "Category:API systems/Video")

[ADAPTER_LIST_CHANGED](https://warcraft.wiki.gg/wiki/Event:ADAPTER_LIST_CHANGED "Event:ADAPTER LIST CHANGED")

[DISPLAY_SIZE_CHANGED](https://warcraft.wiki.gg/wiki/Event:DISPLAY_SIZE_CHANGED "Event:DISPLAY SIZE CHANGED")

[GLUE_SCREENSHOT_FAILED](https://warcraft.wiki.gg/wiki/Event:GLUE_SCREENSHOT_FAILED "Event:GLUE SCREENSHOT FAILED")

[GLUE_SCREENSHOT_STARTED](https://warcraft.wiki.gg/wiki/Event:GLUE_SCREENSHOT_STARTED "Event:GLUE SCREENSHOT STARTED")

[GLUE_SCREENSHOT_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:GLUE_SCREENSHOT_SUCCEEDED "Event:GLUE SCREENSHOT SUCCEEDED")

[GX_RESTARTED](https://warcraft.wiki.gg/wiki/Event:GX_RESTARTED "Event:GX RESTARTED")

[SCREENSHOT_FAILED](https://warcraft.wiki.gg/wiki/Event:SCREENSHOT_FAILED "Event:SCREENSHOT FAILED")

[SCREENSHOT_STARTED](https://warcraft.wiki.gg/wiki/Event:SCREENSHOT_STARTED "Event:SCREENSHOT STARTED")

[SCREENSHOT_SUCCEEDED](https://warcraft.wiki.gg/wiki/Event:SCREENSHOT_SUCCEEDED "Event:SCREENSHOT SUCCEEDED")

## [Vignette](https://warcraft.wiki.gg/wiki/Category:API_systems/Vignette "Category:API systems/Vignette")

[VIGNETTE_MINIMAP_UPDATED](https://warcraft.wiki.gg/wiki/Event:VIGNETTE_MINIMAP_UPDATED "Event:VIGNETTE MINIMAP UPDATED"): vignetteGUID, onMinimap

[VIGNETTES_UPDATED](https://warcraft.wiki.gg/wiki/Event:VIGNETTES_UPDATED "Event:VIGNETTES UPDATED")

## [VoiceChat](https://warcraft.wiki.gg/wiki/Category:API_systems/VoiceChat "Category:API systems/VoiceChat")

[VOICE_CHAT_ACTIVE_INPUT_DEVICE_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_ACTIVE_INPUT_DEVICE_UPDATED "Event:VOICE CHAT ACTIVE INPUT DEVICE UPDATED")

[VOICE_CHAT_ACTIVE_OUTPUT_DEVICE_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_ACTIVE_OUTPUT_DEVICE_UPDATED "Event:VOICE CHAT ACTIVE OUTPUT DEVICE UPDATED")

[VOICE_CHAT_AUDIO_CAPTURE_ENERGY](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_AUDIO_CAPTURE_ENERGY "Event:VOICE CHAT AUDIO CAPTURE ENERGY"): isSpeaking, energy

[VOICE_CHAT_AUDIO_CAPTURE_STARTED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_AUDIO_CAPTURE_STARTED "Event:VOICE CHAT AUDIO CAPTURE STARTED")

[VOICE_CHAT_AUDIO_CAPTURE_STOPPED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_AUDIO_CAPTURE_STOPPED "Event:VOICE CHAT AUDIO CAPTURE STOPPED")

[VOICE_CHAT_CHANNEL_ACTIVATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_ACTIVATED "Event:VOICE CHAT CHANNEL ACTIVATED"): channelID

[VOICE_CHAT_CHANNEL_DEACTIVATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_DEACTIVATED "Event:VOICE CHAT CHANNEL DEACTIVATED"): channelID

[VOICE_CHAT_CHANNEL_DISPLAY_NAME_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_DISPLAY_NAME_CHANGED "Event:VOICE CHAT CHANNEL DISPLAY NAME CHANGED"): channelID, channelDisplayName

[VOICE_CHAT_CHANNEL_JOINED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_JOINED "Event:VOICE CHAT CHANNEL JOINED"): status, channelID, channelType, clubId, streamId

[VOICE_CHAT_CHANNEL_MEMBER_ACTIVE_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_ACTIVE_STATE_CHANGED "Event:VOICE CHAT CHANNEL MEMBER ACTIVE STATE CHANGED"): memberID, channelID, isActive

[VOICE_CHAT_CHANNEL_MEMBER_ADDED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_ADDED "Event:VOICE CHAT CHANNEL MEMBER ADDED"): memberID, channelID

[VOICE_CHAT_CHANNEL_MEMBER_ENERGY_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_ENERGY_CHANGED "Event:VOICE CHAT CHANNEL MEMBER ENERGY CHANGED"): memberID, channelID, speakingEnergy

[VOICE_CHAT_CHANNEL_MEMBER_GUID_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_GUID_UPDATED "Event:VOICE CHAT CHANNEL MEMBER GUID UPDATED"): memberID, channelID

[VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ALL_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ALL_CHANGED "Event:VOICE CHAT CHANNEL MEMBER MUTE FOR ALL CHANGED"): memberID, channelID, isMutedForAll

[VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ME_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_MUTE_FOR_ME_CHANGED "Event:VOICE CHAT CHANNEL MEMBER MUTE FOR ME CHANGED"): memberID, channelID, isMutedForMe

[VOICE_CHAT_CHANNEL_MEMBER_REMOVED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_REMOVED "Event:VOICE CHAT CHANNEL MEMBER REMOVED"): memberID, channelID

[VOICE_CHAT_CHANNEL_MEMBER_SILENCED_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_SILENCED_CHANGED "Event:VOICE CHAT CHANNEL MEMBER SILENCED CHANGED"): memberID, channelID, isSilenced

[VOICE_CHAT_CHANNEL_MEMBER_SPEAKING_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_SPEAKING_STATE_CHANGED "Event:VOICE CHAT CHANNEL MEMBER SPEAKING STATE CHANGED"): memberID, channelID, isSpeaking

[VOICE_CHAT_CHANNEL_MEMBER_STT_MESSAGE](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_STT_MESSAGE "Event:VOICE CHAT CHANNEL MEMBER STT MESSAGE"): memberID, channelID, message, language

[VOICE_CHAT_CHANNEL_MEMBER_VOLUME_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MEMBER_VOLUME_CHANGED "Event:VOICE CHAT CHANNEL MEMBER VOLUME CHANGED"): memberID, channelID, volume

[VOICE_CHAT_CHANNEL_MUTE_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_MUTE_STATE_CHANGED "Event:VOICE CHAT CHANNEL MUTE STATE CHANGED"): channelID, isMuted

[VOICE_CHAT_CHANNEL_PTT_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_PTT_CHANGED "Event:VOICE CHAT CHANNEL PTT CHANGED"): channelID, pushToTalkSetting

[VOICE_CHAT_CHANNEL_REMOVED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_REMOVED "Event:VOICE CHAT CHANNEL REMOVED"): channelID

[VOICE_CHAT_CHANNEL_TRANSCRIBING_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_TRANSCRIBING_CHANGED "Event:VOICE CHAT CHANNEL TRANSCRIBING CHANGED"): channelID, isTranscribing

[VOICE_CHAT_CHANNEL_TRANSMIT_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_TRANSMIT_CHANGED "Event:VOICE CHAT CHANNEL TRANSMIT CHANGED"): channelID, isTransmitting

[VOICE_CHAT_CHANNEL_VOLUME_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CHANNEL_VOLUME_CHANGED "Event:VOICE CHAT CHANNEL VOLUME CHANGED"): channelID, volume

[VOICE_CHAT_COMMUNICATION_MODE_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_COMMUNICATION_MODE_CHANGED "Event:VOICE CHAT COMMUNICATION MODE CHANGED"): communicationMode

[VOICE_CHAT_CONNECTION_SUCCESS](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_CONNECTION_SUCCESS "Event:VOICE CHAT CONNECTION SUCCESS")

[VOICE_CHAT_DEAFENED_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_DEAFENED_CHANGED "Event:VOICE CHAT DEAFENED CHANGED"): isDeafened

[VOICE_CHAT_ERROR](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_ERROR "Event:VOICE CHAT ERROR"): platformCode, statusCode

[VOICE_CHAT_INPUT_DEVICES_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_INPUT_DEVICES_UPDATED "Event:VOICE CHAT INPUT DEVICES UPDATED")

[VOICE_CHAT_LOGIN](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_LOGIN "Event:VOICE CHAT LOGIN"): status

[VOICE_CHAT_LOGOUT](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_LOGOUT "Event:VOICE CHAT LOGOUT"): status

[VOICE_CHAT_MUTED_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_MUTED_CHANGED "Event:VOICE CHAT MUTED CHANGED"): isMuted

[VOICE_CHAT_OUTPUT_DEVICES_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_OUTPUT_DEVICES_UPDATED "Event:VOICE CHAT OUTPUT DEVICES UPDATED")

[VOICE_CHAT_PENDING_CHANNEL_JOIN_STATE](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_PENDING_CHANNEL_JOIN_STATE "Event:VOICE CHAT PENDING CHANNEL JOIN STATE"): channelType, clubId, streamId, pendingJoin

[VOICE_CHAT_PTT_BUTTON_PRESSED_STATE_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_PTT_BUTTON_PRESSED_STATE_CHANGED "Event:VOICE CHAT PTT BUTTON PRESSED STATE CHANGED"): isPressed

[VOICE_CHAT_SILENCED_CHANGED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_SILENCED_CHANGED "Event:VOICE CHAT SILENCED CHANGED"): isSilenced

[VOICE_CHAT_SPEAK_FOR_ME_ACTIVE_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_SPEAK_FOR_ME_ACTIVE_STATUS_UPDATED "Event:VOICE CHAT SPEAK FOR ME ACTIVE STATUS UPDATED")

[VOICE_CHAT_SPEAK_FOR_ME_FEATURE_STATUS_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_SPEAK_FOR_ME_FEATURE_STATUS_UPDATED "Event:VOICE CHAT SPEAK FOR ME FEATURE STATUS UPDATED")

[VOICE_CHAT_TTS_PLAYBACK_BOOKMARK](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_PLAYBACK_BOOKMARK "Event:VOICE CHAT TTS PLAYBACK BOOKMARK"): utteranceID, bookmarkName

[VOICE_CHAT_TTS_PLAYBACK_FAILED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_PLAYBACK_FAILED "Event:VOICE CHAT TTS PLAYBACK FAILED"): utteranceID, status

[VOICE_CHAT_TTS_PLAYBACK_FINISHED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_PLAYBACK_FINISHED "Event:VOICE CHAT TTS PLAYBACK FINISHED"): utteranceID

[VOICE_CHAT_TTS_PLAYBACK_STARTED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_PLAYBACK_STARTED "Event:VOICE CHAT TTS PLAYBACK STARTED"): utteranceID

[VOICE_CHAT_TTS_SPEAK_TEXT_UPDATE](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_SPEAK_TEXT_UPDATE "Event:VOICE CHAT TTS SPEAK TEXT UPDATE"): status, utteranceID

[VOICE_CHAT_TTS_VOICES_UPDATE](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_TTS_VOICES_UPDATE "Event:VOICE CHAT TTS VOICES UPDATE")

[VOICE_CHAT_VAD_SETTINGS_UPDATED](https://warcraft.wiki.gg/wiki/Event:VOICE_CHAT_VAD_SETTINGS_UPDATED "Event:VOICE CHAT VAD SETTINGS UPDATED")

## [WarbandSceneInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/WarbandSceneInfo "Category:API systems/WarbandSceneInfo")

[NEW_WARBAND_SCENE_ADDED](https://warcraft.wiki.gg/wiki/Event:NEW_WARBAND_SCENE_ADDED "Event:NEW WARBAND SCENE ADDED"): warbandScenID

[WARBAND_SCENE_FAVORITES_UPDATED](https://warcraft.wiki.gg/wiki/Event:WARBAND_SCENE_FAVORITES_UPDATED "Event:WARBAND SCENE FAVORITES UPDATED")

## [WeatherScript](https://warcraft.wiki.gg/wiki/Category:API_systems/WeatherScript "Category:API systems/WeatherScript")

[WEATHER_CHANGED](https://warcraft.wiki.gg/wiki/Event:WEATHER_CHANGED "Event:WEATHER CHANGED")

## [WeeklyRewards](https://warcraft.wiki.gg/wiki/Category:API_systems/WeeklyRewards "Category:API systems/WeeklyRewards")

[WEEKLY_REWARDS_ITEM_CHANGED](https://warcraft.wiki.gg/wiki/Event:WEEKLY_REWARDS_ITEM_CHANGED "Event:WEEKLY REWARDS ITEM CHANGED")

[WEEKLY_REWARDS_UPDATE](https://warcraft.wiki.gg/wiki/Event:WEEKLY_REWARDS_UPDATE "Event:WEEKLY REWARDS UPDATE")

## [WorldLootObject](https://warcraft.wiki.gg/wiki/Category:API_systems/WorldLootObject "Category:API systems/WorldLootObject")

[WORLD_LOOT_OBJECT_INFO_UPDATED](https://warcraft.wiki.gg/wiki/Event:WORLD_LOOT_OBJECT_INFO_UPDATED "Event:WORLD LOOT OBJECT INFO UPDATED"): guid

## [WorldStateInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/WorldStateInfo "Category:API systems/WorldStateInfo")

[CANCEL_PLAYER_COUNTDOWN](https://warcraft.wiki.gg/wiki/Event:CANCEL_PLAYER_COUNTDOWN "Event:CANCEL PLAYER COUNTDOWN"): initiatedBy, informChat, initiatedByName

[START_PLAYER_COUNTDOWN](https://warcraft.wiki.gg/wiki/Event:START_PLAYER_COUNTDOWN "Event:START PLAYER COUNTDOWN"): initiatedBy, timeRemaining, totalTime, informChat, initiatedByName

[START_TIMER](https://warcraft.wiki.gg/wiki/Event:START_TIMER "Event:START TIMER"): timerType, timeRemaining, totalTime

[STOP_TIMER_OF_TYPE](https://warcraft.wiki.gg/wiki/Event:STOP_TIMER_OF_TYPE "Event:STOP TIMER OF TYPE"): timerType

[WORLD_STATE_TIMER_START](https://warcraft.wiki.gg/wiki/Event:WORLD_STATE_TIMER_START "Event:WORLD STATE TIMER START"): timerID

[WORLD_STATE_TIMER_STOP](https://warcraft.wiki.gg/wiki/Event:WORLD_STATE_TIMER_STOP "Event:WORLD STATE TIMER STOP"): timerID

## [WowEntitlementInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/WowEntitlementInfo "Category:API systems/WowEntitlementInfo")

[ENTITLEMENT_DELIVERED](https://warcraft.wiki.gg/wiki/Event:ENTITLEMENT_DELIVERED "Event:ENTITLEMENT DELIVERED"): entitlementType, textureID, name, payloadID, showFancyToast

[RAF_ENTITLEMENT_DELIVERED](https://warcraft.wiki.gg/wiki/Event:RAF_ENTITLEMENT_DELIVERED "Event:RAF ENTITLEMENT DELIVERED"): entitlementType, textureID, name, payloadID, showFancyToast, rafVersion

## [WowSurvey](https://warcraft.wiki.gg/wiki/Category:API_systems/WowSurvey "Category:API systems/WowSurvey")

[SURVEY_DELIVERED](https://warcraft.wiki.gg/wiki/Event:SURVEY_DELIVERED "Event:SURVEY DELIVERED")

## [WowTokenUI](https://warcraft.wiki.gg/wiki/Category:API_systems/WowTokenUI "Category:API systems/WowTokenUI")

[TOKEN_AUCTION_SOLD](https://warcraft.wiki.gg/wiki/Event:TOKEN_AUCTION_SOLD "Event:TOKEN AUCTION SOLD")

[TOKEN_BUY_CONFIRM_REQUIRED](https://warcraft.wiki.gg/wiki/Event:TOKEN_BUY_CONFIRM_REQUIRED "Event:TOKEN BUY CONFIRM REQUIRED")

[TOKEN_BUY_RESULT](https://warcraft.wiki.gg/wiki/Event:TOKEN_BUY_RESULT "Event:TOKEN BUY RESULT"): result

[TOKEN_CAN_VETERAN_BUY_UPDATE](https://warcraft.wiki.gg/wiki/Event:TOKEN_CAN_VETERAN_BUY_UPDATE "Event:TOKEN CAN VETERAN BUY UPDATE"): result

[TOKEN_DISTRIBUTIONS_UPDATED](https://warcraft.wiki.gg/wiki/Event:TOKEN_DISTRIBUTIONS_UPDATED "Event:TOKEN DISTRIBUTIONS UPDATED"): result

[TOKEN_MARKET_PRICE_UPDATED](https://warcraft.wiki.gg/wiki/Event:TOKEN_MARKET_PRICE_UPDATED "Event:TOKEN MARKET PRICE UPDATED"): result

[TOKEN_REDEEM_BALANCE_UPDATED](https://warcraft.wiki.gg/wiki/Event:TOKEN_REDEEM_BALANCE_UPDATED "Event:TOKEN REDEEM BALANCE UPDATED")

[TOKEN_REDEEM_CONFIRM_REQUIRED](https://warcraft.wiki.gg/wiki/Event:TOKEN_REDEEM_CONFIRM_REQUIRED "Event:TOKEN REDEEM CONFIRM REQUIRED"): choiceType

[TOKEN_REDEEM_FRAME_SHOW](https://warcraft.wiki.gg/wiki/Event:TOKEN_REDEEM_FRAME_SHOW "Event:TOKEN REDEEM FRAME SHOW")

[TOKEN_REDEEM_GAME_TIME_UPDATED](https://warcraft.wiki.gg/wiki/Event:TOKEN_REDEEM_GAME_TIME_UPDATED "Event:TOKEN REDEEM GAME TIME UPDATED")

[TOKEN_REDEEM_RESULT](https://warcraft.wiki.gg/wiki/Event:TOKEN_REDEEM_RESULT "Event:TOKEN REDEEM RESULT"): result, choiceType

[TOKEN_SELL_CONFIRM_REQUIRED](https://warcraft.wiki.gg/wiki/Event:TOKEN_SELL_CONFIRM_REQUIRED "Event:TOKEN SELL CONFIRM REQUIRED")

[TOKEN_SELL_CONFIRMED](https://warcraft.wiki.gg/wiki/Event:TOKEN_SELL_CONFIRMED "Event:TOKEN SELL CONFIRMED")

[TOKEN_SELL_RESULT](https://warcraft.wiki.gg/wiki/Event:TOKEN_SELL_RESULT "Event:TOKEN SELL RESULT"): result

[TOKEN_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:TOKEN_STATUS_CHANGED "Event:TOKEN STATUS CHANGED")

# Undocumented

Not all events are documented in [Blizzard API Documentation](https://github.com/Gethe/wow-ui-source/tree/live/Interface/AddOns/Blizzard_APIDocumentation)

[AUTH_CHALLENGE_FINISHED](https://warcraft.wiki.gg/wiki/Event:AUTH_CHALLENGE_FINISHED?action=edit&redlink=1 "Event:AUTH CHALLENGE FINISHED (page does not exist)")

[AUTH_CHALLENGE_UI_INVALID](https://warcraft.wiki.gg/wiki/Event:AUTH_CHALLENGE_UI_INVALID?action=edit&redlink=1 "Event:AUTH CHALLENGE UI INVALID (page does not exist)")

[BILLING_NAG_DIALOG](https://warcraft.wiki.gg/wiki/Event:BILLING_NAG_DIALOG?action=edit&redlink=1 "Event:BILLING NAG DIALOG (page does not exist)")

[DEBUG_MENU_TOGGLED](https://warcraft.wiki.gg/wiki/Event:DEBUG_MENU_TOGGLED?action=edit&redlink=1 "Event:DEBUG MENU TOGGLED (page does not exist)")

[EVENT_CLASS_TRIAL_TIMER_START](https://warcraft.wiki.gg/wiki/Event:EVENT_CLASS_TRIAL_TIMER_START?action=edit&redlink=1 "Event:EVENT CLASS TRIAL TIMER START (page does not exist)")

[EXPERIMENTAL_CVAR_CONFIRMATION_NEEDED](https://warcraft.wiki.gg/wiki/Event:EXPERIMENTAL_CVAR_CONFIRMATION_NEEDED "Event:EXPERIMENTAL CVAR CONFIRMATION NEEDED")

[IGR_BILLING_NAG_DIALOG](https://warcraft.wiki.gg/wiki/Event:IGR_BILLING_NAG_DIALOG?action=edit&redlink=1 "Event:IGR BILLING NAG DIALOG (page does not exist)")

[PLAYTIME_CHANGED](https://warcraft.wiki.gg/wiki/Event:PLAYTIME_CHANGED "Event:PLAYTIME CHANGED")

[PRODUCT_ASSIGN_TO_TARGET_FAILED](https://warcraft.wiki.gg/wiki/Event:PRODUCT_ASSIGN_TO_TARGET_FAILED?action=edit&redlink=1 "Event:PRODUCT ASSIGN TO TARGET FAILED (page does not exist)")

[PRODUCT_CHOICE_UPDATE](https://warcraft.wiki.gg/wiki/Event:PRODUCT_CHOICE_UPDATE?action=edit&redlink=1 "Event:PRODUCT CHOICE UPDATE (page does not exist)")

[PRODUCT_DISTRIBUTIONS_UPDATED](https://warcraft.wiki.gg/wiki/Event:PRODUCT_DISTRIBUTIONS_UPDATED?action=edit&redlink=1 "Event:PRODUCT DISTRIBUTIONS UPDATED (page does not exist)")

[SESSION_TIME_ALERT](https://warcraft.wiki.gg/wiki/Event:SESSION_TIME_ALERT?action=edit&redlink=1 "Event:SESSION TIME ALERT (page does not exist)")

[STORE_BOOST_AUTO_CONSUMED](https://warcraft.wiki.gg/wiki/Event:STORE_BOOST_AUTO_CONSUMED?action=edit&redlink=1 "Event:STORE BOOST AUTO CONSUMED (page does not exist)")

[STORE_CHARACTER_LIST_RECEIVED](https://warcraft.wiki.gg/wiki/Event:STORE_CHARACTER_LIST_RECEIVED?action=edit&redlink=1 "Event:STORE CHARACTER LIST RECEIVED (page does not exist)")

[STORE_CONFIRM_PURCHASE](https://warcraft.wiki.gg/wiki/Event:STORE_CONFIRM_PURCHASE?action=edit&redlink=1 "Event:STORE CONFIRM PURCHASE (page does not exist)")

[STORE_OPEN_SIMPLE_CHECKOUT](https://warcraft.wiki.gg/wiki/Event:STORE_OPEN_SIMPLE_CHECKOUT?action=edit&redlink=1 "Event:STORE OPEN SIMPLE CHECKOUT (page does not exist)")

[STORE_ORDER_INITIATION_FAILED](https://warcraft.wiki.gg/wiki/Event:STORE_ORDER_INITIATION_FAILED?action=edit&redlink=1 "Event:STORE ORDER INITIATION FAILED (page does not exist)")

[STORE_PRODUCTS_UPDATED](https://warcraft.wiki.gg/wiki/Event:STORE_PRODUCTS_UPDATED?action=edit&redlink=1 "Event:STORE PRODUCTS UPDATED (page does not exist)")

[STORE_PRODUCT_DELIVERED](https://warcraft.wiki.gg/wiki/Event:STORE_PRODUCT_DELIVERED?action=edit&redlink=1 "Event:STORE PRODUCT DELIVERED (page does not exist)")

[STORE_PURCHASE_ERROR](https://warcraft.wiki.gg/wiki/Event:STORE_PURCHASE_ERROR?action=edit&redlink=1 "Event:STORE PURCHASE ERROR (page does not exist)")

[STORE_PURCHASE_LIST_UPDATED](https://warcraft.wiki.gg/wiki/Event:STORE_PURCHASE_LIST_UPDATED?action=edit&redlink=1 "Event:STORE PURCHASE LIST UPDATED (page does not exist)")

[STORE_REFRESH](https://warcraft.wiki.gg/wiki/Event:STORE_REFRESH?action=edit&redlink=1 "Event:STORE REFRESH (page does not exist)")

[STORE_STATUS_CHANGED](https://warcraft.wiki.gg/wiki/Event:STORE_STATUS_CHANGED?action=edit&redlink=1 "Event:STORE STATUS CHANGED (page does not exist)")

[STORE_VAS_PURCHASE_COMPLETE](https://warcraft.wiki.gg/wiki/Event:STORE_VAS_PURCHASE_COMPLETE?action=edit&redlink=1 "Event:STORE VAS PURCHASE COMPLETE (page does not exist)")

[STORE_VAS_PURCHASE_ERROR](https://warcraft.wiki.gg/wiki/Event:STORE_VAS_PURCHASE_ERROR?action=edit&redlink=1 "Event:STORE VAS PURCHASE ERROR (page does not exist)")

[SUBSCRIPTION_CHANGED_KICK_IMMINENT](https://warcraft.wiki.gg/wiki/Event:SUBSCRIPTION_CHANGED_KICK_IMMINENT?action=edit&redlink=1 "Event:SUBSCRIPTION CHANGED KICK IMMINENT (page does not exist)")

[TRIAL_CAP_REACHED_LEVEL](https://warcraft.wiki.gg/wiki/Event:TRIAL_CAP_REACHED_LEVEL "Event:TRIAL CAP REACHED LEVEL")

[TRIAL_STATUS_UPDATE](https://warcraft.wiki.gg/wiki/Event:TRIAL_STATUS_UPDATE?action=edit&redlink=1 "Event:TRIAL STATUS UPDATE (page does not exist)")

[UPDATE_EXPANSION_LEVEL](https://warcraft.wiki.gg/wiki/Event:UPDATE_EXPANSION_LEVEL "Event:UPDATE EXPANSION LEVEL")

[UPDATE_GM_STATUS](https://warcraft.wiki.gg/wiki/Event:UPDATE_GM_STATUS?action=edit&redlink=1 "Event:UPDATE GM STATUS (page does not exist)")
