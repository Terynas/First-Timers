# XML user interface

> Source: <https://warcraft.wiki.gg/wiki/XML_user_interface> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

[World of Warcraft](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft") has two approaches for addons to build a [user interface](https://warcraft.wiki.gg/wiki/User_interface "User interface"): **XML** predefines a layout for [widgets](https://warcraft.wiki.gg/wiki/Widget "Widget") on the screen, and [Lua](https://warcraft.wiki.gg/wiki/Lua "Lua") executes code while the game is playing. These approaches are complementary because Lua can manipulate widgets that were predefined in XML.

Until [patch 1.10.0](https://warcraft.wiki.gg/wiki/Patch_1.10.0 "Patch 1.10.0"), [interface customization](https://warcraft.wiki.gg/wiki/Warcraft_Wiki:Interface_customization "Warcraft Wiki:Interface customization") was only possible using this combination of XML and Lua. Functions such as [CreateFrame](https://warcraft.wiki.gg/wiki/API:CreateFrame "API:CreateFrame")() have since enabled Lua to assert a more prominent role, but the XML schema remains an accepted -- and regularly updated -- approach for both custom [AddOns](https://warcraft.wiki.gg/wiki/AddOns "AddOns") and Blizzard's own default UI.

## Contents

- [1 Schema basics](#Schema_basics)
- [2 Managing Widgets](#Managing_Widgets)
  - [2.1 Parent](#Parent)
  - [2.2 Name](#Name)
  - [2.3 Layout](#Layout)
  - [2.4 Showing/Hiding](#Showing/Hiding)
  - [2.5 Layers and Textures](#Layers_and_Textures)
  - [2.6 Templates](#Templates)
- [3 Scripts](#Scripts)
  - [3.1 Basic Event Handling concepts](#Basic_Event_Handling_concepts)
  - [3.2 Handling UI Events](#Handling_UI_Events)
  - [3.3 Event Handler reference](#Event_Handler_reference)
- [4 Widget Elements](#Widget_Elements)
- [5 Default User Interface](#Default_User_Interface)

## Schema basics

*For an introduction to the XML language, see [Wikipedia](https://en.wikipedia.org/wiki/XML) or [Mozilla Developer Network](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction)*

WoW defines its own schema in [FrameXML/UI.xsd](https://www.townlong-yak.com/framexml/latest/UI.xsd). In general, this schema has four kinds of elements:

Document root  
Every file has [Ui](https://warcraft.wiki.gg/wiki/XML/Ui "XML/Ui") as its outer-most element, and everything else is contained inside it.

Widgets  
The [UIObjects](https://warcraft.wiki.gg/wiki/UIOBJECT_UIObject "UIOBJECT UIObject") appearing on the screen, such as [Frame](https://warcraft.wiki.gg/wiki/XML/Frame "XML/Frame"), which may be placed inside the document root and are usually a kind of [LayoutFrame](https://warcraft.wiki.gg/wiki/XML/LayoutFrame "XML/LayoutFrame").

Properties  
Customizations specific to each kind of widget, such as adding `<Scripts>` to a [Frame](https://warcraft.wiki.gg/wiki/XML/Frame "XML/Frame").

Children  
Certain kinds of widgets may also be children of other widgets, such as adding a [Texture](https://warcraft.wiki.gg/wiki/XML/Texture "XML/Texture") to a [Frame](https://warcraft.wiki.gg/wiki/XML/Frame "XML/Frame").

A complete XML file might appear like the following:

    <Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.blizzard.com/wow/ui/ ..\FrameXML\UI.xsd">
        <Frame name="MyAddonFrame">  <!-- a sample widget -->
            <!-- sample properties and children -->
            <Scripts>   
                <OnLoad function="MyAddonFrame_OnLoad" />
            </Scripts>
            <Layers>
                <Layer level="ARTWORK">
                    <Texture name="MyAddonFrameTexture" />
                </Layer>
            </Layers>
        </Frame>  <!-- end of sample widget -->
    </Ui>

Malformed XML will generate an error when logging in or reloading the game client. There are also online validators available with [W3 Org](https://validator.w3.org/) or [Average URL](http://dev.averageurl.com/wow/xml) that can perform this task without running the game.

## Managing Widgets

[LayoutFrame](https://warcraft.wiki.gg/wiki/XML/LayoutFrame "XML/LayoutFrame") is an abstract type defining basic rules for most widgets, but typically addons will create specific kinds such as a [Frame](https://warcraft.wiki.gg/wiki/XML/Frame "XML/Frame"). These widgets have many common attributes, described in this section.

### Parent

Widgets have a [parent](https://warcraft.wiki.gg/wiki/API:UIObject_GetParent?action=edit&redlink=1 "API:UIObject GetParent (page does not exist)") if they are contained inside another widget, or if explicitly set using the parent attribute, [`LayoutFrame parent.`](https://warcraft.wiki.gg/wiki/XML/LayoutFrame_parent.?action=edit&redlink=1 "XML/LayoutFrame parent. (page does not exist)"). The latter approach is useful to add features to the existing UI, such as adding a button to the WorldMapFrame.

    <Button name="WorldMapFrame_MyAddonButton" parent="WorldMapFrame">
    </Button>

### Name

Every widget can have a [name](https://warcraft.wiki.gg/wiki/API:UIObject_GetName?action=edit&redlink=1 "API:UIObject GetName (page does not exist)"), which creates a global variable for referencing it from Lua during runtime. To prevent collisions, this name should truly be unique across all AddOns.

The *\$parent* keyword incorporates the name from a parent widget, so the button below becomes "MyAddonFrameButton".

    <Frame name="MyAddonFrame">
        <Frames>
            <Button name="$parentButton">
            </Button>
        </Frames>
    </Frame>

In Lua, the button is manipulable using this global name. For example: `MyAddonFrameButton:`[`Disable()`](https://warcraft.wiki.gg/wiki/API_Button_Disable "API Button Disable").

### Layout

LayoutFrames are generally a rectangular [Region](https://warcraft.wiki.gg/wiki/UIOBJECT_Region "UIOBJECT Region") on the screen, defined by [anchors](https://warcraft.wiki.gg/wiki/Anchors "Anchors") and sizes. To be [valid](https://warcraft.wiki.gg/wiki/API:Region_IsRectValid?action=edit&redlink=1 "API:Region IsRectValid (page does not exist)"), there must be sufficient non-contradictory information to compute its position and size. In XML, these are specified using `Size` and `Anchors`.

A 100x100 frame anchored to its parent's top-left corner:

    <Frame name="MyAddonFrame">
        <Size>
            <AbsDimension x="100" y="100" />
        </Size>
        <Anchors>
            <Anchor point="TOPLEFT" />
        </Anchors>
    </Frame>

A frame centered on its parent, covering a quarter of the screen regardless of resolution:

    <Frame name="MyAddonFrame">
        <Size>
            <RelDimension x="0.5" y="0.5" />
        </Size>
        <Anchors>
            <Anchor point="CENTER" />
        </Anchors>
    </Frame>

See [Region:SetPoint](https://warcraft.wiki.gg/wiki/API:Region_SetPoint?action=edit&redlink=1 "API:Region SetPoint (page does not exist)")() and [Region:SetSize](https://warcraft.wiki.gg/wiki/API:Region_SetSize?action=edit&redlink=1 "API:Region SetSize (page does not exist)")() for additional details.

### Showing/Hiding

LayoutFrames default to a visible state unless one sets the hidden attribute, [`LayoutFrame hidden.true`](https://warcraft.wiki.gg/wiki/XML/LayoutFrame_hidden.true?action=edit&redlink=1 "XML/LayoutFrame hidden.true (page does not exist)"). In Lua, toggle this state using [Region:SetShown](https://warcraft.wiki.gg/wiki/API:Region_SetShown?action=edit&redlink=1 "API:Region SetShown (page does not exist)")().

### Layers and Textures

Certain widgets exist only within the `Layers` part of a [Frame](https://warcraft.wiki.gg/wiki/XML/Frame "XML/Frame") to render potentially-overlapping text or texture (graphics) inside that Frame. There are five [layers](https://warcraft.wiki.gg/wiki/Layer "Layer"), in order from furthest-back to forward:

- BACKGROUND - Place background textures here, to sit behind everything else.
- BORDER - Place border textures here, to cover the background but sit behind the foreground.
- ARTWORK - Place forground textures here, in front of backgrounds and borders (if overlapping).
- OVERLAY - Place your text and interactive elements in this level to ensure visibility.
- HIGHLIGHT - Additional level with [special optional behaviour](https://warcraft.wiki.gg/wiki/Layer#Details "Layer").

    <Frame>
        <Layers>
            <Layer level="BACKGROUND">
                    <Texture />
            </Layer>
            <Layer level="OVERLAY">
                <FontString />
            </Layer>
        </Layers>
    </Frame>

### Templates

Templates define a common layout for reuse in many widgets. Widgets inheriting from a template will share the same properties, children, and attributes unless explicitly overwritten.

Templates in XML:

- Reside in the document root, even if they are a kind of widget that is often a child of another.
- Have the virtual property set to true, [`LayoutFrame virtual.true`](https://warcraft.wiki.gg/wiki/XML/LayoutFrame_virtual.true?action=edit&redlink=1 "XML/LayoutFrame virtual.true (page does not exist)").
- Have a unique global name, which shouldn't use the *\$parent* keyword because it has no parents.
- May have other widgets as children, but if those widgets have global names then the *\$parent* keyword should be used to prevent collisions between each reuse of the template.

Widgets inheriting the templates:

- Reside in their usual locations within the XML file (either the document root or inside certain other kinds of widgets).
- Have the inherits property set to the name of the template, [`LayoutFrame inherits.MyTemplate`](https://warcraft.wiki.gg/wiki/XML/LayoutFrame_inherits.MyTemplate?action=edit&redlink=1 "XML/LayoutFrame inherits.MyTemplate (page does not exist)").
- May have a unique global name -- *should* have a unique name if the template has children using the *\$parent* keyword.

     <Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.blizzard.com/wow/ui/ ..\FrameXML\UI.xsd">
        <Button name="MyAddonButtonTemplate" virtual="true">
            <Size>
                <AbsDimension x="40" y="22" />
            </Size>
            <ButtonText name="$parentText" />
        </Button>
        <Button inherits="MyAddonButtonTemplate" name="MyButton1" />
    </Ui>

## Scripts

To attach behaviour to the UI elements defined in the XML files, you must use Lua. There are two methods of attaching Lua code to UI elements.

- Short codes can go directly in the XML files in the appropriate event handler element (see later).
- Long codes should go in a separate .lua file, and included via a Script element.

To include Lua code via a Script element, you must have one or more \<Script\> elements at the start of the XML file. For example:

    <Ui ... >
     <Script file="mycode.lua"/>
     <Frame name="MyFrame">
      ...
     </Frame>
    </Ui>

When the XML file is read, the contents of the *mycode.lua* file is read and interpreted. The code in that file is then available for the rest of this XML file, *and* any XML files that are read *after* this one. Functions that are defined in *mycode.lua* can be called from event handlers in the XML file.

### Basic Event Handling concepts

*If you are not used to event handled programming, read this section, otherwise you can skip right through it.*

Traditional programming style involves writing a program that has a start and finish. Execution starts at the beginning, and after following through the algorithm in the program, it eventually gets to the end.

Event handled programming is somewhat different. In this case, you create several, independent sections of code, with no clear start or finish. Each of these sections of code are designed to be executed in response to a certain event occurring. Such a section of code is called an *event handler*. An event handler may get executed once, many times, or maybe even never. This kind of programming style is used whenever you want your code to interact with an external program, and do things in response to whatever that program is doing.

In the case of [World of Warcraft](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft"), the core game is external to the interface code. Whenever something happens in the game, it asks the interface code to respond to it, by calling one of the event handlers.

### Handling UI Events

To handle UI events, you must include event handler elements in your XML code. You do this by having a Scripts element, inside of which you have one or more Onxxxx event handler elements. For example:

    <Frame name="MyFrame">
     <Scripts>
      <OnShow>
       message("Hello!");
      </OnShow>
     </Scripts>
    </Frame>

This frame has one event handler only, which is executed every time this Frame becomes visible. The contents of the OnShow element can be any valid Lua code. In this example, it's a single statement, which calls the function **message**, which causes a dialog box to pop up with "Hello" inside it. (**message** is a function defined in BasicControls.xml and is available by default.)

Here is a more complete example of how you include Lua code and then reference it from the event handlers.

**mymod.xml**:

    <Ui ... >
      <Script file="mymod.lua"/>
      <Frame name="MyModMainFrame">
        <Scripts>
          <OnLoad>
            MyMod_ShowMessage();
          </OnLoad>
        </Scripts>
      </Frame>
    </Ui>

**mymod.lua**:

    function MyMod_ShowMessage()
      message("Hello World!");
    end

When **MyModMainFrame** gets loaded (which happens once, at the start of the game, when all the XML files are read in), the OnLoad handler gets executed. In this case, the single Lua statement there simply calls the MyMod_ShowMessage function.

It is recommended that you prefix the names of all of your functions, UI objects and global variables with the name of your AddOn like above; all data is shared between Blizzard's own UI and all your addons, so picking a unique prefix helps avoid clashes with other people's code.

*For the above example to actually work, you must either create an AddOn with the mymod.lua and mymod.xml files, or include them in the FrameXML directory and reference myframe.xml from FrameXML.toc.* See [AddOns](https://warcraft.wiki.gg/wiki/AddOns "AddOns") on how to combine these files into an AddOn.

### Event Handler reference

[Widget Handlers](https://warcraft.wiki.gg/wiki/Widget_Handlers "Widget Handlers") is a complete reference of what event handlers can be used by each object type.

- *Note*: the OnEvent handler is special (see below).

You will notice that the event handlers in the list mostly cover UI related events. The **OnEvent** handler is special in that it is a general, collective handler for a large number of other events. It gets called for any of the remaining hundreds of game related events. See [Events](https://warcraft.wiki.gg/wiki/Events_(API) "Events (API)") for a list of game events and how to register for them and handle them.

## Widget Elements

Moved to [XML schema](https://warcraft.wiki.gg/wiki/XML_schema "XML schema").

## Default User Interface

The default user interface that is visible without any installed third-party addons is built into the MPQ files. It can't be modified because it is protected by a digital signature, but [the files can be extracted](https://warcraft.wiki.gg/wiki/Viewing_Blizzard%27s_interface_code "Viewing Blizzard's interface code") to see how the interface works.
