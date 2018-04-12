---
layout: post
title: Ribbon-TextBox| WindowsForms | Syncfusion
description:  ribbon textbox
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---
# Ribbon TextBox

Ribbon TextBox control provide similar set of functionalities like normal TextBox control in Ribbon Instance. It can be added to a ToolStripEx directly or through a panel. 

![](Ribbon-TextBox_images/Ribbon-TextBox_img1.jpeg)


The below properties controls the appearance and behavior of the ToolStripTextBox Item.

## Foreground Settings

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the back color for the textbox</td></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the border style for the textbox. The options are as follows,

FixedSingle,

Fixed3D

None.

</td></tr>
<tr>
<td>
Text

</td><td>
Sets the Text for the ToolStripTextBox. 

</td></tr>
<tr>
<td>
Lines

</td><td>
Lets you open a String Collection Editor, using which multiline text can be entered.

</td></tr>
<tr>
<td>
Font

</td><td>
Sets the font style for the display text

</td></tr>
<tr>
<td>
ForeColor

</td><td>
Sets the fore color for the display text.

</td></tr>
<tr>
<td>
TextBoxTextAlign

</td><td>
Specifies the alignment of the text in the item. The options are,

Left,

Right 

Center
</td></tr>
</table>

## Style Settings

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Enabled</td><td>
Specifies whether the item is enabled.</td></tr>
<tr>
<td>
Visible</td><td>
Specifies whether the item is visible.</td></tr>
<tr>
<td>
Alignment</td><td>
Sets the alignment of the item within the ToolStrip. They can be set to beginning (Left) or end (Right) of the ToolStripEx control</td></tr>
<tr>
<td>
AutoSize</td><td>
Specifies whether the item should size itself based on its image and text.</td></tr>
</table>

## ToolTip Settings

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
AutoToolTip</td><td>
When set to true, will display the text set in the Text property as the item's tooltip.When set to false, will display the text set in the ToolTipText property.</td></tr>
<tr>
<td>
ToolTipText</td><td>
Sets the text for the tooltip when AutoToolTip is set to false.></td></tr>
</table>

## RTL Support

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Indicates whether the item should right to left for RTL languages.</td></tr>
</table>

## Behavior Settings

<table>
<tr>
<th>
Property</th><th>
Description<</th></tr>
<tr>
<td>
AcceptsReturn</td><td>
Indicates if return characters are accepted as input.</td></tr>
<tr>
<td>
AcceptsTab</td><td>
Indicates if tab characters are accepted as input.</td></tr>
<tr>
<td>
CharacterCasing</td><td>
Indicates if the characters should be Normal or in Upper Case or in Lower Case.</td></tr>
<tr>
<td>
HideSelection</td><td>
Indicates whether the selection should be hidden when the control loses focus.</td></tr>
<tr>
<td>
MaxLength</td><td>
Maximum number of characters that can be entered into the control.</td></tr>
<tr>
<td>
ReadOnly</td><td>
Indicates whether the text in the textbox is read-only.</td></tr>
<tr>
<td>
ShortCutsEnabled</td><td>
Specifies whether the keyboard shortcut can be specified for this textbox item.</td></tr>
<tr>
<td>
ShortCut on Form1</td><td>
Specifies the Keyboard shortcut to be used at run time to access this combobox.</td></tr>
</table>

## AutoComplete Settings

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
AutoCompleteCustomSource</td><td>
Represents the custom source of string collection for the autocomplete feature, when AutoCompleteSource property is set to CustomSource.</td></tr>
<tr>
<td>
AutoCompleteSource</td><td>
Represents the source of strings used for autocompletion. The sources can be,

FileSystem,

AllSystemSources

(Default)AllUrl

CustomSource

FileSystemDirectories

HistoryList

ListItems

RecentlyUsedList

None.
</td></tr>
<tr>
<td>
AutoCompleteMode</td><td>
Indicates text completion behavior of the combo box. The modes are,

{{'__Suggest__ '| markdownify }}- Displays the drop down list associated with the EditControl. This dropdown list is populated with one or more suggested completion strings

{{'__Append__ '| markdownify }}- Appends the reminder of the most likely candidate string to the existing character, highlighting the appended character

{{'__SuggestAppend__ '| markdownify }}- Displays the drop down, also appends the highlighted string

</td></tr>
</table>

N> We can set banner text for the TextBox control. Refer [BannerTextProvider Component](http://help.syncfusion.com/windowsforms/bannertextprovider/overview#overview) topic for more details.

