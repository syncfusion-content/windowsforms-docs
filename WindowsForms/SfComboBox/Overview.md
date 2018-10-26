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

Syncfusion WinForms suite comes up with following different combobox namely,

* [SfComboBox](https://www.syncfusion.com/products/windows-forms/combobox)
* [ComboBoxAdv](https://help.syncfusion.com/windowsforms/comboboxadv/overview)
* [MultiSelectionComboBox](https://www.syncfusion.com/products/windows-forms/multiselection-combobox)
* [ComboBoxAutoComplete](https://help.syncfusion.com/windowsforms/comboboxautocomplete/overview)
* [MultiColumnComboBox](https://www.syncfusion.com/products/windows-forms/multicolumn-combobox)

### SfComboBox

[SfComboBox](https://help.syncfusion.com/windowsforms/sfcombobox/overview) is a text box component that allows users to type a value or choose an option from a list of predefined options. It has several out of the box fearures, such as data binding filtering, UI customization, accessibility and more.

### ComboBoxAdv

[ComboBoxAdv](https://help.syncfusion.com/windowsforms/comboboxadv/overview) is an advanced combo box control that provides a similar object model as the framework of the combobox control, with a lot of additional features. It allows the user to select multiple items and display the default text when none of the item is selected.

### MultiSelectionComboBox

[MultiSelectionComboBox](https://help.syncfusion.com/windowsforms/multiselectioncombobox/overview) is a type of combobox control with multiple item selection and auto suggestion capabilities. When you type a character into the text area, the control performs a search operation and suggest a list of possible matching results to select.

### ComboBoxAutoComplete

[comboBoxAutoComplete](https://help.syncfusion.com/windowsforms/comboboxautocomplete/overview) control combines a combo box control with an AutoComplete control to provide autocompletion for that instance of the combo box. It can be used on a form to provide autocompletion for one or several edit controls (text box and combo box). 

### MultColumnComboBox

[MultiColumnComboBox](https://help.syncfusion.com/windowsforms/multicolumncombobox/overview) is an advanced combo box control that has the capability to show multiple columns in the drop-down list. You can also provides to display the headers for the multiple columns.

### SfComboBox vs MultiSelectionComboBox vs ComboBoxAdv

SfComboBox, MultiSelectionComboBox and ComboBoxAdv controls used for same purpose. But SfComboBox control offers rich set of features over ComboBoxAdv and MultiSelectionComboBox. When you want to data binding, autocompletion, multiple items selection, UI customization, watermark text, loading custom UI control in dropdown, accessibility and more, you can use SfComboBox. Comparatively, the SfComboBox has the all required features from ComboBoxAdv, MultiSelectionComboBox and ComboBoxAutoComplete controls.

You can see the list of some of the specific API difference between SfComboBox, MultiSelectionComboBox and ComboBoxAdv as follows:
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
To display the underlying datasource
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
To use as the actual value for the items
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
To display the bounded data.
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
To sets the value that specifies the editing style of the ComboBox.
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
To separate the multiple selected items in the selected combobox.
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
To sets the auto complete mode for SfComboBox and to set auto complete functionality for ComboBoxAdv
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
To sets the mode for suggesting the dropdown list of AutoComplete Suggest and SuggestAppend modes.
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
To apply the visual styles.
</td>
</tr>
</table>
Below are the list of features in SfComboBox over ComboBoxAdv and MultiSelectionComboBox,
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
SfComboBox provides supports to display the suggestions in dropdown.<br/>
1. {{'**Suggest:**'| markdownify }}Displays suggestion in drop-down list.<br/>
2. {{'**Append:**'| markdownify }}Appends the first suggestion to text.<br/>
3. {{'**SuggestAppend:**'| markdownify }}Performs both the above ways.<br/>
It also provides the support to {{'[autocompletion](https://help.syncfusion.com/windowsforms/sfcombobox/autocomplete)'| markdownify }} based on the case sensitivity.

</td>
</tr>
<tr>
<td>
Multiple items selection
</td>
<td>
SfComboBox provides support to select the {{'[multiple items](https://help.syncfusion.com/windowsforms/sfcombobox/selection#multi-selection)'| markdownify }} by using the checkbox selection in the dropdown.

</td>
</tr>
<tr>
<td>
Loading custom user control in dropdown
</td>
<td>
SfComboBox allows you to show the header and footer items in dropdown by enabling the {{'[ShowHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~ShowHeader.html)'| markdownify }} and {{'[ShowFooter](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~ShowFooter.html)'| markdownify }}. To know more about loading custom user control in SfComboBox, refer {{'[here](https://help.syncfusion.com/windowsforms/sfcombobox/dropdown#load-custom-control-in-drop-down)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Watermark
</td>
<td>
SfComboBox provides support to set the {{'[watermark](https://help.syncfusion.com/windowsforms/sfcombobox/watermark)'| markdownify }} text to display the hint in the editor portion when combobox has empty string.

</td>
</tr>
<tr>
<td>
Sorting
</td>
<td>
SfComboBox provides support to {{'[sort](https://help.syncfusion.com/windowsforms/sfcombobox/sorting)'| markdownify }} the data either in ascending or descending order by using {{'[SfComboBox1.DropDownListView.View.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.WinForms~Syncfusion.DataSource.DataSource~SortDescriptors.html)'| markdownify }} property.

</td>
</tr>
</table>