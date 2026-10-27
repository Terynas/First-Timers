# Widget API

> Source: <https://warcraft.wiki.gg/wiki/Widget_API> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

## Contents

- [1 Base](#Base)
  - [1.1 *FrameScriptObject*](#FrameScriptObject)
  - [1.2 *Object*](#Object)
  - [1.3 *ScriptRegion*](#ScriptRegion)
  - [1.4 *ScriptRegionResizing*](#ScriptRegionResizing)
  - [1.5 *AnimatableObject*](#AnimatableObject)
  - [1.6 *Region*](#Region)
- [2 Textures](#Textures)
  - [2.1 *TextureBase*](#TextureBase)
  - [2.2 Texture](#Texture)
  - [2.3 MaskTexture](#MaskTexture)
  - [2.4 Line](#Line)
  - [2.5 VectorGraphics](#VectorGraphics)
- [3 Fonts](#Fonts)
  - [3.1 *FontInstance*](#FontInstance)
  - [3.2 Font](#Font)
  - [3.3 FontString](#FontString)
- [4 Animations](#Animations)
  - [4.1 AnimationGroup](#AnimationGroup)
  - [4.2 Animation](#Animation)
  - [4.3 Alpha](#Alpha)
  - [4.4 FlipBook](#FlipBook)
  - [4.5 Path](#Path)
  - [4.6 ControlPoint](#ControlPoint)
  - [4.7 RadialProgress](#RadialProgress)
  - [4.8 Rotation](#Rotation)
  - [4.9 Scale](#Scale)
  - [4.10 TextureCoordTranslation](#TextureCoordTranslation)
  - [4.11 Translation](#Translation)
  - [4.12 VertexColor](#VertexColor)
- [5 Frames](#Frames)
  - [5.1 Frame](#Frame)
  - [5.2 Button](#Button)
  - [5.3 CheckButton](#CheckButton)
  - [5.4 Model](#Model)
  - [5.5 PlayerModel](#PlayerModel)
  - [5.6 CinematicModel](#CinematicModel)
  - [5.7 DressUpModel](#DressUpModel)
  - [5.8 TabardModel](#TabardModel)
  - [5.9 ModelScene](#ModelScene)
  - [5.10 ModelSceneActor](#ModelSceneActor)
  - [5.11 EditBox](#EditBox)
  - [5.12 MessageFrame](#MessageFrame)
  - [5.13 SimpleHTML](#SimpleHTML)
  - [5.14 GameTooltip](#GameTooltip)
  - [5.15 ColorSelect](#ColorSelect)
  - [5.16 Cooldown](#Cooldown)
  - [5.17 Minimap](#Minimap)
  - [5.18 MovieFrame](#MovieFrame)
  - [5.19 NamePlate](#NamePlate)
  - [5.20 ScrollFrame](#ScrollFrame)
  - [5.21 Slider](#Slider)
  - [5.22 StatusBar](#StatusBar)
  - [5.23 FogOfWarFrame](#FogOfWarFrame)
  - [5.24 UnitPositionFrame](#UnitPositionFrame)
  - [5.25 HousingFixturePointFrame](#HousingFixturePointFrame)
  - [5.26 HousingLayoutPinFrame](#HousingLayoutPinFrame)
  - [5.27 *Blob*](#Blob)
  - [5.28 ArchaeologyDigSiteFrame](#ArchaeologyDigSiteFrame)
  - [5.29 QuestPOIFrame](#QuestPOIFrame)
  - [5.30 ScenarioPOIFrame](#ScenarioPOIFrame)
- [6 Intrinsics](#Intrinsics)
  - [6.1 AuraButton](#AuraButton)
  - [6.2 AuraContainer](#AuraContainer)
  - [6.3 ContainedAlertFrame](#ContainedAlertFrame)
  - [6.4 DropdownButton](#DropdownButton)
  - [6.5 DropDownToggleButton](#DropDownToggleButton)
  - [6.6 EventButton](#EventButton)
  - [6.7 EventEditBox](#EventEditBox)
  - [6.8 EventFrame](#EventFrame)
  - [6.9 EventScrollFrame](#EventScrollFrame)
  - [6.10 ItemButton](#ItemButton)
  - [6.11 ScrollingMessageFrame](#ScrollingMessageFrame)
  - [6.12 UIThemeContainerFrame](#UIThemeContainerFrame)

Widgets are [graphical widgets](https://en.wikipedia.org/wiki/Graphical_widget "wikipedia:Graphical widget") created in Lua with [CreateFrame](https://warcraft.wiki.gg/wiki/API:CreateFrame "API:CreateFrame")() or via [XML](https://warcraft.wiki.gg/wiki/XML_schema "XML schema"). Widget objects can be extended with templates, mixins and [intrinsics](https://warcraft.wiki.gg/wiki/Intrinsic_frame "Intrinsic frame"). The user interface may be inspected with [`/fstack`](https://warcraft.wiki.gg/wiki/MACRO_framestack "MACRO framestack"), [`/tinspect`](https://warcraft.wiki.gg/wiki/MACRO_tableinspect "MACRO tableinspect") and development addons like [DevTool](https://www.curseforge.com/wow/addons/devtool).

- [![Widget hierarchy](/images/thumb/Widget_Hierarchy.png/120px-Widget_Hierarchy.png?8745da)](https://warcraft.wiki.gg/wiki/File:Widget_Hierarchy.png "Widget hierarchy")

  Widget hierarchy

- [![/fstack and /tinspect](/images/thumb/API_framestack_02.png/120px-API_framestack_02.png?dc97e1)](https://warcraft.wiki.gg/wiki/File:API_framestack_02.png "/fstack and /tinspect")

  /fstack and /tinspect

[![Note](/images/Icon-information-22x22.png?81245f)](https://warcraft.wiki.gg/wiki/File:Icon-information-22x22.png "Note")

**Note:** This page is up to date as of PTR [Patch 12.1.5](https://warcraft.wiki.gg/wiki/Patch_12.1.5/API_changes "Patch 12.1.5/API changes") (69594) Aug 28 2026

## Base

Widget objects inherit their methods as shown in the above widget hierarchy diagram.

### *[FrameScriptObject](https://warcraft.wiki.gg/wiki/UIOBJECT_FrameScriptObject "UIOBJECT FrameScriptObject")*

[FrameScriptObject:AddAccessRestrictions](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_AddAccessRestrictions "API:FrameScriptObject AddAccessRestrictions")(restrictions)

[FrameScriptObject:AddForbiddenAspects](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_AddForbiddenAspects "API:FrameScriptObject AddForbiddenAspects")(aspects)

[FrameScriptObject:AddSecretAspect](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_AddSecretAspect "API:FrameScriptObject AddSecretAspect")(aspect)

[FrameScriptObject:CanBeAccessedInContext](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_CanBeAccessedInContext "API:FrameScriptObject CanBeAccessedInContext")() : canAccess

[FrameScriptObject:GetAccessRestrictions](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetAccessRestrictions "API:FrameScriptObject GetAccessRestrictions")() : restrictions

[FrameScriptObject:GetForbiddenAspects](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetForbiddenAspects "API:FrameScriptObject GetForbiddenAspects")() : aspects

[FrameScriptObject:GetInheritableForbiddenAspects](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetInheritableForbiddenAspects "API:FrameScriptObject GetInheritableForbiddenAspects")(path) : aspects

[FrameScriptObject:GetName](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetName "API:FrameScriptObject GetName")() : name - Returns the object's global name.

[FrameScriptObject:GetObjectTable](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetObjectTable "API:FrameScriptObject GetObjectTable")() : objectTable

[FrameScriptObject:GetObjectType](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_GetObjectType "API:FrameScriptObject GetObjectType")() : objectType - Returns the object's widget type.

[FrameScriptObject:HasAccessConstraints](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasAccessConstraints "API:FrameScriptObject HasAccessConstraints")() : hasAccessConstraints

[FrameScriptObject:HasAnyAccessRestrictions](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasAnyAccessRestrictions "API:FrameScriptObject HasAnyAccessRestrictions")(\[restrictions\]) : hasAnyAccessRestriction

[FrameScriptObject:HasAnyForbiddenAspects](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasAnyForbiddenAspects "API:FrameScriptObject HasAnyForbiddenAspects")(\[aspects\]) : hasAnyForbiddenAspect

[FrameScriptObject:HasAnySecretAspect](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasAnySecretAspect "API:FrameScriptObject HasAnySecretAspect")() : hasSecretAspect

[FrameScriptObject:HasSecretAspect](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasSecretAspect "API:FrameScriptObject HasSecretAspect")(aspect) : hasSecretAspect

[FrameScriptObject:HasSecretValues](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_HasSecretValues "API:FrameScriptObject HasSecretValues")() : hasSecretValues

[FrameScriptObject:IsForbidden](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_IsForbidden "API:FrameScriptObject IsForbidden")() : isForbidden - Returns whether this object has been explicitly marked as forbidden.

[FrameScriptObject:IsObjectType](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_IsObjectType "API:FrameScriptObject IsObjectType")(objectType) : isType - Returns true if the object belongs to a given widget type or its subtypes.

[FrameScriptObject:IsPreventingSecretValues](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_IsPreventingSecretValues "API:FrameScriptObject IsPreventingSecretValues")() : isPreventingSecretValues

[FrameScriptObject:SetForbidden](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_SetForbidden "API:FrameScriptObject SetForbidden")() `#protected` - Sets the object to be forbidden from an insecure execution path.

[FrameScriptObject:SetToDefaults](https://warcraft.wiki.gg/wiki/API:FrameScriptObject_SetToDefaults "API:FrameScriptObject SetToDefaults")()

### *[Object](https://warcraft.wiki.gg/wiki/UIOBJECT_Object "UIOBJECT Object")*

[Object:ClearParentKey](https://warcraft.wiki.gg/wiki/API:Object_ClearParentKey "API:Object ClearParentKey")() - Clears the parent key.

[Object:GetDebugName](https://warcraft.wiki.gg/wiki/API:Object_GetDebugName "API:Object GetDebugName")(\[preferParentKey\]) : debugName - Returns the object's debug name.

[Object:GetParent](https://warcraft.wiki.gg/wiki/API:Object_GetParent "API:Object GetParent")() : parent - Returns the parent object.

[Object:GetParentKey](https://warcraft.wiki.gg/wiki/API:Object_GetParentKey "API:Object GetParentKey")() : parentKey - Returns the key on the parent that references this object.

[Object:SetParentKey](https://warcraft.wiki.gg/wiki/API:Object_SetParentKey "API:Object SetParentKey")(parentKey \[, clearOtherKeys\]) - Sets a key on the parent to the child object.

### *[ScriptRegion](https://warcraft.wiki.gg/wiki/UIOBJECT_ScriptRegion "UIOBJECT ScriptRegion")*

[ScriptRegion:CanChangeProtectedState](https://warcraft.wiki.gg/wiki/API:ScriptRegion_CanChangeProtectedState "API:ScriptRegion CanChangeProtectedState")() : canChange - Returns true if protected properties of the region can be changed by non-secure scripts.

[ScriptRegion:CanPropagateMouseClicks](https://warcraft.wiki.gg/wiki/API:ScriptRegion_CanPropagateMouseClicks "API:ScriptRegion CanPropagateMouseClicks")() : canPropagate

[ScriptRegion:CanPropagateMouseMotion](https://warcraft.wiki.gg/wiki/API:ScriptRegion_CanPropagateMouseMotion "API:ScriptRegion CanPropagateMouseMotion")() : canPropagate

[ScriptRegion:ClearScripts](https://warcraft.wiki.gg/wiki/API:ScriptRegion_ClearScripts "API:ScriptRegion ClearScripts")()

[ScriptRegion:CollapsesLayout](https://warcraft.wiki.gg/wiki/API:ScriptRegion_CollapsesLayout "API:ScriptRegion CollapsesLayout")() : collapsesLayout

[ScriptRegion:EnableMouse](https://warcraft.wiki.gg/wiki/API:ScriptRegion_EnableMouse "API:ScriptRegion EnableMouse")(\[enable\]) `#secureframe` - Sets whether the region should receive mouse input.

[ScriptRegion:EnableMouseMotion](https://warcraft.wiki.gg/wiki/API:ScriptRegion_EnableMouseMotion "API:ScriptRegion EnableMouseMotion")(\[enable\]) `#secureframe` - Sets whether the region should receive mouse hover events.

[ScriptRegion:EnableMouseWheel](https://warcraft.wiki.gg/wiki/API:ScriptRegion_EnableMouseWheel "API:ScriptRegion EnableMouseWheel")(\[enable\]) `#secureframe` - Sets whether the region should receive mouse wheel input.

[ScriptRegion:GetBottom](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetBottom "API:ScriptRegion GetBottom")() : bottom `#restrictedframe` - Returns the offset to the bottom edge of the region.

[ScriptRegion:GetCenter](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetCenter "API:ScriptRegion GetCenter")() : x, y `#restrictedframe` - Returns the offset to the center of the region.

[ScriptRegion:GetHeight](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetHeight "API:ScriptRegion GetHeight")(\[ignoreRect\]) : height - Returns the height of the region.

[ScriptRegion:GetLeft](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetLeft "API:ScriptRegion GetLeft")() : left `#restrictedframe` - Returns the offset to the left edge of the region.

[ScriptRegion:GetRect](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetRect "API:ScriptRegion GetRect")() : left, bottom, width, height `#restrictedframe` - Returns the coords and size of the region.

[ScriptRegion:GetRight](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetRight "API:ScriptRegion GetRight")() : right `#restrictedframe` - Returns the offset to the right edge of the region.

[ScriptRegion:GetRoundLayoutToNearestPixel](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetRoundLayoutToNearestPixel "API:ScriptRegion GetRoundLayoutToNearestPixel")() : enabled

[ScriptRegion:GetScaledRect](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetScaledRect "API:ScriptRegion GetScaledRect")() : left, bottom, width, height - Returns the scaled coords and size of the region.

[ScriptRegion:GetScript](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetScript "API:ScriptRegion GetScript")(scriptTypeName \[, bindingType\]) : script - Returns the widget script handler.

[ScriptRegion:GetSize](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetSize "API:ScriptRegion GetSize")(\[ignoreRect\]) : Functionidth, height - Returns the width and height of the region.

[ScriptRegion:GetSourceLocation](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetSourceLocation "API:ScriptRegion GetSourceLocation")() : location - Returns the script name and line number where the region was created.

[ScriptRegion:GetTop](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetTop "API:ScriptRegion GetTop")() : top `#restrictedframe` - Returns the offset to the top edge of the region.

[ScriptRegion:GetWidth](https://warcraft.wiki.gg/wiki/API:ScriptRegion_GetWidth "API:ScriptRegion GetWidth")(\[ignoreRect\]) : Functionidth - Returns the width of the region.

[ScriptRegion:HasScript](https://warcraft.wiki.gg/wiki/API:ScriptRegion_HasScript "API:ScriptRegion HasScript")(scriptName) : hasScript - Returns true if the region supports the given script type.

[ScriptRegion:Hide](https://warcraft.wiki.gg/wiki/API:ScriptRegion_Hide "API:ScriptRegion Hide")() `#secureframe` - Hides the region.

[ScriptRegion:HookScript](https://warcraft.wiki.gg/wiki/API:ScriptRegion_HookScript "API:ScriptRegion HookScript")(scriptTypeName, script \[, bindingType\]) : success - Securely post-hooks a widget script handler.

[ScriptRegion:Intersects](https://warcraft.wiki.gg/wiki/API:ScriptRegion_Intersects "API:ScriptRegion Intersects")(region) : intersects

[ScriptRegion:IsAnchoringRestricted](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsAnchoringRestricted "API:ScriptRegion IsAnchoringRestricted")() : isRestricted - Returns true if the region has cross-region anchoring restrictions applied.

[ScriptRegion:IsAnchoringSecret](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsAnchoringSecret "API:ScriptRegion IsAnchoringSecret")() : isSecret

[ScriptRegion:IsCollapsed](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsCollapsed "API:ScriptRegion IsCollapsed")() : isCollapsed

[ScriptRegion:IsDragging](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsDragging "API:ScriptRegion IsDragging")() : isDragging - Returns true if the region is being dragged.

[ScriptRegion:IsMouseClickEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseClickEnabled "API:ScriptRegion IsMouseClickEnabled")() : enabled - Returns true if the region can receive mouse clicks.

[ScriptRegion:IsMouseEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseEnabled "API:ScriptRegion IsMouseEnabled")() : enabled - Returns true if the region can receive mouse input.

[ScriptRegion:IsMouseMotionEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseMotionEnabled "API:ScriptRegion IsMouseMotionEnabled")() : enabled - Returns true if the region can receive mouse hover events.

[ScriptRegion:IsMouseMotionFocus](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseMotionFocus "API:ScriptRegion IsMouseMotionFocus")() : isMouseMotionFocus - Returns true if the mouse cursor is hovering over the region.

[ScriptRegion:IsMouseOver](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseOver "API:ScriptRegion IsMouseOver")(\[offsetTop \[, offsetBottom \[, offsetLeft \[, offsetRight\]\]\]\]) : isMouseOver - Returns true if the mouse cursor is hovering over the region.

[ScriptRegion:IsMouseWheelEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsMouseWheelEnabled "API:ScriptRegion IsMouseWheelEnabled")() : enabled - Returns true if the region can receive mouse wheel input.

[ScriptRegion:IsProtected](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsProtected "API:ScriptRegion IsProtected")() : isProtected, isProtectedExplicitly - Returns whether the region is currently protected.

[ScriptRegion:IsRectValid](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsRectValid "API:ScriptRegion IsRectValid")() : isValid - Returns true if the region can be positioned on the screen.

[ScriptRegion:IsShown](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsShown "API:ScriptRegion IsShown")() : isShown - Returns true if the region should be shown; it depends on the parents if it's visible.

[ScriptRegion:IsVisible](https://warcraft.wiki.gg/wiki/API:ScriptRegion_IsVisible "API:ScriptRegion IsVisible")() : isVisible - Returns true if the region and its parents are shown.

[ScriptRegion:SetCollapsesLayout](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetCollapsesLayout "API:ScriptRegion SetCollapsesLayout")(collapsesLayout) `#secureframe`

[ScriptRegion:SetMouseClickEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetMouseClickEnabled "API:ScriptRegion SetMouseClickEnabled")(\[enabled\]) `#secureframe` - Sets whether the region should receive mouse clicks.

[ScriptRegion:SetMouseMotionEnabled](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetMouseMotionEnabled "API:ScriptRegion SetMouseMotionEnabled")(\[enabled\]) `#secureframe` - Sets whether the region should receive mouse hover events.

[ScriptRegion:SetParent](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetParent "API:ScriptRegion SetParent")(\[parent\]) `#secureframe` - Sets the parent of the region.

[ScriptRegion:SetPassThroughButtons](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetPassThroughButtons "API:ScriptRegion SetPassThroughButtons")(...buttons) `#nocombat` - Allows the region to propagate mouse clicks to underlying regions or the world frame.

[ScriptRegion:SetPropagateMouseClicks](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetPropagateMouseClicks "API:ScriptRegion SetPropagateMouseClicks")(propagate) `#nocombat`

[ScriptRegion:SetPropagateMouseMotion](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetPropagateMouseMotion "API:ScriptRegion SetPropagateMouseMotion")(propagate) `#nocombat`

[ScriptRegion:SetRoundLayoutToNearestPixel](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetRoundLayoutToNearestPixel "API:ScriptRegion SetRoundLayoutToNearestPixel")(enabled)

[ScriptRegion:SetScript](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetScript "API:ScriptRegion SetScript")(scriptTypeName \[, script\]) - Sets the widget script handler.

[ScriptRegion:SetShown](https://warcraft.wiki.gg/wiki/API:ScriptRegion_SetShown "API:ScriptRegion SetShown")(\[show\]) `#secureframe` - Shows or hides the region.

[ScriptRegion:ShouldButtonPassThrough](https://warcraft.wiki.gg/wiki/API:ScriptRegion_ShouldButtonPassThrough "API:ScriptRegion ShouldButtonPassThrough")(button) : shouldPassThrough

[ScriptRegion:Show](https://warcraft.wiki.gg/wiki/API:ScriptRegion_Show "API:ScriptRegion Show")() `#secureframe` - Shows the region.

### *[ScriptRegionResizing](https://warcraft.wiki.gg/wiki/UIOBJECT_ScriptRegionResizing "UIOBJECT ScriptRegionResizing")*

[ScriptRegionResizing:AdjustPointsOffset](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_AdjustPointsOffset "API:ScriptRegionResizing AdjustPointsOffset")(x, y) `#secureframe` - Adjusts the x and y offset of the region.

[ScriptRegionResizing:ClearAllPoints](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_ClearAllPoints "API:ScriptRegionResizing ClearAllPoints")() `#secureframe` - Removes all anchor points from the region.

[ScriptRegionResizing:ClearPoint](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_ClearPoint "API:ScriptRegionResizing ClearPoint")(point) `#secureframe` - Removes an anchor point from the region by name.

[ScriptRegionResizing:ClearPointsOffset](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_ClearPointsOffset "API:ScriptRegionResizing ClearPointsOffset")() `#secureframe` - Resets the x and y offset on the region to zero.

[ScriptRegionResizing:GetNumPoints](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_GetNumPoints "API:ScriptRegionResizing GetNumPoints")() : numPoints - Returns the number of anchor points for the region.

[ScriptRegionResizing:GetPoint](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_GetPoint "API:ScriptRegionResizing GetPoint")(\[anchorIndex \[, resolveCollapsed\]\]) : point, relativeTo, relativePoint, offsetX, offsetY `#restrictedframe` - Returns an anchor point for the region.

[ScriptRegionResizing:GetPointByName](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_GetPointByName "API:ScriptRegionResizing GetPointByName")(point \[, resolveCollapsed\]) : point, relativeTo, relativePoint, offsetX, offsetY - Returns an anchor point by name for the region.

[ScriptRegionResizing:SetAllPoints](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetAllPoints "API:ScriptRegionResizing SetAllPoints")(relativeTo \[, doResize\]) `#secureframe` - Positions the region the same as another region.

[ScriptRegionResizing:SetHeight](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetHeight "API:ScriptRegionResizing SetHeight")(height) `#secureframe` - Sets the height of the region.

[ScriptRegionResizing:SetPoint](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetPoint "API:ScriptRegionResizing SetPoint")(point \[, relativeTo \[, relativePoint\]\] \[, offsetX, offsetY\]) `#anchorfamily` `#secureframe` - Sets an anchor point for the region.

[ScriptRegionResizing:SetPointsOffset](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetPointsOffset "API:ScriptRegionResizing SetPointsOffset")(x, y)

[ScriptRegionResizing:SetSize](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetSize "API:ScriptRegionResizing SetSize")(x, y) `#secureframe` - Sets the width and height of the region.

[ScriptRegionResizing:SetWidth](https://warcraft.wiki.gg/wiki/API:ScriptRegionResizing_SetWidth "API:ScriptRegionResizing SetWidth")(width) `#secureframe` - Sets the width of the region.

### *[AnimatableObject](https://warcraft.wiki.gg/wiki/UIOBJECT_AnimatableObject "UIOBJECT AnimatableObject")*

[AnimatableObject:CreateAnimationGroup](https://warcraft.wiki.gg/wiki/API:AnimatableObject_CreateAnimationGroup "API:AnimatableObject CreateAnimationGroup")(\[name \[, templateName\]\]) : group - Creates an animation group.

[AnimatableObject:GetAnimationGroups](https://warcraft.wiki.gg/wiki/API:AnimatableObject_GetAnimationGroups "API:AnimatableObject GetAnimationGroups")() : ...groups - Returns the animation groups of this region.

[AnimatableObject:StopAnimating](https://warcraft.wiki.gg/wiki/API:AnimatableObject_StopAnimating "API:AnimatableObject StopAnimating")() - Stops any active animations on this region.

### *[Region](https://warcraft.wiki.gg/wiki/UIOBJECT_Region "UIOBJECT Region")*

[Region:GetAlpha](https://warcraft.wiki.gg/wiki/API:Region_GetAlpha "API:Region GetAlpha")() : alpha - Returns the region's opacity.

[Region:GetDrawLayer](https://warcraft.wiki.gg/wiki/API:Region_GetDrawLayer "API:Region GetDrawLayer")() : layer, sublayer - Returns the layer in which the region is drawn.

[Region:GetEffectiveScale](https://warcraft.wiki.gg/wiki/API:Region_GetEffectiveScale "API:Region GetEffectiveScale")() : effectiveScale - Returns the scale of the region after propagating from its parents.

[Region:GetScale](https://warcraft.wiki.gg/wiki/API:Region_GetScale "API:Region GetScale")() : scale - Returns the scale of the region.

[Region:GetVertexColor](https://warcraft.wiki.gg/wiki/API:Region_GetVertexColor "API:Region GetVertexColor")() : colorR, colorG, colorB, colorA - Returns the vertex color shading of the region.

[Region:IsIgnoringParentAlpha](https://warcraft.wiki.gg/wiki/API:Region_IsIgnoringParentAlpha "API:Region IsIgnoringParentAlpha")() : isIgnoring - Returns true if the region is ignoring parent alpha.

[Region:IsIgnoringParentScale](https://warcraft.wiki.gg/wiki/API:Region_IsIgnoringParentScale "API:Region IsIgnoringParentScale")() : isIgnoring - Returns true if the region is ignoring parent scale.

[Region:IsObjectLoaded](https://warcraft.wiki.gg/wiki/API:Region_IsObjectLoaded "API:Region IsObjectLoaded")() : isLoaded - Returns true if the region is fully loaded.

[Region:SetAlpha](https://warcraft.wiki.gg/wiki/API:Region_SetAlpha "API:Region SetAlpha")(alpha) - Sets the opacity of the region.

[Region:SetAlphaFromBoolean](https://warcraft.wiki.gg/wiki/API:Region_SetAlphaFromBoolean "API:Region SetAlphaFromBoolean")(value \[, alphaIfTrue \[, alphaIfFalse\]\])

[Region:SetDrawLayer](https://warcraft.wiki.gg/wiki/API:Region_SetDrawLayer "API:Region SetDrawLayer")(layer \[, sublevel\]) - Sets the layer in which the region is drawn.

[Region:SetIgnoreParentAlpha](https://warcraft.wiki.gg/wiki/API:Region_SetIgnoreParentAlpha "API:Region SetIgnoreParentAlpha")(ignore) - Sets whether the region should ignore its parent's alpha.

[Region:SetIgnoreParentScale](https://warcraft.wiki.gg/wiki/API:Region_SetIgnoreParentScale "API:Region SetIgnoreParentScale")(ignore) `#secureframe` - Sets whether the region should ignore its parent's scale.

[Region:SetScale](https://warcraft.wiki.gg/wiki/API:Region_SetScale "API:Region SetScale")(scale) `#secureframe` - Sets the size scaling of the region.

[Region:SetVertexColor](https://warcraft.wiki.gg/wiki/API:Region_SetVertexColor "API:Region SetVertexColor")(colorR, colorG, colorB \[, a\]) - Sets the vertex shading color of the region.

[Region:SetVertexColorFromBoolean](https://warcraft.wiki.gg/wiki/API:Region_SetVertexColorFromBoolean "API:Region SetVertexColorFromBoolean")(value, colorIfTrue, colorIfFalse)

## Textures

### *[TextureBase](https://warcraft.wiki.gg/wiki/UIOBJECT_TextureBase "UIOBJECT TextureBase")*

[TextureBase:ClearRadialProgressBar](https://warcraft.wiki.gg/wiki/API:TextureBase_ClearRadialProgressBar "API:TextureBase ClearRadialProgressBar")()

[TextureBase:ClearSVG](https://warcraft.wiki.gg/wiki/API:TextureBase_ClearSVG "API:TextureBase ClearSVG")()

[TextureBase:ClearTextureSlice](https://warcraft.wiki.gg/wiki/API:TextureBase_ClearTextureSlice "API:TextureBase ClearTextureSlice")()

[TextureBase:ClearVertexOffsets](https://warcraft.wiki.gg/wiki/API:TextureBase_ClearVertexOffsets "API:TextureBase ClearVertexOffsets")()

[TextureBase:GetAtlas](https://warcraft.wiki.gg/wiki/API:TextureBase_GetAtlas "API:TextureBase GetAtlas")() : atlas - Returns the atlas for the texture.

[TextureBase:GetBlendMode](https://warcraft.wiki.gg/wiki/API:TextureBase_GetBlendMode "API:TextureBase GetBlendMode")() : blendMode - Returns the blend mode of the texture.

[TextureBase:GetDesaturation](https://warcraft.wiki.gg/wiki/API:TextureBase_GetDesaturation "API:TextureBase GetDesaturation")() : desaturation - Returns the desaturation level of the texture.

[TextureBase:GetHorizTile](https://warcraft.wiki.gg/wiki/API:TextureBase_GetHorizTile "API:TextureBase GetHorizTile")() : tiling - Returns true if the texture is tiling horizontally.

[TextureBase:GetRadialProgressBarEndOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRadialProgressBarEndOffset "API:TextureBase GetRadialProgressBarEndOffset")() : offset

[TextureBase:GetRadialProgressBarFeather](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRadialProgressBarFeather "API:TextureBase GetRadialProgressBarFeather")() : feather

[TextureBase:GetRadialProgressBarPercent](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRadialProgressBarPercent "API:TextureBase GetRadialProgressBarPercent")() : percent

[TextureBase:GetRadialProgressBarReverse](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRadialProgressBarReverse "API:TextureBase GetRadialProgressBarReverse")() : reverse

[TextureBase:GetRadialProgressBarStartOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRadialProgressBarStartOffset "API:TextureBase GetRadialProgressBarStartOffset")() : offset

[TextureBase:GetRotation](https://warcraft.wiki.gg/wiki/API:TextureBase_GetRotation "API:TextureBase GetRotation")() : radians, normalizedRotationPoint - Returns the rotation of the texture.

[TextureBase:GetTexCoord](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTexCoord "API:TextureBase GetTexCoord")() : ulX, ulY, llX, llY, urX, urY, lrX, lrY - Returns the texture space coordinates of the texture.

[TextureBase:GetTexelSnappingBias](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTexelSnappingBias "API:TextureBase GetTexelSnappingBias")() : bias - Returns the texel snapping bias for the texture.

[TextureBase:GetTexture](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTexture "API:TextureBase GetTexture")() : textureFile - Returns the FileID for the texture.

[TextureBase:GetTextureFileID](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTextureFileID "API:TextureBase GetTextureFileID")() : textureFile - Returns the FileID for the texture.

[TextureBase:GetTextureFilePath](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTextureFilePath "API:TextureBase GetTextureFilePath")() : textureFile - Returns the FileID for the texture.

[TextureBase:GetTextureSliceMargins](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTextureSliceMargins "API:TextureBase GetTextureSliceMargins")() : left, top, right, bottom

[TextureBase:GetTextureSliceMode](https://warcraft.wiki.gg/wiki/API:TextureBase_GetTextureSliceMode "API:TextureBase GetTextureSliceMode")() : sliceMode

[TextureBase:GetVertTile](https://warcraft.wiki.gg/wiki/API:TextureBase_GetVertTile "API:TextureBase GetVertTile")() : tiling - Returns true if the texture is tiling vertically.

[TextureBase:GetVertexOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_GetVertexOffset "API:TextureBase GetVertexOffset")(vertexIndex) : offsetX, offsetY - Returns a vertex offset for the texture.

[TextureBase:IsBlockingLoadRequested](https://warcraft.wiki.gg/wiki/API:TextureBase_IsBlockingLoadRequested "API:TextureBase IsBlockingLoadRequested")() : blocking

[TextureBase:IsDesaturated](https://warcraft.wiki.gg/wiki/API:TextureBase_IsDesaturated "API:TextureBase IsDesaturated")() : desaturated - Returns true if the texture is desaturated.

[TextureBase:IsSnappingToPixelGrid](https://warcraft.wiki.gg/wiki/API:TextureBase_IsSnappingToPixelGrid "API:TextureBase IsSnappingToPixelGrid")() : snap - Returns true if the texture is snapping to the pixel grid.

[TextureBase:ResetTexCoord](https://warcraft.wiki.gg/wiki/API:TextureBase_ResetTexCoord "API:TextureBase ResetTexCoord")()

[TextureBase:SetAtlas](https://warcraft.wiki.gg/wiki/API:TextureBase_SetAtlas "API:TextureBase SetAtlas")(atlas \[, useAtlasSize \[, filterMode \[, resetTexCoords \[, wrapModeHorizontal \[, wrapModeVertical\]\]\]\]\]) - Sets the texture to an atlas.

[TextureBase:SetBlendMode](https://warcraft.wiki.gg/wiki/API:TextureBase_SetBlendMode "API:TextureBase SetBlendMode")(blendMode) - Sets the blend mode of the texture.

[TextureBase:SetBlockingLoadsRequested](https://warcraft.wiki.gg/wiki/API:TextureBase_SetBlockingLoadsRequested "API:TextureBase SetBlockingLoadsRequested")(\[blocking\])

[TextureBase:SetColorTexture](https://warcraft.wiki.gg/wiki/API:TextureBase_SetColorTexture "API:TextureBase SetColorTexture")(colorR, colorG, colorB \[, a\]) - Sets the texture to a solid color.

[TextureBase:SetDesaturated](https://warcraft.wiki.gg/wiki/API:TextureBase_SetDesaturated "API:TextureBase SetDesaturated")(\[desaturated\]) - Sets the texture to be desaturated.

[TextureBase:SetDesaturation](https://warcraft.wiki.gg/wiki/API:TextureBase_SetDesaturation "API:TextureBase SetDesaturation")(desaturation) - Sets the desaturation level of the texture.

[TextureBase:SetGradient](https://warcraft.wiki.gg/wiki/API:TextureBase_SetGradient "API:TextureBase SetGradient")(orientation, minColor, maxColor) - Sets a gradient color shading for the texture.

[TextureBase:SetHorizTile](https://warcraft.wiki.gg/wiki/API:TextureBase_SetHorizTile "API:TextureBase SetHorizTile")(\[tiling\]) - Sets whether the texture should tile horizontally.

[TextureBase:SetMask](https://warcraft.wiki.gg/wiki/API:TextureBase_SetMask "API:TextureBase SetMask")(file) - Applies a mask to the texture.

[TextureBase:SetRadialProgressBarEndOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRadialProgressBarEndOffset "API:TextureBase SetRadialProgressBarEndOffset")(offset)

[TextureBase:SetRadialProgressBarFeather](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRadialProgressBarFeather "API:TextureBase SetRadialProgressBarFeather")(feather)

[TextureBase:SetRadialProgressBarPercent](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRadialProgressBarPercent "API:TextureBase SetRadialProgressBarPercent")(percent)

[TextureBase:SetRadialProgressBarReverse](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRadialProgressBarReverse "API:TextureBase SetRadialProgressBarReverse")(reverse)

[TextureBase:SetRadialProgressBarStartOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRadialProgressBarStartOffset "API:TextureBase SetRadialProgressBarStartOffset")(offset)

[TextureBase:SetRotation](https://warcraft.wiki.gg/wiki/API:TextureBase_SetRotation "API:TextureBase SetRotation")(radians \[, normalizedRotationPoint\]) - Applies a rotation to the texture.

[TextureBase:SetSVG](https://warcraft.wiki.gg/wiki/API:TextureBase_SetSVG "API:TextureBase SetSVG")(svgAsset) : success

[TextureBase:SetSnapToPixelGrid](https://warcraft.wiki.gg/wiki/API:TextureBase_SetSnapToPixelGrid "API:TextureBase SetSnapToPixelGrid")(\[snap\]) - Sets the texture to snap to the pixel grid.

[TextureBase:SetSpriteSheetCell](https://warcraft.wiki.gg/wiki/API:TextureBase_SetSpriteSheetCell "API:TextureBase SetSpriteSheetCell")(cell, numRows, numColumns \[, cellWidth, cellHeight\])

[TextureBase:SetTexCoord](https://warcraft.wiki.gg/wiki/API:TextureBase_SetTexCoord "API:TextureBase SetTexCoord")(left, right, top, bottom) - Sets the coordinates for cropping or transforming the texture.

[TextureBase:SetTexelSnappingBias](https://warcraft.wiki.gg/wiki/API:TextureBase_SetTexelSnappingBias "API:TextureBase SetTexelSnappingBias")(bias) - Returns the texel snapping bias for the texture.

[TextureBase:SetTexture](https://warcraft.wiki.gg/wiki/API:TextureBase_SetTexture "API:TextureBase SetTexture")(\[textureAsset \[, wrapModeHorizontal \[, wrapModeVertical \[, filterMode\]\]\]\]) : success - Sets the texture to an image.

[TextureBase:SetTextureSliceMargins](https://warcraft.wiki.gg/wiki/API:TextureBase_SetTextureSliceMargins "API:TextureBase SetTextureSliceMargins")(left, top, right, bottom)

[TextureBase:SetTextureSliceMode](https://warcraft.wiki.gg/wiki/API:TextureBase_SetTextureSliceMode "API:TextureBase SetTextureSliceMode")(sliceMode)

[TextureBase:SetVertTile](https://warcraft.wiki.gg/wiki/API:TextureBase_SetVertTile "API:TextureBase SetVertTile")(\[tiling\]) - Sets whether the texture should tile vertically.

[TextureBase:SetVertexOffset](https://warcraft.wiki.gg/wiki/API:TextureBase_SetVertexOffset "API:TextureBase SetVertexOffset")(vertexIndex, offsetX, offsetY) - Sets a vertex offset for the texture.

### [Texture](https://warcraft.wiki.gg/wiki/UIOBJECT_Texture "UIOBJECT Texture")

[Texture:AddMaskTexture](https://warcraft.wiki.gg/wiki/API:Texture_AddMaskTexture "API:Texture AddMaskTexture")(mask)

[Texture:GetMaskTexture](https://warcraft.wiki.gg/wiki/API:Texture_GetMaskTexture "API:Texture GetMaskTexture")(index) : mask

[Texture:GetNumMaskTextures](https://warcraft.wiki.gg/wiki/API:Texture_GetNumMaskTextures "API:Texture GetNumMaskTextures")() : count

[Texture:RemoveMaskTexture](https://warcraft.wiki.gg/wiki/API:Texture_RemoveMaskTexture "API:Texture RemoveMaskTexture")(mask)

### [MaskTexture](https://warcraft.wiki.gg/wiki/UIOBJECT_MaskTexture "UIOBJECT MaskTexture")

### [Line](https://warcraft.wiki.gg/wiki/UIOBJECT_Line "UIOBJECT Line")

[Line:ClearAllPoints](https://warcraft.wiki.gg/wiki/API:Line_ClearAllPoints "API:Line ClearAllPoints")()

[Line:GetEndPoint](https://warcraft.wiki.gg/wiki/API:Line_GetEndPoint "API:Line GetEndPoint")() : relativePoint, relativeTo, offsetX, offsetY

[Line:GetHitRectThickness](https://warcraft.wiki.gg/wiki/API:Line_GetHitRectThickness "API:Line GetHitRectThickness")() : thickness

[Line:GetStartPoint](https://warcraft.wiki.gg/wiki/API:Line_GetStartPoint "API:Line GetStartPoint")() : relativePoint, relativeTo, offsetX, offsetY

[Line:GetThickness](https://warcraft.wiki.gg/wiki/API:Line_GetThickness "API:Line GetThickness")() : thickness

[Line:SetEndPoint](https://warcraft.wiki.gg/wiki/API:Line_SetEndPoint "API:Line SetEndPoint")(relativePoint, relativeTo \[, offsetX, offsetY\])

[Line:SetHitRectThickness](https://warcraft.wiki.gg/wiki/API:Line_SetHitRectThickness "API:Line SetHitRectThickness")(thickness)

[Line:SetStartPoint](https://warcraft.wiki.gg/wiki/API:Line_SetStartPoint "API:Line SetStartPoint")(relativePoint, relativeTo \[, offsetX, offsetY\])

[Line:SetThickness](https://warcraft.wiki.gg/wiki/API:Line_SetThickness "API:Line SetThickness")(thickness)

### [VectorGraphics](https://warcraft.wiki.gg/wiki/UIOBJECT_VectorGraphics "UIOBJECT VectorGraphics")

[VectorGraphics:ClearSVG](https://warcraft.wiki.gg/wiki/API:VectorGraphics_ClearSVG "API:VectorGraphics ClearSVG")()

[VectorGraphics:GetSVGFileID](https://warcraft.wiki.gg/wiki/API:VectorGraphics_GetSVGFileID "API:VectorGraphics GetSVGFileID")() : svgFile

[VectorGraphics:HasSVG](https://warcraft.wiki.gg/wiki/API:VectorGraphics_HasSVG "API:VectorGraphics HasSVG")() : hasSVG

[VectorGraphics:SetSVG](https://warcraft.wiki.gg/wiki/API:VectorGraphics_SetSVG "API:VectorGraphics SetSVG")(svgAsset) : success

## Fonts

### *FontInstance*

[FontInstance:GetFont](https://warcraft.wiki.gg/wiki/API:FontInstance_GetFont "API:FontInstance GetFont")() : fontFile, height, flags - Returns the font path, height, and flags.

[FontInstance:GetFontObject](https://warcraft.wiki.gg/wiki/API:FontInstance_GetFontObject "API:FontInstance GetFontObject")() : font - Returns the "parent" font object.

[FontInstance:GetIndentedWordWrap](https://warcraft.wiki.gg/wiki/API:FontInstance_GetIndentedWordWrap "API:FontInstance GetIndentedWordWrap")() : wordWrap - Returns the indentation when text wraps beyond the first line.

[FontInstance:GetJustifyH](https://warcraft.wiki.gg/wiki/API:FontInstance_GetJustifyH "API:FontInstance GetJustifyH")() : justifyH - Returns the horizontal text justification.

[FontInstance:GetJustifyV](https://warcraft.wiki.gg/wiki/API:FontInstance_GetJustifyV "API:FontInstance GetJustifyV")() : justifyV - Returns the vertical text justification.

[FontInstance:GetShadowColor](https://warcraft.wiki.gg/wiki/API:FontInstance_GetShadowColor "API:FontInstance GetShadowColor")() : colorR, colorG, colorB, colorA - Returns the text shadow color.

[FontInstance:GetShadowOffset](https://warcraft.wiki.gg/wiki/API:FontInstance_GetShadowOffset "API:FontInstance GetShadowOffset")() : offsetX, offsetY - Returns the text shadow offset.

[FontInstance:GetSpacing](https://warcraft.wiki.gg/wiki/API:FontInstance_GetSpacing "API:FontInstance GetSpacing")() : spacing - Returns the line spacing.

[FontInstance:GetTextColor](https://warcraft.wiki.gg/wiki/API:FontInstance_GetTextColor "API:FontInstance GetTextColor")() : colorR, colorG, colorB, colorA - Returns the default text color.

[FontInstance:SetFont](https://warcraft.wiki.gg/wiki/API:FontInstance_SetFont "API:FontInstance SetFont")(fontFile, height, flags) - Sets the basic font properties.

[FontInstance:SetFontObject](https://warcraft.wiki.gg/wiki/API:FontInstance_SetFontObject "API:FontInstance SetFontObject")(font) - Sets the "parent" font object from which this object inherits properties.

[FontInstance:SetIndentedWordWrap](https://warcraft.wiki.gg/wiki/API:FontInstance_SetIndentedWordWrap "API:FontInstance SetIndentedWordWrap")(wordWrap) - Sets the indentation when text wraps beyond the first line.

[FontInstance:SetJustifyH](https://warcraft.wiki.gg/wiki/API:FontInstance_SetJustifyH "API:FontInstance SetJustifyH")(justifyH) - Sets the horizontal text justification

[FontInstance:SetJustifyV](https://warcraft.wiki.gg/wiki/API:FontInstance_SetJustifyV "API:FontInstance SetJustifyV")(justifyV) - Sets the vertical text justification.

[FontInstance:SetShadowColor](https://warcraft.wiki.gg/wiki/API:FontInstance_SetShadowColor "API:FontInstance SetShadowColor")(colorR, colorG, colorB \[, a\]) - Sets the text shadow color.

[FontInstance:SetShadowOffset](https://warcraft.wiki.gg/wiki/API:FontInstance_SetShadowOffset "API:FontInstance SetShadowOffset")(offsetX, offsetY) - Sets the text shadow offset.

[FontInstance:SetSpacing](https://warcraft.wiki.gg/wiki/API:FontInstance_SetSpacing "API:FontInstance SetSpacing")(spacing) - Sets the spacing between lines of text in the object.

[FontInstance:SetTextColor](https://warcraft.wiki.gg/wiki/API:FontInstance_SetTextColor "API:FontInstance SetTextColor")(colorR, colorG, colorB \[, a\]) - Sets the default text color.

### [Font](https://warcraft.wiki.gg/wiki/UIOBJECT_Font "UIOBJECT Font")

[Font:CopyFontObject](https://warcraft.wiki.gg/wiki/API:Font_CopyFontObject "API:Font CopyFontObject")(sourceFont)

[Font:GetAlpha](https://warcraft.wiki.gg/wiki/API:Font_GetAlpha "API:Font GetAlpha")() : alpha

[Font:GetFontHeight](https://warcraft.wiki.gg/wiki/API:Font_GetFontHeight "API:Font GetFontHeight")() : height

[Font:GetFontObjectForAlphabet](https://warcraft.wiki.gg/wiki/API:Font_GetFontObjectForAlphabet "API:Font GetFontObjectForAlphabet")(alphabet) : font

[Font:SetAlpha](https://warcraft.wiki.gg/wiki/API:Font_SetAlpha "API:Font SetAlpha")(alpha)

[Font:SetFontHeight](https://warcraft.wiki.gg/wiki/API:Font_SetFontHeight "API:Font SetFontHeight")(height)

### [FontString](https://warcraft.wiki.gg/wiki/UIOBJECT_FontString "UIOBJECT FontString")

[FontString:CalculateScreenAreaFromCharacterSpan](https://warcraft.wiki.gg/wiki/API:FontString_CalculateScreenAreaFromCharacterSpan "API:FontString CalculateScreenAreaFromCharacterSpan")(leftIndex, rightIndex) : areas

[FontString:CanNonSpaceWrap](https://warcraft.wiki.gg/wiki/API:FontString_CanNonSpaceWrap "API:FontString CanNonSpaceWrap")() : Functionrap

[FontString:CanWordWrap](https://warcraft.wiki.gg/wiki/API:FontString_CanWordWrap "API:FontString CanWordWrap")() : Functionrap

[FontString:ClearAlphaGradient](https://warcraft.wiki.gg/wiki/API:FontString_ClearAlphaGradient "API:FontString ClearAlphaGradient")()

[FontString:ClearText](https://warcraft.wiki.gg/wiki/API:FontString_ClearText "API:FontString ClearText")()

[FontString:FindCharacterIndexAtCoordinate](https://warcraft.wiki.gg/wiki/API:FontString_FindCharacterIndexAtCoordinate "API:FontString FindCharacterIndexAtCoordinate")(x, y) : characterIndex, inside

[FontString:GetAlphaGradient](https://warcraft.wiki.gg/wiki/API:FontString_GetAlphaGradient "API:FontString GetAlphaGradient")() : start, length

[FontString:GetFieldSize](https://warcraft.wiki.gg/wiki/API:FontString_GetFieldSize "API:FontString GetFieldSize")() : fieldSize

[FontString:GetFontHeight](https://warcraft.wiki.gg/wiki/API:FontString_GetFontHeight "API:FontString GetFontHeight")(\[calculated\]) : height

[FontString:GetLineHeight](https://warcraft.wiki.gg/wiki/API:FontString_GetLineHeight "API:FontString GetLineHeight")() : lineHeight

[FontString:GetMaxLines](https://warcraft.wiki.gg/wiki/API:FontString_GetMaxLines "API:FontString GetMaxLines")() : maxLines

[FontString:GetNumLines](https://warcraft.wiki.gg/wiki/API:FontString_GetNumLines "API:FontString GetNumLines")() : numLines

[FontString:GetRotation](https://warcraft.wiki.gg/wiki/API:FontString_GetRotation "API:FontString GetRotation")() : radians

[FontString:GetScaleAnimationMode](https://warcraft.wiki.gg/wiki/API:FontString_GetScaleAnimationMode "API:FontString GetScaleAnimationMode")() : scaleAnimationMode

[FontString:GetSmoothScaling](https://warcraft.wiki.gg/wiki/API:FontString_GetSmoothScaling "API:FontString GetSmoothScaling")() : smoothScaling

[FontString:GetStringHeight](https://warcraft.wiki.gg/wiki/API:FontString_GetStringHeight "API:FontString GetStringHeight")() : height

[FontString:GetStringWidth](https://warcraft.wiki.gg/wiki/API:FontString_GetStringWidth "API:FontString GetStringWidth")() : Functionidth

[FontString:GetText](https://warcraft.wiki.gg/wiki/API:FontString_GetText "API:FontString GetText")() : text

[FontString:GetTextScale](https://warcraft.wiki.gg/wiki/API:FontString_GetTextScale "API:FontString GetTextScale")() : textScale

[FontString:GetUnboundedStringWidth](https://warcraft.wiki.gg/wiki/API:FontString_GetUnboundedStringWidth "API:FontString GetUnboundedStringWidth")() : Functionidth

[FontString:GetUnboundedStringWidthForText](https://warcraft.wiki.gg/wiki/API:FontString_GetUnboundedStringWidthForText "API:FontString GetUnboundedStringWidthForText")(text) : Functionidth

[FontString:GetWrappedWidth](https://warcraft.wiki.gg/wiki/API:FontString_GetWrappedWidth "API:FontString GetWrappedWidth")() : Functionidth

[FontString:IsTruncated](https://warcraft.wiki.gg/wiki/API:FontString_IsTruncated "API:FontString IsTruncated")() : isTruncated

[FontString:OnColorsUpdated](https://warcraft.wiki.gg/wiki/API:FontString_OnColorsUpdated "API:FontString OnColorsUpdated")()

[FontString:SetAlphaGradient](https://warcraft.wiki.gg/wiki/API:FontString_SetAlphaGradient "API:FontString SetAlphaGradient")(start, length) : isWithinText

[FontString:SetDesaturateEmbeddedTextures](https://warcraft.wiki.gg/wiki/API:FontString_SetDesaturateEmbeddedTextures "API:FontString SetDesaturateEmbeddedTextures")(desaturate)

[FontString:SetFixedColor](https://warcraft.wiki.gg/wiki/API:FontString_SetFixedColor "API:FontString SetFixedColor")(fixedColor)

[FontString:SetFontHeight](https://warcraft.wiki.gg/wiki/API:FontString_SetFontHeight "API:FontString SetFontHeight")(height)

[FontString:SetFormattedText](https://warcraft.wiki.gg/wiki/API:FontString_SetFormattedText "API:FontString SetFormattedText")(text)

[FontString:SetMaxLines](https://warcraft.wiki.gg/wiki/API:FontString_SetMaxLines "API:FontString SetMaxLines")(maxLines)

[FontString:SetNonSpaceWrap](https://warcraft.wiki.gg/wiki/API:FontString_SetNonSpaceWrap "API:FontString SetNonSpaceWrap")(wrap)

[FontString:SetRotation](https://warcraft.wiki.gg/wiki/API:FontString_SetRotation "API:FontString SetRotation")(radians)

[FontString:SetScaleAnimationMode](https://warcraft.wiki.gg/wiki/API:FontString_SetScaleAnimationMode "API:FontString SetScaleAnimationMode")(scaleAnimationMode)

[FontString:SetSmoothScaling](https://warcraft.wiki.gg/wiki/API:FontString_SetSmoothScaling "API:FontString SetSmoothScaling")(smoothScaling)

[FontString:SetText](https://warcraft.wiki.gg/wiki/API:FontString_SetText "API:FontString SetText")(\[text\])

[FontString:SetTextHeight](https://warcraft.wiki.gg/wiki/API:FontString_SetTextHeight "API:FontString SetTextHeight")(height)

[FontString:SetTextScale](https://warcraft.wiki.gg/wiki/API:FontString_SetTextScale "API:FontString SetTextScale")(textScale)

[FontString:SetTextToFit](https://warcraft.wiki.gg/wiki/API:FontString_SetTextToFit "API:FontString SetTextToFit")(\[text\])

[FontString:SetWordWrap](https://warcraft.wiki.gg/wiki/API:FontString_SetWordWrap "API:FontString SetWordWrap")(wrap)

## Animations

### [AnimationGroup](https://warcraft.wiki.gg/wiki/UIOBJECT_AnimationGroup "UIOBJECT AnimationGroup")

[AnimationGroup:CreateAnimation](https://warcraft.wiki.gg/wiki/API:AnimationGroup_CreateAnimation "API:AnimationGroup CreateAnimation")(\[animationType, name, templateName\]) : anim - Returns an animation as a child of this group.

[AnimationGroup:Finish](https://warcraft.wiki.gg/wiki/API:AnimationGroup_Finish "API:AnimationGroup Finish")() - Notifies the animationgroup to stop playing once the current loop cycle is done.

[AnimationGroup:GetAnimations](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetAnimations "API:AnimationGroup GetAnimations")() : ...anims

[AnimationGroup:GetAnimationSpeedMultiplier](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetAnimationSpeedMultiplier "API:AnimationGroup GetAnimationSpeedMultiplier")() : animationSpeedMultiplier

[AnimationGroup:GetDuration](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetDuration "API:AnimationGroup GetDuration")() : durationSec - Returns the total duration across all child animations that the group will take to complete one loop cycle.

[AnimationGroup:GetElapsed](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetElapsed "API:AnimationGroup GetElapsed")() : elapsedSec

[AnimationGroup:GetLooping](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetLooping "API:AnimationGroup GetLooping")() : loopType) - Returns the type of looping for the group.

[AnimationGroup:GetLoopState](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetLoopState "API:AnimationGroup GetLoopState")() : loopState - Returns the current loop state of the group.

[AnimationGroup:GetProgress](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetProgress "API:AnimationGroup GetProgress")() : progress - Returns the progress of this animation.

[AnimationGroup:GetScript](https://warcraft.wiki.gg/wiki/API:AnimationGroup_GetScript "API:AnimationGroup GetScript")(scriptTypeName \[, bindingType\]) : script

[AnimationGroup:HasScript](https://warcraft.wiki.gg/wiki/API:AnimationGroup_HasScript "API:AnimationGroup HasScript")(scriptName) : hasScript

[AnimationGroup:HookScript](https://warcraft.wiki.gg/wiki/API:AnimationGroup_HookScript "API:AnimationGroup HookScript")(scriptTypeName, script \[, bindingType\]) : success

[AnimationGroup:IsDone](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsDone "API:AnimationGroup IsDone")() : isDone - Returns true if the group has finished playing.

[AnimationGroup:IsPaused](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsPaused "API:AnimationGroup IsPaused")() : isPaused - Returns true if the group is paused.

[AnimationGroup:IsPendingFinish](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsPendingFinish "API:AnimationGroup IsPendingFinish")() : isPendingFinish

[AnimationGroup:IsPlaying](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsPlaying "API:AnimationGroup IsPlaying")() : isPlaying - Returns true if the group is playing.

[AnimationGroup:IsReverse](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsReverse "API:AnimationGroup IsReverse")() : isReverse

[AnimationGroup:IsSetToFinalAlpha](https://warcraft.wiki.gg/wiki/API:AnimationGroup_IsSetToFinalAlpha "API:AnimationGroup IsSetToFinalAlpha")() : isSetToFinalAlpha

[AnimationGroup:Pause](https://warcraft.wiki.gg/wiki/API:AnimationGroup_Pause "API:AnimationGroup Pause")() - Pauses the animations in this group.

[AnimationGroup:Play](https://warcraft.wiki.gg/wiki/API:AnimationGroup_Play "API:AnimationGroup Play")(\[reverse, offset\]) - Starts playing the animations in this group.

[AnimationGroup:RemoveAnimations](https://warcraft.wiki.gg/wiki/API:AnimationGroup_RemoveAnimations "API:AnimationGroup RemoveAnimations")()

[AnimationGroup:Restart](https://warcraft.wiki.gg/wiki/API:AnimationGroup_Restart "API:AnimationGroup Restart")(\[reverse, offset\])

[AnimationGroup:SetAnimationSpeedMultiplier](https://warcraft.wiki.gg/wiki/API:AnimationGroup_SetAnimationSpeedMultiplier "API:AnimationGroup SetAnimationSpeedMultiplier")(animationSpeedMultiplier)

[AnimationGroup:SetLooping](https://warcraft.wiki.gg/wiki/API:AnimationGroup_SetLooping "API:AnimationGroup SetLooping")(loopType) - Sets the type of looping for the group.

[AnimationGroup:SetPlaying](https://warcraft.wiki.gg/wiki/API:AnimationGroup_SetPlaying "API:AnimationGroup SetPlaying")(play)

[AnimationGroup:SetScript](https://warcraft.wiki.gg/wiki/API:AnimationGroup_SetScript "API:AnimationGroup SetScript")(scriptTypeName \[, script\])

[AnimationGroup:SetToFinalAlpha](https://warcraft.wiki.gg/wiki/API:AnimationGroup_SetToFinalAlpha "API:AnimationGroup SetToFinalAlpha")(setToFinalAlpha)

[AnimationGroup:Stop](https://warcraft.wiki.gg/wiki/API:AnimationGroup_Stop "API:AnimationGroup Stop")() - Stops all animations in this group.

### [Animation](https://warcraft.wiki.gg/wiki/UIOBJECT_Animation "UIOBJECT Animation")

[Animation:GetDuration](https://warcraft.wiki.gg/wiki/API:Animation_GetDuration "API:Animation GetDuration")() : durationSec - Returns the number of seconds it takes for the animation to progress from start to finish.

[Animation:GetElapsed](https://warcraft.wiki.gg/wiki/API:Animation_GetElapsed "API:Animation GetElapsed")() : elapsedSec - Returns the amount of time in seconds that the animation has been playing for.

[Animation:GetEndDelay](https://warcraft.wiki.gg/wiki/API:Animation_GetEndDelay "API:Animation GetEndDelay")() : delaySec - Returns the number of seconds the animation delays after finishing.

[Animation:GetOrder](https://warcraft.wiki.gg/wiki/API:Animation_GetOrder "API:Animation GetOrder")() : order - Returns the order of the animation within its parent group.

[Animation:GetProgress](https://warcraft.wiki.gg/wiki/API:Animation_GetProgress "API:Animation GetProgress")() : progress - Returns the progress of the animation.

[Animation:GetRegionParent](https://warcraft.wiki.gg/wiki/API:Animation_GetRegionParent "API:Animation GetRegionParent")() : region - Returns the Region object that the animation operates on.

[Animation:GetScript](https://warcraft.wiki.gg/wiki/API:Animation_GetScript "API:Animation GetScript")(scriptTypeName \[, bindingType\]) : script

[Animation:GetSmoothing](https://warcraft.wiki.gg/wiki/API:Animation_GetSmoothing "API:Animation GetSmoothing")() : Functioneights - Returns the smoothing type for the animation.

[Animation:GetSmoothProgress](https://warcraft.wiki.gg/wiki/API:Animation_GetSmoothProgress "API:Animation GetSmoothProgress")() : progress - Returns a smoothed progress value for the animation.

[Animation:GetStartDelay](https://warcraft.wiki.gg/wiki/API:Animation_GetStartDelay "API:Animation GetStartDelay")() : delaySec - Sets the number of seconds that the animation delays before it starts to progress.

[Animation:GetTarget](https://warcraft.wiki.gg/wiki/API:Animation_GetTarget "API:Animation GetTarget")() : target

[Animation:HasScript](https://warcraft.wiki.gg/wiki/API:Animation_HasScript "API:Animation HasScript")(scriptName) : hasScript

[Animation:HookScript](https://warcraft.wiki.gg/wiki/API:Animation_HookScript "API:Animation HookScript")(scriptTypeName, script \[, bindingType\]) : success

[Animation:IsDelaying](https://warcraft.wiki.gg/wiki/API:Animation_IsDelaying "API:Animation IsDelaying")() : isDelaying - Returns true if the animation is in the middle of a start or end delay.

[Animation:IsDone](https://warcraft.wiki.gg/wiki/API:Animation_IsDone "API:Animation IsDone")() : isDone - Returns true if the animation has finished playing.

[Animation:IsPaused](https://warcraft.wiki.gg/wiki/API:Animation_IsPaused "API:Animation IsPaused")() : isPaused - Returns true if the animation is paused.

[Animation:IsPlaying](https://warcraft.wiki.gg/wiki/API:Animation_IsPlaying "API:Animation IsPlaying")() : isPlaying

[Animation:IsStopped](https://warcraft.wiki.gg/wiki/API:Animation_IsStopped "API:Animation IsStopped")() : isStopped - Returns true if the animation is stopped.

[Animation:Pause](https://warcraft.wiki.gg/wiki/API:Animation_Pause "API:Animation Pause")() - Pauses the animation.

[Animation:Play](https://warcraft.wiki.gg/wiki/API:Animation_Play "API:Animation Play")() - Plays the animation.

[Animation:Restart](https://warcraft.wiki.gg/wiki/API:Animation_Restart "API:Animation Restart")()

[Animation:SetChildKey](https://warcraft.wiki.gg/wiki/API:Animation_SetChildKey "API:Animation SetChildKey")(childKey) : success

[Animation:SetDuration](https://warcraft.wiki.gg/wiki/API:Animation_SetDuration "API:Animation SetDuration")(durationSec \[, recomputeGroupDuration\]) - Sets the number of seconds it takes for the animation to progress from start to finish.

[Animation:SetEndDelay](https://warcraft.wiki.gg/wiki/API:Animation_SetEndDelay "API:Animation SetEndDelay")(delaySec \[, recomputeGroupDuration\]) - Sets the number of seconds the animation delays after finishing.

[Animation:SetOrder](https://warcraft.wiki.gg/wiki/API:Animation_SetOrder "API:Animation SetOrder")(newOrder) - Sets the order that the animation plays within its parent group.

[Animation:SetParent](https://warcraft.wiki.gg/wiki/API:Animation_SetParent "API:Animation SetParent")(parent \[, order\]) - Sets the parent for the animation.

[Animation:SetPlaying](https://warcraft.wiki.gg/wiki/API:Animation_SetPlaying "API:Animation SetPlaying")(play)

[Animation:SetScript](https://warcraft.wiki.gg/wiki/API:Animation_SetScript "API:Animation SetScript")(scriptTypeName \[, script\])

[Animation:SetSmoothing](https://warcraft.wiki.gg/wiki/API:Animation_SetSmoothing "API:Animation SetSmoothing")(weights)

[Animation:SetSmoothProgress](https://warcraft.wiki.gg/wiki/API:Animation_SetSmoothProgress "API:Animation SetSmoothProgress")(durationSec) - Sets the smoothing type for the animation.

[Animation:SetStartDelay](https://warcraft.wiki.gg/wiki/API:Animation_SetStartDelay "API:Animation SetStartDelay")(delaySec \[, recomputeGroupDuration\]) - Returns the number of seconds that the animation delays before it starts to progress.

[Animation:SetTarget](https://warcraft.wiki.gg/wiki/API:Animation_SetTarget "API:Animation SetTarget")(target) : success

[Animation:SetTargetKey](https://warcraft.wiki.gg/wiki/API:Animation_SetTargetKey "API:Animation SetTargetKey")(key) : success

[Animation:SetTargetName](https://warcraft.wiki.gg/wiki/API:Animation_SetTargetName "API:Animation SetTargetName")(name) : success

[Animation:SetTargetParent](https://warcraft.wiki.gg/wiki/API:Animation_SetTargetParent "API:Animation SetTargetParent")() : success

[Animation:Stop](https://warcraft.wiki.gg/wiki/API:Animation_Stop "API:Animation Stop")() - Stops the animation.

### [Alpha](https://warcraft.wiki.gg/wiki/UIOBJECT_Alpha "UIOBJECT Alpha")

[Alpha:GetFromAlpha](https://warcraft.wiki.gg/wiki/API:Alpha_GetFromAlpha "API:Alpha GetFromAlpha")() : normalizedAlpha

[Alpha:GetToAlpha](https://warcraft.wiki.gg/wiki/API:Alpha_GetToAlpha "API:Alpha GetToAlpha")() : normalizedAlpha

[Alpha:SetFromAlpha](https://warcraft.wiki.gg/wiki/API:Alpha_SetFromAlpha "API:Alpha SetFromAlpha")(normalizedAlpha)

[Alpha:SetToAlpha](https://warcraft.wiki.gg/wiki/API:Alpha_SetToAlpha "API:Alpha SetToAlpha")(normalizedAlpha)

### [FlipBook](https://warcraft.wiki.gg/wiki/UIOBJECT_FlipBook "UIOBJECT FlipBook")

[FlipBook:GetFlipBookColumns](https://warcraft.wiki.gg/wiki/API:FlipBook_GetFlipBookColumns "API:FlipBook GetFlipBookColumns")() : columns

[FlipBook:GetFlipBookFrameHeight](https://warcraft.wiki.gg/wiki/API:FlipBook_GetFlipBookFrameHeight "API:FlipBook GetFlipBookFrameHeight")() : height

[FlipBook:GetFlipBookFrameWidth](https://warcraft.wiki.gg/wiki/API:FlipBook_GetFlipBookFrameWidth "API:FlipBook GetFlipBookFrameWidth")() : width

[FlipBook:GetFlipBookFrames](https://warcraft.wiki.gg/wiki/API:FlipBook_GetFlipBookFrames "API:FlipBook GetFlipBookFrames")() : frames

[FlipBook:GetFlipBookRows](https://warcraft.wiki.gg/wiki/API:FlipBook_GetFlipBookRows "API:FlipBook GetFlipBookRows")() : rows

[FlipBook:SetFlipBookColumns](https://warcraft.wiki.gg/wiki/API:FlipBook_SetFlipBookColumns "API:FlipBook SetFlipBookColumns")(columns)

[FlipBook:SetFlipBookFrameHeight](https://warcraft.wiki.gg/wiki/API:FlipBook_SetFlipBookFrameHeight "API:FlipBook SetFlipBookFrameHeight")(height)

[FlipBook:SetFlipBookFrameWidth](https://warcraft.wiki.gg/wiki/API:FlipBook_SetFlipBookFrameWidth "API:FlipBook SetFlipBookFrameWidth")(width)

[FlipBook:SetFlipBookFrames](https://warcraft.wiki.gg/wiki/API:FlipBook_SetFlipBookFrames "API:FlipBook SetFlipBookFrames")(frames)

[FlipBook:SetFlipBookRows](https://warcraft.wiki.gg/wiki/API:FlipBook_SetFlipBookRows "API:FlipBook SetFlipBookRows")(rows)

### [Path](https://warcraft.wiki.gg/wiki/UIOBJECT_Path "UIOBJECT Path")

[Path:CreateControlPoint](https://warcraft.wiki.gg/wiki/API:Path_CreateControlPoint "API:Path CreateControlPoint")(\[name \[, templateName \[, order\]\]\]) : point

[Path:GetControlPoints](https://warcraft.wiki.gg/wiki/API:Path_GetControlPoints "API:Path GetControlPoints")() : ...points

[Path:GetCurveType](https://warcraft.wiki.gg/wiki/API:Path_GetCurveType "API:Path GetCurveType")() : curveType

[Path:GetMaxControlPointOrder](https://warcraft.wiki.gg/wiki/API:Path_GetMaxControlPointOrder "API:Path GetMaxControlPointOrder")() : maxOrder

[Path:SetCurveType](https://warcraft.wiki.gg/wiki/API:Path_SetCurveType "API:Path SetCurveType")(curveType)

### [ControlPoint](https://warcraft.wiki.gg/wiki/UIOBJECT_ControlPoint "UIOBJECT ControlPoint")

[ControlPoint:GetOffset](https://warcraft.wiki.gg/wiki/API:ControlPoint_GetOffset "API:ControlPoint GetOffset")() : offsetX, offsetY

[ControlPoint:GetOrder](https://warcraft.wiki.gg/wiki/API:ControlPoint_GetOrder "API:ControlPoint GetOrder")() : order

[ControlPoint:SetOffset](https://warcraft.wiki.gg/wiki/API:ControlPoint_SetOffset "API:ControlPoint SetOffset")(offsetX, offsetY)

[ControlPoint:SetOrder](https://warcraft.wiki.gg/wiki/API:ControlPoint_SetOrder "API:ControlPoint SetOrder")(order)

[ControlPoint:SetParent](https://warcraft.wiki.gg/wiki/API:ControlPoint_SetParent "API:ControlPoint SetParent")(parent \[, order\])

### [RadialProgress](https://warcraft.wiki.gg/wiki/UIOBJECT_RadialProgress "UIOBJECT RadialProgress")

[RadialProgress:GetFromPercent](https://warcraft.wiki.gg/wiki/API:RadialProgress_GetFromPercent "API:RadialProgress GetFromPercent")() : percent

[RadialProgress:GetToPercent](https://warcraft.wiki.gg/wiki/API:RadialProgress_GetToPercent "API:RadialProgress GetToPercent")() : percent

[RadialProgress:SetFromPercent](https://warcraft.wiki.gg/wiki/API:RadialProgress_SetFromPercent "API:RadialProgress SetFromPercent")(percent)

[RadialProgress:SetToPercent](https://warcraft.wiki.gg/wiki/API:RadialProgress_SetToPercent "API:RadialProgress SetToPercent")(percent)

### [Rotation](https://warcraft.wiki.gg/wiki/UIOBJECT_Rotation "UIOBJECT Rotation")

[Rotation:GetDegrees](https://warcraft.wiki.gg/wiki/API:Rotation_GetDegrees "API:Rotation GetDegrees")() : angle

[Rotation:GetOrigin](https://warcraft.wiki.gg/wiki/API:Rotation_GetOrigin "API:Rotation GetOrigin")() : point, originX, originY

[Rotation:GetRadians](https://warcraft.wiki.gg/wiki/API:Rotation_GetRadians "API:Rotation GetRadians")() : angle

[Rotation:SetDegrees](https://warcraft.wiki.gg/wiki/API:Rotation_SetDegrees "API:Rotation SetDegrees")(angle)

[Rotation:SetOrigin](https://warcraft.wiki.gg/wiki/API:Rotation_SetOrigin "API:Rotation SetOrigin")(point, originX, originY)

[Rotation:SetRadians](https://warcraft.wiki.gg/wiki/API:Rotation_SetRadians "API:Rotation SetRadians")(angle)

### [Scale](https://warcraft.wiki.gg/wiki/UIOBJECT_Scale "UIOBJECT Scale")

[Scale:GetOrigin](https://warcraft.wiki.gg/wiki/API:Scale_GetOrigin "API:Scale GetOrigin")() : point, originX, originY

[Scale:GetScale](https://warcraft.wiki.gg/wiki/API:Scale_GetScale "API:Scale GetScale")() : scaleX, scaleY

[Scale:GetScaleFrom](https://warcraft.wiki.gg/wiki/API:Scale_GetScaleFrom "API:Scale GetScaleFrom")() : scaleX, scaleY

[Scale:GetScaleTo](https://warcraft.wiki.gg/wiki/API:Scale_GetScaleTo "API:Scale GetScaleTo")() : scaleX, scaleY

[Scale:SetOrigin](https://warcraft.wiki.gg/wiki/API:Scale_SetOrigin "API:Scale SetOrigin")(point, originX, originY)

[Scale:SetScale](https://warcraft.wiki.gg/wiki/API:Scale_SetScale "API:Scale SetScale")(scaleX, scaleY)

[Scale:SetScaleFrom](https://warcraft.wiki.gg/wiki/API:Scale_SetScaleFrom "API:Scale SetScaleFrom")(scaleX, scaleY)

[Scale:SetScaleTo](https://warcraft.wiki.gg/wiki/API:Scale_SetScaleTo "API:Scale SetScaleTo")(scaleX, scaleY)

### [TextureCoordTranslation](https://warcraft.wiki.gg/wiki/UIOBJECT_TextureCoordTranslation "UIOBJECT TextureCoordTranslation")

[TextureCoordTranslation:GetOffset](https://warcraft.wiki.gg/wiki/API:TextureCoordTranslation_GetOffset "API:TextureCoordTranslation GetOffset")() : offsetU, offsetV

[TextureCoordTranslation:SetOffset](https://warcraft.wiki.gg/wiki/API:TextureCoordTranslation_SetOffset "API:TextureCoordTranslation SetOffset")(offsetU, offsetV)

### [Translation](https://warcraft.wiki.gg/wiki/UIOBJECT_Translation "UIOBJECT Translation")

[Translation:GetOffset](https://warcraft.wiki.gg/wiki/API:Translation_GetOffset "API:Translation GetOffset")() : offsetX, offsetY

[Translation:SetOffset](https://warcraft.wiki.gg/wiki/API:Translation_SetOffset "API:Translation SetOffset")(offsetX, offsetY)

### [VertexColor](https://warcraft.wiki.gg/wiki/UIOBJECT_VertexColor "UIOBJECT VertexColor")

[VertexColor:GetEndColor](https://warcraft.wiki.gg/wiki/API:VertexColor_GetEndColor "API:VertexColor GetEndColor")() : color

[VertexColor:GetStartColor](https://warcraft.wiki.gg/wiki/API:VertexColor_GetStartColor "API:VertexColor GetStartColor")() : color

[VertexColor:SetEndColor](https://warcraft.wiki.gg/wiki/API:VertexColor_SetEndColor "API:VertexColor SetEndColor")(color)

[VertexColor:SetStartColor](https://warcraft.wiki.gg/wiki/API:VertexColor_SetStartColor "API:VertexColor SetStartColor")(color)

## Frames

### [Frame](https://warcraft.wiki.gg/wiki/UIOBJECT_Frame "UIOBJECT Frame")

[Frame:AbortDrag](https://warcraft.wiki.gg/wiki/API:Frame_AbortDrag "API:Frame AbortDrag")()

[Frame:AddRoleset](https://warcraft.wiki.gg/wiki/API:Frame_AddRoleset "API:Frame AddRoleset")(roleset)

[Frame:CanChangeAttribute](https://warcraft.wiki.gg/wiki/API:Frame_CanChangeAttribute "API:Frame CanChangeAttribute")() : canChangeAttributes

[Frame:ClearAlphaGradient](https://warcraft.wiki.gg/wiki/API:Frame_ClearAlphaGradient "API:Frame ClearAlphaGradient")()

[Frame:ClearAttribute](https://warcraft.wiki.gg/wiki/API:Frame_ClearAttribute "API:Frame ClearAttribute")(attributeName) : cleared

[Frame:ClearAttributes](https://warcraft.wiki.gg/wiki/API:Frame_ClearAttributes "API:Frame ClearAttributes")()

[Frame:CreateFontString](https://warcraft.wiki.gg/wiki/API:Frame_CreateFontString "API:Frame CreateFontString")(\[name, drawLayer, templateName\]) : line - Creates a fontstring.

[Frame:CreateLine](https://warcraft.wiki.gg/wiki/API:Frame_CreateLine "API:Frame CreateLine")(\[name, drawLayer, templateName, subLevel\]) : line - Draws a line.

[Frame:CreateMaskTexture](https://warcraft.wiki.gg/wiki/API:Frame_CreateMaskTexture "API:Frame CreateMaskTexture")(\[name, drawLayer, templateName, subLevel\]) : maskTexture - Creates a mask texture.

[Frame:CreateTexture](https://warcraft.wiki.gg/wiki/API:Frame_CreateTexture "API:Frame CreateTexture")(\[name, drawLayer, templateName, subLevel\]) : texture - Creates a texture.

[Frame:CreateVectorGraphics](https://warcraft.wiki.gg/wiki/API:Frame_CreateVectorGraphics "API:Frame CreateVectorGraphics")(\[name \[, drawLayer \[, templateName \[, subLevel\]\]\]\]) : vectorGraphics

[Frame:DesaturateHierarchy](https://warcraft.wiki.gg/wiki/API:Frame_DesaturateHierarchy "API:Frame DesaturateHierarchy")(desaturation \[, excludeRoot\])

[Frame:DisableDrawLayer](https://warcraft.wiki.gg/wiki/API:Frame_DisableDrawLayer "API:Frame DisableDrawLayer")(layer) - Prevents display of the frame on the specified draw layer.

[Frame:DoesClipChildren](https://warcraft.wiki.gg/wiki/API:Frame_DoesClipChildren "API:Frame DoesClipChildren")() : clipsChildren

[Frame:DoesHyperlinkPropagateToParent](https://warcraft.wiki.gg/wiki/API:Frame_DoesHyperlinkPropagateToParent "API:Frame DoesHyperlinkPropagateToParent")() : canPropagate

[Frame:EnableDrawLayer](https://warcraft.wiki.gg/wiki/API:Frame_EnableDrawLayer "API:Frame EnableDrawLayer")(layer) - Allows display of the frame on the specified draw layer.

[Frame:EnableGamePadButton](https://warcraft.wiki.gg/wiki/API:Frame_EnableGamePadButton "API:Frame EnableGamePadButton")(\[enable\]) `#secureframe` - Allows the receipt of gamepad button inputs for this frame.

[Frame:EnableGamePadStick](https://warcraft.wiki.gg/wiki/API:Frame_EnableGamePadStick "API:Frame EnableGamePadStick")(\[enable\]) `#secureframe` - Allows the receipt of gamepad stick inputs for this frame.

[Frame:EnableKeyboard](https://warcraft.wiki.gg/wiki/API:Frame_EnableKeyboard "API:Frame EnableKeyboard")(\[enable\]) `#secureframe` - Allows this frame to receive keyboard input.

[Frame:ExecuteAttribute](https://warcraft.wiki.gg/wiki/API:Frame_ExecuteAttribute "API:Frame ExecuteAttribute")(attributeName \[, ...arguments\]) : success, ...returns

[Frame:GetAlpha](https://warcraft.wiki.gg/wiki/API:Frame_GetAlpha "API:Frame GetAlpha")() : alpha

[Frame:GetAttribute](https://warcraft.wiki.gg/wiki/API:Frame_GetAttribute "API:Frame GetAttribute")(attributeName) : value - Returns the value of a secure frame attribute.

[Frame:GetBoundsRect](https://warcraft.wiki.gg/wiki/API:Frame_GetBoundsRect "API:Frame GetBoundsRect")() : left, bottom, width, height - Returns the calculated bounding box of the frame and all of its descendant regions.

[Frame:GetChildren](https://warcraft.wiki.gg/wiki/API:Frame_GetChildren "API:Frame GetChildren")() : ...children - Returns a list of child frames belonging to the frame.

[Frame:GetClampRectInsets](https://warcraft.wiki.gg/wiki/API:Frame_GetClampRectInsets "API:Frame GetClampRectInsets")() : left, right, top, bottom - Returns the frame's clamp rectangle offsets.

[Frame:GetDontSavePosition](https://warcraft.wiki.gg/wiki/API:Frame_GetDontSavePosition "API:Frame GetDontSavePosition")() : dontSave

[Frame:GetEffectiveAlpha](https://warcraft.wiki.gg/wiki/API:Frame_GetEffectiveAlpha "API:Frame GetEffectiveAlpha")() : effectiveAlpha - Returns the effective alpha after propagating from the parent region.

[Frame:GetEffectivelyFlattensRenderLayers](https://warcraft.wiki.gg/wiki/API:Frame_GetEffectivelyFlattensRenderLayers "API:Frame GetEffectivelyFlattensRenderLayers")() : flatten - Returns true if render layer flattening has been implicitly enabled.

[Frame:GetEffectiveScale](https://warcraft.wiki.gg/wiki/API:Frame_GetEffectiveScale "API:Frame GetEffectiveScale")() : effectiveScale - Returns the effective scale after propagating from the parent region.

[Frame:GetFlattensRenderLayers](https://warcraft.wiki.gg/wiki/API:Frame_GetFlattensRenderLayers "API:Frame GetFlattensRenderLayers")() : flatten - Returns true if render layer flattening has been enabled.

[Frame:GetFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_GetFrameLevel "API:Frame GetFrameLevel")() : frameLevel - Returns the frame level of the frame.

[Frame:GetFrameStrata](https://warcraft.wiki.gg/wiki/API:Frame_GetFrameStrata "API:Frame GetFrameStrata")() : strata - Returns the layering strata of the frame.

[Frame:GetHighestFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_GetHighestFrameLevel "API:Frame GetHighestFrameLevel")(\[iterateAllChildren\]) : frameLevel

[Frame:GetHitRectInsets](https://warcraft.wiki.gg/wiki/API:Frame_GetHitRectInsets "API:Frame GetHitRectInsets")() : left, right, top, bottom - Returns the insets of the frame's hit rectangle.

[Frame:GetHyperlinksEnabled](https://warcraft.wiki.gg/wiki/API:Frame_GetHyperlinksEnabled "API:Frame GetHyperlinksEnabled")() : enabled - Returns true if mouse interaction with hyperlinks on the frame is enabled.

[Frame:GetID](https://warcraft.wiki.gg/wiki/API:Frame_GetID "API:Frame GetID")() : id - Returns the frame's numeric identifier.

[Frame:GetNumChildren](https://warcraft.wiki.gg/wiki/API:Frame_GetNumChildren "API:Frame GetNumChildren")() : numChildren - Returns the number of child frames belonging to the frame.

[Frame:GetNumRegions](https://warcraft.wiki.gg/wiki/API:Frame_GetNumRegions "API:Frame GetNumRegions")() : numRegions - Returns the number of non-Frame child regions belonging to the frame.

[Frame:GetOnUpdateMode](https://warcraft.wiki.gg/wiki/API:Frame_GetOnUpdateMode "API:Frame GetOnUpdateMode")() : onUpdateMode

[Frame:GetPropagateKeyboardInput](https://warcraft.wiki.gg/wiki/API:Frame_GetPropagateKeyboardInput "API:Frame GetPropagateKeyboardInput")() : propagate - Returns whether the frame propagates keyboard events.

[Frame:GetRaisedFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_GetRaisedFrameLevel "API:Frame GetRaisedFrameLevel")() : frameLevel

[Frame:GetRegions](https://warcraft.wiki.gg/wiki/API:Frame_GetRegions "API:Frame GetRegions")() : ...regions - Returns a list of non-Frame child regions belonging to the frame.

[Frame:GetResizeBounds](https://warcraft.wiki.gg/wiki/API:Frame_GetResizeBounds "API:Frame GetResizeBounds")() : minWidth, minHeight, maxWidth, maxHeight - Returns the minimum and maximum size of the frame for user resizing.

[Frame:GetRolesetNames](https://warcraft.wiki.gg/wiki/API:Frame_GetRolesetNames "API:Frame GetRolesetNames")() : rolesets

[Frame:GetScale](https://warcraft.wiki.gg/wiki/API:Frame_GetScale "API:Frame GetScale")() : frameScale

[Frame:GetWindow](https://warcraft.wiki.gg/wiki/API:Frame_GetWindow "API:Frame GetWindow")() : Functionindow

[Frame:HasAlphaGradient](https://warcraft.wiki.gg/wiki/API:Frame_HasAlphaGradient "API:Frame HasAlphaGradient")() : hasAlphaGradient

[Frame:HasFixedFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_HasFixedFrameLevel "API:Frame HasFixedFrameLevel")() : isFixed

[Frame:HasFixedFrameStrata](https://warcraft.wiki.gg/wiki/API:Frame_HasFixedFrameStrata "API:Frame HasFixedFrameStrata")() : isFixed

[Frame:Hide](https://warcraft.wiki.gg/wiki/API:Frame_Hide "API:Frame Hide")() `#secureframe`

[Frame:InterceptStartDrag](https://warcraft.wiki.gg/wiki/API:Frame_InterceptStartDrag "API:Frame InterceptStartDrag")(delegate)

[Frame:IsClampedToScreen](https://warcraft.wiki.gg/wiki/API:Frame_IsClampedToScreen "API:Frame IsClampedToScreen")() : clampedToScreen - Returns whether a frame is prevented from being moved off-screen.

[Frame:IsDrawLayerEnabled](https://warcraft.wiki.gg/wiki/API:Frame_IsDrawLayerEnabled "API:Frame IsDrawLayerEnabled")(layer) : isEnabled

[Frame:IsEventRegistered](https://warcraft.wiki.gg/wiki/API:Frame_IsEventRegistered "API:Frame IsEventRegistered")(eventName) : isRegistered, ...units - Returns whether a frame is registered to an event.

[Frame:IsFrameBuffer](https://warcraft.wiki.gg/wiki/API:Frame_IsFrameBuffer "API:Frame IsFrameBuffer")() : isFrameBuffer

[Frame:IsGamePadButtonEnabled](https://warcraft.wiki.gg/wiki/API:Frame_IsGamePadButtonEnabled "API:Frame IsGamePadButtonEnabled")() : enabled - Checks if this frame is configured to receive gamepad button inputs.

[Frame:IsGamePadStickEnabled](https://warcraft.wiki.gg/wiki/API:Frame_IsGamePadStickEnabled "API:Frame IsGamePadStickEnabled")() : enabled - Checks if this frame is configured to receive gamepad stick inputs.

[Frame:IsHighlightLocked](https://warcraft.wiki.gg/wiki/API:Frame_IsHighlightLocked "API:Frame IsHighlightLocked")() : locked

[Frame:IsIgnoringChildrenForBounds](https://warcraft.wiki.gg/wiki/API:Frame_IsIgnoringChildrenForBounds "API:Frame IsIgnoringChildrenForBounds")() : ignore

[Frame:IsIgnoringParentAlpha](https://warcraft.wiki.gg/wiki/API:Frame_IsIgnoringParentAlpha "API:Frame IsIgnoringParentAlpha")() : ignore

[Frame:IsIgnoringParentScale](https://warcraft.wiki.gg/wiki/API:Frame_IsIgnoringParentScale "API:Frame IsIgnoringParentScale")() : ignore

[Frame:IsKeyboardEnabled](https://warcraft.wiki.gg/wiki/API:Frame_IsKeyboardEnabled "API:Frame IsKeyboardEnabled")() : enabled - Returns true if keyboard interactivity is enabled for the frame.

[Frame:IsMovable](https://warcraft.wiki.gg/wiki/API:Frame_IsMovable "API:Frame IsMovable")() : isMovable - Returns true if the frame is movable.

[Frame:IsObjectLoaded](https://warcraft.wiki.gg/wiki/API:Frame_IsObjectLoaded "API:Frame IsObjectLoaded")() : isLoaded

[Frame:IsResizable](https://warcraft.wiki.gg/wiki/API:Frame_IsResizable "API:Frame IsResizable")() : resizable - Returns true if the frame can be resized by the user.

[Frame:IsRolesetFiltered](https://warcraft.wiki.gg/wiki/API:Frame_IsRolesetFiltered "API:Frame IsRolesetFiltered")() : isRolesetFiltered

[Frame:IsShown](https://warcraft.wiki.gg/wiki/API:Frame_IsShown "API:Frame IsShown")() : isShown

[Frame:IsToplevel](https://warcraft.wiki.gg/wiki/API:Frame_IsToplevel "API:Frame IsToplevel")() : isTopLevel - Returns whether this frame should raise its frame level on mouse interaction.

[Frame:IsUserPlaced](https://warcraft.wiki.gg/wiki/API:Frame_IsUserPlaced "API:Frame IsUserPlaced")() : isUserPlaced - Returns whether the frame has been moved by the user.

[Frame:IsUsingParentLevel](https://warcraft.wiki.gg/wiki/API:Frame_IsUsingParentLevel "API:Frame IsUsingParentLevel")() : usingParentLevel

[Frame:IsVisible](https://warcraft.wiki.gg/wiki/API:Frame_IsVisible "API:Frame IsVisible")() : isVisible

[Frame:LockHighlight](https://warcraft.wiki.gg/wiki/API:Frame_LockHighlight "API:Frame LockHighlight")() - Sets the frame or button to always be drawn highlighted.

[Frame:Lower](https://warcraft.wiki.gg/wiki/API:Frame_Lower "API:Frame Lower")() `#secureframe` - Reduces the frame's frame level below all other frames in its strata.

[Frame:Raise](https://warcraft.wiki.gg/wiki/API:Frame_Raise "API:Frame Raise")() `#secureframe` - Increases the frame's frame level above all other frames in its strata.

[Frame:RegisterAllEvents](https://warcraft.wiki.gg/wiki/API:Frame_RegisterAllEvents "API:Frame RegisterAllEvents")() - Flags the frame to receive all events.

[Frame:RegisterEvent](https://warcraft.wiki.gg/wiki/API:Frame_RegisterEvent "API:Frame RegisterEvent")(eventName) : registered - Registers the frame to an event.

[Frame:RegisterEventCallback](https://warcraft.wiki.gg/wiki/API:Frame_RegisterEventCallback "API:Frame RegisterEventCallback")(eventName, cb) : registered

[Frame:RegisterForDrag](https://warcraft.wiki.gg/wiki/API:Frame_RegisterForDrag "API:Frame RegisterForDrag")(...buttons) - Registers the frame for dragging with a mouse button.

[Frame:RegisterUnitEvent](https://warcraft.wiki.gg/wiki/API:Frame_RegisterUnitEvent "API:Frame RegisterUnitEvent")(eventName, ...units) : registered - Registers the frame for a specific event, triggering only for the specified units.

[Frame:RegisterUnitEventCallback](https://warcraft.wiki.gg/wiki/API:Frame_RegisterUnitEventCallback "API:Frame RegisterUnitEventCallback")(eventName, cb, ...units) : registered

[Frame:RemoveRoleset](https://warcraft.wiki.gg/wiki/API:Frame_RemoveRoleset "API:Frame RemoveRoleset")(roleset)

[Frame:ResizeToBoundsRect](https://warcraft.wiki.gg/wiki/API:Frame_ResizeToBoundsRect "API:Frame ResizeToBoundsRect")()

[Frame:RotateTextures](https://warcraft.wiki.gg/wiki/API:Frame_RotateTextures "API:Frame RotateTextures")(radians \[, x, y\])

[Frame:SetAlpha](https://warcraft.wiki.gg/wiki/API:Frame_SetAlpha "API:Frame SetAlpha")(alpha)

[Frame:SetAlphaGradient](https://warcraft.wiki.gg/wiki/API:Frame_SetAlphaGradient "API:Frame SetAlphaGradient")(index, gradient)

[Frame:SetAttribute](https://warcraft.wiki.gg/wiki/API:Frame_SetAttribute "API:Frame SetAttribute")(attributeName, value) `#secureframe` - Sets an attribute on the frame.

[Frame:SetAttributeNoHandler](https://warcraft.wiki.gg/wiki/API:Frame_SetAttributeNoHandler "API:Frame SetAttributeNoHandler")(attributeName, value) `#secureframe` - Sets an attribute on the frame without triggering the OnAttributeChanged script handler.

[Frame:SetClampedToScreen](https://warcraft.wiki.gg/wiki/API:Frame_SetClampedToScreen "API:Frame SetClampedToScreen")(clampedToScreen) `#secureframe` - Prevents the frame from moving off-screen.

[Frame:SetClampRectInsets](https://warcraft.wiki.gg/wiki/API:Frame_SetClampRectInsets "API:Frame SetClampRectInsets")(left, right, top, bottom) `#secureframe` - Controls how much of the frame may be moved off-screen.

[Frame:SetClipsChildren](https://warcraft.wiki.gg/wiki/API:Frame_SetClipsChildren "API:Frame SetClipsChildren")(clipsChildren)

[Frame:SetDontSavePosition](https://warcraft.wiki.gg/wiki/API:Frame_SetDontSavePosition "API:Frame SetDontSavePosition")(dontSave)

[Frame:SetDrawLayerEnabled](https://warcraft.wiki.gg/wiki/API:Frame_SetDrawLayerEnabled "API:Frame SetDrawLayerEnabled")(layer \[, isEnabled\])

[Frame:SetFixedFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_SetFixedFrameLevel "API:Frame SetFixedFrameLevel")(isFixed) `#secureframe`

[Frame:SetFixedFrameStrata](https://warcraft.wiki.gg/wiki/API:Frame_SetFixedFrameStrata "API:Frame SetFixedFrameStrata")(isFixed) `#secureframe`

[Frame:SetFlattensRenderLayers](https://warcraft.wiki.gg/wiki/API:Frame_SetFlattensRenderLayers "API:Frame SetFlattensRenderLayers")(flatten) - Controls whether all subregions are composited into a single render layer.

[Frame:SetFrameLevel](https://warcraft.wiki.gg/wiki/API:Frame_SetFrameLevel "API:Frame SetFrameLevel")(frameLevel) `#secureframe` - Sets the level at which the frame is layered relative to others in its strata.

[Frame:SetFrameStrata](https://warcraft.wiki.gg/wiki/API:Frame_SetFrameStrata "API:Frame SetFrameStrata")(strata) `#secureframe` - Sets the layering strata of the frame.

[Frame:SetHighlightLocked](https://warcraft.wiki.gg/wiki/API:Frame_SetHighlightLocked "API:Frame SetHighlightLocked")(locked)

[Frame:SetHitRectInsets](https://warcraft.wiki.gg/wiki/API:Frame_SetHitRectInsets "API:Frame SetHitRectInsets")(left, right, top, bottom) `#secureframe` - Returns the insets of the frame's hit rectangle.

[Frame:SetHyperlinkPropagateToParent](https://warcraft.wiki.gg/wiki/API:Frame_SetHyperlinkPropagateToParent "API:Frame SetHyperlinkPropagateToParent")(canPropagate)

[Frame:SetHyperlinksEnabled](https://warcraft.wiki.gg/wiki/API:Frame_SetHyperlinksEnabled "API:Frame SetHyperlinksEnabled")(\[enabled\]) `#secureframe` - Allows mouse interaction with hyperlinks on the frame.

[Frame:SetID](https://warcraft.wiki.gg/wiki/API:Frame_SetID "API:Frame SetID")(id) `#secureframe` - Returns the frame's numeric identifier.

[Frame:SetIgnoreParentAlpha](https://warcraft.wiki.gg/wiki/API:Frame_SetIgnoreParentAlpha "API:Frame SetIgnoreParentAlpha")(ignore)

[Frame:SetIgnoreParentScale](https://warcraft.wiki.gg/wiki/API:Frame_SetIgnoreParentScale "API:Frame SetIgnoreParentScale")(ignore) `#secureframe`

[Frame:SetIgnoringChildrenForBounds](https://warcraft.wiki.gg/wiki/API:Frame_SetIgnoringChildrenForBounds "API:Frame SetIgnoringChildrenForBounds")(ignore)

[Frame:SetIsFrameBuffer](https://warcraft.wiki.gg/wiki/API:Frame_SetIsFrameBuffer "API:Frame SetIsFrameBuffer")(isFrameBuffer) - Controls whether or not a frame is rendered to its own framebuffer prior to being composited atop the UI.

[Frame:SetMovable](https://warcraft.wiki.gg/wiki/API:Frame_SetMovable "API:Frame SetMovable")(movable) - Sets whether the frame can be moved.

[Frame:SetOnUpdateMode](https://warcraft.wiki.gg/wiki/API:Frame_SetOnUpdateMode "API:Frame SetOnUpdateMode")(onUpdateMode)

[Frame:SetPropagateKeyboardInput](https://warcraft.wiki.gg/wiki/API:Frame_SetPropagateKeyboardInput "API:Frame SetPropagateKeyboardInput")(propagate) `#nocombat` - Sets whether keyboard input is consumed by this frame or propagates to further frames.

[Frame:SetResizable](https://warcraft.wiki.gg/wiki/API:Frame_SetResizable "API:Frame SetResizable")(resizable) - Sets whether the frame can be resized by the user.

[Frame:SetResizeBounds](https://warcraft.wiki.gg/wiki/API:Frame_SetResizeBounds "API:Frame SetResizeBounds")(minWidth, minHeight \[, maxWidth, maxHeight\]) - Sets the minimum and maximum size of the frame for user resizing.

[Frame:SetRolesets](https://warcraft.wiki.gg/wiki/API:Frame_SetRolesets "API:Frame SetRolesets")(\[rolesetsString\])

[Frame:SetScale](https://warcraft.wiki.gg/wiki/API:Frame_SetScale "API:Frame SetScale")(scale) `#secureframe`

[Frame:SetShown](https://warcraft.wiki.gg/wiki/API:Frame_SetShown "API:Frame SetShown")(\[shown\]) `#secureframe`

[Frame:SetToplevel](https://warcraft.wiki.gg/wiki/API:Frame_SetToplevel "API:Frame SetToplevel")(topLevel) `#secureframe` - Controls whether or not a frame should raise its frame level on mouse interaction.

[Frame:SetUserPlaced](https://warcraft.wiki.gg/wiki/API:Frame_SetUserPlaced "API:Frame SetUserPlaced")(userPlaced) - Sets whether a frame has been moved by the user and will be saved in the layout cache.

[Frame:SetUsingParentLevel](https://warcraft.wiki.gg/wiki/API:Frame_SetUsingParentLevel "API:Frame SetUsingParentLevel")(usingParentLevel) `#secureframe`

[Frame:SetWindow](https://warcraft.wiki.gg/wiki/API:Frame_SetWindow "API:Frame SetWindow")(\[window\])

[Frame:Show](https://warcraft.wiki.gg/wiki/API:Frame_Show "API:Frame Show")() `#secureframe`

[Frame:StartMoving](https://warcraft.wiki.gg/wiki/API:Frame_StartMoving "API:Frame StartMoving")(\[alwaysStartFromMouse\]) `#secureframe` - Begins repositioning the frame via mouse movement.

[Frame:StartSizing](https://warcraft.wiki.gg/wiki/API:Frame_StartSizing "API:Frame StartSizing")(\[resizePoint, alwaysStartFromMouse\]) `#secureframe` - Begins resizing the frame via mouse movement.

[Frame:StopMovingOrSizing](https://warcraft.wiki.gg/wiki/API:Frame_StopMovingOrSizing "API:Frame StopMovingOrSizing")() `#secureframe` - Stops moving or resizing the frame.

[Frame:UnlockHighlight](https://warcraft.wiki.gg/wiki/API:Frame_UnlockHighlight "API:Frame UnlockHighlight")() - Sets the frame or button to not always be drawn highlighted.

[Frame:UnregisterAllEvents](https://warcraft.wiki.gg/wiki/API:Frame_UnregisterAllEvents "API:Frame UnregisterAllEvents")() - Unregisters all events from the frame.

[Frame:UnregisterEvent](https://warcraft.wiki.gg/wiki/API:Frame_UnregisterEvent "API:Frame UnregisterEvent")(eventName) : registered - Unregisters an event from the frame.

### [Button](https://warcraft.wiki.gg/wiki/UIOBJECT_Button "UIOBJECT Button")

[Button:ClearDisabledTexture](https://warcraft.wiki.gg/wiki/API:Button_ClearDisabledTexture "API:Button ClearDisabledTexture")()

[Button:ClearHighlightTexture](https://warcraft.wiki.gg/wiki/API:Button_ClearHighlightTexture "API:Button ClearHighlightTexture")()

[Button:ClearNormalTexture](https://warcraft.wiki.gg/wiki/API:Button_ClearNormalTexture "API:Button ClearNormalTexture")()

[Button:ClearPushedTexture](https://warcraft.wiki.gg/wiki/API:Button_ClearPushedTexture "API:Button ClearPushedTexture")()

[Button:Click](https://warcraft.wiki.gg/wiki/API:Button_Click "API:Button Click")(\[button, isDown\]) - Performs a virtual mouse click on the button.

[Button:Disable](https://warcraft.wiki.gg/wiki/API:Button_Disable "API:Button Disable")() `#secureframe`

[Button:Enable](https://warcraft.wiki.gg/wiki/API:Button_Enable "API:Button Enable")() `#secureframe`

[Button:GetButtonState](https://warcraft.wiki.gg/wiki/API:Button_GetButtonState "API:Button GetButtonState")() : buttonState

[Button:GetDisabledFontObject](https://warcraft.wiki.gg/wiki/API:Button_GetDisabledFontObject "API:Button GetDisabledFontObject")() : font

[Button:GetDisabledTexture](https://warcraft.wiki.gg/wiki/API:Button_GetDisabledTexture "API:Button GetDisabledTexture")() : texture

[Button:GetFontString](https://warcraft.wiki.gg/wiki/API:Button_GetFontString "API:Button GetFontString")() : fontString

[Button:GetHighlightFontObject](https://warcraft.wiki.gg/wiki/API:Button_GetHighlightFontObject "API:Button GetHighlightFontObject")() : font

[Button:GetHighlightTexture](https://warcraft.wiki.gg/wiki/API:Button_GetHighlightTexture "API:Button GetHighlightTexture")() : texture - Returns the highlight texture for the button.

[Button:GetMotionScriptsWhileDisabled](https://warcraft.wiki.gg/wiki/API:Button_GetMotionScriptsWhileDisabled "API:Button GetMotionScriptsWhileDisabled")() : motionScriptsWhileDisabled

[Button:GetNormalFontObject](https://warcraft.wiki.gg/wiki/API:Button_GetNormalFontObject "API:Button GetNormalFontObject")() : font - Returns the font object for the button's normal state.

[Button:GetNormalTexture](https://warcraft.wiki.gg/wiki/API:Button_GetNormalTexture "API:Button GetNormalTexture")() : texture

[Button:GetPushedTextOffset](https://warcraft.wiki.gg/wiki/API:Button_GetPushedTextOffset "API:Button GetPushedTextOffset")() : offsetX, offsetY

[Button:GetPushedTexture](https://warcraft.wiki.gg/wiki/API:Button_GetPushedTexture "API:Button GetPushedTexture")() : texture

[Button:GetText](https://warcraft.wiki.gg/wiki/API:Button_GetText "API:Button GetText")() : text - Returns the text on the button.

[Button:GetTextHeight](https://warcraft.wiki.gg/wiki/API:Button_GetTextHeight "API:Button GetTextHeight")() : height

[Button:GetTextWidth](https://warcraft.wiki.gg/wiki/API:Button_GetTextWidth "API:Button GetTextWidth")() : Functionidth

[Button:IsEnabled](https://warcraft.wiki.gg/wiki/API:Button_IsEnabled "API:Button IsEnabled")() : isEnabled - Returns true if the button is enabled.

[Button:RegisterForClicks](https://warcraft.wiki.gg/wiki/API:Button_RegisterForClicks "API:Button RegisterForClicks")(...buttons) `#secureframe` - Registers the button widget to receive OnClick script events.

[Button:RegisterForMouse](https://warcraft.wiki.gg/wiki/API:Button_RegisterForMouse "API:Button RegisterForMouse")(...buttons) `#secureframe` - Registers the button widget to receive OnMouse script events.

[Button:SetButtonState](https://warcraft.wiki.gg/wiki/API:Button_SetButtonState "API:Button SetButtonState")(buttonState \[, lock\])

[Button:SetDisabledAtlas](https://warcraft.wiki.gg/wiki/API:Button_SetDisabledAtlas "API:Button SetDisabledAtlas")(atlas)

[Button:SetDisabledFontObject](https://warcraft.wiki.gg/wiki/API:Button_SetDisabledFontObject "API:Button SetDisabledFontObject")(font)

[Button:SetDisabledTexture](https://warcraft.wiki.gg/wiki/API:Button_SetDisabledTexture "API:Button SetDisabledTexture")(asset)

[Button:SetEnabled](https://warcraft.wiki.gg/wiki/API:Button_SetEnabled "API:Button SetEnabled")(\[enabled\]) `#secureframe`

[Button:SetFontString](https://warcraft.wiki.gg/wiki/API:Button_SetFontString "API:Button SetFontString")(fontString)

[Button:SetFormattedText](https://warcraft.wiki.gg/wiki/API:Button_SetFormattedText "API:Button SetFormattedText")(text)

[Button:SetHighlightAtlas](https://warcraft.wiki.gg/wiki/API:Button_SetHighlightAtlas "API:Button SetHighlightAtlas")(atlas \[, blendMode\])

[Button:SetHighlightFontObject](https://warcraft.wiki.gg/wiki/API:Button_SetHighlightFontObject "API:Button SetHighlightFontObject")(font)

[Button:SetHighlightTexture](https://warcraft.wiki.gg/wiki/API:Button_SetHighlightTexture "API:Button SetHighlightTexture")(asset \[, blendMode\])

[Button:SetMotionScriptsWhileDisabled](https://warcraft.wiki.gg/wiki/API:Button_SetMotionScriptsWhileDisabled "API:Button SetMotionScriptsWhileDisabled")(motionScriptsWhileDisabled)

[Button:SetNormalAtlas](https://warcraft.wiki.gg/wiki/API:Button_SetNormalAtlas "API:Button SetNormalAtlas")(atlas)

[Button:SetNormalFontObject](https://warcraft.wiki.gg/wiki/API:Button_SetNormalFontObject "API:Button SetNormalFontObject")(font) - Sets the font object used for the button's normal state.

[Button:SetNormalTexture](https://warcraft.wiki.gg/wiki/API:Button_SetNormalTexture "API:Button SetNormalTexture")(asset) - Sets the normal texture for a button.

[Button:SetPushedAtlas](https://warcraft.wiki.gg/wiki/API:Button_SetPushedAtlas "API:Button SetPushedAtlas")(atlas)

[Button:SetPushedTextOffset](https://warcraft.wiki.gg/wiki/API:Button_SetPushedTextOffset "API:Button SetPushedTextOffset")(offsetX, offsetY)

[Button:SetPushedTexture](https://warcraft.wiki.gg/wiki/API:Button_SetPushedTexture "API:Button SetPushedTexture")(asset)

[Button:SetText](https://warcraft.wiki.gg/wiki/API:Button_SetText "API:Button SetText")(\[text\]) - Sets the text of the button.

### [CheckButton](https://warcraft.wiki.gg/wiki/UIOBJECT_CheckButton "UIOBJECT CheckButton")

[CheckButton:GetChecked](https://warcraft.wiki.gg/wiki/API:CheckButton_GetChecked "API:CheckButton GetChecked")() : checked - Returns true if the checkbutton is checked.

[CheckButton:GetCheckedTexture](https://warcraft.wiki.gg/wiki/API:CheckButton_GetCheckedTexture "API:CheckButton GetCheckedTexture")() : texture

[CheckButton:GetDisabledCheckedTexture](https://warcraft.wiki.gg/wiki/API:CheckButton_GetDisabledCheckedTexture "API:CheckButton GetDisabledCheckedTexture")() : texture

[CheckButton:SetChecked](https://warcraft.wiki.gg/wiki/API:CheckButton_SetChecked "API:CheckButton SetChecked")(\[checked\]) - Sets whether the checkbutton is checked.

[CheckButton:SetCheckedTexture](https://warcraft.wiki.gg/wiki/API:CheckButton_SetCheckedTexture "API:CheckButton SetCheckedTexture")(asset)

[CheckButton:SetDisabledCheckedTexture](https://warcraft.wiki.gg/wiki/API:CheckButton_SetDisabledCheckedTexture "API:CheckButton SetDisabledCheckedTexture")(asset)

### [Model](https://warcraft.wiki.gg/wiki/UIOBJECT_Model "UIOBJECT Model")

[Model:AdvanceTime](https://warcraft.wiki.gg/wiki/API:Model_AdvanceTime "API:Model AdvanceTime")()

[Model:ClearFog](https://warcraft.wiki.gg/wiki/API:Model_ClearFog "API:Model ClearFog")()

[Model:ClearModel](https://warcraft.wiki.gg/wiki/API:Model_ClearModel "API:Model ClearModel")()

[Model:ClearTransform](https://warcraft.wiki.gg/wiki/API:Model_ClearTransform "API:Model ClearTransform")()

[Model:GetCameraDistance](https://warcraft.wiki.gg/wiki/API:Model_GetCameraDistance "API:Model GetCameraDistance")() : distance

[Model:GetCameraFacing](https://warcraft.wiki.gg/wiki/API:Model_GetCameraFacing "API:Model GetCameraFacing")() : radians

[Model:GetCameraPosition](https://warcraft.wiki.gg/wiki/API:Model_GetCameraPosition "API:Model GetCameraPosition")() : positionX, positionY, positionZ

[Model:GetCameraRoll](https://warcraft.wiki.gg/wiki/API:Model_GetCameraRoll "API:Model GetCameraRoll")() : radians

[Model:GetCameraTarget](https://warcraft.wiki.gg/wiki/API:Model_GetCameraTarget "API:Model GetCameraTarget")() : targetX, targetY, targetZ

[Model:GetDesaturation](https://warcraft.wiki.gg/wiki/API:Model_GetDesaturation "API:Model GetDesaturation")() : strength

[Model:GetFacing](https://warcraft.wiki.gg/wiki/API:Model_GetFacing "API:Model GetFacing")() : facing - Returns the offset of the rotation angle.

[Model:GetFogColor](https://warcraft.wiki.gg/wiki/API:Model_GetFogColor "API:Model GetFogColor")() : colorR, colorG, colorB, colorA

[Model:GetFogFar](https://warcraft.wiki.gg/wiki/API:Model_GetFogFar "API:Model GetFogFar")() : fogFar

[Model:GetFogNear](https://warcraft.wiki.gg/wiki/API:Model_GetFogNear "API:Model GetFogNear")() : fogNear

[Model:GetLight](https://warcraft.wiki.gg/wiki/API:Model_GetLight "API:Model GetLight")() : enabled, light

[Model:GetModelAlpha](https://warcraft.wiki.gg/wiki/API:Model_GetModelAlpha "API:Model GetModelAlpha")() : alpha

[Model:GetModelDrawLayer](https://warcraft.wiki.gg/wiki/API:Model_GetModelDrawLayer "API:Model GetModelDrawLayer")() : layer, sublayer

[Model:GetModelFileID](https://warcraft.wiki.gg/wiki/API:Model_GetModelFileID "API:Model GetModelFileID")() : modelFileID - Returns the file ID associated with the currently displayed model.

[Model:GetModelScale](https://warcraft.wiki.gg/wiki/API:Model_GetModelScale "API:Model GetModelScale")() : scale

[Model:GetPaused](https://warcraft.wiki.gg/wiki/API:Model_GetPaused "API:Model GetPaused")() : paused

[Model:GetPitch](https://warcraft.wiki.gg/wiki/API:Model_GetPitch "API:Model GetPitch")() : pitch

[Model:GetPosition](https://warcraft.wiki.gg/wiki/API:Model_GetPosition "API:Model GetPosition")() : positionX, positionY, positionZ

[Model:GetRoll](https://warcraft.wiki.gg/wiki/API:Model_GetRoll "API:Model GetRoll")() : roll

[Model:GetShadowEffect](https://warcraft.wiki.gg/wiki/API:Model_GetShadowEffect "API:Model GetShadowEffect")() : strength

[Model:GetViewInsets](https://warcraft.wiki.gg/wiki/API:Model_GetViewInsets "API:Model GetViewInsets")() : left, right, top, bottom

[Model:GetViewTranslation](https://warcraft.wiki.gg/wiki/API:Model_GetViewTranslation "API:Model GetViewTranslation")() : x, y

[Model:GetWorldScale](https://warcraft.wiki.gg/wiki/API:Model_GetWorldScale "API:Model GetWorldScale")() : worldScale

[Model:HasAttachmentPoints](https://warcraft.wiki.gg/wiki/API:Model_HasAttachmentPoints "API:Model HasAttachmentPoints")() : hasAttachmentPoints

[Model:HasCustomCamera](https://warcraft.wiki.gg/wiki/API:Model_HasCustomCamera "API:Model HasCustomCamera")() : hasCustomCamera

[Model:IsUsingModelCenterToTransform](https://warcraft.wiki.gg/wiki/API:Model_IsUsingModelCenterToTransform "API:Model IsUsingModelCenterToTransform")() : useCenter

[Model:MakeCurrentCameraCustom](https://warcraft.wiki.gg/wiki/API:Model_MakeCurrentCameraCustom "API:Model MakeCurrentCameraCustom")()

[Model:ReplaceIconTexture](https://warcraft.wiki.gg/wiki/API:Model_ReplaceIconTexture "API:Model ReplaceIconTexture")(asset)

[Model:SetCamera](https://warcraft.wiki.gg/wiki/API:Model_SetCamera "API:Model SetCamera")(cameraIndex) - Selects a predefined camera.

[Model:SetCameraDistance](https://warcraft.wiki.gg/wiki/API:Model_SetCameraDistance "API:Model SetCameraDistance")(distance)

[Model:SetCameraFacing](https://warcraft.wiki.gg/wiki/API:Model_SetCameraFacing "API:Model SetCameraFacing")(radians)

[Model:SetCameraPosition](https://warcraft.wiki.gg/wiki/API:Model_SetCameraPosition "API:Model SetCameraPosition")(positionX, positionY, positionZ)

[Model:SetCameraRoll](https://warcraft.wiki.gg/wiki/API:Model_SetCameraRoll "API:Model SetCameraRoll")(radians)

[Model:SetCameraTarget](https://warcraft.wiki.gg/wiki/API:Model_SetCameraTarget "API:Model SetCameraTarget")(targetX, targetY, targetZ)

[Model:SetCustomCamera](https://warcraft.wiki.gg/wiki/API:Model_SetCustomCamera "API:Model SetCustomCamera")(cameraIndex)

[Model:SetDesaturation](https://warcraft.wiki.gg/wiki/API:Model_SetDesaturation "API:Model SetDesaturation")(strength)

[Model:SetFacing](https://warcraft.wiki.gg/wiki/API:Model_SetFacing "API:Model SetFacing")(facing) - Rotates the displayed model for the given angle in counter-clockwise direction.

[Model:SetFogColor](https://warcraft.wiki.gg/wiki/API:Model_SetFogColor "API:Model SetFogColor")(colorR, colorG, colorB \[, a\]) - Sets the color used for the fogging in the model frame.

[Model:SetFogFar](https://warcraft.wiki.gg/wiki/API:Model_SetFogFar "API:Model SetFogFar")(fogFar) - Sets the far clipping plane for fogging.

[Model:SetFogNear](https://warcraft.wiki.gg/wiki/API:Model_SetFogNear "API:Model SetFogNear")(fogNear) - Sets the near clipping plane for fogging.

[Model:SetGlow](https://warcraft.wiki.gg/wiki/API:Model_SetGlow "API:Model SetGlow")(glow)

[Model:SetGradientMask](https://warcraft.wiki.gg/wiki/API:Model_SetGradientMask "API:Model SetGradientMask")(grad0, grad1, grad2, grad3)

[Model:SetLight](https://warcraft.wiki.gg/wiki/API:Model_SetLight "API:Model SetLight")(enabled, light) - Specifies model lighting.

[Model:SetModel](https://warcraft.wiki.gg/wiki/API:Model_SetModel "API:Model SetModel")(asset \[, noMip\]) - Sets the model to display a certain mesh.

[Model:SetModelAlpha](https://warcraft.wiki.gg/wiki/API:Model_SetModelAlpha "API:Model SetModelAlpha")(alpha)

[Model:SetModelDrawLayer](https://warcraft.wiki.gg/wiki/API:Model_SetModelDrawLayer "API:Model SetModelDrawLayer")(layer)

[Model:SetModelScale](https://warcraft.wiki.gg/wiki/API:Model_SetModelScale "API:Model SetModelScale")(scale)

[Model:SetParticlesEnabled](https://warcraft.wiki.gg/wiki/API:Model_SetParticlesEnabled "API:Model SetParticlesEnabled")(enabled)

[Model:SetPaused](https://warcraft.wiki.gg/wiki/API:Model_SetPaused "API:Model SetPaused")(paused)

[Model:SetPitch](https://warcraft.wiki.gg/wiki/API:Model_SetPitch "API:Model SetPitch")(pitch)

[Model:SetPosition](https://warcraft.wiki.gg/wiki/API:Model_SetPosition "API:Model SetPosition")(positionX, positionY, positionZ) - Positions a model relative to the bottom-left corner.

[Model:SetRoll](https://warcraft.wiki.gg/wiki/API:Model_SetRoll "API:Model SetRoll")(roll)

[Model:SetSequence](https://warcraft.wiki.gg/wiki/API:Model_SetSequence "API:Model SetSequence")(sequence) - Sets the animation-sequence to be played.

[Model:SetSequenceTime](https://warcraft.wiki.gg/wiki/API:Model_SetSequenceTime "API:Model SetSequenceTime")(sequence, timeOffset)

[Model:SetShadowEffect](https://warcraft.wiki.gg/wiki/API:Model_SetShadowEffect "API:Model SetShadowEffect")(strength)

[Model:SetTransform](https://warcraft.wiki.gg/wiki/API:Model_SetTransform "API:Model SetTransform")(\[translation, rotation, scale\])

[Model:SetUseGBuffer](https://warcraft.wiki.gg/wiki/API:Model_SetUseGBuffer "API:Model SetUseGBuffer")(useGBuffer)

[Model:SetViewInsets](https://warcraft.wiki.gg/wiki/API:Model_SetViewInsets "API:Model SetViewInsets")(left, right, top, bottom)

[Model:SetViewTranslation](https://warcraft.wiki.gg/wiki/API:Model_SetViewTranslation "API:Model SetViewTranslation")(x, y)

[Model:TransformCameraSpaceToModelSpace](https://warcraft.wiki.gg/wiki/API:Model_TransformCameraSpaceToModelSpace "API:Model TransformCameraSpaceToModelSpace")(cameraPosition) : modelPosition

[Model:UseModelCenterToTransform](https://warcraft.wiki.gg/wiki/API:Model_UseModelCenterToTransform "API:Model UseModelCenterToTransform")(useCenter)

### [PlayerModel](https://warcraft.wiki.gg/wiki/UIOBJECT_PlayerModel "UIOBJECT PlayerModel")

[PlayerModel:ApplySpellVisualKit](https://warcraft.wiki.gg/wiki/API:PlayerModel_ApplySpellVisualKit "API:PlayerModel ApplySpellVisualKit")(spellVisualKitID \[, oneShot\])

[PlayerModel:CanSetUnit](https://warcraft.wiki.gg/wiki/API:PlayerModel_CanSetUnit "API:PlayerModel CanSetUnit")(unit)

[PlayerModel:FreezeAnimation](https://warcraft.wiki.gg/wiki/API:PlayerModel_FreezeAnimation "API:PlayerModel FreezeAnimation")(anim, variation, frame) - Freezes an animation at a specific animation frame on the model.

[PlayerModel:GetDisplayInfo](https://warcraft.wiki.gg/wiki/API:PlayerModel_GetDisplayInfo "API:PlayerModel GetDisplayInfo")() : displayID

[PlayerModel:GetDoBlend](https://warcraft.wiki.gg/wiki/API:PlayerModel_GetDoBlend "API:PlayerModel GetDoBlend")() : doBlend

[PlayerModel:GetKeepModelOnHide](https://warcraft.wiki.gg/wiki/API:PlayerModel_GetKeepModelOnHide "API:PlayerModel GetKeepModelOnHide")() : keepModelOnHide

[PlayerModel:HasAnimation](https://warcraft.wiki.gg/wiki/API:PlayerModel_HasAnimation "API:PlayerModel HasAnimation")(anim) : hasAnimation - Returns true if the currently displayed model supports the given animation ID.

[PlayerModel:PlayAnimKit](https://warcraft.wiki.gg/wiki/API:PlayerModel_PlayAnimKit "API:PlayerModel PlayAnimKit")(animKit \[, loop\])

[PlayerModel:RefreshCamera](https://warcraft.wiki.gg/wiki/API:PlayerModel_RefreshCamera "API:PlayerModel RefreshCamera")()

[PlayerModel:RefreshUnit](https://warcraft.wiki.gg/wiki/API:PlayerModel_RefreshUnit "API:PlayerModel RefreshUnit")()

[PlayerModel:SetAnimation](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetAnimation "API:PlayerModel SetAnimation")(anim \[, variation\]) - Sets the animation to be played by the model.

[PlayerModel:SetBarberShopAlternateForm](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetBarberShopAlternateForm "API:PlayerModel SetBarberShopAlternateForm")()

[PlayerModel:SetCamDistanceScale](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetCamDistanceScale "API:PlayerModel SetCamDistanceScale")(scale)

[PlayerModel:SetCreature](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetCreature "API:PlayerModel SetCreature")(creatureID \[, displayID\])

[PlayerModel:SetDisplayInfo](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetDisplayInfo "API:PlayerModel SetDisplayInfo")(displayID \[, mountDisplayID\])

[PlayerModel:SetDoBlend](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetDoBlend "API:PlayerModel SetDoBlend")(\[doBlend\])

[PlayerModel:SetItem](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetItem "API:PlayerModel SetItem")(itemID \[, appearanceModID, itemVisualID\])

[PlayerModel:SetItemAppearance](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetItemAppearance "API:PlayerModel SetItemAppearance")(itemAppearanceID \[, itemVisualID, itemSubclass\])

[PlayerModel:SetKeepModelOnHide](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetKeepModelOnHide "API:PlayerModel SetKeepModelOnHide")(keepModelOnHide)

[PlayerModel:SetPortraitZoom](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetPortraitZoom "API:PlayerModel SetPortraitZoom")(zoom)

[PlayerModel:SetRotation](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetRotation "API:PlayerModel SetRotation")(radians \[, animate\])

[PlayerModel:SetUnit](https://warcraft.wiki.gg/wiki/API:PlayerModel_SetUnit "API:PlayerModel SetUnit")(unit \[, blend, useNativeForm\]) : success - Sets the model to display the specified unit.

[PlayerModel:StopAnimKit](https://warcraft.wiki.gg/wiki/API:PlayerModel_StopAnimKit "API:PlayerModel StopAnimKit")()

[PlayerModel:ZeroCachedCenterXY](https://warcraft.wiki.gg/wiki/API:PlayerModel_ZeroCachedCenterXY "API:PlayerModel ZeroCachedCenterXY")()

### [CinematicModel](https://warcraft.wiki.gg/wiki/UIOBJECT_CinematicModel "UIOBJECT CinematicModel")

[CinematicModel:EquipItem](https://warcraft.wiki.gg/wiki/API:CinematicModel_EquipItem "API:CinematicModel EquipItem")(itemID)

[CinematicModel:InitializeCamera](https://warcraft.wiki.gg/wiki/API:CinematicModel_InitializeCamera "API:CinematicModel InitializeCamera")(\[scaleFactor\])

[CinematicModel:InitializePanCamera](https://warcraft.wiki.gg/wiki/API:CinematicModel_InitializePanCamera "API:CinematicModel InitializePanCamera")(\[scaleFactor\])

[CinematicModel:RefreshCamera](https://warcraft.wiki.gg/wiki/API:CinematicModel_RefreshCamera "API:CinematicModel RefreshCamera")()

[CinematicModel:SetAnimOffset](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetAnimOffset "API:CinematicModel SetAnimOffset")(offset)

[CinematicModel:SetCameraPosition](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetCameraPosition "API:CinematicModel SetCameraPosition")(positionX, positionY, positionZ)

[CinematicModel:SetCameraTarget](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetCameraTarget "API:CinematicModel SetCameraTarget")(positionX, positionY, positionZ)

[CinematicModel:SetCreatureData](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetCreatureData "API:CinematicModel SetCreatureData")(creatureID)

[CinematicModel:SetFacingLeft](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetFacingLeft "API:CinematicModel SetFacingLeft")(\[isFacingLeft\])

[CinematicModel:SetFadeTimes](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetFadeTimes "API:CinematicModel SetFadeTimes")(fadeInSeconds, fadeOutSeconds)

[CinematicModel:SetHeightFactor](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetHeightFactor "API:CinematicModel SetHeightFactor")(factor)

[CinematicModel:SetJumpInfo](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetJumpInfo "API:CinematicModel SetJumpInfo")(jumpLength, jumpHeight)

[CinematicModel:SetPanDistance](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetPanDistance "API:CinematicModel SetPanDistance")(scale)

[CinematicModel:SetSpellVisualKit](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetSpellVisualKit "API:CinematicModel SetSpellVisualKit")(visualKitID)

[CinematicModel:SetTargetDistance](https://warcraft.wiki.gg/wiki/API:CinematicModel_SetTargetDistance "API:CinematicModel SetTargetDistance")(scale)

[CinematicModel:StartPan](https://warcraft.wiki.gg/wiki/API:CinematicModel_StartPan "API:CinematicModel StartPan")(panType, durationSeconds \[, doFade, visKitID, startPositionScale, speedMultiplier\])

[CinematicModel:StopPan](https://warcraft.wiki.gg/wiki/API:CinematicModel_StopPan "API:CinematicModel StopPan")()

[CinematicModel:UnequipItems](https://warcraft.wiki.gg/wiki/API:CinematicModel_UnequipItems "API:CinematicModel UnequipItems")()

### [DressUpModel](https://warcraft.wiki.gg/wiki/UIOBJECT_DressUpModel "UIOBJECT DressUpModel")

[DressUpModel:Dress](https://warcraft.wiki.gg/wiki/API:DressUpModel_Dress "API:DressUpModel Dress")()

[DressUpModel:GetAutoDress](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetAutoDress "API:DressUpModel GetAutoDress")() : enabled

[DressUpModel:GetItemTransmogInfo](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetItemTransmogInfo "API:DressUpModel GetItemTransmogInfo")(inventorySlot) : itemTransmogInfo

[DressUpModel:GetItemTransmogInfoList](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetItemTransmogInfoList "API:DressUpModel GetItemTransmogInfoList")() : infoList

[DressUpModel:GetObeyHideInTransmogFlag](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetObeyHideInTransmogFlag "API:DressUpModel GetObeyHideInTransmogFlag")() : enabled

[DressUpModel:GetSheathed](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetSheathed "API:DressUpModel GetSheathed")() : sheathed

[DressUpModel:GetUseTransmogChoices](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetUseTransmogChoices "API:DressUpModel GetUseTransmogChoices")() : enabled

[DressUpModel:GetUseTransmogSkin](https://warcraft.wiki.gg/wiki/API:DressUpModel_GetUseTransmogSkin "API:DressUpModel GetUseTransmogSkin")() : enabled

[DressUpModel:IsGeoReady](https://warcraft.wiki.gg/wiki/API:DressUpModel_IsGeoReady "API:DressUpModel IsGeoReady")() : ready

[DressUpModel:IsSlotAllowed](https://warcraft.wiki.gg/wiki/API:DressUpModel_IsSlotAllowed "API:DressUpModel IsSlotAllowed")(slot) : allowed

[DressUpModel:IsSlotVisible](https://warcraft.wiki.gg/wiki/API:DressUpModel_IsSlotVisible "API:DressUpModel IsSlotVisible")(slot) : visible

[DressUpModel:SetAutoDress](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetAutoDress "API:DressUpModel SetAutoDress")(\[enabled\])

[DressUpModel:SetItemTransmogInfo](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetItemTransmogInfo "API:DressUpModel SetItemTransmogInfo")(itemTransmogInfo \[, inventorySlot, ignoreChildItems\]) : result

[DressUpModel:SetObeyHideInTransmogFlag](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetObeyHideInTransmogFlag "API:DressUpModel SetObeyHideInTransmogFlag")(\[enabled\])

[DressUpModel:SetSheathed](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetSheathed "API:DressUpModel SetSheathed")(\[sheathed, hideWeapons\])

[DressUpModel:SetUseTransmogChoices](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetUseTransmogChoices "API:DressUpModel SetUseTransmogChoices")(\[enabled\])

[DressUpModel:SetUseTransmogSkin](https://warcraft.wiki.gg/wiki/API:DressUpModel_SetUseTransmogSkin "API:DressUpModel SetUseTransmogSkin")(\[enabled\])

[DressUpModel:TryOn](https://warcraft.wiki.gg/wiki/API:DressUpModel_TryOn "API:DressUpModel TryOn")(linkOrItemModifiedAppearanceID \[, handSlotName, spellEnchantID\]) : result - Previews an item on the model.

[DressUpModel:Undress](https://warcraft.wiki.gg/wiki/API:DressUpModel_Undress "API:DressUpModel Undress")()

[DressUpModel:UndressSlot](https://warcraft.wiki.gg/wiki/API:DressUpModel_UndressSlot "API:DressUpModel UndressSlot")(inventorySlot)

### [TabardModel](https://warcraft.wiki.gg/wiki/UIOBJECT_TabardModel "UIOBJECT TabardModel")

[TabardModel:GetLowerBackgroundFileName](https://warcraft.wiki.gg/wiki/API:TabardModel_GetLowerBackgroundFileName "API:TabardModel GetLowerBackgroundFileName")() : file

[TabardModel:GetLowerBorderFile](https://warcraft.wiki.gg/wiki/API:TabardModel_GetLowerBorderFile "API:TabardModel GetLowerBorderFile")() : file

[TabardModel:GetLowerEmblemFile](https://warcraft.wiki.gg/wiki/API:TabardModel_GetLowerEmblemFile "API:TabardModel GetLowerEmblemFile")() : file

[TabardModel:GetUpperBackgroundFileName](https://warcraft.wiki.gg/wiki/API:TabardModel_GetUpperBackgroundFileName "API:TabardModel GetUpperBackgroundFileName")() : file

[TabardModel:GetUpperBorderFile](https://warcraft.wiki.gg/wiki/API:TabardModel_GetUpperBorderFile "API:TabardModel GetUpperBorderFile")() : file

[TabardModel:GetUpperEmblemFile](https://warcraft.wiki.gg/wiki/API:TabardModel_GetUpperEmblemFile "API:TabardModel GetUpperEmblemFile")() : file

[TabardModelBase:CanSaveTabardNow](https://warcraft.wiki.gg/wiki/API:TabardModelBase_CanSaveTabardNow "API:TabardModelBase CanSaveTabardNow")() : canSave

[TabardModelBase:CycleVariation](https://warcraft.wiki.gg/wiki/API:TabardModelBase_CycleVariation "API:TabardModelBase CycleVariation")(variationIndex, delta)

[TabardModelBase:GetLowerEmblemTexture](https://warcraft.wiki.gg/wiki/API:TabardModelBase_GetLowerEmblemTexture "API:TabardModelBase GetLowerEmblemTexture")(texture)

[TabardModelBase:GetUpperEmblemTexture](https://warcraft.wiki.gg/wiki/API:TabardModelBase_GetUpperEmblemTexture "API:TabardModelBase GetUpperEmblemTexture")(texture)

[TabardModelBase:InitializeTabardColors](https://warcraft.wiki.gg/wiki/API:TabardModelBase_InitializeTabardColors "API:TabardModelBase InitializeTabardColors")()

[TabardModelBase:IsGuildTabard](https://warcraft.wiki.gg/wiki/API:TabardModelBase_IsGuildTabard "API:TabardModelBase IsGuildTabard")() : isGuildTabard

[TabardModelBase:Save](https://warcraft.wiki.gg/wiki/API:TabardModelBase_Save "API:TabardModelBase Save")()

### [ModelScene](https://warcraft.wiki.gg/wiki/UIOBJECT_ModelScene "UIOBJECT ModelScene")

[ModelScene:CreateActor](https://warcraft.wiki.gg/wiki/API:ModelScene_CreateActor "API:ModelScene CreateActor")(\[name, template\]) : actor

[ModelScene:GetActorAtIndex](https://warcraft.wiki.gg/wiki/API:ModelScene_GetActorAtIndex "API:ModelScene GetActorAtIndex")(index) : actor

[ModelScene:GetAllowOverlappedModels](https://warcraft.wiki.gg/wiki/API:ModelScene_GetAllowOverlappedModels "API:ModelScene GetAllowOverlappedModels")() : allowOverlappedModels

[ModelScene:GetCameraFarClip](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraFarClip "API:ModelScene GetCameraFarClip")() : farClip

[ModelScene:GetCameraFieldOfView](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraFieldOfView "API:ModelScene GetCameraFieldOfView")() : fov

[ModelScene:GetCameraForward](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraForward "API:ModelScene GetCameraForward")() : forwardX, forwardY, forwardZ

[ModelScene:GetCameraNearClip](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraNearClip "API:ModelScene GetCameraNearClip")() : nearClip

[ModelScene:GetCameraRight](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraRight "API:ModelScene GetCameraRight")() : rightX, rightY, rightZ

[ModelScene:GetCameraUp](https://warcraft.wiki.gg/wiki/API:ModelScene_GetCameraUp "API:ModelScene GetCameraUp")() : upX, upY, upZ

[ModelScene:GetDrawLayer](https://warcraft.wiki.gg/wiki/API:ModelScene_GetDrawLayer "API:ModelScene GetDrawLayer")() : layer, sublevel

[ModelScene:GetLightAmbientColor](https://warcraft.wiki.gg/wiki/API:ModelScene_GetLightAmbientColor "API:ModelScene GetLightAmbientColor")() : colorR, colorG, colorB

[ModelScene:GetLightDiffuseColor](https://warcraft.wiki.gg/wiki/API:ModelScene_GetLightDiffuseColor "API:ModelScene GetLightDiffuseColor")() : colorR, colorG, colorB

[ModelScene:GetLightDirection](https://warcraft.wiki.gg/wiki/API:ModelScene_GetLightDirection "API:ModelScene GetLightDirection")() : directionX, directionY, directionZ

[ModelScene:GetLightPosition](https://warcraft.wiki.gg/wiki/API:ModelScene_GetLightPosition "API:ModelScene GetLightPosition")() : positionX, positionY, positionZ

[ModelScene:GetLightType](https://warcraft.wiki.gg/wiki/API:ModelScene_GetLightType "API:ModelScene GetLightType")() : lightType

[ModelScene:GetNumActors](https://warcraft.wiki.gg/wiki/API:ModelScene_GetNumActors "API:ModelScene GetNumActors")() : numActors

[ModelScene:IsLightVisible](https://warcraft.wiki.gg/wiki/API:ModelScene_IsLightVisible "API:ModelScene IsLightVisible")() : isVisible

[ModelScene:Project3DPointTo2D](https://warcraft.wiki.gg/wiki/API:ModelScene_Project3DPointTo2D "API:ModelScene Project3DPointTo2D")(pointX, pointY, pointZ) : point2DX, point2DY, depth - Converts a 3 dimensional point into clip space using the model scene camera properties.

[ModelScene:SetAllowOverlappedModels](https://warcraft.wiki.gg/wiki/API:ModelScene_SetAllowOverlappedModels "API:ModelScene SetAllowOverlappedModels")(allowOverlappedModels)

[ModelScene:SetCameraFarClip](https://warcraft.wiki.gg/wiki/API:ModelScene_SetCameraFarClip "API:ModelScene SetCameraFarClip")(farClip)

[ModelScene:SetCameraFieldOfView](https://warcraft.wiki.gg/wiki/API:ModelScene_SetCameraFieldOfView "API:ModelScene SetCameraFieldOfView")(fov)

[ModelScene:SetCameraNearClip](https://warcraft.wiki.gg/wiki/API:ModelScene_SetCameraNearClip "API:ModelScene SetCameraNearClip")(nearClip)

[ModelScene:SetCameraOrientationByAxisVectors](https://warcraft.wiki.gg/wiki/API:ModelScene_SetCameraOrientationByAxisVectors "API:ModelScene SetCameraOrientationByAxisVectors")(forwardX, forwardY, forwardZ, rightX, rightY, rightZ, upX, upY, upZ)

[ModelScene:SetCameraOrientationByYawPitchRoll](https://warcraft.wiki.gg/wiki/API:ModelScene_SetCameraOrientationByYawPitchRoll "API:ModelScene SetCameraOrientationByYawPitchRoll")(yaw, pitch, roll)

[ModelScene:SetDrawLayer](https://warcraft.wiki.gg/wiki/API:ModelScene_SetDrawLayer "API:ModelScene SetDrawLayer")(layer)

[ModelScene:SetLightAmbientColor](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightAmbientColor "API:ModelScene SetLightAmbientColor")(colorR, colorG, colorB)

[ModelScene:SetLightDiffuseColor](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightDiffuseColor "API:ModelScene SetLightDiffuseColor")(colorR, colorG, colorB)

[ModelScene:SetLightDirection](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightDirection "API:ModelScene SetLightDirection")(directionX, directionY, directionZ)

[ModelScene:SetLightPosition](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightPosition "API:ModelScene SetLightPosition")(positionX, positionY, positionZ)

[ModelScene:SetLightType](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightType "API:ModelScene SetLightType")(lightType)

[ModelScene:SetLightVisible](https://warcraft.wiki.gg/wiki/API:ModelScene_SetLightVisible "API:ModelScene SetLightVisible")(\[visible\])

[ModelScene:SetPaused](https://warcraft.wiki.gg/wiki/API:ModelScene_SetPaused "API:ModelScene SetPaused")(paused \[, affectsGlobalPause\])

[ModelScene:TakeActor](https://warcraft.wiki.gg/wiki/API:ModelScene_TakeActor "API:ModelScene TakeActor")()

### [ModelSceneActor](https://warcraft.wiki.gg/wiki/UIOBJECT_ModelSceneActor "UIOBJECT ModelSceneActor")

[ModelSceneActor:AttachToMount](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_AttachToMount "API:ModelSceneActor AttachToMount")(rider, animation \[, spellKitVisualID\]) : success

[ModelSceneActor:CalculateMountScale](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_CalculateMountScale "API:ModelSceneActor CalculateMountScale")(rider) : scale

[ModelSceneActor:DetachFromMount](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_DetachFromMount "API:ModelSceneActor DetachFromMount")(rider) : success

[ModelSceneActor:DressPlayerSlot](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_DressPlayerSlot "API:ModelSceneActor DressPlayerSlot")(invSlot)

[ModelSceneActor:GetPaused](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_GetPaused "API:ModelSceneActor GetPaused")() : paused, globalPaused

[ModelSceneActor:ReleaseFrontEndCharacterDisplays](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_ReleaseFrontEndCharacterDisplays "API:ModelSceneActor ReleaseFrontEndCharacterDisplays")() : success

[ModelSceneActor:ResetNextHandSlot](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_ResetNextHandSlot "API:ModelSceneActor ResetNextHandSlot")()

[ModelSceneActor:SetFrontEndLobbyModelFromDefaultCharacterDisplay](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_SetFrontEndLobbyModelFromDefaultCharacterDisplay "API:ModelSceneActor SetFrontEndLobbyModelFromDefaultCharacterDisplay")(characterIndex) : success

[ModelSceneActor:SetModelByHyperlink](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_SetModelByHyperlink "API:ModelSceneActor SetModelByHyperlink")(link) : success

[ModelSceneActor:SetSheathedCategory](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_SetSheathedCategory "API:ModelSceneActor SetSheathedCategory")(inventorySlots, category)

[ModelSceneActor:SetPaused](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_SetPaused "API:ModelSceneActor SetPaused")(paused \[, affectsGlobalPause\])

[ModelSceneActor:UseUnitSheatheCategory](https://warcraft.wiki.gg/wiki/API:ModelSceneActor_UseUnitSheatheCategory "API:ModelSceneActor UseUnitSheatheCategory")(useCategory)

[ModelSceneActorBase:GetActiveBoundingBox](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetActiveBoundingBox "API:ModelSceneActorBase GetActiveBoundingBox")() : boxBottom, boxTop

[ModelSceneActorBase:GetAnimation](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetAnimation "API:ModelSceneActorBase GetAnimation")() : animation

[ModelSceneActorBase:GetAnimationBlendOperation](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetAnimationBlendOperation "API:ModelSceneActorBase GetAnimationBlendOperation")() : blendOp

[ModelSceneActorBase:GetAnimationVariation](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetAnimationVariation "API:ModelSceneActorBase GetAnimationVariation")() : variation

[ModelSceneActorBase:GetMaxBoundingBox](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetMaxBoundingBox "API:ModelSceneActorBase GetMaxBoundingBox")() : boxBottom, boxTop

[ModelSceneActorBase:GetModelPath](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetModelPath "API:ModelSceneActorBase GetModelPath")() : path

[ModelSceneActorBase:GetModelUnitGUID](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetModelUnitGUID "API:ModelSceneActorBase GetModelUnitGUID")() : guid

[ModelSceneActorBase:GetParticleOverrideScale](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetParticleOverrideScale "API:ModelSceneActorBase GetParticleOverrideScale")() : scale

[ModelSceneActorBase:GetSpellVisualKit](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetSpellVisualKit "API:ModelSceneActorBase GetSpellVisualKit")() : spellVisualKitID

[ModelSceneActorBase:GetYaw](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_GetYaw "API:ModelSceneActorBase GetYaw")() : yaw

[ModelSceneActorBase:IsLoaded](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_IsLoaded "API:ModelSceneActorBase IsLoaded")() : isLoaded

[ModelSceneActorBase:IsPreferringModelCollisionBounds](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_IsPreferringModelCollisionBounds "API:ModelSceneActorBase IsPreferringModelCollisionBounds")() : preferringCollisionBounds

[ModelSceneActorBase:IsUsingCenterForOrigin](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_IsUsingCenterForOrigin "API:ModelSceneActorBase IsUsingCenterForOrigin")() : x, y, z

[ModelSceneActorBase:PlayAnimationKit](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_PlayAnimationKit "API:ModelSceneActorBase PlayAnimationKit")(animationKit \[, isLooping\])

[ModelSceneActorBase:SetAnimation](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetAnimation "API:ModelSceneActorBase SetAnimation")(animation \[, variation, animSpeed, animOffsetSeconds\])

[ModelSceneActorBase:SetAnimationBlendOperation](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetAnimationBlendOperation "API:ModelSceneActorBase SetAnimationBlendOperation")(blendOp)

[ModelSceneActorBase:SetGradientMask](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetGradientMask "API:ModelSceneActorBase SetGradientMask")(gradientIndex0, gradientIndex1, gradientIndex2, gradientIndex3)

[ModelSceneActorBase:SetGradientMaskWithDyes](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetGradientMaskWithDyes "API:ModelSceneActorBase SetGradientMaskWithDyes")(\[grad0DyeColorID \[, grad1DyeColorID \[, grad2DyeColorID\]\]\])

[ModelSceneActorBase:SetModelByCreatureDisplayID](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetModelByCreatureDisplayID "API:ModelSceneActorBase SetModelByCreatureDisplayID")(creatureDisplayID \[, useActivePlayerCustomizations\]) : success

[ModelSceneActorBase:SetModelByFileID](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetModelByFileID "API:ModelSceneActorBase SetModelByFileID")(asset \[, useMips\]) : success

[ModelSceneActorBase:SetModelByPath](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetModelByPath "API:ModelSceneActorBase SetModelByPath")(asset \[, useMips\]) : success

[ModelSceneActorBase:SetModelByUnit](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetModelByUnit "API:ModelSceneActorBase SetModelByUnit")(unit \[, sheatheWeapons \[, autoDress \[, hideWeapons \[, usePlayerNativeForm \[, holdBowString \[, customRaceID\]\]\]\]\]\]) : success

[ModelSceneActorBase:SetParticleOverrideScale](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetParticleOverrideScale "API:ModelSceneActorBase SetParticleOverrideScale")(\[scale\])

[ModelSceneActorBase:SetPlayerModelFromGlues](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetPlayerModelFromGlues "API:ModelSceneActorBase SetPlayerModelFromGlues")(\[characterIndex \[, sheatheWeapons \[, autoDress \[, hideWeapons \[, usePlayerNativeForm \[, customRaceID\]\]\]\]\]\]) : success

[ModelSceneActorBase:SetPreferModelCollisionBounds](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetPreferModelCollisionBounds "API:ModelSceneActorBase SetPreferModelCollisionBounds")(preferCollisionBounds)

[ModelSceneActorBase:SetSpellVisualKit](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetSpellVisualKit "API:ModelSceneActorBase SetSpellVisualKit")(\[spellVisualKitID, oneShot\])

[ModelSceneActorBase:SetUseCenterForOrigin](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetUseCenterForOrigin "API:ModelSceneActorBase SetUseCenterForOrigin")(\[x, y, z\])

[ModelSceneActorBase:SetYaw](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_SetYaw "API:ModelSceneActorBase SetYaw")(yaw)

[ModelSceneActorBase:StopAnimationKit](https://warcraft.wiki.gg/wiki/API:ModelSceneActorBase_StopAnimationKit "API:ModelSceneActorBase StopAnimationKit")()

### [EditBox](https://warcraft.wiki.gg/wiki/UIOBJECT_EditBox "UIOBJECT EditBox")

[EditBox:AddHistoryLine](https://warcraft.wiki.gg/wiki/API:EditBox_AddHistoryLine "API:EditBox AddHistoryLine")(text) - Adds text to the edit history.

[EditBox:ClearFocus](https://warcraft.wiki.gg/wiki/API:EditBox_ClearFocus "API:EditBox ClearFocus")() - Removes text input focus from this editbox element.

[EditBox:ClearHighlightText](https://warcraft.wiki.gg/wiki/API:EditBox_ClearHighlightText "API:EditBox ClearHighlightText")()

[EditBox:ClearHistory](https://warcraft.wiki.gg/wiki/API:EditBox_ClearHistory "API:EditBox ClearHistory")()

[EditBox:Disable](https://warcraft.wiki.gg/wiki/API:EditBox_Disable "API:EditBox Disable")()

[EditBox:Enable](https://warcraft.wiki.gg/wiki/API:EditBox_Enable "API:EditBox Enable")()

[EditBox:GetAltArrowKeyMode](https://warcraft.wiki.gg/wiki/API:EditBox_GetAltArrowKeyMode "API:EditBox GetAltArrowKeyMode")() : altMode

[EditBox:GetBlinkSpeed](https://warcraft.wiki.gg/wiki/API:EditBox_GetBlinkSpeed "API:EditBox GetBlinkSpeed")() : cursorBlinkSpeedSec - Returns the blink speed.

[EditBox:GetCursorPosition](https://warcraft.wiki.gg/wiki/API:EditBox_GetCursorPosition "API:EditBox GetCursorPosition")() : cursorPosition - Returns the cursor position in the editbox.

[EditBox:GetDisplayText](https://warcraft.wiki.gg/wiki/API:EditBox_GetDisplayText "API:EditBox GetDisplayText")() : displayText

[EditBox:GetHighlightColor](https://warcraft.wiki.gg/wiki/API:EditBox_GetHighlightColor "API:EditBox GetHighlightColor")() : colorR, colorG, colorB, colorA

[EditBox:GetHistoryLines](https://warcraft.wiki.gg/wiki/API:EditBox_GetHistoryLines "API:EditBox GetHistoryLines")() : numHistoryLines - Returns the number of history lines for this editbox.

[EditBox:GetInputLanguage](https://warcraft.wiki.gg/wiki/API:EditBox_GetInputLanguage "API:EditBox GetInputLanguage")() : language - Returns the input language (locale based not in-game).

[EditBox:GetMaxBytes](https://warcraft.wiki.gg/wiki/API:EditBox_GetMaxBytes "API:EditBox GetMaxBytes")() : maxBytes

[EditBox:GetMaxLetters](https://warcraft.wiki.gg/wiki/API:EditBox_GetMaxLetters "API:EditBox GetMaxLetters")() : maxLetters

[EditBox:GetNumLetters](https://warcraft.wiki.gg/wiki/API:EditBox_GetNumLetters "API:EditBox GetNumLetters")() : numLetters - Returns the number of letters in the editbox.

[EditBox:GetNumLines](https://warcraft.wiki.gg/wiki/API:EditBox_GetNumLines "API:EditBox GetNumLines")() : lines

[EditBox:GetNumber](https://warcraft.wiki.gg/wiki/API:EditBox_GetNumber "API:EditBox GetNumber")() : number - Returns the number entered in the editbox, or 0 if editbox text is not a number.

[EditBox:GetText](https://warcraft.wiki.gg/wiki/API:EditBox_GetText "API:EditBox GetText")() : text - Returns the current text contained in the edit box.

[EditBox:GetTextInsets](https://warcraft.wiki.gg/wiki/API:EditBox_GetTextInsets "API:EditBox GetTextInsets")() : left, right, top, bottom - Returns a list of left,right,top,bottom text insets.

[EditBox:GetUTF8CursorPosition](https://warcraft.wiki.gg/wiki/API:EditBox_GetUTF8CursorPosition "API:EditBox GetUTF8CursorPosition")() : cursorPosition

[EditBox:GetVisibleTextByteLimit](https://warcraft.wiki.gg/wiki/API:EditBox_GetVisibleTextByteLimit "API:EditBox GetVisibleTextByteLimit")() : maxVisibleBytes

[EditBox:HasFocus](https://warcraft.wiki.gg/wiki/API:EditBox_HasFocus "API:EditBox HasFocus")() : hasFocus - Returns true if the edit box has the focus.

[EditBox:HasText](https://warcraft.wiki.gg/wiki/API:EditBox_HasText "API:EditBox HasText")() : hasText

[EditBox:HighlightText](https://warcraft.wiki.gg/wiki/API:EditBox_HighlightText "API:EditBox HighlightText")(\[start, stop\]) - Highlights all or some of the edit box text.

[EditBox:Insert](https://warcraft.wiki.gg/wiki/API:EditBox_Insert "API:EditBox Insert")(text) - Insert text into the editbox.

[EditBox:IsAlphabeticOnly](https://warcraft.wiki.gg/wiki/API:EditBox_IsAlphabeticOnly "API:EditBox IsAlphabeticOnly")() : enabled

[EditBox:IsAutoFocus](https://warcraft.wiki.gg/wiki/API:EditBox_IsAutoFocus "API:EditBox IsAutoFocus")() : autoFocus

[EditBox:IsCountInvisibleLetters](https://warcraft.wiki.gg/wiki/API:EditBox_IsCountInvisibleLetters "API:EditBox IsCountInvisibleLetters")() : countInvisibleLetters

[EditBox:IsEnabled](https://warcraft.wiki.gg/wiki/API:EditBox_IsEnabled "API:EditBox IsEnabled")() : isEnabled

[EditBox:IsInIMECompositionMode](https://warcraft.wiki.gg/wiki/API:EditBox_IsInIMECompositionMode "API:EditBox IsInIMECompositionMode")() : isInIMECompositionMode

[EditBox:IsMultiLine](https://warcraft.wiki.gg/wiki/API:EditBox_IsMultiLine "API:EditBox IsMultiLine")() : multiline

[EditBox:IsNumeric](https://warcraft.wiki.gg/wiki/API:EditBox_IsNumeric "API:EditBox IsNumeric")() : isNumeric

[EditBox:IsNumericFullRange](https://warcraft.wiki.gg/wiki/API:EditBox_IsNumericFullRange "API:EditBox IsNumericFullRange")() : isNumeric

[EditBox:IsPassword](https://warcraft.wiki.gg/wiki/API:EditBox_IsPassword "API:EditBox IsPassword")() : isPassword

[EditBox:IsSecureText](https://warcraft.wiki.gg/wiki/API:EditBox_IsSecureText "API:EditBox IsSecureText")() : isSecure

[EditBox:ResetInputMode](https://warcraft.wiki.gg/wiki/API:EditBox_ResetInputMode "API:EditBox ResetInputMode")()

[EditBox:SetAlphabeticOnly](https://warcraft.wiki.gg/wiki/API:EditBox_SetAlphabeticOnly "API:EditBox SetAlphabeticOnly")(\[enabled\])

[EditBox:SetAltArrowKeyMode](https://warcraft.wiki.gg/wiki/API:EditBox_SetAltArrowKeyMode "API:EditBox SetAltArrowKeyMode")(\[altMode\])

[EditBox:SetAutoFocus](https://warcraft.wiki.gg/wiki/API:EditBox_SetAutoFocus "API:EditBox SetAutoFocus")(\[autoFocus\])

[EditBox:SetBlinkSpeed](https://warcraft.wiki.gg/wiki/API:EditBox_SetBlinkSpeed "API:EditBox SetBlinkSpeed")(cursorBlinkSpeedSec)

[EditBox:SetCountInvisibleLetters](https://warcraft.wiki.gg/wiki/API:EditBox_SetCountInvisibleLetters "API:EditBox SetCountInvisibleLetters")(\[countInvisibleLetters\])

[EditBox:SetCursorPosition](https://warcraft.wiki.gg/wiki/API:EditBox_SetCursorPosition "API:EditBox SetCursorPosition")(cursorPosition) - Sets the cursor position in the editbox.

[EditBox:SetEnabled](https://warcraft.wiki.gg/wiki/API:EditBox_SetEnabled "API:EditBox SetEnabled")(\[enabled\])

[EditBox:SetFocus](https://warcraft.wiki.gg/wiki/API:EditBox_SetFocus "API:EditBox SetFocus")()

[EditBox:SetHighlightColor](https://warcraft.wiki.gg/wiki/API:EditBox_SetHighlightColor "API:EditBox SetHighlightColor")(colorR, colorG, colorB \[, a\])

[EditBox:SetHistoryLines](https://warcraft.wiki.gg/wiki/API:EditBox_SetHistoryLines "API:EditBox SetHistoryLines")(numHistoryLines) - Sets the number of history lines to remember.

[EditBox:SetMaxBytes](https://warcraft.wiki.gg/wiki/API:EditBox_SetMaxBytes "API:EditBox SetMaxBytes")(maxBytes) - Sets the maximum byte size for entered text.

[EditBox:SetMaxLetters](https://warcraft.wiki.gg/wiki/API:EditBox_SetMaxLetters "API:EditBox SetMaxLetters")(maxLetters) - Sets the maximum number of letters for entered text.

[EditBox:SetMultiLine](https://warcraft.wiki.gg/wiki/API:EditBox_SetMultiLine "API:EditBox SetMultiLine")(\[multiline\])

[EditBox:SetNumber](https://warcraft.wiki.gg/wiki/API:EditBox_SetNumber "API:EditBox SetNumber")(number)

[EditBox:SetNumeric](https://warcraft.wiki.gg/wiki/API:EditBox_SetNumeric "API:EditBox SetNumeric")(\[isNumeric\])

[EditBox:SetNumericFullRange](https://warcraft.wiki.gg/wiki/API:EditBox_SetNumericFullRange "API:EditBox SetNumericFullRange")(\[isNumeric\])

[EditBox:SetPassword](https://warcraft.wiki.gg/wiki/API:EditBox_SetPassword "API:EditBox SetPassword")(\[isPassword\])

[EditBox:SetSecureText](https://warcraft.wiki.gg/wiki/API:EditBox_SetSecureText "API:EditBox SetSecureText")(\[isSecure\])

[EditBox:SetSecurityDisablePaste](https://warcraft.wiki.gg/wiki/API:EditBox_SetSecurityDisablePaste "API:EditBox SetSecurityDisablePaste")()

[EditBox:SetSecurityDisableSetText](https://warcraft.wiki.gg/wiki/API:EditBox_SetSecurityDisableSetText "API:EditBox SetSecurityDisableSetText")()

[EditBox:SetText](https://warcraft.wiki.gg/wiki/API:EditBox_SetText "API:EditBox SetText")(text) - Sets the text contained in the edit box.

[EditBox:SetTextInsets](https://warcraft.wiki.gg/wiki/API:EditBox_SetTextInsets "API:EditBox SetTextInsets")(left, right, top, bottom)

[EditBox:SetVisibleTextByteLimit](https://warcraft.wiki.gg/wiki/API:EditBox_SetVisibleTextByteLimit "API:EditBox SetVisibleTextByteLimit")(maxVisibleBytes)

[EditBox:ToggleInputLanguage](https://warcraft.wiki.gg/wiki/API:EditBox_ToggleInputLanguage "API:EditBox ToggleInputLanguage")()

### [MessageFrame](https://warcraft.wiki.gg/wiki/UIOBJECT_MessageFrame "UIOBJECT MessageFrame")

[MessageFrame:AddMessage](https://warcraft.wiki.gg/wiki/API:MessageFrame_AddMessage "API:MessageFrame AddMessage")(text \[, colorR, colorG, colorB \[, a \[, messageID\]\]\]))

[MessageFrame:Clear](https://warcraft.wiki.gg/wiki/API:MessageFrame_Clear "API:MessageFrame Clear")()

[MessageFrame:GetFadeDuration](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetFadeDuration "API:MessageFrame GetFadeDuration")() : fadeDurationSeconds

[MessageFrame:GetFadePower](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetFadePower "API:MessageFrame GetFadePower")() : fadePower

[MessageFrame:GetFading](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetFading "API:MessageFrame GetFading")() : isFading

[MessageFrame:GetFontStringByID](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetFontStringByID "API:MessageFrame GetFontStringByID")(messageID) : fontString

[MessageFrame:GetInsertMode](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetInsertMode "API:MessageFrame GetInsertMode")() : mode

[MessageFrame:GetTimeVisible](https://warcraft.wiki.gg/wiki/API:MessageFrame_GetTimeVisible "API:MessageFrame GetTimeVisible")() : timeVisibleSeconds

[MessageFrame:HasMessageByID](https://warcraft.wiki.gg/wiki/API:MessageFrame_HasMessageByID "API:MessageFrame HasMessageByID")(messageID) : hasMessage

[MessageFrame:ResetMessageFadeByID](https://warcraft.wiki.gg/wiki/API:MessageFrame_ResetMessageFadeByID "API:MessageFrame ResetMessageFadeByID")(messageID)

[MessageFrame:SetFadeDuration](https://warcraft.wiki.gg/wiki/API:MessageFrame_SetFadeDuration "API:MessageFrame SetFadeDuration")(fadeDurationSeconds)

[MessageFrame:SetFadePower](https://warcraft.wiki.gg/wiki/API:MessageFrame_SetFadePower "API:MessageFrame SetFadePower")(fadePower)

[MessageFrame:SetFading](https://warcraft.wiki.gg/wiki/API:MessageFrame_SetFading "API:MessageFrame SetFading")(fading)

[MessageFrame:SetInsertMode](https://warcraft.wiki.gg/wiki/API:MessageFrame_SetInsertMode "API:MessageFrame SetInsertMode")(mode)

[MessageFrame:SetTimeVisible](https://warcraft.wiki.gg/wiki/API:MessageFrame_SetTimeVisible "API:MessageFrame SetTimeVisible")(timeVisibleSeconds)

### [SimpleHTML](https://warcraft.wiki.gg/wiki/UIOBJECT_SimpleHTML "UIOBJECT SimpleHTML")

[SimpleHTML:GetContentHeight](https://warcraft.wiki.gg/wiki/API:SimpleHTML_GetContentHeight "API:SimpleHTML GetContentHeight")() : height

[SimpleHTML:GetHyperlinkFormat](https://warcraft.wiki.gg/wiki/API:SimpleHTML_GetHyperlinkFormat "API:SimpleHTML GetHyperlinkFormat")() : format

[SimpleHTML:GetTextData](https://warcraft.wiki.gg/wiki/API:SimpleHTML_GetTextData "API:SimpleHTML GetTextData")() : content

[SimpleHTML:SetHyperlinkFormat](https://warcraft.wiki.gg/wiki/API:SimpleHTML_SetHyperlinkFormat "API:SimpleHTML SetHyperlinkFormat")(format)

[SimpleHTML:SetText](https://warcraft.wiki.gg/wiki/API:SimpleHTML_SetText "API:SimpleHTML SetText")(text \[, ignoreMarkup\])

### [GameTooltip](https://warcraft.wiki.gg/wiki/UIOBJECT_GameTooltip "UIOBJECT GameTooltip")

In patch 10.0.2 any addons that are creating GameTooltip frames should now ensure they inherit [GameTooltipTemplate](https://warcraft.wiki.gg/wiki/GameTooltipTemplate "GameTooltipTemplate"). This template has been updated to include the new [GameTooltipDataMixin](https://github.com/Ketho/wow-ui-source-df/search?q=GameTooltipDataMixin) mixin, which provides automatic updates of tooltip contents from the [TOOLTIP_DATA_UPDATE](https://warcraft.wiki.gg/wiki/Event:TOOLTIP_DATA_UPDATE "Event:TOOLTIP DATA UPDATE") event as well as a subset of backwards-compatible methods for retrieving or populating tooltip contents from the new C_TooltipInfo APIs.

    CreateFrame("GameTooltip") -- inherits Frame

[GameTooltip:AddAtlas](https://warcraft.wiki.gg/wiki/API:GameTooltip_AddAtlas "API:GameTooltip AddAtlas")(atlas \[, textureInfoTable\])

[GameTooltip:AddDoubleLine](https://warcraft.wiki.gg/wiki/API:GameTooltip_AddDoubleLine "API:GameTooltip AddDoubleLine")(leftText, rightText \[, leftR, leftG, leftB \[, rightR, rightG, rightB\]\])

[GameTooltip:AddFontStrings](https://warcraft.wiki.gg/wiki/API:GameTooltip_AddFontStrings "API:GameTooltip AddFontStrings")(leftstring, rightstring)

[GameTooltip:AddLine](https://warcraft.wiki.gg/wiki/API:GameTooltip_AddLine "API:GameTooltip AddLine")(tooltipText \[, r, g, b, wrapText\])

[GameTooltip:AddTexture](https://warcraft.wiki.gg/wiki/API:GameTooltip_AddTexture "API:GameTooltip AddTexture")(texture)

[GameTooltip:AppendText](https://warcraft.wiki.gg/wiki/API:GameTooltip_AppendText "API:GameTooltip AppendText")(text)

[GameTooltip:ClearLines](https://warcraft.wiki.gg/wiki/API:GameTooltip_ClearLines "API:GameTooltip ClearLines")()

[GameTooltip:ClearPadding](https://warcraft.wiki.gg/wiki/API:GameTooltip_ClearPadding "API:GameTooltip ClearPadding")()

[GameTooltip:CopyTooltip](https://warcraft.wiki.gg/wiki/API:GameTooltip_CopyTooltip?action=edit&redlink=1 "API:GameTooltip CopyTooltip (page does not exist)")()

[GameTooltip:FadeOut](https://warcraft.wiki.gg/wiki/API:GameTooltip_FadeOut "API:GameTooltip FadeOut")()

[GameTooltip:GetAnchorType](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetAnchorType?action=edit&redlink=1 "API:GameTooltip GetAnchorType (page does not exist)")() : anchorType

[GameTooltip:GetCustomLineSpacing](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetCustomLineSpacing?action=edit&redlink=1 "API:GameTooltip GetCustomLineSpacing (page does not exist)")() : spacing

[GameTooltip:GetLeftLine](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetLeftLine "API:GameTooltip GetLeftLine")(line) : leftFontString

[GameTooltip:GetMinimumWidth](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetMinimumWidth "API:GameTooltip GetMinimumWidth")() : width, force

[GameTooltip:GetOwner](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetOwner "API:GameTooltip GetOwner")() : owner

[GameTooltip:GetPadding](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetPadding "API:GameTooltip GetPadding")() : right, bottom, left, top

[GameTooltip:GetRightLine](https://warcraft.wiki.gg/wiki/API:GameTooltip_GetRightLine "API:GameTooltip GetRightLine")(line) : rightFontString

[GameTooltip:IsOwned](https://warcraft.wiki.gg/wiki/API:GameTooltip_IsOwned?action=edit&redlink=1 "API:GameTooltip IsOwned (page does not exist)")(frame) : bool

[GameTooltip:NumLines](https://warcraft.wiki.gg/wiki/API:GameTooltip_NumLines "API:GameTooltip NumLines")() : lines

[GameTooltip:SetAllowShowWithNoLines](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAllowShowWithNoLines?action=edit&redlink=1 "API:GameTooltip SetAllowShowWithNoLines (page does not exist)")(\[bool\])

[GameTooltip:SetAnchorType](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAnchorType?action=edit&redlink=1 "API:GameTooltip SetAnchorType (page does not exist)")(anchorType \[, Xoffset, Yoffset\])

[GameTooltip:SetCustomLineSpacing](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetCustomLineSpacing?action=edit&redlink=1 "API:GameTooltip SetCustomLineSpacing (page does not exist)")(\[spacing\])

[GameTooltip:SetCustomWordWrapMinWidth](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetCustomWordWrapMinWidth?action=edit&redlink=1 "API:GameTooltip SetCustomWordWrapMinWidth (page does not exist)")(\[width)

[GameTooltip:SetFrameStack](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetFrameStack "API:GameTooltip SetFrameStack")(\[showHidden, showRegion, highlightIndexChanged\])

[GameTooltip:SetMinimumWidth](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetMinimumWidth "API:GameTooltip SetMinimumWidth")(width \[, force\])

[GameTooltip:SetObjectTooltipPosition](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetObjectTooltipPosition?action=edit&redlink=1 "API:GameTooltip SetObjectTooltipPosition (page does not exist)")()

[GameTooltip:SetOwner](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetOwner "API:GameTooltip SetOwner")(owner, anchor \[, ofsX, ofsY\])

[GameTooltip:SetPadding](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetPadding "API:GameTooltip SetPadding")(right, bottom \[, left, top\])

[GameTooltip:SetShrinkToFitWrapped](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetShrinkToFitWrapped?action=edit&redlink=1 "API:GameTooltip SetShrinkToFitWrapped (page does not exist)")()

[GameTooltip:SetText](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetText "API:GameTooltip SetText")(text \[, r, g, b, alpha, textWrap\])

    -- mixins GameTooltipDataMixin, TooltipDataHandlerMixin and data accessors
    CreateFrame("GameTooltip", nil, nil, "GameTooltipTemplate")

See also [C_TooltipInfo](https://warcraft.wiki.gg/wiki/Category:API_systems/TooltipInfo "Category:API systems/TooltipInfo")

[GameTooltip:SetAchievementByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAchievementByID?action=edit&redlink=1 "API:GameTooltip SetAchievementByID (page does not exist)")(achievementID)

[GameTooltip:SetAction](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAction "API:GameTooltip SetAction")(actionID)

[GameTooltip:SetArtifactItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetArtifactItem?action=edit&redlink=1 "API:GameTooltip SetArtifactItem (page does not exist)")()

[GameTooltip:SetArtifactPowerByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetArtifactPowerByID?action=edit&redlink=1 "API:GameTooltip SetArtifactPowerByID (page does not exist)")(powerID)

[GameTooltip:SetAzeriteEssence](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAzeriteEssence?action=edit&redlink=1 "API:GameTooltip SetAzeriteEssence (page does not exist)")(essenceID \[, rank\])

[GameTooltip:SetAzeriteEssenceSlot](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAzeriteEssenceSlot?action=edit&redlink=1 "API:GameTooltip SetAzeriteEssenceSlot (page does not exist)")(slot)

[GameTooltip:SetAzeritePower](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetAzeritePower?action=edit&redlink=1 "API:GameTooltip SetAzeritePower (page does not exist)")(itemID, itemLevel, powerID \[, owningItemLink\])

[GameTooltip:SetBackpackToken](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetBackpackToken?action=edit&redlink=1 "API:GameTooltip SetBackpackToken (page does not exist)")(index)

[GameTooltip:SetBagItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetBagItem "API:GameTooltip SetBagItem")(bagIndex, slotIndex)

[GameTooltip:SetBagItemChild](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetBagItemChild?action=edit&redlink=1 "API:GameTooltip SetBagItemChild (page does not exist)")(bagIndex, slotIndex, equipSlotIndex)

[GameTooltip:SetBuybackItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetBuybackItem?action=edit&redlink=1 "API:GameTooltip SetBuybackItem (page does not exist)")(index)

[GameTooltip:SetCompanionPet](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetCompanionPet?action=edit&redlink=1 "API:GameTooltip SetCompanionPet (page does not exist)")(petGUID)

[GameTooltip:SetConduit](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetConduit?action=edit&redlink=1 "API:GameTooltip SetConduit (page does not exist)")(conduitID, conduitRank)

[GameTooltip:SetCurrencyByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetCurrencyByID?action=edit&redlink=1 "API:GameTooltip SetCurrencyByID (page does not exist)")(currencyID \[, amount\])

[GameTooltip:SetCurrencyToken](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetCurrencyToken "API:GameTooltip SetCurrencyToken")(tokenIndex)

[GameTooltip:SetEnhancedConduit](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetEnhancedConduit?action=edit&redlink=1 "API:GameTooltip SetEnhancedConduit (page does not exist)")(conduitID, rank)

[GameTooltip:SetEquipmentSet](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetEquipmentSet?action=edit&redlink=1 "API:GameTooltip SetEquipmentSet (page does not exist)")(setID)

[GameTooltip:SetExistingSocketGem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetExistingSocketGem?action=edit&redlink=1 "API:GameTooltip SetExistingSocketGem (page does not exist)")(index \[, toDestroy\])

[GameTooltip:SetGuildBankItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetGuildBankItem?action=edit&redlink=1 "API:GameTooltip SetGuildBankItem (page does not exist)")(tab, slot)

[GameTooltip:SetHeirloomByItemID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetHeirloomByItemID?action=edit&redlink=1 "API:GameTooltip SetHeirloomByItemID (page does not exist)")(itemID)

[GameTooltip:SetHyperlink](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetHyperlink "API:GameTooltip SetHyperlink")(hyperlink \[, optionalArg1, optionalArg2, hideVendorPrice\])

[GameTooltip:SetInboxItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetInboxItem "API:GameTooltip SetInboxItem")(messageIndex \[, attachmentIndex\])

[GameTooltip:SetInstanceLockEncountersComplete](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetInstanceLockEncountersComplete?action=edit&redlink=1 "API:GameTooltip SetInstanceLockEncountersComplete (page does not exist)")(index)

[GameTooltip:SetInventoryItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetInventoryItem "API:GameTooltip SetInventoryItem")(unit, slot \[, hideUselessStats\])

[GameTooltip:SetInventoryItemByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetInventoryItemByID?action=edit&redlink=1 "API:GameTooltip SetInventoryItemByID (page does not exist)")(itemID)

[GameTooltip:SetItemByGUID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetItemByGUID?action=edit&redlink=1 "API:GameTooltip SetItemByGUID (page does not exist)")(guid)

[GameTooltip:SetItemByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetItemByID?action=edit&redlink=1 "API:GameTooltip SetItemByID (page does not exist)")(itemID \[, quality\])

[GameTooltip:SetItemInteractionItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetItemInteractionItem?action=edit&redlink=1 "API:GameTooltip SetItemInteractionItem (page does not exist)")()

[GameTooltip:SetItemKey](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetItemKey "API:GameTooltip SetItemKey")(itemID, itemLevel, itemSuffix \[, requiredLevel\])

[GameTooltip:SetLFGDungeonReward](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetLFGDungeonReward?action=edit&redlink=1 "API:GameTooltip SetLFGDungeonReward (page does not exist)")(dungeonID, lootIndex)

[GameTooltip:SetLFGDungeonShortageReward](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetLFGDungeonShortageReward?action=edit&redlink=1 "API:GameTooltip SetLFGDungeonShortageReward (page does not exist)")(dungeonID, shortageSeverity, lootIndex)

[GameTooltip:SetLootCurrency](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetLootCurrency?action=edit&redlink=1 "API:GameTooltip SetLootCurrency (page does not exist)")(slot)

[GameTooltip:SetLootItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetLootItem "API:GameTooltip SetLootItem")(slot)

[GameTooltip:SetLootRollItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetLootRollItem?action=edit&redlink=1 "API:GameTooltip SetLootRollItem (page does not exist)")(id)

[GameTooltip:SetMerchantCostItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetMerchantCostItem?action=edit&redlink=1 "API:GameTooltip SetMerchantCostItem (page does not exist)")(slot, costIndex)

[GameTooltip:SetMerchantItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetMerchantItem?action=edit&redlink=1 "API:GameTooltip SetMerchantItem (page does not exist)")(slot)

[GameTooltip:SetMinimapMouseover](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetMinimapMouseover?action=edit&redlink=1 "API:GameTooltip SetMinimapMouseover (page does not exist)")()

[GameTooltip:SetMountBySpellID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetMountBySpellID?action=edit&redlink=1 "API:GameTooltip SetMountBySpellID (page does not exist)")(spellID \[, checkIndoors\])

[GameTooltip:SetOwnedItemByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetOwnedItemByID?action=edit&redlink=1 "API:GameTooltip SetOwnedItemByID (page does not exist)")(itemID)

[GameTooltip:SetPetAction](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetPetAction?action=edit&redlink=1 "API:GameTooltip SetPetAction (page does not exist)")(slot)

[GameTooltip:SetPossession](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetPossession?action=edit&redlink=1 "API:GameTooltip SetPossession (page does not exist)")(slot)

[GameTooltip:SetPvpBrawl](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetPvpBrawl?action=edit&redlink=1 "API:GameTooltip SetPvpBrawl (page does not exist)")(\[isSpecial\])

[GameTooltip:SetPvpTalent](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetPvpTalent?action=edit&redlink=1 "API:GameTooltip SetPvpTalent (page does not exist)")(talentID \[, isInspect, groupIndex, talentIndex\])

[GameTooltip:SetQuestCurrency](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestCurrency?action=edit&redlink=1 "API:GameTooltip SetQuestCurrency (page does not exist)")(type, currencyIndex)

[GameTooltip:SetQuestItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestItem?action=edit&redlink=1 "API:GameTooltip SetQuestItem (page does not exist)")(type, itemIndex \[, allowCollectionText\])

[GameTooltip:SetQuestLogCurrency](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestLogCurrency?action=edit&redlink=1 "API:GameTooltip SetQuestLogCurrency (page does not exist)")(type, currencyIndex \[, questID\])

[GameTooltip:SetQuestLogItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestLogItem?action=edit&redlink=1 "API:GameTooltip SetQuestLogItem (page does not exist)")(type, itemIndex \[, questID, allowCollectionText\])

[GameTooltip:SetQuestLogSpecialItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestLogSpecialItem?action=edit&redlink=1 "API:GameTooltip SetQuestLogSpecialItem (page does not exist)")(questIndex)

[GameTooltip:SetQuestPartyProgress](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetQuestPartyProgress?action=edit&redlink=1 "API:GameTooltip SetQuestPartyProgress (page does not exist)")(questID \[, omitTitle, ignoreActivePlayer\])

[GameTooltip:SetRecipeRankInfo](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetRecipeRankInfo?action=edit&redlink=1 "API:GameTooltip SetRecipeRankInfo (page does not exist)")(recipeID, rank)

[GameTooltip:SetRecipeReagentItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetRecipeReagentItem?action=edit&redlink=1 "API:GameTooltip SetRecipeReagentItem (page does not exist)")(recipeSpellID, dataSlotIndex)

[GameTooltip:SetRecipeResultItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetRecipeResultItem?action=edit&redlink=1 "API:GameTooltip SetRecipeResultItem (page does not exist)")(recipeID \[, craftingReagents, recraftItemGUID, recipeLevel, overrideQualityID\])

[GameTooltip:SetRecipeResultItemForOrder](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetRecipeResultItemForOrder?action=edit&redlink=1 "API:GameTooltip SetRecipeResultItemForOrder (page does not exist)")(recipeID \[, craftingReagents, orderID, recipeLevel, overrideQualityID\])

[GameTooltip:SetRuneforgeResultItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetRuneforgeResultItem?action=edit&redlink=1 "API:GameTooltip SetRuneforgeResultItem (page does not exist)")(itemGUID, itemLevel \[, powerID, modifiers\])

[GameTooltip:SetSendMailItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSendMailItem?action=edit&redlink=1 "API:GameTooltip SetSendMailItem (page does not exist)")(\[attachmentIndex\])

[GameTooltip:SetShapeshift](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetShapeshift?action=edit&redlink=1 "API:GameTooltip SetShapeshift (page does not exist)")(slot)

[GameTooltip:SetSlottedKeystone](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSlottedKeystone?action=edit&redlink=1 "API:GameTooltip SetSlottedKeystone (page does not exist)")()

[GameTooltip:SetSocketedItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSocketedItem?action=edit&redlink=1 "API:GameTooltip SetSocketedItem (page does not exist)")()

[GameTooltip:SetSocketedRelic](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSocketedRelic?action=edit&redlink=1 "API:GameTooltip SetSocketedRelic (page does not exist)")(slotIndex)

[GameTooltip:SetSocketGem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSocketGem?action=edit&redlink=1 "API:GameTooltip SetSocketGem (page does not exist)")(index)

[GameTooltip:SetSpellBookItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSpellBookItem "API:GameTooltip SetSpellBookItem")(index, spellBank)

[GameTooltip:SetSpellByID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetSpellByID?action=edit&redlink=1 "API:GameTooltip SetSpellByID (page does not exist)")(spellID \[, isPet, showSubtext, dontOverride, difficultyID, isLink\])

[GameTooltip:SetTalent](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTalent "API:GameTooltip SetTalent")(talentID \[, isInspect, groupIndex\])

[GameTooltip:SetTotem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTotem?action=edit&redlink=1 "API:GameTooltip SetTotem (page does not exist)")(slot)

[GameTooltip:SetToyByItemID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetToyByItemID?action=edit&redlink=1 "API:GameTooltip SetToyByItemID (page does not exist)")(itemID)

[GameTooltip:SetTradePlayerItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTradePlayerItem?action=edit&redlink=1 "API:GameTooltip SetTradePlayerItem (page does not exist)")(slot)

[GameTooltip:SetTradeTargetItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTradeTargetItem?action=edit&redlink=1 "API:GameTooltip SetTradeTargetItem (page does not exist)")(slot)

[GameTooltip:SetTrainerService](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTrainerService?action=edit&redlink=1 "API:GameTooltip SetTrainerService (page does not exist)")(serviceIndex)

[GameTooltip:SetTraitEntry](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTraitEntry?action=edit&redlink=1 "API:GameTooltip SetTraitEntry (page does not exist)")(entryID \[, rank\])

[GameTooltip:SetTransmogrifyItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetTransmogrifyItem "API:GameTooltip SetTransmogrifyItem")(transmogLocation)

[GameTooltip:SetUnit](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnit "API:GameTooltip SetUnit")(unit \[, hideStatus\])

[GameTooltip:SetUnitAura](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnitAura "API:GameTooltip SetUnitAura")(unitToken, index \[, filter\])

[GameTooltip:SetUnitBuff](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnitBuff "API:GameTooltip SetUnitBuff")(unitToken, index \[, filter\])

[GameTooltip:SetUnitBuffByAuraInstanceID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnitBuffByAuraInstanceID?action=edit&redlink=1 "API:GameTooltip SetUnitBuffByAuraInstanceID (page does not exist)")(unitTokenString, auraInstanceID \[, filter\])

[GameTooltip:SetUnitDebuff](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnitDebuff "API:GameTooltip SetUnitDebuff")(unitToken, index \[, filter\])

[GameTooltip:SetUnitDebuffByAuraInstanceID](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUnitDebuffByAuraInstanceID?action=edit&redlink=1 "API:GameTooltip SetUnitDebuffByAuraInstanceID (page does not exist)")(unitTokenString, auraInstanceID \[, filter\])

[GameTooltip:SetUpgradeItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetUpgradeItem "API:GameTooltip SetUpgradeItem")()

[GameTooltip:SetVoidDepositItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetVoidDepositItem?action=edit&redlink=1 "API:GameTooltip SetVoidDepositItem (page does not exist)")(slot)

[GameTooltip:SetVoidItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetVoidItem?action=edit&redlink=1 "API:GameTooltip SetVoidItem (page does not exist)")(tab, slot)

[GameTooltip:SetVoidWithdrawalItem](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetVoidWithdrawalItem?action=edit&redlink=1 "API:GameTooltip SetVoidWithdrawalItem (page does not exist)")(slot)

[GameTooltip:SetWeeklyReward](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetWeeklyReward?action=edit&redlink=1 "API:GameTooltip SetWeeklyReward (page does not exist)")(itemDBID)

[GameTooltip:SetWorldCursor](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetWorldCursor?action=edit&redlink=1 "API:GameTooltip SetWorldCursor (page does not exist)")()

[GameTooltip:SetWorldLootObject](https://warcraft.wiki.gg/wiki/API:GameTooltip_SetWorldLootObject?action=edit&redlink=1 "API:GameTooltip SetWorldLootObject (page does not exist)")(unitTokenString)

### [ColorSelect](https://warcraft.wiki.gg/wiki/UIOBJECT_ColorSelect "UIOBJECT ColorSelect")

[ColorSelect:ClearColorWheelTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_ClearColorWheelTexture "API:ColorSelect ClearColorWheelTexture")()

[ColorSelect:GetColorAlpha](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorAlpha "API:ColorSelect GetColorAlpha")() : alpha

[ColorSelect:GetColorAlphaTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorAlphaTexture "API:ColorSelect GetColorAlphaTexture")() : texture

[ColorSelect:GetColorAlphaThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorAlphaThumbTexture "API:ColorSelect GetColorAlphaThumbTexture")() : texture

[ColorSelect:GetColorHSV](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorHSV "API:ColorSelect GetColorHSV")() : hsvX, hsvY, hsvZ - Returns the HSV values of the selected color.

[ColorSelect:GetColorRGB](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorRGB "API:ColorSelect GetColorRGB")() : rgbR, rgbG, rgbB - Returns the RGB values of the selected color.

[ColorSelect:GetColorValueTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorValueTexture "API:ColorSelect GetColorValueTexture")() : texture - Returns the texture for the color picker's value slider background.

[ColorSelect:GetColorValueThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorValueThumbTexture "API:ColorSelect GetColorValueThumbTexture")() : texture - Returns the texture for the color picker's value slider thumb.

[ColorSelect:GetColorWheelTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorWheelTexture "API:ColorSelect GetColorWheelTexture")() : texture - Returns the texture for the color picker's hue/saturation wheel.

[ColorSelect:GetColorWheelThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_GetColorWheelThumbTexture "API:ColorSelect GetColorWheelThumbTexture")() : texture - Returns the texture for the selection indicator on the color picker's hue/saturation wheel.

[ColorSelect:SetColorAlpha](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorAlpha "API:ColorSelect SetColorAlpha")(alpha)

[ColorSelect:SetColorAlphaTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorAlphaTexture "API:ColorSelect SetColorAlphaTexture")(texture)

[ColorSelect:SetColorAlphaThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorAlphaThumbTexture "API:ColorSelect SetColorAlphaThumbTexture")(texture)

[ColorSelect:SetColorHSV](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorHSV "API:ColorSelect SetColorHSV")(hsvX, hsvY, hsvZ) - Selects this HSV color in the color picker.

[ColorSelect:SetColorRGB](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorRGB "API:ColorSelect SetColorRGB")(rgbR, rgbG, rgbB) - Selects this RGB color in the color picker.

[ColorSelect:SetColorValueTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorValueTexture "API:ColorSelect SetColorValueTexture")(texture) - Sets the texture used to display the color picker's value slider.

[ColorSelect:SetColorValueThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorValueThumbTexture "API:ColorSelect SetColorValueThumbTexture")(texture) - Sets the texture for the color picker's value slider thumb.

[ColorSelect:SetColorWheelTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorWheelTexture "API:ColorSelect SetColorWheelTexture")(texture) - Sets the texture used to display the color picker's hue/saturation wheel.

[ColorSelect:SetColorWheelThumbTexture](https://warcraft.wiki.gg/wiki/API:ColorSelect_SetColorWheelThumbTexture "API:ColorSelect SetColorWheelThumbTexture")(texture) - Sets the texture for the selection indicator on the color picker's hue/saturation wheel.

### [Cooldown](https://warcraft.wiki.gg/wiki/UIOBJECT_Cooldown "UIOBJECT Cooldown")

[Cooldown:Clear](https://warcraft.wiki.gg/wiki/API:Cooldown_Clear "API:Cooldown Clear")() - Clears the currently active cooldown of the widget.

[Cooldown:GetCooldownDisplayDuration](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCooldownDisplayDuration "API:Cooldown GetCooldownDisplayDuration")() : duration

[Cooldown:GetCooldownDuration](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCooldownDuration "API:Cooldown GetCooldownDuration")() : duration - Returns the duration currently shown by the cooldown frame in milliseconds.

[Cooldown:GetCooldownTimes](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCooldownTimes "API:Cooldown GetCooldownTimes")() : start, duration - Returns the starting time and duration of the cooldown frame in milliseconds.

[Cooldown:GetCountdownAbbrevThreshold](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCountdownAbbrevThreshold "API:Cooldown GetCountdownAbbrevThreshold")() : seconds

[Cooldown:GetCountdownFontString](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCountdownFontString "API:Cooldown GetCountdownFontString")() : countdownString

[Cooldown:GetCountdownFormatter](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCountdownFormatter "API:Cooldown GetCountdownFormatter")() : formatter

[Cooldown:GetCountdownMillisecondsThreshold](https://warcraft.wiki.gg/wiki/API:Cooldown_GetCountdownMillisecondsThreshold "API:Cooldown GetCountdownMillisecondsThreshold")() : seconds

[Cooldown:GetDrawBling](https://warcraft.wiki.gg/wiki/API:Cooldown_GetDrawBling "API:Cooldown GetDrawBling")() : drawBling

[Cooldown:GetDrawEdge](https://warcraft.wiki.gg/wiki/API:Cooldown_GetDrawEdge "API:Cooldown GetDrawEdge")() : drawEdge - Returns true if a bright line should be drawn on the moving edge of the cooldown animation.

[Cooldown:GetDrawSwipe](https://warcraft.wiki.gg/wiki/API:Cooldown_GetDrawSwipe "API:Cooldown GetDrawSwipe")() : drawSwipe

[Cooldown:GetEdgeScale](https://warcraft.wiki.gg/wiki/API:Cooldown_GetEdgeScale "API:Cooldown GetEdgeScale")() : edgeScale

[Cooldown:GetHideCountdownNumbers](https://warcraft.wiki.gg/wiki/API:Cooldown_GetHideCountdownNumbers "API:Cooldown GetHideCountdownNumbers")() : hideNumbers

[Cooldown:GetMinimumCountdownDuration](https://warcraft.wiki.gg/wiki/API:Cooldown_GetMinimumCountdownDuration "API:Cooldown GetMinimumCountdownDuration")(milliseconds)

[Cooldown:GetReverse](https://warcraft.wiki.gg/wiki/API:Cooldown_GetReverse "API:Cooldown GetReverse")() : reverse - Returns true if the bright and dark portions of the cooldown animation should be inverted.

[Cooldown:GetRotation](https://warcraft.wiki.gg/wiki/API:Cooldown_GetRotation "API:Cooldown GetRotation")() : rotationRadians - Get the current rotation of the cooldown in radians.

[Cooldown:GetUseAuraDisplayTime](https://warcraft.wiki.gg/wiki/API:Cooldown_GetUseAuraDisplayTime "API:Cooldown GetUseAuraDisplayTime")() : useAuraDisplayTime

[Cooldown:IsPaused](https://warcraft.wiki.gg/wiki/API:Cooldown_IsPaused "API:Cooldown IsPaused")() : isPaused - Returns true if the cooldown is currently paused.

[Cooldown:Pause](https://warcraft.wiki.gg/wiki/API:Cooldown_Pause "API:Cooldown Pause")() - Pauses the cooldown.

[Cooldown:Resume](https://warcraft.wiki.gg/wiki/API:Cooldown_Resume "API:Cooldown Resume")() - Resumes the cooldown after being paused.

[Cooldown:SetBlingTexture](https://warcraft.wiki.gg/wiki/API:Cooldown_SetBlingTexture "API:Cooldown SetBlingTexture")(texture \[, colorR, colorG, colorB, colorA\])

[Cooldown:SetCooldown](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCooldown "API:Cooldown SetCooldown")(start, duration \[, modRate\]) - Shows a cooldown animation.

[Cooldown:SetCooldownDuration](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCooldownDuration "API:Cooldown SetCooldownDuration")(duration \[, modRate\])

[Cooldown:SetCooldownFromDurationObject](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCooldownFromDurationObject "API:Cooldown SetCooldownFromDurationObject")(duration \[, clearIfZero\])

[Cooldown:SetCooldownFromExpirationTime](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCooldownFromExpirationTime "API:Cooldown SetCooldownFromExpirationTime")(expirationTime, duration \[, modRate\])

[Cooldown:SetCooldownUNIX](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCooldownUNIX "API:Cooldown SetCooldownUNIX")(start, duration \[, modRate\])

[Cooldown:SetCountdownAbbrevThreshold](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCountdownAbbrevThreshold "API:Cooldown SetCountdownAbbrevThreshold")(seconds)

[Cooldown:SetCountdownFont](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCountdownFont "API:Cooldown SetCountdownFont")(fontName)

[Cooldown:SetCountdownFormatter](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCountdownFormatter "API:Cooldown SetCountdownFormatter")(\[formatter\])

[Cooldown:SetCountdownMillisecondsThreshold](https://warcraft.wiki.gg/wiki/API:Cooldown_SetCountdownMillisecondsThreshold "API:Cooldown SetCountdownMillisecondsThreshold")(seconds)

[Cooldown:SetDrawBling](https://warcraft.wiki.gg/wiki/API:Cooldown_SetDrawBling "API:Cooldown SetDrawBling")(\[drawBling\])

[Cooldown:SetDrawEdge](https://warcraft.wiki.gg/wiki/API:Cooldown_SetDrawEdge "API:Cooldown SetDrawEdge")(\[drawEdge\]) - Sets whether a bright line should be drawn on the moving edge of the cooldown animation.

[Cooldown:SetDrawSwipe](https://warcraft.wiki.gg/wiki/API:Cooldown_SetDrawSwipe "API:Cooldown SetDrawSwipe")(\[drawSwipe\])

[Cooldown:SetEdgeColor](https://warcraft.wiki.gg/wiki/API:Cooldown_SetEdgeColor "API:Cooldown SetEdgeColor")(colorR, colorG, colorB \[, a\])

[Cooldown:SetEdgeScale](https://warcraft.wiki.gg/wiki/API:Cooldown_SetEdgeScale "API:Cooldown SetEdgeScale")(scale)

[Cooldown:SetEdgeTexture](https://warcraft.wiki.gg/wiki/API:Cooldown_SetEdgeTexture "API:Cooldown SetEdgeTexture")(texture \[, colorR, colorG, colorB, colorA\]) - Sets the texture which 'follows' the moving edge of the cooldown.

[Cooldown:SetHideCountdownNumbers](https://warcraft.wiki.gg/wiki/API:Cooldown_SetHideCountdownNumbers "API:Cooldown SetHideCountdownNumbers")(\[hideNumbers\]) - Show or hide text cooldown timer.

[Cooldown:SetMinimumCountdownDuration](https://warcraft.wiki.gg/wiki/API:Cooldown_SetMinimumCountdownDuration "API:Cooldown SetMinimumCountdownDuration")() : milliseconds

[Cooldown:SetPaused](https://warcraft.wiki.gg/wiki/API:Cooldown_SetPaused "API:Cooldown SetPaused")(paused)

[Cooldown:SetReverse](https://warcraft.wiki.gg/wiki/API:Cooldown_SetReverse "API:Cooldown SetReverse")(\[reverse\]) - Controls the direction of the cooldown animation.

[Cooldown:SetRotation](https://warcraft.wiki.gg/wiki/API:Cooldown_SetRotation "API:Cooldown SetRotation")(rotationRadians) - Rotate the entire cooldown a certain radians clockwise.

[Cooldown:SetSwipeColor](https://warcraft.wiki.gg/wiki/API:Cooldown_SetSwipeColor "API:Cooldown SetSwipeColor")(colorR, colorG, colorB \[, a\]) - Sets the color of the swipe

[Cooldown:SetSwipeTexture](https://warcraft.wiki.gg/wiki/API:Cooldown_SetSwipeTexture "API:Cooldown SetSwipeTexture")(texture \[, colorR, colorG, colorB, colorA\]) - Sets the swipe texture used for the cooldown

[Cooldown:SetTexCoordRange](https://warcraft.wiki.gg/wiki/API:Cooldown_SetTexCoordRange "API:Cooldown SetTexCoordRange")(low, high)

[Cooldown:SetUseAuraDisplayTime](https://warcraft.wiki.gg/wiki/API:Cooldown_SetUseAuraDisplayTime "API:Cooldown SetUseAuraDisplayTime")(\[useAuraDisplayTime\])

[Cooldown:SetUseCircularEdge](https://warcraft.wiki.gg/wiki/API:Cooldown_SetUseCircularEdge "API:Cooldown SetUseCircularEdge")(\[useCircularEdge\]) - Sets whether the edge texture should follow a circular pattern instead of square.

### [Minimap](https://warcraft.wiki.gg/wiki/UIOBJECT_Minimap "UIOBJECT Minimap")

[Minimap:GetPingPosition](https://warcraft.wiki.gg/wiki/API:Minimap_GetPingPosition "API:Minimap GetPingPosition")() : positionX, positionY - Get the last ping location.

[Minimap:GetZoom](https://warcraft.wiki.gg/wiki/API:Minimap_GetZoom "API:Minimap GetZoom")() : zoomFactor - Get the current zoom level.

[Minimap:GetZoomLevels](https://warcraft.wiki.gg/wiki/API:Minimap_GetZoomLevels "API:Minimap GetZoomLevels")() : zoomLevels - Get the maximum zoom level.

[Minimap:PingLocation](https://warcraft.wiki.gg/wiki/API:Minimap_PingLocation "API:Minimap PingLocation")(\[locationX, locationY\]) - Perform a ping at the specified location.

[Minimap:SetArchBlobInsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobInsideAlpha "API:Minimap SetArchBlobInsideAlpha")(alpha)

[Minimap:SetArchBlobInsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobInsideTexture "API:Minimap SetArchBlobInsideTexture")(asset)

[Minimap:SetArchBlobOutsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobOutsideAlpha "API:Minimap SetArchBlobOutsideAlpha")(alpha)

[Minimap:SetArchBlobOutsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobOutsideTexture "API:Minimap SetArchBlobOutsideTexture")(asset)

[Minimap:SetArchBlobRingAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobRingAlpha "API:Minimap SetArchBlobRingAlpha")(alpha)

[Minimap:SetArchBlobRingScalar](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobRingScalar "API:Minimap SetArchBlobRingScalar")(scalar)

[Minimap:SetArchBlobRingTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetArchBlobRingTexture "API:Minimap SetArchBlobRingTexture")(asset)

[Minimap:SetIconScale](https://warcraft.wiki.gg/wiki/API:Minimap_SetIconScale "API:Minimap SetIconScale")(scale)

[Minimap:SetMaskTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetMaskTexture "API:Minimap SetMaskTexture")(asset)

[Minimap:SetQuestBlobInsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobInsideAlpha "API:Minimap SetQuestBlobInsideAlpha")(alpha)

[Minimap:SetQuestBlobInsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobInsideTexture "API:Minimap SetQuestBlobInsideTexture")(asset)

[Minimap:SetQuestBlobOutsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobOutsideAlpha "API:Minimap SetQuestBlobOutsideAlpha")(alpha)

[Minimap:SetQuestBlobOutsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobOutsideTexture "API:Minimap SetQuestBlobOutsideTexture")(asset)

[Minimap:SetQuestBlobRingAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobRingAlpha "API:Minimap SetQuestBlobRingAlpha")(alpha)

[Minimap:SetQuestBlobRingScalar](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobRingScalar "API:Minimap SetQuestBlobRingScalar")(scalar)

[Minimap:SetQuestBlobRingTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetQuestBlobRingTexture "API:Minimap SetQuestBlobRingTexture")(asset)

[Minimap:SetTaskBlobInsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobInsideAlpha "API:Minimap SetTaskBlobInsideAlpha")(alpha)

[Minimap:SetTaskBlobInsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobInsideTexture "API:Minimap SetTaskBlobInsideTexture")(asset)

[Minimap:SetTaskBlobOutsideAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobOutsideAlpha "API:Minimap SetTaskBlobOutsideAlpha")(alpha)

[Minimap:SetTaskBlobOutsideTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobOutsideTexture "API:Minimap SetTaskBlobOutsideTexture")(asset)

[Minimap:SetTaskBlobRingAlpha](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobRingAlpha "API:Minimap SetTaskBlobRingAlpha")(alpha)

[Minimap:SetTaskBlobRingScalar](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobRingScalar "API:Minimap SetTaskBlobRingScalar")(scalar)

[Minimap:SetTaskBlobRingTexture](https://warcraft.wiki.gg/wiki/API:Minimap_SetTaskBlobRingTexture "API:Minimap SetTaskBlobRingTexture")(asset)

[Minimap:SetZoom](https://warcraft.wiki.gg/wiki/API:Minimap_SetZoom "API:Minimap SetZoom")(zoomFactor) - Set the current zoom level.

[Minimap:UpdateBlips](https://warcraft.wiki.gg/wiki/API:Minimap_UpdateBlips "API:Minimap UpdateBlips")()

### [MovieFrame](https://warcraft.wiki.gg/wiki/UIOBJECT_MovieFrame "UIOBJECT MovieFrame")

[MovieFrame:EnableSubtitles](https://warcraft.wiki.gg/wiki/API:MovieFrame_EnableSubtitles "API:MovieFrame EnableSubtitles")(enable) - Enables or disables subtitles for movies played in the frame.

[MovieFrame:StartMovie](https://warcraft.wiki.gg/wiki/API:MovieFrame_StartMovie "API:MovieFrame StartMovie")(movieID \[, looping\]) : success, returnCode - Plays a specified movie in the frame.

[MovieFrame:StartMovieByName](https://warcraft.wiki.gg/wiki/API:MovieFrame_StartMovieByName "API:MovieFrame StartMovieByName")(movieName \[, looping \[, resolution\]\]) : success, returnCode - This method is deprecated and does nothing.

[MovieFrame:StopMovie](https://warcraft.wiki.gg/wiki/API:MovieFrame_StopMovie "API:MovieFrame StopMovie")() - Stops the movie currently playing in the frame.

### [NamePlate](https://warcraft.wiki.gg/wiki/UIOBJECT_NamePlate "UIOBJECT NamePlate")

[NamePlate:CanChangeHitTestPoints](https://warcraft.wiki.gg/wiki/API:NamePlate_CanChangeHitTestPoints "API:NamePlate CanChangeHitTestPoints")() : canChangeHitTestPoints

[NamePlate:ClearAllHitTestPoints](https://warcraft.wiki.gg/wiki/API:NamePlate_ClearAllHitTestPoints "API:NamePlate ClearAllHitTestPoints")()

[NamePlate:GetHitTestPoints](https://warcraft.wiki.gg/wiki/API:NamePlate_GetHitTestPoints "API:NamePlate GetHitTestPoints")() : anchors

[NamePlate:SetAllHitTestPoints](https://warcraft.wiki.gg/wiki/API:NamePlate_SetAllHitTestPoints "API:NamePlate SetAllHitTestPoints")(relativeTo)

[NamePlate:SetHitTestPoints](https://warcraft.wiki.gg/wiki/API:NamePlate_SetHitTestPoints "API:NamePlate SetHitTestPoints")(anchors)

[NamePlate:SetStackingBoundsFrame](https://warcraft.wiki.gg/wiki/API:NamePlate_SetStackingBoundsFrame "API:NamePlate SetStackingBoundsFrame")(frame)

### [ScrollFrame](https://warcraft.wiki.gg/wiki/UIOBJECT_ScrollFrame "UIOBJECT ScrollFrame")

[ScrollFrame:GetHorizontalScroll](https://warcraft.wiki.gg/wiki/API:ScrollFrame_GetHorizontalScroll "API:ScrollFrame GetHorizontalScroll")() : offset

[ScrollFrame:GetHorizontalScrollRange](https://warcraft.wiki.gg/wiki/API:ScrollFrame_GetHorizontalScrollRange "API:ScrollFrame GetHorizontalScrollRange")() : range

[ScrollFrame:GetScrollChild](https://warcraft.wiki.gg/wiki/API:ScrollFrame_GetScrollChild "API:ScrollFrame GetScrollChild")() : scrollChild - Returns the frame that scrolls when moving the scroll bar.

[ScrollFrame:GetVerticalScroll](https://warcraft.wiki.gg/wiki/API:ScrollFrame_GetVerticalScroll "API:ScrollFrame GetVerticalScroll")() : offset

[ScrollFrame:GetVerticalScrollRange](https://warcraft.wiki.gg/wiki/API:ScrollFrame_GetVerticalScrollRange "API:ScrollFrame GetVerticalScrollRange")() : range

[ScrollFrame:SetHorizontalScroll](https://warcraft.wiki.gg/wiki/API:ScrollFrame_SetHorizontalScroll "API:ScrollFrame SetHorizontalScroll")(offset)

[ScrollFrame:SetScrollChild](https://warcraft.wiki.gg/wiki/API:ScrollFrame_SetScrollChild "API:ScrollFrame SetScrollChild")(scrollChild) - Assigns the frame to scroll when moving the scroll bar.

[ScrollFrame:SetVerticalScroll](https://warcraft.wiki.gg/wiki/API:ScrollFrame_SetVerticalScroll "API:ScrollFrame SetVerticalScroll")(offset)

[ScrollFrame:UpdateScrollChildRect](https://warcraft.wiki.gg/wiki/API:ScrollFrame_UpdateScrollChildRect "API:ScrollFrame UpdateScrollChildRect")()

### [Slider](https://warcraft.wiki.gg/wiki/UIOBJECT_Slider "UIOBJECT Slider")

[Slider:Disable](https://warcraft.wiki.gg/wiki/API:Slider_Disable "API:Slider Disable")() - Disables the slider.

[Slider:Enable](https://warcraft.wiki.gg/wiki/API:Slider_Enable "API:Slider Enable")() - Enables the slider

[Slider:GetMinMaxValues](https://warcraft.wiki.gg/wiki/API:Slider_GetMinMaxValues "API:Slider GetMinMaxValues")() : minValue, maxValue - Returns the current bounds of the slider.

[Slider:GetObeyStepOnDrag](https://warcraft.wiki.gg/wiki/API:Slider_GetObeyStepOnDrag "API:Slider GetObeyStepOnDrag")() : isObeyStepOnDrag - Returns whether the slider constrains values to value steps when dragged.

[Slider:GetOrientation](https://warcraft.wiki.gg/wiki/API:Slider_GetOrientation "API:Slider GetOrientation")() : orientation - Returns the slider orientation.

[Slider:GetStepsPerPage](https://warcraft.wiki.gg/wiki/API:Slider_GetStepsPerPage "API:Slider GetStepsPerPage")() : stepsPerPage - Returns the number of steps the slider's value changes by when the slider is clicked.

[Slider:GetThumbTexture](https://warcraft.wiki.gg/wiki/API:Slider_GetThumbTexture "API:Slider GetThumbTexture")() : texture - Returns the texture for this slider's thumb,

[Slider:GetValue](https://warcraft.wiki.gg/wiki/API:Slider_GetValue "API:Slider GetValue")() : value - Returns the current value of the slider.

[Slider:GetValueStep](https://warcraft.wiki.gg/wiki/API:Slider_GetValueStep "API:Slider GetValueStep")() : valueStep - Returns the current step size of the slider.

[Slider:IsDraggingThumb](https://warcraft.wiki.gg/wiki/API:Slider_IsDraggingThumb "API:Slider IsDraggingThumb")() : isDraggingThumb

[Slider:IsEnabled](https://warcraft.wiki.gg/wiki/API:Slider_IsEnabled "API:Slider IsEnabled")() : enabled - Returns the enabled status of the slider.

[Slider:SetEnabled](https://warcraft.wiki.gg/wiki/API:Slider_SetEnabled "API:Slider SetEnabled")(enabled)

[Slider:SetMinMaxValues](https://warcraft.wiki.gg/wiki/API:Slider_SetMinMaxValues "API:Slider SetMinMaxValues")(minValue, maxValue) - Sets the bounds of the slider.

[Slider:SetObeyStepOnDrag](https://warcraft.wiki.gg/wiki/API:Slider_SetObeyStepOnDrag "API:Slider SetObeyStepOnDrag")(obeyStepOnDrag) - Sets whether the slider constrains values to to value steps when dragged.

[Slider:SetOrientation](https://warcraft.wiki.gg/wiki/API:Slider_SetOrientation "API:Slider SetOrientation")(orientation) - Sets the orientation of the slider.

[Slider:SetStepsPerPage](https://warcraft.wiki.gg/wiki/API:Slider_SetStepsPerPage "API:Slider SetStepsPerPage")(stepsPerPage) - Controls slider behavior when the user clicks within the slider's tracking area.

[Slider:SetThumbTexture](https://warcraft.wiki.gg/wiki/API:Slider_SetThumbTexture "API:Slider SetThumbTexture")(asset)

[Slider:SetValue](https://warcraft.wiki.gg/wiki/API:Slider_SetValue "API:Slider SetValue")(value \[, treatAsMouseEvent\]) - Sets the value of the slider.

[Slider:SetValueStep](https://warcraft.wiki.gg/wiki/API:Slider_SetValueStep "API:Slider SetValueStep")(valueStep) - Sets the step size of the slider.

### [StatusBar](https://warcraft.wiki.gg/wiki/UIOBJECT_StatusBar "UIOBJECT StatusBar")

[StatusBar:GetFillStyle](https://warcraft.wiki.gg/wiki/API:StatusBar_GetFillStyle "API:StatusBar GetFillStyle")() : fillStyle

[StatusBar:GetInterpolatedValue](https://warcraft.wiki.gg/wiki/API:StatusBar_GetInterpolatedValue "API:StatusBar GetInterpolatedValue")() : value

[StatusBar:GetMinMaxValues](https://warcraft.wiki.gg/wiki/API:StatusBar_GetMinMaxValues "API:StatusBar GetMinMaxValues")() : minValue, maxValue - Returns the current bounds of the statusbar.

[StatusBar:GetOrientation](https://warcraft.wiki.gg/wiki/API:StatusBar_GetOrientation "API:StatusBar GetOrientation")() : orientation

[StatusBar:GetRenderMode](https://warcraft.wiki.gg/wiki/API:StatusBar_GetRenderMode "API:StatusBar GetRenderMode")() : renderMode

[StatusBar:GetReverseFill](https://warcraft.wiki.gg/wiki/API:StatusBar_GetReverseFill "API:StatusBar GetReverseFill")() : isReverseFill

[StatusBar:GetRotatesTexture](https://warcraft.wiki.gg/wiki/API:StatusBar_GetRotatesTexture "API:StatusBar GetRotatesTexture")() : rotatesTexture

[StatusBar:GetStatusBarColor](https://warcraft.wiki.gg/wiki/API:StatusBar_GetStatusBarColor "API:StatusBar GetStatusBarColor")() : colorR, colorG, colorB, colorA

[StatusBar:GetStatusBarDesaturation](https://warcraft.wiki.gg/wiki/API:StatusBar_GetStatusBarDesaturation "API:StatusBar GetStatusBarDesaturation")() : desaturation

[StatusBar:GetStatusBarTexture](https://warcraft.wiki.gg/wiki/API:StatusBar_GetStatusBarTexture "API:StatusBar GetStatusBarTexture")() : texture - Returns the texture object for the statusbar.

[StatusBar:GetTimerDuration](https://warcraft.wiki.gg/wiki/API:StatusBar_GetTimerDuration "API:StatusBar GetTimerDuration")() : duration

[StatusBar:GetValue](https://warcraft.wiki.gg/wiki/API:StatusBar_GetValue "API:StatusBar GetValue")() : value - Returns the current value of the statusbar.

[StatusBar:IsInterpolating](https://warcraft.wiki.gg/wiki/API:StatusBar_IsInterpolating "API:StatusBar IsInterpolating")() : isInterpolating

[StatusBar:IsStatusBarDesaturated](https://warcraft.wiki.gg/wiki/API:StatusBar_IsStatusBarDesaturated "API:StatusBar IsStatusBarDesaturated")() : desaturated

[StatusBar:SetColorFill](https://warcraft.wiki.gg/wiki/API:StatusBar_SetColorFill "API:StatusBar SetColorFill")(colorR, colorG, colorB \[, a\])

[StatusBar:SetFillStyle](https://warcraft.wiki.gg/wiki/API:StatusBar_SetFillStyle "API:StatusBar SetFillStyle")(fillStyle) - Set the style in which the statusbar will be filled.

[StatusBar:SetMinMaxValues](https://warcraft.wiki.gg/wiki/API:StatusBar_SetMinMaxValues "API:StatusBar SetMinMaxValues")(minValue, maxValue \[, interpolation\]) - Set the bounds of the statusbar.

[StatusBar:SetOrientation](https://warcraft.wiki.gg/wiki/API:StatusBar_SetOrientation "API:StatusBar SetOrientation")(orientation) - Sets the orientation of the statusbar.

[StatusBar:SetRenderMode](https://warcraft.wiki.gg/wiki/API:StatusBar_SetRenderMode "API:StatusBar SetRenderMode")(renderMode)

[StatusBar:SetReverseFill](https://warcraft.wiki.gg/wiki/API:StatusBar_SetReverseFill "API:StatusBar SetReverseFill")(isReverseFill) - Sets the fill direction of the statusbar.

[StatusBar:SetRotatesTexture](https://warcraft.wiki.gg/wiki/API:StatusBar_SetRotatesTexture "API:StatusBar SetRotatesTexture")(rotatesTexture)

[StatusBar:SetStatusBarColor](https://warcraft.wiki.gg/wiki/API:StatusBar_SetStatusBarColor "API:StatusBar SetStatusBarColor")(colorR, colorG, colorB \[, a\]) - Set the color of the statusbar.

[StatusBar:SetStatusBarDesaturated](https://warcraft.wiki.gg/wiki/API:StatusBar_SetStatusBarDesaturated "API:StatusBar SetStatusBarDesaturated")(\[desaturated\])

[StatusBar:SetStatusBarDesaturation](https://warcraft.wiki.gg/wiki/API:StatusBar_SetStatusBarDesaturation "API:StatusBar SetStatusBarDesaturation")(desaturation)

[StatusBar:SetStatusBarTexture](https://warcraft.wiki.gg/wiki/API:StatusBar_SetStatusBarTexture "API:StatusBar SetStatusBarTexture")(asset) : success - Sets the texture of the statusbar.

[StatusBar:SetTimerDuration](https://warcraft.wiki.gg/wiki/API:StatusBar_SetTimerDuration "API:StatusBar SetTimerDuration")(duration \[, interpolation, direction\])

[StatusBar:SetToTargetValue](https://warcraft.wiki.gg/wiki/API:StatusBar_SetToTargetValue "API:StatusBar SetToTargetValue")()

[StatusBar:SetValue](https://warcraft.wiki.gg/wiki/API:StatusBar_SetValue "API:StatusBar SetValue")(value \[, interpolation\]) - Set the value of the statusbar.

### FogOfWarFrame

[FogOfWarFrame:GetFogOfWarBackgroundAtlas](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetFogOfWarBackgroundAtlas "API:FogOfWarFrame GetFogOfWarBackgroundAtlas")() : atlas

[FogOfWarFrame:GetFogOfWarBackgroundTexture](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetFogOfWarBackgroundTexture "API:FogOfWarFrame GetFogOfWarBackgroundTexture")() : asset

[FogOfWarFrame:GetFogOfWarMaskAtlas](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetFogOfWarMaskAtlas "API:FogOfWarFrame GetFogOfWarMaskAtlas")() : atlas

[FogOfWarFrame:GetFogOfWarMaskTexture](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetFogOfWarMaskTexture "API:FogOfWarFrame GetFogOfWarMaskTexture")() : asset

[FogOfWarFrame:GetMaskScalar](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetMaskScalar "API:FogOfWarFrame GetMaskScalar")() : scalar

[FogOfWarFrame:GetUiMapID](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_GetUiMapID "API:FogOfWarFrame GetUiMapID")() : uiMapID

[FogOfWarFrame:SetFogOfWarBackgroundAtlas](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetFogOfWarBackgroundAtlas "API:FogOfWarFrame SetFogOfWarBackgroundAtlas")(atlas)

[FogOfWarFrame:SetFogOfWarBackgroundTexture](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetFogOfWarBackgroundTexture "API:FogOfWarFrame SetFogOfWarBackgroundTexture")(asset, horizontalTile, verticalTile)

[FogOfWarFrame:SetFogOfWarMaskAtlas](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetFogOfWarMaskAtlas "API:FogOfWarFrame SetFogOfWarMaskAtlas")(atlas)

[FogOfWarFrame:SetFogOfWarMaskTexture](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetFogOfWarMaskTexture "API:FogOfWarFrame SetFogOfWarMaskTexture")(asset)

[FogOfWarFrame:SetMaskScalar](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetMaskScalar "API:FogOfWarFrame SetMaskScalar")(scalar)

[FogOfWarFrame:SetUiMapID](https://warcraft.wiki.gg/wiki/API:FogOfWarFrame_SetUiMapID "API:FogOfWarFrame SetUiMapID")(uiMapID)

### UnitPositionFrame

[UnitPositionFrame:AddUnit](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_AddUnit "API:UnitPositionFrame AddUnit")(unitTokenString, asset \[, width, height, r, g, b, a, sublayer, showFacing\])

[UnitPositionFrame:ClearUnits](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_ClearUnits "API:UnitPositionFrame ClearUnits")()

[UnitPositionFrame:FinalizeUnits](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_FinalizeUnits "API:UnitPositionFrame FinalizeUnits")()

[UnitPositionFrame:GetMouseOverUnits](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_GetMouseOverUnits "API:UnitPositionFrame GetMouseOverUnits")() : ...units

[UnitPositionFrame:GetPlayerPingScale](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_GetPlayerPingScale "API:UnitPositionFrame GetPlayerPingScale")() : scale

[UnitPositionFrame:GetUiMapID](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_GetUiMapID "API:UnitPositionFrame GetUiMapID")() : mapID

[UnitPositionFrame:SetPlayerPingScale](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_SetPlayerPingScale "API:UnitPositionFrame SetPlayerPingScale")(scale)

[UnitPositionFrame:SetPlayerPingTexture](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_SetPlayerPingTexture "API:UnitPositionFrame SetPlayerPingTexture")(textureType, asset \[, width, height\])

[UnitPositionFrame:SetUiMapID](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_SetUiMapID "API:UnitPositionFrame SetUiMapID")(mapID)

[UnitPositionFrame:SetUnitColor](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_SetUnitColor "API:UnitPositionFrame SetUnitColor")(unit, colorR, colorG, colorB, colorA)

[UnitPositionFrame:StartPlayerPing](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_StartPlayerPing "API:UnitPositionFrame StartPlayerPing")(\[duration, fadeDuration\])

[UnitPositionFrame:StopPlayerPing](https://warcraft.wiki.gg/wiki/API:UnitPositionFrame_StopPlayerPing "API:UnitPositionFrame StopPlayerPing")()

### [HousingFixturePointFrame](https://warcraft.wiki.gg/wiki/ScriptObject_HousingFixturePointFrame "ScriptObject HousingFixturePointFrame")

[HousingFixturePointFrame:HasAttachedFixture](https://warcraft.wiki.gg/wiki/API:HousingFixturePointFrame_HasAttachedFixture "API:HousingFixturePointFrame HasAttachedFixture")() : hasAttachedFixture

[HousingFixturePointFrame:IsSelected](https://warcraft.wiki.gg/wiki/API:HousingFixturePointFrame_IsSelected "API:HousingFixturePointFrame IsSelected")() : isSelected

[HousingFixturePointFrame:IsValid](https://warcraft.wiki.gg/wiki/API:HousingFixturePointFrame_IsValid "API:HousingFixturePointFrame IsValid")() : isValid

[HousingFixturePointFrame:Select](https://warcraft.wiki.gg/wiki/API:HousingFixturePointFrame_Select "API:HousingFixturePointFrame Select")()

[HousingFixturePointFrame:SetUpdateCallback](https://warcraft.wiki.gg/wiki/API:HousingFixturePointFrame_SetUpdateCallback "API:HousingFixturePointFrame SetUpdateCallback")(cb)

### [HousingLayoutPinFrame](https://warcraft.wiki.gg/wiki/ScriptObject_HousingLayoutPinFrame "ScriptObject HousingLayoutPinFrame")

[HousingLayoutPinFrame:CanMove](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_CanMove "API:HousingLayoutPinFrame CanMove")() : moveRestriction

[HousingLayoutPinFrame:CanRemove](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_CanRemove "API:HousingLayoutPinFrame CanRemove")() : removalRestriction

[HousingLayoutPinFrame:CanRotate](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_CanRotate "API:HousingLayoutPinFrame CanRotate")() : rotateRestriction

[HousingLayoutPinFrame:Drag](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_Drag "API:HousingLayoutPinFrame Drag")(isAccessible)

[HousingLayoutPinFrame:GetDoorConnectionInfo](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_GetDoorConnectionInfo "API:HousingLayoutPinFrame GetDoorConnectionInfo")() : connectionInfo

[HousingLayoutPinFrame:GetPinType](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_GetPinType "API:HousingLayoutPinFrame GetPinType")() : type

[HousingLayoutPinFrame:GetRoomGUID](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_GetRoomGUID "API:HousingLayoutPinFrame GetRoomGUID")() : roomGUID

[HousingLayoutPinFrame:GetRoomName](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_GetRoomName "API:HousingLayoutPinFrame GetRoomName")() : name

[HousingLayoutPinFrame:IsAnyPartOfRoomSelected](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsAnyPartOfRoomSelected "API:HousingLayoutPinFrame IsAnyPartOfRoomSelected")() : isSelected

[HousingLayoutPinFrame:IsConnectedToDraggingRoom](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsConnectedToDraggingRoom "API:HousingLayoutPinFrame IsConnectedToDraggingRoom")() : isConnectedToDraggingRoom

[HousingLayoutPinFrame:IsOccupiedDoor](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsOccupiedDoor "API:HousingLayoutPinFrame IsOccupiedDoor")() : isOccupied

[HousingLayoutPinFrame:IsPartOfDraggingRoom](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsPartOfDraggingRoom "API:HousingLayoutPinFrame IsPartOfDraggingRoom")() : isPartOfDraggingRoom

[HousingLayoutPinFrame:IsSelected](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsSelected "API:HousingLayoutPinFrame IsSelected")() : isSelected

[HousingLayoutPinFrame:IsValid](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsValid "API:HousingLayoutPinFrame IsValid")() : isValid

[HousingLayoutPinFrame:IsValidForSelectedFloorplan](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_IsValidForSelectedFloorplan "API:HousingLayoutPinFrame IsValidForSelectedFloorplan")() : isValid

[HousingLayoutPinFrame:Select](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_Select "API:HousingLayoutPinFrame Select")()

[HousingLayoutPinFrame:SetUpdateCallback](https://warcraft.wiki.gg/wiki/API:HousingLayoutPinFrame_SetUpdateCallback "API:HousingLayoutPinFrame SetUpdateCallback")(cb)

### *Blob*

[Blob:DrawAll](https://warcraft.wiki.gg/wiki/API:Blob_DrawAll "API:Blob DrawAll")()

[Blob:DrawBlob](https://warcraft.wiki.gg/wiki/API:Blob_DrawBlob "API:Blob DrawBlob")(questID \[, draw\])

[Blob:DrawNone](https://warcraft.wiki.gg/wiki/API:Blob_DrawNone "API:Blob DrawNone")()

[Blob:EnableMerging](https://warcraft.wiki.gg/wiki/API:Blob_EnableMerging "API:Blob EnableMerging")(\[enable\])

[Blob:EnableSmoothing](https://warcraft.wiki.gg/wiki/API:Blob_EnableSmoothing "API:Blob EnableSmoothing")(\[enable\])

[Blob:GetMapID](https://warcraft.wiki.gg/wiki/API:Blob_GetMapID "API:Blob GetMapID")() : uiMapID

[Blob:SetBorderAlpha](https://warcraft.wiki.gg/wiki/API:Blob_SetBorderAlpha "API:Blob SetBorderAlpha")(alpha)

[Blob:SetBorderScalar](https://warcraft.wiki.gg/wiki/API:Blob_SetBorderScalar "API:Blob SetBorderScalar")(scalar)

[Blob:SetBorderTexture](https://warcraft.wiki.gg/wiki/API:Blob_SetBorderTexture "API:Blob SetBorderTexture")(asset)

[Blob:SetFillAlpha](https://warcraft.wiki.gg/wiki/API:Blob_SetFillAlpha "API:Blob SetFillAlpha")(alpha)

[Blob:SetFillTexture](https://warcraft.wiki.gg/wiki/API:Blob_SetFillTexture "API:Blob SetFillTexture")(asset)

[Blob:SetMapID](https://warcraft.wiki.gg/wiki/API:Blob_SetMapID "API:Blob SetMapID")(uiMapID)

[Blob:SetMergeThreshold](https://warcraft.wiki.gg/wiki/API:Blob_SetMergeThreshold "API:Blob SetMergeThreshold")(threshold)

[Blob:SetNumSplinePoints](https://warcraft.wiki.gg/wiki/API:Blob_SetNumSplinePoints "API:Blob SetNumSplinePoints")(numSplinePoints)

### ArchaeologyDigSiteFrame

Inherits all methods from `Blob`.

### QuestPOIFrame

[QuestPOIFrame:GetNumTooltips](https://warcraft.wiki.gg/wiki/API:QuestPOIFrame_GetNumTooltips "API:QuestPOIFrame GetNumTooltips")() : numObjectives

[QuestPOIFrame:GetTooltipIndex](https://warcraft.wiki.gg/wiki/API:QuestPOIFrame_GetTooltipIndex "API:QuestPOIFrame GetTooltipIndex")(index) : objectiveIndex

[QuestPOIFrame:UpdateMouseOverTooltip](https://warcraft.wiki.gg/wiki/API:QuestPOIFrame_UpdateMouseOverTooltip "API:QuestPOIFrame UpdateMouseOverTooltip")(x, y) : questID, numObjectives

### ScenarioPOIFrame

[ScenarioPOIFrame:GetScenarioTooltipText](https://warcraft.wiki.gg/wiki/API:ScenarioPOIFrame_GetScenarioTooltipText "API:ScenarioPOIFrame GetScenarioTooltipText")() : tooltipText

[ScenarioPOIFrame:UpdateMouseOverTooltip](https://warcraft.wiki.gg/wiki/API:ScenarioPOIFrame_UpdateMouseOverTooltip "API:ScenarioPOIFrame UpdateMouseOverTooltip")(x, y) : hasTooltip

## Intrinsics

*Main article: [Intrinsic frame](https://warcraft.wiki.gg/wiki/Intrinsic_frame "Intrinsic frame")*

### [AuraButton](https://warcraft.wiki.gg/wiki/INTRINSIC_AuraButton "INTRINSIC AuraButton")

[AuraButton:GetTooltipAnchorPoint](https://warcraft.wiki.gg/wiki/API:AuraButton_GetTooltipAnchorPoint "API:AuraButton GetTooltipAnchorPoint")() : tooltipAnchorPoint, tooltipOffsetX, tooltipOffsetY

[AuraButton:SetCancelAuraButtons](https://warcraft.wiki.gg/wiki/API:AuraButton_SetCancelAuraButtons "API:AuraButton SetCancelAuraButtons")(cancelAuraButtons)

[AuraButton:SetHideTooltipInCombat](https://warcraft.wiki.gg/wiki/API:AuraButton_SetHideTooltipInCombat "API:AuraButton SetHideTooltipInCombat")(hideInCombat)

[AuraButton:SetTooltipAnchorPoint](https://warcraft.wiki.gg/wiki/API:AuraButton_SetTooltipAnchorPoint "API:AuraButton SetTooltipAnchorPoint")(point, offsetX, offsetY)

[AuraButton:ShouldHideTooltipInCombat](https://warcraft.wiki.gg/wiki/API:AuraButton_ShouldHideTooltipInCombat "API:AuraButton ShouldHideTooltipInCombat")() : tooltipHideInCombat

### [AuraContainer](https://warcraft.wiki.gg/wiki/INTRINSIC_AuraContainer "INTRINSIC AuraContainer")

[AuraContainer:GetUnit](https://warcraft.wiki.gg/wiki/API:AuraContainer_GetUnit "API:AuraContainer GetUnit")() : unitToken

[AuraContainer:IsEnabled](https://warcraft.wiki.gg/wiki/API:AuraContainer_IsEnabled "API:AuraContainer IsEnabled")() : isEnabled

[AuraContainer:SetEnabled](https://warcraft.wiki.gg/wiki/API:AuraContainer_SetEnabled "API:AuraContainer SetEnabled")(enabled)

[AuraContainer:SetUnit](https://warcraft.wiki.gg/wiki/API:AuraContainer_SetUnit "API:AuraContainer SetUnit")(unitToken)

[AuraContainer:UpdateAllAuras](https://warcraft.wiki.gg/wiki/API:AuraContainer_UpdateAllAuras "API:AuraContainer UpdateAllAuras")()

### [ContainedAlertFrame](https://warcraft.wiki.gg/wiki/INTRINSIC_ContainedAlertFrame "INTRINSIC ContainedAlertFrame")

[ContainedAlertFrame:GetAlertContainer](https://warcraft.wiki.gg/wiki/API:ContainedAlertFrame_GetAlertContainer "API:ContainedAlertFrame GetAlertContainer")() : alertContainer

[ContainedAlertFrame:ManagesOwnOutroAnimation](https://warcraft.wiki.gg/wiki/API:ContainedAlertFrame_ManagesOwnOutroAnimation "API:ContainedAlertFrame ManagesOwnOutroAnimation")() : unknown

[ContainedAlertFrame:OnManagedAlertFrameVisibilityChanged](https://warcraft.wiki.gg/wiki/API:ContainedAlertFrame_OnManagedAlertFrameVisibilityChanged "API:ContainedAlertFrame OnManagedAlertFrameVisibilityChanged")()

[ContainedAlertFrame:SetAlertContainer](https://warcraft.wiki.gg/wiki/API:ContainedAlertFrame_SetAlertContainer "API:ContainedAlertFrame SetAlertContainer")(container)

[ContainedAlertFrame:SetExternallyManagedOutroAnimation](https://warcraft.wiki.gg/wiki/API:ContainedAlertFrame_SetExternallyManagedOutroAnimation "API:ContainedAlertFrame SetExternallyManagedOutroAnimation")(externallyManagedAnimation)

### [DropdownButton](https://warcraft.wiki.gg/wiki/INTRINSIC_DropdownButton "INTRINSIC DropdownButton")

[DropdownButton:ClearMenuState](https://warcraft.wiki.gg/wiki/API:DropdownButton_ClearMenuState "API:DropdownButton ClearMenuState")()

[DropdownButton:CloseMenu](https://warcraft.wiki.gg/wiki/API:DropdownButton_CloseMenu "API:DropdownButton CloseMenu")()

[DropdownButton:CollectSelectionData](https://warcraft.wiki.gg/wiki/API:DropdownButton_CollectSelectionData "API:DropdownButton CollectSelectionData")() : unknown

[DropdownButton:CopyDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:DropdownButton_CopyDeferredCallbacks "API:DropdownButton CopyDeferredCallbacks")(callbackType, event, target)

[DropdownButton:CreateDefaultRootMenuDescription](https://warcraft.wiki.gg/wiki/API:DropdownButton_CreateDefaultRootMenuDescription "API:DropdownButton CreateDefaultRootMenuDescription")() : unknown

[DropdownButton:CreateRootDescription](https://warcraft.wiki.gg/wiki/API:DropdownButton_CreateRootDescription "API:DropdownButton CreateRootDescription")(menuMixin) : unknown

[DropdownButton:Decrement](https://warcraft.wiki.gg/wiki/API:DropdownButton_Decrement "API:DropdownButton Decrement")()

[DropdownButton:EnableRegenerateOnResponse](https://warcraft.wiki.gg/wiki/API:DropdownButton_EnableRegenerateOnResponse "API:DropdownButton EnableRegenerateOnResponse")()

[DropdownButton:GenerateCallbackEvents](https://warcraft.wiki.gg/wiki/API:DropdownButton_GenerateCallbackEvents "API:DropdownButton GenerateCallbackEvents")(eventTable)

[DropdownButton:GenerateMenu](https://warcraft.wiki.gg/wiki/API:DropdownButton_GenerateMenu "API:DropdownButton GenerateMenu")()

[DropdownButton:GetCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetCallbacksByEvent "API:DropdownButton GetCallbacksByEvent")(callbackType, event) : event

[DropdownButton:GetCallbackTable](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetCallbackTable "API:DropdownButton GetCallbackTable")(callbackType) : unknown

[DropdownButton:GetCallbackTables](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetCallbackTables "API:DropdownButton GetCallbackTables")() : callbackTables

[DropdownButton:GetMenuDescription](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetMenuDescription "API:DropdownButton GetMenuDescription")() : menuDescription

[DropdownButton:GetMutableCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetMutableCallbacksByEvent "API:DropdownButton GetMutableCallbacksByEvent")(callbackType, event) : mutableCallbacksByEvent

[DropdownButton:GetSelectionData](https://warcraft.wiki.gg/wiki/API:DropdownButton_GetSelectionData "API:DropdownButton GetSelectionData")() : selectionData

[DropdownButton:HandlesGlobalMouseEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_HandlesGlobalMouseEvent "API:DropdownButton HandlesGlobalMouseEvent")(buttonName, event) : unknown

[DropdownButton:HasAnyRadioDescriptions](https://warcraft.wiki.gg/wiki/API:DropdownButton_HasAnyRadioDescriptions "API:DropdownButton HasAnyRadioDescriptions")() : hasAnyRadioDescriptions

[DropdownButton:HasElements](https://warcraft.wiki.gg/wiki/API:DropdownButton_HasElements "API:DropdownButton HasElements")() : hasElements

[DropdownButton:HasRegistrantsForEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_HasRegistrantsForEvent "API:DropdownButton HasRegistrantsForEvent")(event) : hasRegistrantsForEvent

[DropdownButton:HasStickyFocus](https://warcraft.wiki.gg/wiki/API:DropdownButton_HasStickyFocus "API:DropdownButton HasStickyFocus")() : hasStickyFocus

[DropdownButton:Increment](https://warcraft.wiki.gg/wiki/API:DropdownButton_Increment "API:DropdownButton Increment")()

[DropdownButton:IsMenuOpen](https://warcraft.wiki.gg/wiki/API:DropdownButton_IsMenuOpen "API:DropdownButton IsMenuOpen")() : isMenuOpen

[DropdownButton:OnLoad](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnLoad "API:DropdownButton OnLoad")()

[DropdownButton:OnMenuAssigned](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnMenuAssigned "API:DropdownButton OnMenuAssigned")()

[DropdownButton:OnMenuChanged](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnMenuChanged "API:DropdownButton OnMenuChanged")()

[DropdownButton:OnMenuClosed](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnMenuClosed "API:DropdownButton OnMenuClosed")(menu, closeReason)

[DropdownButton:OnMenuOpened](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnMenuOpened "API:DropdownButton OnMenuOpened")(menu)

[DropdownButton:OnMenuResponse](https://warcraft.wiki.gg/wiki/API:DropdownButton_OnMenuResponse "API:DropdownButton OnMenuResponse")(menu, description)

[DropdownButton:OpenMenu](https://warcraft.wiki.gg/wiki/API:DropdownButton_OpenMenu "API:DropdownButton OpenMenu")()

[DropdownButton:Pick](https://warcraft.wiki.gg/wiki/API:DropdownButton_Pick "API:DropdownButton Pick")(description, menuInputContext, menuInputButtonName) : unknown

[DropdownButton:ReconcileDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:DropdownButton_ReconcileDeferredCallbacks "API:DropdownButton ReconcileDeferredCallbacks")(event, closures, funcs)

[DropdownButton:RegisterCallback](https://warcraft.wiki.gg/wiki/API:DropdownButton_RegisterCallback "API:DropdownButton RegisterCallback")(event, func, owner, ...) : owner

[DropdownButton:RegisterCallbackWithHandle](https://warcraft.wiki.gg/wiki/API:DropdownButton_RegisterCallbackWithHandle "API:DropdownButton RegisterCallbackWithHandle")(event, func, owner, ...) : unknown

[DropdownButton:RegisterMenu](https://warcraft.wiki.gg/wiki/API:DropdownButton_RegisterMenu "API:DropdownButton RegisterMenu")(menuDescription)

[DropdownButton:Rotate](https://warcraft.wiki.gg/wiki/API:DropdownButton_Rotate "API:DropdownButton Rotate")(forward)

[DropdownButton:SecureInsertEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_SecureInsertEvent "API:DropdownButton SecureInsertEvent")(event)

[DropdownButton:SetMenuAnchor](https://warcraft.wiki.gg/wiki/API:DropdownButton_SetMenuAnchor "API:DropdownButton SetMenuAnchor")(anchor)

[DropdownButton:SetMenuOpen](https://warcraft.wiki.gg/wiki/API:DropdownButton_SetMenuOpen "API:DropdownButton SetMenuOpen")(open)

[DropdownButton:SetUndefinedEventsAllowed](https://warcraft.wiki.gg/wiki/API:DropdownButton_SetUndefinedEventsAllowed "API:DropdownButton SetUndefinedEventsAllowed")(allowed)

[DropdownButton:SetupMenu](https://warcraft.wiki.gg/wiki/API:DropdownButton_SetupMenu "API:DropdownButton SetupMenu")(generator)

[DropdownButton:SignalUpdate](https://warcraft.wiki.gg/wiki/API:DropdownButton_SignalUpdate "API:DropdownButton SignalUpdate")()

[DropdownButton:TriggerEvent](https://warcraft.wiki.gg/wiki/API:DropdownButton_TriggerEvent "API:DropdownButton TriggerEvent")(event, ...)

[DropdownButton:UnregisterCallback](https://warcraft.wiki.gg/wiki/API:DropdownButton_UnregisterCallback "API:DropdownButton UnregisterCallback")(event, owner)

[DropdownButton:UnregisterEvents](https://warcraft.wiki.gg/wiki/API:DropdownButton_UnregisterEvents "API:DropdownButton UnregisterEvents")()

[DropdownButton:UnregisterEventsByEventTable](https://warcraft.wiki.gg/wiki/API:DropdownButton_UnregisterEventsByEventTable "API:DropdownButton UnregisterEventsByEventTable")(eventTable)

[DropdownButton:Update](https://warcraft.wiki.gg/wiki/API:DropdownButton_Update "API:DropdownButton Update")()

[DropdownButton:UpdateSelections](https://warcraft.wiki.gg/wiki/API:DropdownButton_UpdateSelections "API:DropdownButton UpdateSelections")(selections)

[DropdownButton:UpdateToMenuSelections](https://warcraft.wiki.gg/wiki/API:DropdownButton_UpdateToMenuSelections "API:DropdownButton UpdateToMenuSelections")(menuDescription, selections)

### [DropDownToggleButton](https://warcraft.wiki.gg/wiki/INTRINSIC_DropDownToggleButton "INTRINSIC DropDownToggleButton")

[DropDownToggleButton:HandlesGlobalMouseEvent](https://warcraft.wiki.gg/wiki/API:DropDownToggleButton_HandlesGlobalMouseEvent "API:DropDownToggleButton HandlesGlobalMouseEvent")(buttonName, event) : unknown

### [EventButton](https://warcraft.wiki.gg/wiki/INTRINSIC_EventButton "INTRINSIC EventButton")

[EventButton:CopyDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventButton_CopyDeferredCallbacks "API:EventButton CopyDeferredCallbacks")(callbackType, event, target)

[EventButton:GenerateCallbackEvents](https://warcraft.wiki.gg/wiki/API:EventButton_GenerateCallbackEvents "API:EventButton GenerateCallbackEvents")(eventTable)

[EventButton:GetCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventButton_GetCallbacksByEvent "API:EventButton GetCallbacksByEvent")(callbackType, event) : event

[EventButton:GetCallbackTable](https://warcraft.wiki.gg/wiki/API:EventButton_GetCallbackTable "API:EventButton GetCallbackTable")(callbackType) : unknown

[EventButton:GetCallbackTables](https://warcraft.wiki.gg/wiki/API:EventButton_GetCallbackTables "API:EventButton GetCallbackTables")() : callbackTables

[EventButton:GetMutableCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventButton_GetMutableCallbacksByEvent "API:EventButton GetMutableCallbacksByEvent")(callbackType, event) : mutableCallbacksByEvent

[EventButton:HasRegistrantsForEvent](https://warcraft.wiki.gg/wiki/API:EventButton_HasRegistrantsForEvent "API:EventButton HasRegistrantsForEvent")(event) : hasRegistrantsForEvent

[EventButton:OnLoad](https://warcraft.wiki.gg/wiki/API:EventButton_OnLoad "API:EventButton OnLoad")()

[EventButton:ReconcileDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventButton_ReconcileDeferredCallbacks "API:EventButton ReconcileDeferredCallbacks")(event, closures, funcs)

[EventButton:RegisterCallback](https://warcraft.wiki.gg/wiki/API:EventButton_RegisterCallback "API:EventButton RegisterCallback")(event, func, owner, ...) : owner

[EventButton:RegisterCallbackWithHandle](https://warcraft.wiki.gg/wiki/API:EventButton_RegisterCallbackWithHandle "API:EventButton RegisterCallbackWithHandle")(event, func, owner, ...) : unknown

[EventButton:SecureInsertEvent](https://warcraft.wiki.gg/wiki/API:EventButton_SecureInsertEvent "API:EventButton SecureInsertEvent")(event)

[EventButton:SetUndefinedEventsAllowed](https://warcraft.wiki.gg/wiki/API:EventButton_SetUndefinedEventsAllowed "API:EventButton SetUndefinedEventsAllowed")(allowed)

[EventButton:TriggerEvent](https://warcraft.wiki.gg/wiki/API:EventButton_TriggerEvent "API:EventButton TriggerEvent")(event, ...)

[EventButton:UnregisterCallback](https://warcraft.wiki.gg/wiki/API:EventButton_UnregisterCallback "API:EventButton UnregisterCallback")(event, owner)

[EventButton:UnregisterEvents](https://warcraft.wiki.gg/wiki/API:EventButton_UnregisterEvents "API:EventButton UnregisterEvents")()

[EventButton:UnregisterEventsByEventTable](https://warcraft.wiki.gg/wiki/API:EventButton_UnregisterEventsByEventTable "API:EventButton UnregisterEventsByEventTable")(eventTable)

### [EventEditBox](https://warcraft.wiki.gg/wiki/INTRINSIC_EventEditBox "INTRINSIC EventEditBox")

[EventEditBox:ApplyDefaultText](https://warcraft.wiki.gg/wiki/API:EventEditBox_ApplyDefaultText "API:EventEditBox ApplyDefaultText")(defaultText)

[EventEditBox:ApplyDefaultTextColor](https://warcraft.wiki.gg/wiki/API:EventEditBox_ApplyDefaultTextColor "API:EventEditBox ApplyDefaultTextColor")(color)

[EventEditBox:ApplyText](https://warcraft.wiki.gg/wiki/API:EventEditBox_ApplyText "API:EventEditBox ApplyText")(text)

[EventEditBox:ApplyTextColor](https://warcraft.wiki.gg/wiki/API:EventEditBox_ApplyTextColor "API:EventEditBox ApplyTextColor")(color)

[EventEditBox:CopyDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventEditBox_CopyDeferredCallbacks "API:EventEditBox CopyDeferredCallbacks")(callbackType, event, target)

[EventEditBox:ExpectedHasFocus](https://warcraft.wiki.gg/wiki/API:EventEditBox_ExpectedHasFocus "API:EventEditBox ExpectedHasFocus")() : unknown

[EventEditBox:GenerateCallbackEvents](https://warcraft.wiki.gg/wiki/API:EventEditBox_GenerateCallbackEvents "API:EventEditBox GenerateCallbackEvents")(eventTable)

[EventEditBox:GetCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetCallbacksByEvent "API:EventEditBox GetCallbacksByEvent")(callbackType, event) : event

[EventEditBox:GetCallbackTable](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetCallbackTable "API:EventEditBox GetCallbackTable")(callbackType) : unknown

[EventEditBox:GetCallbackTables](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetCallbackTables "API:EventEditBox GetCallbackTables")() : callbackTables

[EventEditBox:GetCursorHeight](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetCursorHeight "API:EventEditBox GetCursorHeight")() : cursorHeight

[EventEditBox:GetCursorOffset](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetCursorOffset "API:EventEditBox GetCursorOffset")() : cursorOffset

[EventEditBox:GetFontHeight](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetFontHeight "API:EventEditBox GetFontHeight")() : fontHeight

[EventEditBox:GetInputText](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetInputText "API:EventEditBox GetInputText")() : inputText

[EventEditBox:GetMutableCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventEditBox_GetMutableCallbacksByEvent "API:EventEditBox GetMutableCallbacksByEvent")(callbackType, event) : mutableCallbacksByEvent

[EventEditBox:HasRegistrantsForEvent](https://warcraft.wiki.gg/wiki/API:EventEditBox_HasRegistrantsForEvent "API:EventEditBox HasRegistrantsForEvent")(event) : hasRegistrantsForEvent

[EventEditBox:IsDefaultTextDisplayed](https://warcraft.wiki.gg/wiki/API:EventEditBox_IsDefaultTextDisplayed "API:EventEditBox IsDefaultTextDisplayed")() : isDefaultTextDisplayed

[EventEditBox:IsDefaultTextEnabled](https://warcraft.wiki.gg/wiki/API:EventEditBox_IsDefaultTextEnabled "API:EventEditBox IsDefaultTextEnabled")() : isDefaultTextEnabled

[EventEditBox:OnLoad](https://warcraft.wiki.gg/wiki/API:EventEditBox_OnLoad "API:EventEditBox OnLoad")()

[EventEditBox:ReconcileDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventEditBox_ReconcileDeferredCallbacks "API:EventEditBox ReconcileDeferredCallbacks")(event, closures, funcs)

[EventEditBox:RegisterCallback](https://warcraft.wiki.gg/wiki/API:EventEditBox_RegisterCallback "API:EventEditBox RegisterCallback")(event, func, owner, ...) : owner

[EventEditBox:RegisterCallbackWithHandle](https://warcraft.wiki.gg/wiki/API:EventEditBox_RegisterCallbackWithHandle "API:EventEditBox RegisterCallbackWithHandle")(event, func, owner, ...) : unknown

[EventEditBox:SecureInsertEvent](https://warcraft.wiki.gg/wiki/API:EventEditBox_SecureInsertEvent "API:EventEditBox SecureInsertEvent")(event)

[EventEditBox:SetDefaultTextEnabled](https://warcraft.wiki.gg/wiki/API:EventEditBox_SetDefaultTextEnabled "API:EventEditBox SetDefaultTextEnabled")(enabled)

[EventEditBox:SetUndefinedEventsAllowed](https://warcraft.wiki.gg/wiki/API:EventEditBox_SetUndefinedEventsAllowed "API:EventEditBox SetUndefinedEventsAllowed")(allowed)

[EventEditBox:ShouldDefault](https://warcraft.wiki.gg/wiki/API:EventEditBox_ShouldDefault "API:EventEditBox ShouldDefault")(text) : shouldDefault

[EventEditBox:TriggerEvent](https://warcraft.wiki.gg/wiki/API:EventEditBox_TriggerEvent "API:EventEditBox TriggerEvent")(event, ...)

[EventEditBox:TryApplyDefaultText](https://warcraft.wiki.gg/wiki/API:EventEditBox_TryApplyDefaultText "API:EventEditBox TryApplyDefaultText")()

[EventEditBox:UnregisterCallback](https://warcraft.wiki.gg/wiki/API:EventEditBox_UnregisterCallback "API:EventEditBox UnregisterCallback")(event, owner)

[EventEditBox:UnregisterEvents](https://warcraft.wiki.gg/wiki/API:EventEditBox_UnregisterEvents "API:EventEditBox UnregisterEvents")()

[EventEditBox:UnregisterEventsByEventTable](https://warcraft.wiki.gg/wiki/API:EventEditBox_UnregisterEventsByEventTable "API:EventEditBox UnregisterEventsByEventTable")(eventTable)

### [EventFrame](https://warcraft.wiki.gg/wiki/INTRINSIC_EventFrame "INTRINSIC EventFrame")

[EventFrame:CopyDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventFrame_CopyDeferredCallbacks "API:EventFrame CopyDeferredCallbacks")(callbackType, event, target)

[EventFrame:GenerateCallbackEvents](https://warcraft.wiki.gg/wiki/API:EventFrame_GenerateCallbackEvents "API:EventFrame GenerateCallbackEvents")(eventTable)

[EventFrame:GetCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventFrame_GetCallbacksByEvent "API:EventFrame GetCallbacksByEvent")(callbackType, event) : event

[EventFrame:GetCallbackTable](https://warcraft.wiki.gg/wiki/API:EventFrame_GetCallbackTable "API:EventFrame GetCallbackTable")(callbackType) : unknown

[EventFrame:GetCallbackTables](https://warcraft.wiki.gg/wiki/API:EventFrame_GetCallbackTables "API:EventFrame GetCallbackTables")() : callbackTables

[EventFrame:GetMutableCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventFrame_GetMutableCallbacksByEvent "API:EventFrame GetMutableCallbacksByEvent")(callbackType, event) : mutableCallbacksByEvent

[EventFrame:HasRegistrantsForEvent](https://warcraft.wiki.gg/wiki/API:EventFrame_HasRegistrantsForEvent "API:EventFrame HasRegistrantsForEvent")(event) : hasRegistrantsForEvent

[EventFrame:OnLoad](https://warcraft.wiki.gg/wiki/API:EventFrame_OnLoad "API:EventFrame OnLoad")()

[EventFrame:ReconcileDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventFrame_ReconcileDeferredCallbacks "API:EventFrame ReconcileDeferredCallbacks")(event, closures, funcs)

[EventFrame:RegisterCallback](https://warcraft.wiki.gg/wiki/API:EventFrame_RegisterCallback "API:EventFrame RegisterCallback")(event, func, owner, ...) : owner

[EventFrame:RegisterCallbackWithHandle](https://warcraft.wiki.gg/wiki/API:EventFrame_RegisterCallbackWithHandle "API:EventFrame RegisterCallbackWithHandle")(event, func, owner, ...) : unknown

[EventFrame:SecureInsertEvent](https://warcraft.wiki.gg/wiki/API:EventFrame_SecureInsertEvent "API:EventFrame SecureInsertEvent")(event)

[EventFrame:SetUndefinedEventsAllowed](https://warcraft.wiki.gg/wiki/API:EventFrame_SetUndefinedEventsAllowed "API:EventFrame SetUndefinedEventsAllowed")(allowed)

[EventFrame:TriggerEvent](https://warcraft.wiki.gg/wiki/API:EventFrame_TriggerEvent "API:EventFrame TriggerEvent")(event, ...)

[EventFrame:UnregisterCallback](https://warcraft.wiki.gg/wiki/API:EventFrame_UnregisterCallback "API:EventFrame UnregisterCallback")(event, owner)

[EventFrame:UnregisterEvents](https://warcraft.wiki.gg/wiki/API:EventFrame_UnregisterEvents "API:EventFrame UnregisterEvents")()

[EventFrame:UnregisterEventsByEventTable](https://warcraft.wiki.gg/wiki/API:EventFrame_UnregisterEventsByEventTable "API:EventFrame UnregisterEventsByEventTable")(eventTable)

### [EventScrollFrame](https://warcraft.wiki.gg/wiki/INTRINSIC_EventScrollFrame "INTRINSIC EventScrollFrame")

[EventScrollFrame:CopyDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_CopyDeferredCallbacks "API:EventScrollFrame CopyDeferredCallbacks")(callbackType, event, target)

[EventScrollFrame:GenerateCallbackEvents](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_GenerateCallbackEvents "API:EventScrollFrame GenerateCallbackEvents")(eventTable)

[EventScrollFrame:GetCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_GetCallbacksByEvent "API:EventScrollFrame GetCallbacksByEvent")(callbackType, event) : event

[EventScrollFrame:GetCallbackTable](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_GetCallbackTable "API:EventScrollFrame GetCallbackTable")(callbackType) : unknown

[EventScrollFrame:GetCallbackTables](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_GetCallbackTables "API:EventScrollFrame GetCallbackTables")() : callbackTables

[EventScrollFrame:GetMutableCallbacksByEvent](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_GetMutableCallbacksByEvent "API:EventScrollFrame GetMutableCallbacksByEvent")(callbackType, event) : mutableCallbacksByEvent

[EventScrollFrame:HasRegistrantsForEvent](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_HasRegistrantsForEvent "API:EventScrollFrame HasRegistrantsForEvent")(event) : hasRegistrantsForEvent

[EventScrollFrame:OnLoad](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_OnLoad "API:EventScrollFrame OnLoad")()

[EventScrollFrame:ReconcileDeferredCallbacks](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_ReconcileDeferredCallbacks "API:EventScrollFrame ReconcileDeferredCallbacks")(event, closures, funcs)

[EventScrollFrame:RegisterCallback](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_RegisterCallback "API:EventScrollFrame RegisterCallback")(event, func, owner, ...) : owner

[EventScrollFrame:RegisterCallbackWithHandle](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_RegisterCallbackWithHandle "API:EventScrollFrame RegisterCallbackWithHandle")(event, func, owner, ...) : unknown

[EventScrollFrame:SecureInsertEvent](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_SecureInsertEvent "API:EventScrollFrame SecureInsertEvent")(event)

[EventScrollFrame:SetUndefinedEventsAllowed](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_SetUndefinedEventsAllowed "API:EventScrollFrame SetUndefinedEventsAllowed")(allowed)

[EventScrollFrame:TriggerEvent](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_TriggerEvent "API:EventScrollFrame TriggerEvent")(event, ...)

[EventScrollFrame:UnregisterCallback](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_UnregisterCallback "API:EventScrollFrame UnregisterCallback")(event, owner)

[EventScrollFrame:UnregisterEvents](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_UnregisterEvents "API:EventScrollFrame UnregisterEvents")()

[EventScrollFrame:UnregisterEventsByEventTable](https://warcraft.wiki.gg/wiki/API:EventScrollFrame_UnregisterEventsByEventTable "API:EventScrollFrame UnregisterEventsByEventTable")(eventTable)

### [ItemButton](https://warcraft.wiki.gg/wiki/INTRINSIC_ItemButton "INTRINSIC ItemButton")

[ItemButton:GetBagID](https://warcraft.wiki.gg/wiki/API:ItemButton_GetBagID "API:ItemButton GetBagID")() : bagID

[ItemButton:GetItem](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItem "API:ItemButton GetItem")() : item

[ItemButton:GetItemButtonBackgroundTexture](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemButtonBackgroundTexture "API:ItemButton GetItemButtonBackgroundTexture")() : itemButtonBackgroundTexture

[ItemButton:GetItemButtonCount](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemButtonCount "API:ItemButton GetItemButtonCount")() : itemButtonCount

[ItemButton:GetItemButtonIconTexture](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemButtonIconTexture "API:ItemButton GetItemButtonIconTexture")() : itemButtonIconTexture

[ItemButton:GetItemContextOverlayMode](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemContextOverlayMode "API:ItemButton GetItemContextOverlayMode")() : unknown

[ItemButton:GetItemID](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemID "API:ItemButton GetItemID")() : itemID

[ItemButton:GetItemInfo](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemInfo "API:ItemButton GetItemInfo")() : itemLink, itemQuality, itemIcon

[ItemButton:GetItemLink](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemLink "API:ItemButton GetItemLink")() : itemLink

[ItemButton:GetItemLocation](https://warcraft.wiki.gg/wiki/API:ItemButton_GetItemLocation "API:ItemButton GetItemLocation")() : itemLocation

[ItemButton:GetMatchesSearch](https://warcraft.wiki.gg/wiki/API:ItemButton_GetMatchesSearch "API:ItemButton GetMatchesSearch")() : matchesSearch

[ItemButton:GetSlotAndBagID](https://warcraft.wiki.gg/wiki/API:ItemButton_GetSlotAndBagID "API:ItemButton GetSlotAndBagID")() : slotAndBagID, slotAndBagID

[ItemButton:OnItemContextChanged](https://warcraft.wiki.gg/wiki/API:ItemButton_OnItemContextChanged "API:ItemButton OnItemContextChanged")()

[ItemButton:OnUpdateItemContextMatching](https://warcraft.wiki.gg/wiki/API:ItemButton_OnUpdateItemContextMatching "API:ItemButton OnUpdateItemContextMatching")(bagID)

[ItemButton:RegisterBagButtonUpdateItemContextMatching](https://warcraft.wiki.gg/wiki/API:ItemButton_RegisterBagButtonUpdateItemContextMatching "API:ItemButton RegisterBagButtonUpdateItemContextMatching")()

[ItemButton:Reset](https://warcraft.wiki.gg/wiki/API:ItemButton_Reset "API:ItemButton Reset")()

[ItemButton:SetAlpha](https://warcraft.wiki.gg/wiki/API:ItemButton_SetAlpha "API:ItemButton SetAlpha")(alpha)

[ItemButton:SetBagID](https://warcraft.wiki.gg/wiki/API:ItemButton_SetBagID "API:ItemButton SetBagID")(bagID)

[ItemButton:SetItem](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItem "API:ItemButton SetItem")(item) : unknown

[ItemButton:SetItemButtonAnchorPoint](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonAnchorPoint "API:ItemButton SetItemButtonAnchorPoint")(point, x, y)

[ItemButton:SetItemButtonBorderVertexColor](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonBorderVertexColor "API:ItemButton SetItemButtonBorderVertexColor")(r, g, b)

[ItemButton:SetItemButtonCount](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonCount "API:ItemButton SetItemButtonCount")(count)

[ItemButton:SetItemButtonQuality](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonQuality "API:ItemButton SetItemButtonQuality")(quality, itemIDOrLink, suppressOverlays, isBound, ignoreColorOverrides)

[ItemButton:SetItemButtonScale](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonScale "API:ItemButton SetItemButtonScale")(scale)

[ItemButton:SetItemButtonTexture](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonTexture "API:ItemButton SetItemButtonTexture")(texture)

[ItemButton:SetItemButtonTextureVertexColor](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemButtonTextureVertexColor "API:ItemButton SetItemButtonTextureVertexColor")(r, g, b)

[ItemButton:SetItemInternal](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemInternal "API:ItemButton SetItemInternal")(item) : unknown

[ItemButton:SetItemLocation](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemLocation "API:ItemButton SetItemLocation")(itemLocation) : unknown

[ItemButton:SetItemSource](https://warcraft.wiki.gg/wiki/API:ItemButton_SetItemSource "API:ItemButton SetItemSource")(itemLocation)

[ItemButton:SetMatchesSearch](https://warcraft.wiki.gg/wiki/API:ItemButton_SetMatchesSearch "API:ItemButton SetMatchesSearch")(matchesSearch)

[ItemButton:UpdateCraftedProfessionsQualityShown](https://warcraft.wiki.gg/wiki/API:ItemButton_UpdateCraftedProfessionsQualityShown "API:ItemButton UpdateCraftedProfessionsQualityShown")()

[ItemButton:UpdateItemContextMatching](https://warcraft.wiki.gg/wiki/API:ItemButton_UpdateItemContextMatching "API:ItemButton UpdateItemContextMatching")()

[ItemButton:UpdateItemContextOverlay](https://warcraft.wiki.gg/wiki/API:ItemButton_UpdateItemContextOverlay "API:ItemButton UpdateItemContextOverlay")()

[ItemButton:UpdateItemContextOverlayTextures](https://warcraft.wiki.gg/wiki/API:ItemButton_UpdateItemContextOverlayTextures "API:ItemButton UpdateItemContextOverlayTextures")(contextMode)

### [ScrollingMessageFrame](https://warcraft.wiki.gg/wiki/INTRINSIC_ScrollingMessageFrame "INTRINSIC ScrollingMessageFrame")

[ScrollingMessageFrame:AcquireFontString](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AcquireFontString "API:ScrollingMessageFrame AcquireFontString")() : fontString

[ScrollingMessageFrame:AcquireHighlightTexture](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AcquireHighlightTexture "API:ScrollingMessageFrame AcquireHighlightTexture")() : texture

[ScrollingMessageFrame:AddMessage](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AddMessage "API:ScrollingMessageFrame AddMessage")(message, r, g, b, ...)

[ScrollingMessageFrame:AddOnDisplayRefreshedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AddOnDisplayRefreshedCallback "API:ScrollingMessageFrame AddOnDisplayRefreshedCallback")(callback)

[ScrollingMessageFrame:AdjustMessageColors](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AdjustMessageColors "API:ScrollingMessageFrame AdjustMessageColors")(transformFunction)

[ScrollingMessageFrame:AtBottom](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AtBottom "API:ScrollingMessageFrame AtBottom")() : unknown

[ScrollingMessageFrame:AtTop](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_AtTop "API:ScrollingMessageFrame AtTop")() : unknown

[ScrollingMessageFrame:BackFillMessage](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_BackFillMessage "API:ScrollingMessageFrame BackFillMessage")(message, r, g, b, ...)

[ScrollingMessageFrame:CalculateLineAlphaValueFromTimestamp](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CalculateLineAlphaValueFromTimestamp "API:ScrollingMessageFrame CalculateLineAlphaValueFromTimestamp")(now, timestamp) : unknown

[ScrollingMessageFrame:CalculateLineSpacing](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CalculateLineSpacing "API:ScrollingMessageFrame CalculateLineSpacing")() : lineSpacing

[ScrollingMessageFrame:CalculateNumVisibleLines](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CalculateNumVisibleLines "API:ScrollingMessageFrame CalculateNumVisibleLines")() : unknown

[ScrollingMessageFrame:CalculateSelectingCharacterIndicesForVisibleLine](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CalculateSelectingCharacterIndicesForVisibleLine "API:ScrollingMessageFrame CalculateSelectingCharacterIndicesForVisibleLine")(lineIndex, startLineIndex, endLineIndex, startCharacterIndex, endCharacterIndex) : startCharacterIndex, unknown

[ScrollingMessageFrame:CallOnDisplayRefreshed](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CallOnDisplayRefreshed "API:ScrollingMessageFrame CallOnDisplayRefreshed")()

[ScrollingMessageFrame:CanEffectivelyFade](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_CanEffectivelyFade "API:ScrollingMessageFrame CanEffectivelyFade")() : unknown

[ScrollingMessageFrame:Clear](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_Clear "API:ScrollingMessageFrame Clear")()

[ScrollingMessageFrame:FindCharacterAndLineIndexAtCoordinate](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_FindCharacterAndLineIndexAtCoordinate "API:ScrollingMessageFrame FindCharacterAndLineIndexAtCoordinate")(x, y) : characterIndex, lineIndex

[ScrollingMessageFrame:ForEachMessage](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ForEachMessage "API:ScrollingMessageFrame ForEachMessage")(op)

[ScrollingMessageFrame:ForEachMessageInfoText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ForEachMessageInfoText "API:ScrollingMessageFrame ForEachMessageInfoText")(op)

[ScrollingMessageFrame:ForEachVisibleLineText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ForEachVisibleLineText "API:ScrollingMessageFrame ForEachVisibleLineText")(op)

[ScrollingMessageFrame:GatherSelectedText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GatherSelectedText "API:ScrollingMessageFrame GatherSelectedText")(x, y) : unknown

[ScrollingMessageFrame:GetFadeDuration](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetFadeDuration "API:ScrollingMessageFrame GetFadeDuration")() : fadeDurationSecs

[ScrollingMessageFrame:GetFading](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetFading "API:ScrollingMessageFrame GetFading")() : shouldFadeAfterInactivity

[ScrollingMessageFrame:GetFont](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetFont "API:ScrollingMessageFrame GetFont")() : font

[ScrollingMessageFrame:GetFontObject](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetFontObject "API:ScrollingMessageFrame GetFontObject")() : fontObject

[ScrollingMessageFrame:GetIndentedWordWrap](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetIndentedWordWrap "API:ScrollingMessageFrame GetIndentedWordWrap")() : indentedWordWrap

[ScrollingMessageFrame:GetInsertMode](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetInsertMode "API:ScrollingMessageFrame GetInsertMode")() : insertMode

[ScrollingMessageFrame:GetJustifyH](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetJustifyH "API:ScrollingMessageFrame GetJustifyH")() : justifyH

[ScrollingMessageFrame:GetJustifyV](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetJustifyV "API:ScrollingMessageFrame GetJustifyV")() : justifyV

[ScrollingMessageFrame:GetMaxLines](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetMaxLines "API:ScrollingMessageFrame GetMaxLines")() : maxLines

[ScrollingMessageFrame:GetMaxScrollRange](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetMaxScrollRange "API:ScrollingMessageFrame GetMaxScrollRange")() : maxScrollRange

[ScrollingMessageFrame:GetMessageInfo](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetMessageInfo "API:ScrollingMessageFrame GetMessageInfo")(messageIndex) : messageInfo

[ScrollingMessageFrame:GetNumMessages](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetNumMessages "API:ScrollingMessageFrame GetNumMessages")() : numMessages

[ScrollingMessageFrame:GetNumVisibleLines](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetNumVisibleLines "API:ScrollingMessageFrame GetNumVisibleLines")() : numVisibleLines

[ScrollingMessageFrame:GetOnLineRightClickedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetOnLineRightClickedCallback "API:ScrollingMessageFrame GetOnLineRightClickedCallback")() : onLineRightClickedCallback

[ScrollingMessageFrame:GetOnScrollChangedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetOnScrollChangedCallback "API:ScrollingMessageFrame GetOnScrollChangedCallback")() : onScrollChangedCallback

[ScrollingMessageFrame:GetOnTextCopiedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetOnTextCopiedCallback "API:ScrollingMessageFrame GetOnTextCopiedCallback")() : onTextCopiedCallback

[ScrollingMessageFrame:GetPagingScrollAmount](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetPagingScrollAmount "API:ScrollingMessageFrame GetPagingScrollAmount")() : pagingScrollAmount

[ScrollingMessageFrame:GetScaledCursorPosition](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetScaledCursorPosition "API:ScrollingMessageFrame GetScaledCursorPosition")() : scaledCursorPosition, scaledCursorPosition

[ScrollingMessageFrame:GetScrollOffset](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetScrollOffset "API:ScrollingMessageFrame GetScrollOffset")() : scrollOffset

[ScrollingMessageFrame:GetShadowColor](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetShadowColor "API:ScrollingMessageFrame GetShadowColor")() : shadowColor

[ScrollingMessageFrame:GetShadowOffset](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetShadowOffset "API:ScrollingMessageFrame GetShadowOffset")() : shadowOffset

[ScrollingMessageFrame:GetSpacing](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetSpacing "API:ScrollingMessageFrame GetSpacing")() : spacing

[ScrollingMessageFrame:GetTextColor](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetTextColor "API:ScrollingMessageFrame GetTextColor")() : textColor

[ScrollingMessageFrame:GetTimeVisible](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_GetTimeVisible "API:ScrollingMessageFrame GetTimeVisible")() : timeVisibleSecs

[ScrollingMessageFrame:HasFontObject](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_HasFontObject "API:ScrollingMessageFrame HasFontObject")() : hasFontObject

[ScrollingMessageFrame:InitializeFontableFrame](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_InitializeFontableFrame "API:ScrollingMessageFrame InitializeFontableFrame")(name)

[ScrollingMessageFrame:InitializeFontString](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_InitializeFontString "API:ScrollingMessageFrame InitializeFontString")(fontString)

[ScrollingMessageFrame:IsScrollAllowed](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_IsScrollAllowed "API:ScrollingMessageFrame IsScrollAllowed")() : isScrollAllowed

[ScrollingMessageFrame:IsSelectingText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_IsSelectingText "API:ScrollingMessageFrame IsSelectingText")() : isSelectingText

[ScrollingMessageFrame:IsTextCopyable](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_IsTextCopyable "API:ScrollingMessageFrame IsTextCopyable")() : textIsCopyable

[ScrollingMessageFrame:MakeFontObjectCustom](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_MakeFontObjectCustom "API:ScrollingMessageFrame MakeFontObjectCustom")()

[ScrollingMessageFrame:MarkDisplayDirty](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_MarkDisplayDirty "API:ScrollingMessageFrame MarkDisplayDirty")()

[ScrollingMessageFrame:MarkLayoutDirty](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_MarkLayoutDirty "API:ScrollingMessageFrame MarkLayoutDirty")()

[ScrollingMessageFrame:OnColorsUpdated](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_OnColorsUpdated "API:ScrollingMessageFrame OnColorsUpdated")()

[ScrollingMessageFrame:OnFontObjectUpdated](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_OnFontObjectUpdated "API:ScrollingMessageFrame OnFontObjectUpdated")()

[ScrollingMessageFrame:PackageEntry](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_PackageEntry "API:ScrollingMessageFrame PackageEntry")(message, r, g, b, ...) : unknown

[ScrollingMessageFrame:PageDown](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_PageDown "API:ScrollingMessageFrame PageDown")()

[ScrollingMessageFrame:PageUp](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_PageUp "API:ScrollingMessageFrame PageUp")()

[ScrollingMessageFrame:RefreshDisplay](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_RefreshDisplay "API:ScrollingMessageFrame RefreshDisplay")()

[ScrollingMessageFrame:RefreshIfNecessary](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_RefreshIfNecessary "API:ScrollingMessageFrame RefreshIfNecessary")()

[ScrollingMessageFrame:RefreshLayout](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_RefreshLayout "API:ScrollingMessageFrame RefreshLayout")()

[ScrollingMessageFrame:RemoveMessagesByPredicate](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_RemoveMessagesByPredicate "API:ScrollingMessageFrame RemoveMessagesByPredicate")(predicate) : unknown

[ScrollingMessageFrame:ResetAllFadeTimes](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ResetAllFadeTimes "API:ScrollingMessageFrame ResetAllFadeTimes")()

[ScrollingMessageFrame:ResetSelectingText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ResetSelectingText "API:ScrollingMessageFrame ResetSelectingText")()

[ScrollingMessageFrame:ScrollByAmount](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ScrollByAmount "API:ScrollingMessageFrame ScrollByAmount")(amount)

[ScrollingMessageFrame:ScrollDown](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ScrollDown "API:ScrollingMessageFrame ScrollDown")()

[ScrollingMessageFrame:ScrollToBottom](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ScrollToBottom "API:ScrollingMessageFrame ScrollToBottom")()

[ScrollingMessageFrame:ScrollToTop](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ScrollToTop "API:ScrollingMessageFrame ScrollToTop")()

[ScrollingMessageFrame:ScrollUp](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_ScrollUp "API:ScrollingMessageFrame ScrollUp")()

[ScrollingMessageFrame:SetFadeDuration](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetFadeDuration "API:ScrollingMessageFrame SetFadeDuration")(fadeDurationSecs)

[ScrollingMessageFrame:SetFading](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetFading "API:ScrollingMessageFrame SetFading")(shouldFadeAfterInactivity)

[ScrollingMessageFrame:SetFont](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetFont "API:ScrollingMessageFrame SetFont")(font, fontHeight, fontFlags)

[ScrollingMessageFrame:SetFontObject](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetFontObject "API:ScrollingMessageFrame SetFontObject")(fontObject)

[ScrollingMessageFrame:SetIndentedWordWrap](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetIndentedWordWrap "API:ScrollingMessageFrame SetIndentedWordWrap")(indentWordWrap)

[ScrollingMessageFrame:SetInsertMode](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetInsertMode "API:ScrollingMessageFrame SetInsertMode")(insertMode)

[ScrollingMessageFrame:SetJustifyH](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetJustifyH "API:ScrollingMessageFrame SetJustifyH")(justifyH)

[ScrollingMessageFrame:SetJustifyV](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetJustifyV "API:ScrollingMessageFrame SetJustifyV")(justifyV)

[ScrollingMessageFrame:SetMaxLines](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetMaxLines "API:ScrollingMessageFrame SetMaxLines")(maxLines)

[ScrollingMessageFrame:SetOnLineRightClickedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetOnLineRightClickedCallback "API:ScrollingMessageFrame SetOnLineRightClickedCallback")(onLineRightClickedCallback)

[ScrollingMessageFrame:SetOnScrollChangedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetOnScrollChangedCallback "API:ScrollingMessageFrame SetOnScrollChangedCallback")(onScrollChangedCallback)

[ScrollingMessageFrame:SetOnTextCopiedCallback](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetOnTextCopiedCallback "API:ScrollingMessageFrame SetOnTextCopiedCallback")(onTextCopiedCallback)

[ScrollingMessageFrame:SetScrollAllowed](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetScrollAllowed "API:ScrollingMessageFrame SetScrollAllowed")(allowed)

[ScrollingMessageFrame:SetScrollOffset](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetScrollOffset "API:ScrollingMessageFrame SetScrollOffset")(offset)

[ScrollingMessageFrame:SetShadowColor](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetShadowColor "API:ScrollingMessageFrame SetShadowColor")(r, g, b, a)

[ScrollingMessageFrame:SetShadowOffset](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetShadowOffset "API:ScrollingMessageFrame SetShadowOffset")(offsetX, offsetY)

[ScrollingMessageFrame:SetSpacing](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetSpacing "API:ScrollingMessageFrame SetSpacing")(spacing)

[ScrollingMessageFrame:SetTextColor](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetTextColor "API:ScrollingMessageFrame SetTextColor")(r, g, b, a)

[ScrollingMessageFrame:SetTextCopyable](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetTextCopyable "API:ScrollingMessageFrame SetTextCopyable")(textIsCopyable)

[ScrollingMessageFrame:SetTimeVisible](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_SetTimeVisible "API:ScrollingMessageFrame SetTimeVisible")(timeVisibleSecs)

[ScrollingMessageFrame:TransformMessages](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_TransformMessages "API:ScrollingMessageFrame TransformMessages")(predicate, transformFunction) : unknown

[ScrollingMessageFrame:UnpackageEntry](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_UnpackageEntry "API:ScrollingMessageFrame UnpackageEntry")(entry) : message, r, g, b, unknown

[ScrollingMessageFrame:UpdateFading](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_UpdateFading "API:ScrollingMessageFrame UpdateFading")()

[ScrollingMessageFrame:UpdateSelectingText](https://warcraft.wiki.gg/wiki/API:ScrollingMessageFrame_UpdateSelectingText "API:ScrollingMessageFrame UpdateSelectingText")()

### [UIThemeContainerFrame](https://warcraft.wiki.gg/wiki/INTRINSIC_UIThemeContainerFrame "INTRINSIC UIThemeContainerFrame")

[UIThemeContainerFrame:CheckUpdateTheme](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_CheckUpdateTheme "API:UIThemeContainerFrame CheckUpdateTheme")(cvar, value)

[UIThemeContainerFrame:GetCVarValue](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_GetCVarValue "API:UIThemeContainerFrame GetCVarValue")() : cVarValue

[UIThemeContainerFrame:IsDarkMode](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_IsDarkMode "API:UIThemeContainerFrame IsDarkMode")(cvarValue) : isDarkMode

[UIThemeContainerFrame:RegisterBackgroundTexture](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterBackgroundTexture "API:UIThemeContainerFrame RegisterBackgroundTexture")(texture, textureKit)

[UIThemeContainerFrame:RegisterFontString](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterFontString "API:UIThemeContainerFrame RegisterFontString")(fontString)

[UIThemeContainerFrame:RegisterFontStrings](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterFontStrings "API:UIThemeContainerFrame RegisterFontStrings")(...)

[UIThemeContainerFrame:RegisterFrame](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterFrame "API:UIThemeContainerFrame RegisterFrame")(frame)

[UIThemeContainerFrame:RegisterFrames](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterFrames "API:UIThemeContainerFrame RegisterFrames")(...)

[UIThemeContainerFrame:RegisterObject](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterObject "API:UIThemeContainerFrame RegisterObject")(container, object)

[UIThemeContainerFrame:RegisterObjects](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_RegisterObjects "API:UIThemeContainerFrame RegisterObjects")(container, ...)

[UIThemeContainerFrame:UpdateBackground](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_UpdateBackground "API:UIThemeContainerFrame UpdateBackground")(cvarValue)

[UIThemeContainerFrame:UpdateFontStrings](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_UpdateFontStrings "API:UIThemeContainerFrame UpdateFontStrings")(cvarValue)

[UIThemeContainerFrame:UpdateFrames](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_UpdateFrames "API:UIThemeContainerFrame UpdateFrames")(cvarValue)

[UIThemeContainerFrame:UpdateTheme](https://warcraft.wiki.gg/wiki/API:UIThemeContainerFrame_UpdateTheme "API:UIThemeContainerFrame UpdateTheme")(cvarValue)

  
