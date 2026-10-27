# Widget script handlers

> Source: <https://warcraft.wiki.gg/wiki/Widget_script_handlers> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

**Lua error in Module:Wowapi/src/category at line 93: attempt to call field '?' (a nil value).**

## Contents

- [1 Script Types](#Script_Types)
  - [1.1 AnimationGroup](#AnimationGroup)
  - [1.2 Animation](#Animation)
  - [1.3 ScriptRegion](#ScriptRegion)
  - [1.4 Frame](#Frame)
  - [1.5 Button](#Button)
  - [1.6 Model](#Model)
  - [1.7 CinematicModel](#CinematicModel)
  - [1.8 DressUpModel](#DressUpModel)
  - [1.9 ModelScene](#ModelScene)
  - [1.10 ModelSceneActor](#ModelSceneActor)
  - [1.11 EditBox](#EditBox)
  - [1.12 GameTooltip](#GameTooltip)
  - [1.13 ColorSelect](#ColorSelect)
  - [1.14 Cooldown](#Cooldown)
  - [1.15 MovieFrame](#MovieFrame)
  - [1.16 ScrollFrame](#ScrollFrame)
  - [1.17 Slider](#Slider)
  - [1.18 StatusBar](#StatusBar)
  - [1.19 FogOfWarFrame](#FogOfWarFrame)
- [2 References](#References)

Widget script handlers allow you to respond to user interaction and other types of widget events (such as a frame being shown or hidden). This page lists the available scripts and the list of widget types for which each script is valid.

- [![Widget hierarchy](/images/thumb/Widget_Hierarchy.png/120px-Widget_Hierarchy.png?8745da)](https://warcraft.wiki.gg/wiki/File:Widget_Hierarchy.png "Widget hierarchy")

  Widget hierarchy

**Example**

Registers for mouse clicks on a [Button](https://warcraft.wiki.gg/wiki/UIOBJECT_Button "UIOBJECT Button") widget with the [OnClick](https://warcraft.wiki.gg/wiki/UIHANDLER_OnClick "UIHANDLER OnClick") script.

    local btn = CreateFrame("Button", nil, UIParent, "UIPanelButtonTemplate")
    btn:SetPoint("CENTER")
    btn:SetSize(100, 40)
    btn:SetText("Click me")
    btn:SetScript("OnClick", function(self, button, down)
        print("Pressed", button, down and "down" or "up")
    end)
    btn:RegisterForClicks("AnyDown", "AnyUp")
    -- Pressed LeftButton down
    -- Pressed LeftButton up

## Script Types

### [AnimationGroup](https://warcraft.wiki.gg/wiki/UIOBJECT_AnimationGroup "UIOBJECT AnimationGroup")

[OnFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnFinished "UIHANDLER OnFinished")(*self*, requested) - Invoked when the animation group finishes animating.

[OnLoop](https://warcraft.wiki.gg/wiki/UIHANDLER_OnLoop "UIHANDLER OnLoop")(*self*, loopState) - Invoked when the animation group's loop state changes.

[OnPause](https://warcraft.wiki.gg/wiki/UIHANDLER_OnPause?action=edit&redlink=1 "UIHANDLER OnPause (page does not exist)")(*self*) - Invoked when the animation group is paused.

[OnPlay](https://warcraft.wiki.gg/wiki/UIHANDLER_OnPlay?action=edit&redlink=1 "UIHANDLER OnPlay (page does not exist)")(*self*) - Invoked when the animation group begins to play.

[OnStop](https://warcraft.wiki.gg/wiki/UIHANDLER_OnStop?action=edit&redlink=1 "UIHANDLER OnStop (page does not exist)")(*self*, requested) - Invoked when the animation group is stopped.

[OnUpdate](https://warcraft.wiki.gg/wiki/UIHANDLER_OnUpdate "UIHANDLER OnUpdate")(*self*, elapsed) - Invoked on every frame.

[OnLoad](https://warcraft.wiki.gg/wiki/UIHANDLER_OnLoad "UIHANDLER OnLoad")(*self*) - Invoked when the object is created.

### [Animation](https://warcraft.wiki.gg/wiki/UIOBJECT_Animation "UIOBJECT Animation")

[OnFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnFinished "UIHANDLER OnFinished")(*self*, requested) - Invoked when the animation finishes animating.

[OnPause](https://warcraft.wiki.gg/wiki/UIHANDLER_OnPause?action=edit&redlink=1 "UIHANDLER OnPause (page does not exist)")(*self*) - Invoked when the animation is paused.

[OnPlay](https://warcraft.wiki.gg/wiki/UIHANDLER_OnPlay?action=edit&redlink=1 "UIHANDLER OnPlay (page does not exist)")(*self*) - Invoked when the animation begins to play.

[OnStop](https://warcraft.wiki.gg/wiki/UIHANDLER_OnStop?action=edit&redlink=1 "UIHANDLER OnStop (page does not exist)")(*self*, requested) - Invoked when the animation is stopped.

[OnUpdate](https://warcraft.wiki.gg/wiki/UIHANDLER_OnUpdate "UIHANDLER OnUpdate")(*self*, elapsed) - Invoked on every frame.

[OnLoad](https://warcraft.wiki.gg/wiki/UIHANDLER_OnLoad "UIHANDLER OnLoad")(*self*) - Invoked when the object is created.

### [ScriptRegion](https://warcraft.wiki.gg/wiki/UIOBJECT_ScriptRegion "UIOBJECT ScriptRegion")

[OnShow](https://warcraft.wiki.gg/wiki/UIHANDLER_OnShow "UIHANDLER OnShow")(*self*) - Invoked when the widget is shown.

[OnHide](https://warcraft.wiki.gg/wiki/UIHANDLER_OnHide "UIHANDLER OnHide")(*self*) - Invoked when the widget is hidden.

[OnEnter](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEnter "UIHANDLER OnEnter")(*self*, motion) - Invoked when the cursor enters the widget's interactive area.

[OnLeave](https://warcraft.wiki.gg/wiki/UIHANDLER_OnLeave "UIHANDLER OnLeave")(*self*, motion) - Invoked when the mouse cursor leaves the widget's interactive area.

[OnMouseDown](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMouseDown "UIHANDLER OnMouseDown")(*self*, button) - Invoked when a mouse button is pressed while the cursor is over the widget.

[OnMouseUp](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMouseUp "UIHANDLER OnMouseUp")(*self*, button, upInside) - Invoked when the mouse button is released following a mouse down action in the widget.

[OnMouseWheel](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMouseWheel "UIHANDLER OnMouseWheel")(*self*, delta) - Invoked when the widget receives a mouse wheel scrolling action.

[OnLoad](https://warcraft.wiki.gg/wiki/UIHANDLER_OnLoad "UIHANDLER OnLoad")(*self*) - Invoked when the widget is created.

### [Frame](https://warcraft.wiki.gg/wiki/UIOBJECT_Frame "UIOBJECT Frame")

[OnAttributeChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnAttributeChanged "UIHANDLER OnAttributeChanged")(*self*, key, value) - Invoked when a secure frame attribute is changed.

[OnChar](https://warcraft.wiki.gg/wiki/UIHANDLER_OnChar "UIHANDLER OnChar")(*self*, text) - Invoked for each text character typed in the frame.

[OnDisable](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDisable?action=edit&redlink=1 "UIHANDLER OnDisable (page does not exist)")(*self*) - Invoked when the frame is disabled.

[OnDragStart](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDragStart "UIHANDLER OnDragStart")(*self*, button) - Invoked when the mouse is dragged starting in the frame

[OnDragStop](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDragStop "UIHANDLER OnDragStop")(*self*) - Invoked when the mouse button is released after a drag started in the frame,

[OnEnable](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEnable?action=edit&redlink=1 "UIHANDLER OnEnable (page does not exist)")(*self*) - Invoked when the frame is enabled.

[OnEvent](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEvent "UIHANDLER OnEvent")(*self*, event, ...) - Invoked whenever an [event](https://warcraft.wiki.gg/wiki/Events "Events") fires for which the frame is registered.

[OnGamePadButtonDown](https://warcraft.wiki.gg/wiki/UIHANDLER_OnGamePadButtonDown "UIHANDLER OnGamePadButtonDown")(*self*, button) - Invoked when a gamepad button is pressed.

[OnGamePadButtonUp](https://warcraft.wiki.gg/wiki/UIHANDLER_OnGamePadButtonUp "UIHANDLER OnGamePadButtonUp")(*self*, button) - Invoked when a gamepad button is released.

[OnGamePadStick](https://warcraft.wiki.gg/wiki/UIHANDLER_OnGamePadStick "UIHANDLER OnGamePadStick")(*self*, stick, x, y, len) - Invoked when a gamepad stick is moved.

[OnHyperlinkClick](https://warcraft.wiki.gg/wiki/UIHANDLER_OnHyperlinkClick "UIHANDLER OnHyperlinkClick")(*self*, link, text, button, region, left, bottom, width, height) - Invoked when the mouse clicks a hyperlink on the FontInstance object.

[OnHyperlinkEnter](https://warcraft.wiki.gg/wiki/UIHANDLER_OnHyperlinkEnter "UIHANDLER OnHyperlinkEnter")(*self*, link, text, region, left, bottom, width, height) - Invoked when the mouse moves over a hyperlink on the FontInstance object.

[OnHyperlinkLeave](https://warcraft.wiki.gg/wiki/UIHANDLER_OnHyperlinkLeave "UIHANDLER OnHyperlinkLeave")(*self*) - Invoked when the mouse moves away from a hyperlink on the FontInstance object.

[OnKeyDown](https://warcraft.wiki.gg/wiki/UIHANDLER_OnKeyDown "UIHANDLER OnKeyDown")(*self*, key) - Invoked when a keyboard key is pressed if the frame is keyboard enabled.

[OnKeyUp](https://warcraft.wiki.gg/wiki/UIHANDLER_OnKeyUp "UIHANDLER OnKeyUp")(*self*, key) - Invoked when a keyboard key is released if the frame is keyboard enabled.

[OnReceiveDrag](https://warcraft.wiki.gg/wiki/UIHANDLER_OnReceiveDrag "UIHANDLER OnReceiveDrag")(*self*) - Invoked when the mouse button is released after dragging into the frame.

[OnSizeChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnSizeChanged "UIHANDLER OnSizeChanged")(*self*, width, height) - Invoked when a frame's size changes.

[OnUpdate](https://warcraft.wiki.gg/wiki/UIHANDLER_OnUpdate "UIHANDLER OnUpdate")(*self*, elapsed) - Invoked on every frame.

### [Button](https://warcraft.wiki.gg/wiki/UIOBJECT_Button "UIOBJECT Button")

[OnClick](https://warcraft.wiki.gg/wiki/UIHANDLER_OnClick "UIHANDLER OnClick")(*self*, self, button, down) - Invoked when clicking a button.

[OnDoubleClick](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDoubleClick "UIHANDLER OnDoubleClick")(*self*, self, button) - Invoked when double-clicking a button.

[PostClick](https://warcraft.wiki.gg/wiki/UIHANDLER_PostClick "UIHANDLER PostClick")(*self*, button, down) - Invoked immediately after \`OnClick\`.

[PreClick](https://warcraft.wiki.gg/wiki/UIHANDLER_PreClick "UIHANDLER PreClick")(*self*, button, down) - Invoked immediately before \`OnClick\`.

### [Model](https://warcraft.wiki.gg/wiki/UIOBJECT_Model "UIOBJECT Model")

[OnAnimFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnAnimFinished?action=edit&redlink=1 "UIHANDLER OnAnimFinished (page does not exist)")(*self*) - Invoked when the model's animation finishes.

[OnAnimStarted](https://warcraft.wiki.gg/wiki/UIHANDLER_OnAnimStarted?action=edit&redlink=1 "UIHANDLER OnAnimStarted (page does not exist)")(*self*) - Invoked when the model's animation starts.

[OnModelLoaded](https://warcraft.wiki.gg/wiki/UIHANDLER_OnModelLoaded?action=edit&redlink=1 "UIHANDLER OnModelLoaded (page does not exist)")(*self*) - Invoked when the model is loaded.

### [CinematicModel](https://warcraft.wiki.gg/wiki/UIOBJECT_CinematicModel "UIOBJECT CinematicModel")

[OnPanFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnPanFinished?action=edit&redlink=1 "UIHANDLER OnPanFinished (page does not exist)")(*self*) - Invoked when the camera has finished panning.

### [DressUpModel](https://warcraft.wiki.gg/wiki/UIOBJECT_DressUpModel "UIOBJECT DressUpModel")

[OnDressModel](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDressModel "UIHANDLER OnDressModel")(*self*, itemModifiedAppearanceID, invSlot, removed) - Invoked when the dressup model is updated.

### [ModelScene](https://warcraft.wiki.gg/wiki/UIOBJECT_ModelScene "UIOBJECT ModelScene")

[OnDressModel](https://warcraft.wiki.gg/wiki/UIHANDLER_OnDressModel "UIHANDLER OnDressModel")(*self*, itemModifiedAppearanceID, invSlot, removed) - Invoked when the modelscene model is updated.

### [ModelSceneActor](https://warcraft.wiki.gg/wiki/UIOBJECT_ModelSceneActor "UIOBJECT ModelSceneActor")

Scripts for this widget can only be set from XML.

[OnAnimFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnAnimFinished?action=edit&redlink=1 "UIHANDLER OnAnimFinished (page does not exist)")(*self*)

[OnModelCleared](https://warcraft.wiki.gg/wiki/UIHANDLER_OnModelCleared?action=edit&redlink=1 "UIHANDLER OnModelCleared (page does not exist)")(*self*)

[OnModelLoaded](https://warcraft.wiki.gg/wiki/UIHANDLER_OnModelLoaded?action=edit&redlink=1 "UIHANDLER OnModelLoaded (page does not exist)")(*self*)

[OnModelLoading](https://warcraft.wiki.gg/wiki/UIHANDLER_OnModelLoading?action=edit&redlink=1 "UIHANDLER OnModelLoading (page does not exist)")(*self*)

### [EditBox](https://warcraft.wiki.gg/wiki/UIOBJECT_EditBox "UIOBJECT EditBox")

[OnArrowPressed](https://warcraft.wiki.gg/wiki/UIHANDLER_OnArrowPressed?action=edit&redlink=1 "UIHANDLER OnArrowPressed (page does not exist)")(*self*, key)

[OnCharComposition](https://warcraft.wiki.gg/wiki/UIHANDLER_OnCharComposition "UIHANDLER OnCharComposition")(*self*, text) - Invoked for each text character typed in the frame while using an input method editor (IME).

[OnCursorChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnCursorChanged "UIHANDLER OnCursorChanged")(*self*, x, y, w, h) - Invoked when moving the text insertion cursor.

[OnEditFocusGained](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEditFocusGained "UIHANDLER OnEditFocusGained")(*self*) - Invoked when gaining edit focus.

[OnEditFocusLost](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEditFocusLost "UIHANDLER OnEditFocusLost")(*self*) - Invoked when losing edit focus.

[OnEnterPressed](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEnterPressed "UIHANDLER OnEnterPressed")(*self*) - Invoked when pressing Enter while the widget has focus.

[OnEscapePressed](https://warcraft.wiki.gg/wiki/UIHANDLER_OnEscapePressed "UIHANDLER OnEscapePressed")(*self*) - Invoked when pressing Escape while the widget has focus.

[OnSpacePressed](https://warcraft.wiki.gg/wiki/UIHANDLER_OnSpacePressed "UIHANDLER OnSpacePressed")(*self*) - Invoked when pressing Space while the widget has focus.

[OnInputLanguageChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnInputLanguageChanged?action=edit&redlink=1 "UIHANDLER OnInputLanguageChanged (page does not exist)")(*self*, language) - Invoked when changing the language input mode.

[OnTabPressed](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTabPressed "UIHANDLER OnTabPressed")(*self*) - Invoked when pressing Tab while the widget has focus.

[OnTextChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTextChanged "UIHANDLER OnTextChanged")(*self*, userInput) - Invoked when changing the value.

[OnTextSet](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTextSet "UIHANDLER OnTextSet")(*self*) - Invoked when setting the value programmatically.

### GameTooltip

[OnTooltipCleared](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipCleared?action=edit&redlink=1 "UIHANDLER OnTooltipCleared (page does not exist)")(self) - Run when the tooltip is hidden or its content is cleared.

[OnTooltipSetDefaultAnchor](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetDefaultAnchor?action=edit&redlink=1 "UIHANDLER OnTooltipSetDefaultAnchor (page does not exist)")(self) - Run when the tooltip is repositioned to its default anchor location.

[OnTooltipSetFramestack](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetFramestack?action=edit&redlink=1 "UIHANDLER OnTooltipSetFramestack (page does not exist)")(self, highlightFrame) - Run when the tooltip is filled with a list of frames under the mouse cursor.

[![World of Warcraft](/images/WoW_Icon_update.png?d4be1e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft") The following tooltip script handlers only exist on Classic.

[OnTooltipAddMoney](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipAddMoney "UIHANDLER OnTooltipAddMoney")(self, cost, maxcost) - Run when an amount of money should be added to the tooltip.

[OnTooltipSetAchievement](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetAchievement?action=edit&redlink=1 "UIHANDLER OnTooltipSetAchievement (page does not exist)")(self) - Run when the tooltip is filled with information about an achievement.

[OnTooltipSetEquipmentSet](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetEquipmentSet?action=edit&redlink=1 "UIHANDLER OnTooltipSetEquipmentSet (page does not exist)")(self) - Run when the tooltip is filled with information about an equipment set.

[OnTooltipSetItem](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetItem "UIHANDLER OnTooltipSetItem")(self) - Run when the tooltip is filled with information about an item.

[OnTooltipSetQuest](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetQuest?action=edit&redlink=1 "UIHANDLER OnTooltipSetQuest (page does not exist)")(self) - Run when the tooltip is filled with information about a quest.

[OnTooltipSetSpell](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetSpell?action=edit&redlink=1 "UIHANDLER OnTooltipSetSpell (page does not exist)")(self) - Run when the tooltip is filled with information about a spell.

[OnTooltipSetUnit](https://warcraft.wiki.gg/wiki/UIHANDLER_OnTooltipSetUnit?action=edit&redlink=1 "UIHANDLER OnTooltipSetUnit (page does not exist)")(self) - Run when the tooltip is filled with information about a unit.

### [ColorSelect](https://warcraft.wiki.gg/wiki/UIOBJECT_ColorSelect "UIOBJECT ColorSelect")

[OnColorSelect](https://warcraft.wiki.gg/wiki/UIHANDLER_OnColorSelect?action=edit&redlink=1 "UIHANDLER OnColorSelect (page does not exist)")(*self*, r, g, b) - Invoked when the ColorSelect frame's color selection changes.

### [Cooldown](https://warcraft.wiki.gg/wiki/UIOBJECT_Cooldown "UIOBJECT Cooldown")

[OnCooldownDone](https://warcraft.wiki.gg/wiki/UIHANDLER_OnCooldownDone?action=edit&redlink=1 "UIHANDLER OnCooldownDone (page does not exist)")(*self*) - Invoked when the cooldown has finished.

### [MovieFrame](https://warcraft.wiki.gg/wiki/UIOBJECT_MovieFrame "UIOBJECT MovieFrame")

[OnMovieFinished](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMovieFinished?action=edit&redlink=1 "UIHANDLER OnMovieFinished (page does not exist)")(*self*) - Invoked when a movie frame's movie ends.

### [ScrollFrame](https://warcraft.wiki.gg/wiki/UIOBJECT_ScrollFrame "UIOBJECT ScrollFrame")

[OnHorizontalScroll](https://warcraft.wiki.gg/wiki/UIHANDLER_OnHorizontalScroll?action=edit&redlink=1 "UIHANDLER OnHorizontalScroll (page does not exist)")(*self*, offset) - Invoked when the horizontal scroll position changes.

[OnScrollRangeChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnScrollRangeChanged?action=edit&redlink=1 "UIHANDLER OnScrollRangeChanged (page does not exist)")(*self*, xrange, yrange) - Invoked when the scroll position changes.

[OnVerticalScroll](https://warcraft.wiki.gg/wiki/UIHANDLER_OnVerticalScroll?action=edit&redlink=1 "UIHANDLER OnVerticalScroll (page does not exist)")(*self*, offset) - Invoked when the vertical scroll position changes.

### [Slider](https://warcraft.wiki.gg/wiki/UIOBJECT_Slider "UIOBJECT Slider")

[OnMinMaxChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMinMaxChanged?action=edit&redlink=1 "UIHANDLER OnMinMaxChanged (page does not exist)")(*self*, min, max) - Invoked when the slider's minimum and maximum values change.

[OnValueChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnValueChanged "UIHANDLER OnValueChanged")(*self*, value, userInput) - Invoked when the slider's value changes.

### [StatusBar](https://warcraft.wiki.gg/wiki/UIOBJECT_StatusBar "UIOBJECT StatusBar")

[OnMinMaxChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnMinMaxChanged?action=edit&redlink=1 "UIHANDLER OnMinMaxChanged (page does not exist)")(*self*, min, max) - Invoked when the status bar's minimum and maximum values change.

[OnValueChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnValueChanged "UIHANDLER OnValueChanged")(*self*, value) - Invoked when the status bar's value changes.

### FogOfWarFrame

[OnUiMapChanged](https://warcraft.wiki.gg/wiki/UIHANDLER_OnUiMapChanged?action=edit&redlink=1 "UIHANDLER OnUiMapChanged (page does not exist)")(self, uiMapID)

## References

- James Whitehead II 2010-02-05. [World of Warcraft Programming: A Guide and Reference for Creating WoW Addons - 2nd Edition](https://books.google.com/books/about/World_of_Warcraft_Programming.html?id=tOSDV71ND_0C).
- wowprogramming 2017-09-03. [Widget script handlers listing](https://web.archive.org/web/20170903092106/http://wowprogramming.com/docs/scripts).
- Townlong Yak 2017-06-27. [WidgetAPI.lua](https://www.townlong-yak.com/framexml/7.2.5/Helix/WidgetAPI.lua).
- Resike 2019-05-21. [WidgetReference.lua](https://github.com/Resike/BlizzardInterfaceResources/blob/master/Resources/WidgetReference.lua).
