---
layout: post
title: MainFrameBarManager Property
description: mainframebarmanager property
platform: windowsforms
control: Menus Package 
documentation: ug
---
# MainFrameBarManager Property

## Image Settings

_Table487: Property Table_

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
DisabledImageList</td><td>
The ImageList to which the BarItems refer to, when disabled.</td></tr>
<tr>
<td>
DisabledLargeImageList</td><td>
The ImageList to which the BarItems refer to, when disabled and uses LargeIcons mode.</td></tr>
<tr>
<td>
HighlightImageList</td><td>
The ImageList to which the BarItems refer to, when highlighted.</td></tr>
<tr>
<td>
HighlightLargeImageList</td><td>
The ImageList to which the BarItems refer to, when highlighted and uses LargeIcons mode.</td></tr>
<tr>
<td>
ImageList</td><td>
ImageList that bar items refer to when in small icons mode.</td></tr>
<tr>
<td>
LargeIcons</td><td>
Enables or disables LargeIcons mode for items in the toolbar.</td></tr>
<tr>
<td>
LargeImageList</td><td>
The ImageList to which the BarItems refer to, when in LargeIcons mode.</td></tr>
</table>

## Foreground and Style Settings

_Table488: Property Table_

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
Font</td><td>
Sets font style for the bar items.</td></tr>
<tr>
<td>
Style</td><td>
Sets the common visual style for the toolbars and main menus.</td></tr>
<tr>
<td>
Themes Enabled</td><td>
Specify whether to apply themes.</td></tr>
</table>

## Data Settings

_Table489: Property Table_

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
Bars</td><td>
Invokes the Customize dialog - Toolbar tab indicating the collection of Bars.</td></tr>
<tr>
<td>
Categories</td><td>
Lists the categories defined in this bar manager.</td></tr>
</table>

## Misc Properties

_Table490: Property Table_

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
ActivateFormFromBar</td><td>
Indicates if activating menu should activate parent form also.</td></tr>
<tr>
<td>
PopupCloseTimer</td><td>
Indicates the delay in milliseconds before the displayed dropdown on toolbar, gets closed.</td></tr>
<tr>
<td>
ShowHighlightRectangle</td><td>
Indicates whether to highlight bar items when moving mouse over it.</td></tr>
</table>

## Shadow Settings

_Table491: Property Table_

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
ShowDropShadow</td><td>
Indicates whether to show shadow for BarItem's images.</td></tr>
<tr>
<td>
ShowShadow</td><td>
Indicates whether to show shadows for popups.</td></tr>
</table>

> Note: The properties related to the partial menus concept is discussed in_ ParentBarItem_

## Tooltip Settings

> Note: We can control the display of tooltips for the bar items, only when the form is active, using the below_ BarManager.BarItemActiveFormCheckOverride _property.

See Also

Toolbar State Persistence,

ParentBarItem,

Tooltip