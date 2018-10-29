---
layout: post
title: Overview | ComboBox | Syncfusion
description: This section explains about the advanced combobox control for windows forms and it's important key features
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Overview

Combo box is a text box component that allows user to type a value or choose an option from a list of predefined options. It has several out of the box features such as data binding, filtering, UI customization, accessibility, and more.

Key features are:

* Data binding: Support to bind IEnumerable type data sources.
* Auto complete: Supports different modes of auto complete actions.
* Multi selection: Support to select multiple values from drop-down list.
* Select all items: Supports choosing all items in a multi select combo box.
* Watermark: Helps to prompt user by providing additional hints about the data that should be entered into the text box.
* Tooltip: Support to show the tooltip when selecting more values in the multi select combo box.
* Styling: Supports customizing styles and appearance of the SfComboBox control.
* Pop-up resizing: Supports resizing the drop-down container using a resize gripper placed at the bottom of pop-up control.
* Accessibility:  Supports various accessibility features to make applications available to wide variety of users. 
* Theme: Supports several built-in Office 2016 themes.


## Choose between different combobox controls

Syncfusion WinForms suite comes up with the following different comboboxes:

* [SfComboBox](https://www.syncfusion.com/products/windows-forms/combobox)
* [ComboBoxAdv](https://help.syncfusion.com/windowsforms/comboboxadv/overview)
* [MultiSelectionComboBox](https://www.syncfusion.com/products/windows-forms/multiselection-combobox)
* [ComboBoxAutoComplete](https://help.syncfusion.com/windowsforms/comboboxautocomplete/overview)
* [MultiColumnComboBox](https://www.syncfusion.com/products/windows-forms/multicolumn-combobox)

### SfComboBox

The [SfComboBox](https://help.syncfusion.com/windowsforms/sfcombobox/overview) textbox component allows the users to type a value or choose an option from a list of predefined options. It has several out of box features such as data binding filtering, UI customization, accessibility, and more.

### ComboBoxAdv

The [ComboBoxAdv](https://help.syncfusion.com/windowsforms/comboboxadv/overview) is an advanced combobox control that provides similar object model as the framework of the combobox control with additional features. It allows the user to select multiple items and display the default text when none of the item is selected.

### MultiSelectionComboBox

[MultiSelectionComboBox](https://help.syncfusion.com/windowsforms/multiselectioncombobox/overview) is a type of combobox control with multiple items selection and auto suggestion capabilities. When you type a character into the text area, the control performs search operation and suggest a list of possible matching results to select.

### ComboBoxAutoComplete

The [comboBoxAutoComplete](https://help.syncfusion.com/windowsforms/comboboxautocomplete/overview) control combines the ComboBox control with AutoComplete control for autocompletion to that instance of combobox. It can be used on a form for autocompletion of one or several edit controls (textbox and combobox). 

### MultColumnComboBox

The [MultiColumnComboBox](https://help.syncfusion.com/windowsforms/multicolumncombobox/overview) advanced combobox control has the capability to show multiple columns in the drop-down list. You can also display headers for the multiple columns.

### SfComboBox vs MultiSelectionComboBox vs ComboBoxAdv

The SfComboBox, MultiSelectionComboBox, and ComboBoxAdv controls are used for the same purpose. But, the SfComboBox control offers rich set of features over ComboBoxAdv and MultiSelectionComboBox. For data binding, autocompletion, multiple items selection, UI customization, watermark text, loading custom UI control in drop-down, accessibility, etc., use SfComboBox. Comparatively, SfComboBox has all required features from the ComboBoxAdv, MultiSelectionComboBox, and ComboBoxAutoComplete controls.

The list of some specific API differences between SfComboBox, MultiSelectionComboBox, and ComboBoxAdv are as follows.

<table>
<tr>
<td>
{{'**SfComboBox**'| markdownify }}
</td>
<td>
{{'**MultiSelectionComboBox**'| markdownify }}
</td>
<td>
{{'**ComboBoxAdv**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
DisplayMember
</td>
<td>
DisplayMember
</td>
<td>
DisplayMember
</td>
<td>
Displays the underlying datasource.
</td>
</tr>
<tr>
<td>
ValueMember
</td>
<td>
ValueMember
</td>
<td>
ValueMember
</td>
<td>
Used as actual value of the items.
</td>
</tr>
<tr>
<td>
DataSource
</td>
<td>
DataSource
</td>
<td>
DataSource
</td>
<td>
Displays the bounded data.
</td>
</tr>
<tr>
<td>
DropDownStyle
</td>
<td>
-
</td>
<td>
DropDownStyle
</td>
<td>
Sets the value that specifies editing style of combobox.
</td>
</tr>
<tr>
<td>
DelimiterChar
</td>
<td>
DelimiterChar
</td>
<td>
-
</td>
<td>
Separates multiple selected items in the selected combobox.
</td>
</tr>
<tr>
<td>
AutoCompleteMode
</td>
<td>
-
</td>
<td>
AutoComplete
</td>
<td>
Sets the auto complete mode for SfComboBox and functionality for ComboBoxAdv.
</td>
</tr>
<tr>
<td>
AutoCompleteSuggestMode
</td>
<td>
AutoSuggestMode
</td>
<td>
-
</td>
<td>
Sets the mode for suggesting the drop-down list of AutoComplete Suggest and SuggestAppend modes.
</td>
</tr>
<tr>
<td>
ThemeName
</td>
<td>
Style
</td>
<td>
Style
</td>
<td>
Applies visual styles.
</td>
</tr>
</table>

The list of features in SfComboBox over ComboBoxAdv and MultiSelectionComboBox are as follows.

<table>
<tr>
<td>
{{'**Feature**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
AutoCompletion
</td>
<td>
Displays the suggestions in drop-down.<br/>
1. {{'**Suggest:**'| markdownify }}Displays suggestion in the drop-down list.<br/>
2. {{'**Append:**'| markdownify }}Appends the first suggestion to text.<br/>
3. {{'**SuggestAppend:**'| markdownify }}Performs both ways.<br/>

It also provides support to {{'[autocompletion](https://help.syncfusion.com/windowsforms/sfcombobox/autocomplete)'| markdownify }} based on case sensitivity.

</td>
</tr>
<tr>
<td>
Multiple items selection
</td>
<td>
Selects {{'[multiple items](https://help.syncfusion.com/windowsforms/sfcombobox/selection#multi-selection)'| markdownify }} using the checkbox selection in drop-down.

</td>
</tr>
<tr>
<td>
Loading custom user control in dropdown
</td>
<td>
Shows the header and footer items in drop-down by enabling the {{'[ShowHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~ShowHeader.html)'| markdownify }} and {{'[ShowFooter](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~ShowFooter.html)'| markdownify }} properties. To learn more about loading custom user control, refer to {{'[here](https://help.syncfusion.com/windowsforms/sfcombobox/dropdown#load-custom-control-in-drop-down)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Watermark
</td>
<td>
Sets the {{'[watermark](https://help.syncfusion.com/windowsforms/sfcombobox/watermark)'| markdownify }} text to display hint in the editor portion when combobox has empty string.

</td>
</tr>
<tr>
<td>
Sorting
</td>
<td>
{{'[Sort](https://help.syncfusion.com/windowsforms/sfcombobox/sorting)'| markdownify }} the data either in ascending or descending order using the {{'[SfComboBox.DropDownListView.View.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.WinForms~Syncfusion.DataSource.DataSource~SortDescriptors.html)'| markdownify }} property.

</td>
</tr>
</table>