# Localizing an addon

> Source: <https://warcraft.wiki.gg/wiki/Localizing_an_addon> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

Blizzard releases many localized versions of the World of Warcraft client, each version translating the game to a particular language. Players in some regions may also install additional [language packs](http://www.wow-europe.com/en/downloads/elp/), allowing them to play World of Warcraft in a desired language.

Depending on the functionality they provide to the player, addons may need to be *internationalized* in order to work on clients that use a different locale than the addon author's, and *localized* in order to present themselves to the user in the user's desired language.

## Contents

- [1 Internationalization](#Internationalization)
  - [1.1 A word on return value ordering](#A_word_on_return_value_ordering)
- [2 Localization](#Localization)
  - [2.1 Localization in the .toc file](#Localization_in_the_.toc_file)
  - [2.2 Making an addon localizable](#Making_an_addon_localizable)
  - [2.3 Adding translations](#Adding_translations)
  - [2.4 Character Encoding in World of Warcraft](#Character_Encoding_in_World_of_Warcraft)
  - [2.5 Check the GlobalStrings.lua](#Check_the_GlobalStrings.lua)
- [3 An Example](#An_Example)
  - [3.1 LocaleDemo.toc](#LocaleDemo.toc)
  - [3.2 localization.core.lua](#localization.core.lua)
  - [3.3 localization.fr.lua](#localization.fr.lua)
  - [3.4 localization.de.lua](#localization.de.lua)
  - [3.5 LocaleDemo.lua](#LocaleDemo.lua)
- [4 Tips and common pitfalls](#Tips_and_common_pitfalls)
- [5 Some links](#Some_links)

## Internationalization

The [World of Warcraft API](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API "World of Warcraft API") stays consistent across all client localizations—all the normal API functions are available regardless of the client's locale. This should in theory enable any addon to run on any WoW client; however if the addon relies on the names of spells, abilities, NPCs, items, professions, or even the text or format strings of system messages, it may not function properly when those are translated to another language.

There are three main approaches to solving this problem:

Ignore the whole problem  
Your addon will work for the locale it was written for, somewhat limiting its target audience.

Localize all text that would be localized by the client.  
This would involve maintaining a list of translations to all supported languages of all translatable strings which your addon requires; for instance, you could keep the information that "Frostbolt" is called "Frostblitz" in german, and "Ледяная стрела" in Russian.

This method has a disadvantage: you'll end up distributing and maintaining massive lists of localizations, only a small subset of which is only ever useful to a particular user.

Avoid using text that would be localized by the client.  
Rather than finding (or using) a ![](/images/thumb/Inv_misc_rune_01.png/16px-Inv_misc_rune_01.png?8f50f1) [\[Hearthstone\]](https://warcraft.wiki.gg/wiki/Hearthstone "Hearthstone") by its name, you could instead use its item ID: 6948. Such work-arounds exists for most things that can break an addon after being translated.

[TABLE]

You may also be able to recognize system messages without requiring explicit localization of your string patterns by deriving the patterns from the format strings found in FrameXML/GlobalStrings.lua. This is slightly complicated by the fact that some languages may use the "%2\$s %1\$s" syntax to change the order in which format arguments appear in the string; you may wish to consider using [LibDeformat-3.0](http://www.wowace.com/addons/libdeformat-3-0/) to perform that conversion automatically.

In summary, to avoid your addon malfunctioning when run on a client of another locale, avoid using hard-coded text to identify spells, items or NPCs the names of which would be localized by the client, and be mindful of using the order of return values for some functions that return lists of names (as those tend to be in alphabetical order, which may vary with localization).

### A word on return value ordering

Some API functions that return lists or take indices internally sort their data alphabetically. When the client is localized, the order of returned values or correspondence between return values and indices may change.

Examples of this behavior would include the character's spellbook (where the spells are alphabetically sorted within each school) and the list of zones on a particular continent (zones are alphabetically sorted in the returned list). It would be dangerous to rely on the order of those return values alone.

## Localization

If a player is using a localized client, they would presumably also want addons to be localized to that language. To accomplish this, all text presented to the user should be translatable; this section discusses strategies for addons to support localizations, and simplify creation of new localizations.

### Localization in the .toc file

A number of [directives](https://warcraft.wiki.gg/wiki/TOC_format#Directives "TOC format") support localization by appending a locale suffix to a tag name. This mechanism allows addons to present a localized name and description of the addon in the addons interface. The following example illustrates this, by adding a french ("frFR" locale) title and description to the Gatherer addon:

    Title: Gatherer
    Title-frFR: Gatherer (en Francais, in French)
    Notes: Gatherer, displays stuff you gather in your minimap
    Notes-frFR: Gatherer, affiche les objets recoltes dans la minicarte

### Making an addon localizable

To begin with, you need to ensure that every time your addon displays a piece of text to the user, that piece of text *can* be localized. Consider the two pieces of code below:

[TABLE]

Code on the left could not be localized without editing the file containing it; while the code in the right wraps the output in a table lookup—so if the value associated with the "Hello World!" key in MyLocalizationTable was altered, the text output would change. We can use a metatable to allow you to write localizable code without worrying about supplying a default localization:

    local function defaultFunc(L, key)
     -- If this function was called, we have no localization for this key.
     -- We could complain loudly to allow localizers to see the error of their ways, but, for now, just return the key as its own localization. This allows you to avoid writing the default localization out explicitly.
     return key;
    end
    MyLocalizationTable = setmetatable({}, {__index=defaultFunc});

This method allows you to add an easy localization mechanism to your addons, requiring minimal additional code.

### Adding translations

Suppose we then wanted to translate the "Hello World!" string from the example above to the client's language. The locale of the client is returned by [GetLocale](https://warcraft.wiki.gg/wiki/API:GetLocale "API:GetLocale")(). To add localizations to the addon, we could add new files along the lines of the following:

    local L = MyLocalizationTable;
    if GetLocale() == "frFR" then
     L["Hello World!"] = "Hello France!";
    end

To run correctly, those localization files need to be loaded after MyLocalizationTable is created, but before localization is actually used.

### Character Encoding in World of Warcraft

World of Warcraft supports UTF-8 encoded strings of unicode characters; in UTF-8 encoding, ASCII characters can be represented using 1 byte, while most unicode characters typically require multi-byte sequences. You can simply use a UTF-8 enabled text editor, and save unicode-containing .lua files using UTF-8 encoding.

Alternatively, you can manually encode the multi-byte sequences required by UTF-8 using Lua escape sequences. The table below shows escape sequences for some european characters:

       à : \195\160    è : \195\168    ì : \195\172    ò : \195\178    ù : \195\185
       á : \195\161    é : \195\169    í : \195\173    ó : \195\179    ú : \195\186
       â : \195\162    ê : \195\170    î : \195\174    ô : \195\180    û : \195\187
       ã : \195\163    ë : \195\171    ï : \195\175    õ : \195\181    ü : \195\188
       ä : \195\164                    ñ : \195\177    ö : \195\182
       æ : \195\166                                    ø : \195\184
       ç : \195\167                                    œ : \197\147
       Ä : \195\132   Ö : \195\150   Ü : \195\156    ß : \195\159

If you don't know the UTF-8 sequence for a particular character, you can compute it from the unicode character code, or by [looking up the desired character online](http://www.utf8-chartable.de/).

### Check the GlobalStrings.lua

Some strings, particularly those used by Blizzard in FrameXML, are already localized by the client. You can view the full list of such strings by reading the [FrameXML/GlobalStrings.lua](https://www.townlong-yak.com/framexml/live/GlobalStrings.lua) file.

## An Example

The addon below displays a message every time the PLAYER_ENTERING_WORLD event fires. The message is localized according to the client localization; new locales can be added relatively easily by duplicating the localization.de.lua file.

### LocaleDemo.toc

    ## Title: Hello World
    ## Title-frFR: Hello France
    ## Title-deDE: Hello Germany
    ## Description: Displays a message greeting the world
    ## Description-frFR: Displays a message greeting France
    ## Description-deDE: Displays a message greeting Germany
    localization.core.lua
    localization.de.lua
    localization.fr.lua
    LocaleDemo.lua

### localization.core.lua

    local addonName, L = ...; -- Let's use the private table passed to every .lua file to store our locale
    local function defaultFunc(L, key)
     -- If this function was called, we have no localization for this key.
     -- We could complain loudly to allow localizers to see the error of their ways, 
     -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
     return key;
    end
    setmetatable(L, {__index=defaultFunc});

### localization.fr.lua

    local _, L = ...;
    if GetLocale() == "frFR" then
     L["Hello World!"] = "Hello France!";
    end

### localization.de.lua

    local _, L = ...;
    if GetLocale() == "deDE" then
     L["Hello World!"] = "Hello Germany!";
    end

### LocaleDemo.lua

    local _, L = ...;
    local f = CreateFrame("Frame");
    f:RegisterEvent("PLAYER_ENTERING_WORLD");
    f:SetScript("OnEvent", function()
     print(L["Hello World!"]);
    end

## Tips and common pitfalls

- It is a generally good idea to separate localizable strings from your addon code if you intend to make your addon localizable—concentrating localization in a few files makes it more approachable.
- Avoid using names to identify things you can identify by ID instead (this would include items, spells, quests, NPCs, etc). IDs do not need to be localized, saving you work, and allowing your addon to work on a client of a different locale, even if only by using the original language.
- Not everything must have a translation, and some things will break if translated. For instance, the names of the World of Warcraft API functions, XML elements, etc, do not need to be translated, since those names are hard-coded in either the client or FrameXML, and do not change with localizations.

## Some links

- A github [repository](http://github.com/tekkub/wow-globalstrings/tree/master) for storing community provided GlobalStrings.lua
- [AceLocale](http://www.wowace.com/addons/ace3/pages/api/ace-locale-3-0/) - Ace3 localization library
