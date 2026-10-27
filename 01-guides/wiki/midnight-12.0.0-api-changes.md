# Patch 12.0.0/API changes

> Source: <https://warcraft.wiki.gg/wiki/Patch_12.0.0/API_changes> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

[TABLE]

## Contents

- [1 Summary](#Summary)
- [2 Resources](#Resources)
- [3 AddOn security changes](#AddOn_security_changes)
  - [3.1 Secret values](#Secret_values)
- [4 Consolidated changes](#Consolidated_changes)
  - [4.1 Global API](#Global_API)
  - [4.2 ScriptObjects](#ScriptObjects)
  - [4.3 Widgets](#Widgets)
  - [4.4 Events](#Events)
  - [4.5 CVars](#CVars)
  - [4.6 Enums](#Enums)
  - [4.7 Structures](#Structures)
- [5 Deprecated 11.x API](#Deprecated_11.x_API)

## Summary

- Addon apocalypse. ![Emoji fatcatfire.png](/images/thumb/Emoji_fatcatfire.png/24px-Emoji_fatcatfire.png?323fa7)
- [COMBAT_LOG_EVENT](https://warcraft.wiki.gg/wiki/COMBAT_LOG_EVENT "COMBAT LOG EVENT") and COMBAT_LOG_EVENT_UNFILTERED will error when trying to register them.

## Resources

- TOC: `120000`
- Official API patch notes: [Midnight 12.0.0 Beta Changes](https://warcraft.wiki.gg/wiki/Patch_12.0.0/API_changes/notes "Patch 12.0.0/API changes/notes")
- Official content update notes: [Midnight Pre-Expansion Content Update Notes](https://worldofwarcraft.blizzard.com/en-us/news/24244455/midnight-pre-expansion-content-update-notes#item13)

- Diffs: [wow-ui-source](https://github.com/Gethe/wow-ui-source/compare/11.2.7..12.0.0), [BlizzardInterfaceResources](https://github.com/Ketho/BlizzardInterfaceResources/compare/11.2.7..12.0.0)
- Deprecated APIs:
  - [Deprecated_BattleNet.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedBattleNet/Deprecated_BattleNet.lua)
  - [Deprecated_ChatInfo.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatInfo.lua)
  - [Deprecated_ChatFrame.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedChatInfo/Deprecated_ChatFrame.lua)
  - [Deprecated_CombatLog.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedCombatLog/Deprecated_CombatLog.lua)
  - [Deprecated_SpellBook.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedSpellBook/Deprecated_SpellBook.lua)
  - [Deprecated_InstanceEncounter.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedInstanceEncounter/Deprecated_InstanceEncounter.lua)
  - [Deprecated_SpellScript.lua](https://github.com/Gethe/wow-ui-source/blob/12.0.0/Interface/AddOns/Blizzard_DeprecatedSpellScript/Deprecated_SpellScript.lua)

## AddOn security changes

API changes have been introduced with an aim to limit the ability for addons to perform complex logic and decision making based off combat information.

The changes are not intended to prevent "look and feel" customization of UI elements. As part of this, Blizzard have avoided outright restricting many APIs and moving frames into the secure environment but instead have introduced new technology termed as Secret Values.

### Secret values

[TABLE]

## Consolidated changes

11.2.7 (64978) → 12.0.0 (65655) Jan 28 2026

### Global API

[TABLE]

    C_Housing.RequestHouseFinderNeighborhoodData
      + arg 2: neighborhoodName
    C_Item.CanItemTransmogAppearance
      # ret 2: errorCode, Type: number -> TransmogOutfitSlotError
    C_Item.GetItemInfo
      + ret 18: itemDescription
    C_LFGList.DoesEntryTitleMatchPrebuiltTitle
      + arg 4: generalPlaystyle
    C_LFGList.GetPlaystyleString
      + arg 2: generalPlaystyle
    C_LFGList.SetEntryTitle
      + arg 4: generalPlaystyle
    C_Reputation.GetFactionParagonInfo
      + ret 6: paragonStorageLevel
    C_Reputation.IsFactionParagon
      # ret 1: hasParagon -> factionIsParagon
    C_SpecializationInfo.GetSpecializationInfo
      + arg 7: classID
    C_TooltipInfo.GetRecipeResultItem
      # arg 2: craftingReagents -> reagentInfos
    C_TooltipInfo.GetRecipeResultItemForOrder
      # arg 2: craftingReagents -> reagentInfos
    C_TradeSkillUI.GetEnchantItems
      + arg 2: craftingReagents
    C_TradeSkillUI.GetRecraftRemovalWarnings
      # arg 2: replacedItemIDs -> replacedReagents
    C_TradeSkillUI.IsRecraftReagentValid
      # arg 2: itemID -> reagent
    C_TradeSkillUI.RecraftLimitCategoryValid
      # arg 1: reagentItemID -> reagent
    C_Transmog.GetSlotVisualInfo
      # ret 1: slotVisualInfo
    C_TransmogCollection.GetAppearanceSourceInfo
      # ret 1: info
    C_UnitAuras.GetUnitAuras
      + arg 4: sortRule
      + arg 5: sortDirection
    C_VoiceChat.SpeakText
      + arg 5: overlap
      - arg 3: destination
    UnitCastingInfo
      # ret 8: notInterruptible, Nilable: false -> true
      + ret 10: castBarID
    UnitChannelInfo
      # arg 1: unitToken -> unit
      # ret 7: notInterruptible, Nilable: false -> true
      + ret 11: castBarID

### ScriptObjects

[TABLE]

### Widgets

[TABLE]

    TextureBase:SetAtlas
      + arg 5: wrapModeHorizontal
      + arg 6: wrapModeVertical
    StatusBar:SetMinMaxValues
      + arg 3: interpolation
    StatusBar:SetValue
      + arg 2: interpolation

### Events

[TABLE]

    VOICE_CHAT_TTS_PLAYBACK_FAILED
      - 3: destination
    VOICE_CHAT_TTS_PLAYBACK_FINISHED
      - 1: numConsumers
      - 3: destination
    VOICE_CHAT_TTS_PLAYBACK_STARTED
      - 1: numConsumers
      - 3: durationMS
      - 4: destination

### CVars

[TABLE]

### Enums

    Enum.CraftingOrderResult
      + MissingCurrency
      + TooManyCurrencies
    Enum.EditModeAccountSetting
      + ShowPersonalResourceDisplay
      + ShowEncounterEvents
      + ShowDamageMeter
      + ShowExternalDefensives
    Enum.EditModeSystem
      + PersonalResourceDisplay
      + EncounterEvents
      + DamageMeter
    Enum.PlayerInteractionType
      # PlaceholderType79 -> TieredEntrance
    Enum.QuestTagType
      # Placeholder_1 -> Prey
    Enum.SendAddonMessageResult
      + AddOnMessageLockdown
      + TargetOffline
    Enum.SurveyDeliveryMoment
      + MythicPlusCompleted
    Enum.TooltipDataLineType
      + SpellPassive
      + SpellDescription
    Enum.TooltipDataType
      + Outfit
    Enum.TradeskillRecipeType
      - Recraft
    Enum.UICursorType
      + Outfit
    Enum.UIWidgetVisualizationType
      + PreyHuntProgress

### Structures

    AdvancedFilterOptions
      + generalPlaystyle1
      + generalPlaystyle2
      + generalPlaystyle3
      + generalPlaystyle4
    CatalogShopCategoryInfo
      + showPersistentRefundButton
    CatalogShopProductInfo
      +  consumableQuantity
    CooldownViewerCooldown
      + cooldownID
      + category
    CraftingItemSlotModification
      + itemID -> reagent
    CraftingOrderReagentInfo
      # reagent -> reagentInfo
    CraftingReagentInfo
      + itemID -> reagent
    CraftingReagentSlotSchematic
      + variableQuantities
    CraftingResourceReturnInfo
      + itemID -> reagent
    ExpansionDisplayInfo
      + glueAmbianceSoundKit
      + glueMusicSoundKit
      + glueCreditsSoundKit
    ItemInteractionFrameInfo
      # flags, Type: number -> UIItemInteractionFlags
    LfgEntryData
      + generalPlaystyle
    LfgListingCreateData
      + generalPlaystyle
    LfgSearchResultData
      + generalPlaystyle
    MajorFactionData
      + description
      + highlights
      + playerCompanionID
    MajorFactionRenownRewardInfo
      + rewardType
    NewCraftingOrderInfo
      # reagentItems -> reagentInfos
    PrivateAuraIconInfo
      + borderScale
    RegularReagentInfo
      + itemID -> reagent
    ScheduledEventInfo
      + eventID
      + displayInfo
    SpellCooldownInfo
      + timeUntilEndOfStartRecovery
      + isOnGCD
    TransmogAppearanceSourceInfoData
      + itemSubClass -> itemSubclass
    TransmogSetInfo
      + grantAsPrecedingVariant

## Deprecated 11.x API

These API functions were deprecated in the 11.x patches from the previous expansion and have been removed.

[TABLE]
