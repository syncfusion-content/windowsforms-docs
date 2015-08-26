---
layout: post
title: MenuColors
description: menucolors
platform: windowsforms
control: Menus Package 
documentation: ug
---
# MenuColors


The Syncfusion.Windows.Forms.Tools.XPMenus.MenuColors class includes static properties that allow you to change them to get custom background colors for the different portions of the menus and toolbars. Some of the properties include MainMenuBackColor, CommandBarBackColor and StatusBarBackColor.

The following methods of MenuColors class can be invoked to set the custom color.

_Table511: Methods Table_

<table>
<tr>
<th>
MenuColors</th><th>
Description</th></tr>
<tr>
<td>
CommandBarBackColor</td><td>
Gets / sets the background color for a toolbar / commandbar.</td></tr>
<tr>
<td>
CheckedSelColor</td><td>
Sets the selected color for a checked menu item.</td></tr>
<tr>
<td>
DisabledMenuTextColorBase</td><td>
Gets / sets the text color base for the text in the disabled menu items.</td></tr>
<tr>
<td>
DisabledToolbarItemTextColorBase</td><td>
Gets / sets the text color base for the text in the disabled toolbar items.</td></tr>
<tr>
<td>
DropDownBorderColor</td><td>
Gets / sets the border color for a drop-down menu.</td></tr>
<tr>
<td>
ExpandedMenuStripBackColor</td><td>
Gets / sets the Backcolor for the expanded, left-aligned menu strip region. This is the region you see when a partial menu gets expanded to show all the menu items.</td></tr>
<tr>
<td>
FloatingCommandBarCaptionColor</td><td>
Gets / sets the Caption background color for a floating toolbar / commandbar.</td></tr>
<tr>
<td>
InactiveItemAlphaBlendFactor</td><td>
Gets / sets the alpha-blend factor to use to shade the inactive menu item's icons. (255 for no alpha-blending; 0 will completely hide the item).</td></tr>
<tr>
<td>
MainMenuBackColor</td><td>
Gets / sets the background color for the main-menu bar.</td></tr>
<tr>
<td>
MenuActiveTextColor</td><td>
Gets / sets the active text color of the menu and toolbar items.</td></tr>
<tr>
<td>
MenuBGColor</td><td>
Sets the background color for a drop down menu.</td></tr>
<tr>
<td>
MenuLeftStripColor</td><td>
Gets / sets the color for the left aligned strip in a drop-down menu where images and check boxes are shown.</td></tr>
<tr>
<td>
MenuTextColor</td><td>
Gets / sets the text color of the menu and toolbar items.</td></tr>
<tr>
<td>
PressedSelColor</td><td>
Gets / sets the selected-pressed color for a menu item in a toolbar.</td></tr>
<tr>
<td>
SelBorderColor</td><td>
Gets / sets the border color for a selected menu item in a toolbar.</td></tr>
<tr>
<td>
SelColor</td><td>
Gets / sets the selected color for a menu item in a toolbar.</td></tr>
<tr>
<td>
SelTextColor</td><td>
Gets / sets the selected text color for an item in a toolbar.</td></tr>
<tr>
<td>
StatusBarBackColor</td><td>
Gets / sets the background color for the Status Bar.</td></tr>
</table>


Add the following code snippet to get Custom colors for the menu bar items.



{% highlight c# %}

//Set the background color for a drop down menu

MenuColors.MenuBGColor = Color.Pink;

//Set border color for a drop down menu

MenuColors.DropDownBorderColor = Color.Aqua;

{% endhighlight  %}
{% highlight vbnet %}





'Set the background color for a drop down menu

Private MenuColors.MenuBGColor = Color.Pink

'Set border color for a drop down menu

Private MenuColors.DropDownBorderColor = Color.Aqua
{% endhighlight  %}


![](Overview_images/Overview_img155.jpeg) 



A sample which demonstrates setting colors for Menus using MenuColors class is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_