---
layout: post
title: Ribbon-ComboBox| WindowsForms | Syncfusion
description:  ribbon combobox
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---
# Ribbon ComboBox

ToolStripComboBox control is used to display the list of items, as ComboBox. It can be added to a ToolStripEx directly or through a panel. 

![](Ribbon-ComboBox_images/Ribbon-ComboBox_img1.jpg)

The below properties controls the appearance and behavior of the ToolStripComboBox.

## Foreground Settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
BackColor<br/><br/></td><td>
Sets the back color for the combo box item.<br/><br/></td></tr>
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
Text<br/><br/></td><td>
Sets the text for the ComboBox item.<br/><br/></td></tr>
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
<tr>
<td>
DropDownStyle<br/><br/></td><td>
Specifies the dropdown style. The styles are,<br/><br/>Simple,<br/><br/>DropDown and <br/><br/>DropDownList.<br/><br/></td></tr>
<tr>
<td>
FlatStyle<br/><br/></td><td>
Sets the display style of the combobox. The styles are,<br/><br/>Flat,<br/><br/>Popup,<br/><br/>Standard and <br/><br/>System.<br/><br/></td></tr>
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
Indicates whether the item should draw right to left for RTL languages.<br/><br/></td></tr>
</table>

## DropDown settings

<table>
<tr>
<th>
Property<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
Items<br/><br/></td><td>
Invokes String Collection Editor which lets you add strings list to be displayed in the combobox.<br/><br/></td></tr>
<tr>
<td>
MaxDropDownItems<br/><br/></td><td>
Sets the maximum number of strings that should be displayed in the dropdown.<br/><br/></td></tr>
<tr>
<td>
MaxLength<br/><br/></td><td>
Specifies the maximum characters that can be entered into the combobox.<br/><br/></td></tr>
<tr>
<td>
DropDownHeight<br/><br/></td><td>
Sets the height for the DropDown.<br/><br/></td></tr>
<tr>
<td>
DropDownWidth<br/><br/></td><td>
Sets the width for the DropDown.<br/><br/></td></tr>
<tr>
<td>
IntegralHeight<br/><br/></td><td>
Indicate whether the combobox should resize to avoid showing partial items.<br/><br/></td></tr>
<tr>
<td>
Sorted<br/><br/></td><td>
Specifies whether the dropdown list should be sorted.<br/><br/></td></tr>
<tr>
<td>
AutoCompleteCustomSource<br/><br/></td><td>
Represents the custom source of string collection for the autocomplete feature, when AutoCompleteSource property is set to CustomSource.<br/><br/></td></tr>
<tr>
<td>
AutoCompleteSource<br/><br/></td><td>
Represents the source of strings used for autocompletion. The sources can be,<br/><br/>FileSystem,<br/><br/>AllSystemSources, (Default)<br/><br/>AllUrl,<br/><br/>CustomSource,<br/><br/>FileSystemDirectories,<br/><br/>HistoryList,<br/><br/>ListItems,<br/><br/>RecentlyUsedList and <br/><br/>None.<br/><br/></td></tr>
<tr>
<td>
AutoCompleteMode<br/><br/></td><td>
Indicates text completion behavior of the combo box. The modes are,<br/><br/>{{'__Suggest__ '| markdownify }}- Displays the drop down list associated with the EditControl. This dropdown list is populated with one or more suggested completion strings,<br/><br/>{{'__Append__ '| markdownify }}- Appends the reminder of the most likely candidate string to the existing character, highlighting the appended character, and <br/><br/>{{'__SuggestAppend__ '| markdownify }}- Displays the drop down, also appends the highlighted string.<br/><br/></td></tr>
<tr>
<td>
ShortCut on Form1<br/><br/></td><td>
Specifies the Keyboard shortcut to be used at run time to access this combobox.<br/><br/></td></tr>
</table>
N> We can set banner text for the ComboBox control. Refer [BannerTextProvider Component](http://help.syncfusion.com/windowsforms/bannertextprovider/overview#overview) topic for more details.
