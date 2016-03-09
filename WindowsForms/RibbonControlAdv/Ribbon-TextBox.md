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
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
BackColor<br/><br/></td><td>
Sets the back color for the textbox.<br/><br/></td></tr>
<tr>
<td>
BorderStyle<br/><br/></td><td>
Specifies the border style for the textbox. The options are as follows,<br/><br/>FixedSingle,<br/><br/>Fixed3D and<br/><br/>None.<br/><br/></td></tr>
<tr>
<td>
Text<br/><br/></td><td>
Sets the Text for the ToolStripTextBox. <br/><br/></td></tr>
<tr>
<td>
Lines<br/><br/></td><td>
Lets you open a String Collection Editor, using which multiline text can be entered.<br/><br/></td></tr>
<tr>
<td>
Font<br/><br/></td><td>
Sets the font style for the display text.<br/><br/></td></tr>
<tr>
<td>
ForeColor<br/><br/></td><td>
Sets the fore color for the display text.<br/><br/></td></tr>
<tr>
<td>
TextBoxTextAlign<br/><br/></td><td>
Specifies the alignment of the text in the item. The options are,<br/><br/>Left,<br/><br/>Right and <br/><br/>Center.<br/><br/></td></tr>
</table>

## Style Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Enabled<br/><br/></td><td>
Specifies whether the item is enabled.<br/><br/></td></tr>
<tr>
<td>
Visible<br/><br/></td><td>
Specifies whether the item is visible.<br/><br/></td></tr>
<tr>
<td>
Alignment<br/><br/></td><td>
Sets the alignment of the item within the ToolStrip. They can be set to beginning (Left) or end (Right) of the ToolStripEx control.<br/><br/></td></tr>
<tr>
<td>
AutoSize<br/><br/></td><td>
Specifies whether the item should size itself based on its image and text.<br/><br/></td></tr>
</table>

## ToolTip Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AutoToolTip<br/><br/></td><td>
When set to true, will display the text set in the Text property as the item's tooltip.<br/><br/>When set to false, will display the text set in the ToolTipText property.<br/><br/></td></tr>
<tr>
<td>
ToolTipText<br/><br/></td><td>
Sets the text for the tooltip when AutoToolTip is set to false.<br/><br/></td></tr>
</table>

## RTL Support

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
RightToLeft<br/><br/></td><td>
Indicates whether the item should right to left for RTL languages.<br/><br/></td></tr>
</table>

## Behavior Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AcceptsReturn<br/><br/></td><td>
Indicates if return characters are accepted as input.<br/><br/></td></tr>
<tr>
<td>
AcceptsTab<br/><br/></td><td>
Indicates if tab characters are accepted as input.<br/><br/></td></tr>
<tr>
<td>
CharacterCasing<br/><br/></td><td>
Indicates if the characters should be Normal or in Upper Case or in Lower Case.<br/><br/></td></tr>
<tr>
<td>
HideSelection<br/><br/></td><td>
Indicates whether the selection should be hidden when the control loses focus.<br/><br/></td></tr>
<tr>
<td>
MaxLength<br/><br/></td><td>
Maximum number of characters that can be entered into the control. <br/><br/></td></tr>
<tr>
<td>
ReadOnly<br/><br/></td><td>
Indicates whether the text in the textbox is read-only.<br/><br/></td></tr>
<tr>
<td>
ShortCutsEnabled<br/><br/></td><td>
Specifies whether the keyboard shortcut can be specified for this textbox item.<br/><br/></td></tr>
<tr>
<td>
ShortCut on Form1<br/><br/></td><td>
Specifies the Keyboard shortcut to be used at run time to access this combobox.<br/><br/></td></tr>
</table>

## AutoComplete Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
AutoCompleteCustomSource<br/><br/></td><td>
Represents the custom source of string collection for the autocomplete feature, when AutoCompleteSource property is set to CustomSource.<br/><br/></td></tr>
<tr>
<td>
AutoCompleteSource<br/><br/></td><td>
Represents the source of strings used for autocompletion. The sources can be,<br/><br/>FileSystem,<br/><br/>AllSystemSources, (Default)<br/><br/>AllUrl,<br/><br/>CustomSource,<br/><br/>FileSystemDirectories,<br/><br/>HistoryList,<br/><br/>ListItems,<br/><br/>RecentlyUsedList,<br/><br/>None.<br/><br/></td></tr>
<tr>
<td>
AutoCompleteMode<br/><br/></td><td>
Indicates text completion behavior of the combo box. The modes are,<br/><br/>{{'__Suggest__ '| markdownify }}- Displays the drop down list associated with the EditControl. This dropdown list is populated with one or more suggested completion strings,<br/><br/>{{'__Append__ '| markdownify }}- Appends the reminder of the most likely candidate string to the existing character, highlighting the appended character, and <br/><br/>{{'__SuggestAppend__ '| markdownify }}- Displays the drop down, also appends the highlighted string.<br/><br/></td></tr>
</table>

N> We can set banner text for the TextBox control. Refer [BannerTextProvider Component](http://help.syncfusion.com/windowsforms/bannertextprovider/overview#overview) topic for more details.

