---
layout: post
title: About Windows Forms ComboBox control | Syncfusion
description: Learn here all about introduction of Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Windows Forms ComboBox (SfComboBox) Overview

[WinForms ComboBox](https://www.syncfusion.com/winforms-ui-controls/combobox) is a text box component that allows a user to type a value or choose an option from a list of predefined options. It has several out-of-the-box features such as data binding, filtering, UI customization, accessibility, and more.

Key features are:

* Data binding: Support to bind `IEnumerable` type data sources.
* Auto complete: Supports different modes of auto complete actions.
* Multi selection: Support to select multiple values from the drop-down list.
* Select all items: Supports choosing all items in a multi-select combo box.
* Watermark: Helps to prompt users by providing additional hints about the data that should be entered into the text box.
* Tooltip: Support to show the tooltip when selecting multiple values in the multi-select combo box.
* Styling: Supports customizing styles and appearance of the SfComboBox control.
* Pop-up resizing: Supports resizing the drop-down container using a resize gripper placed at the bottom of the pop-up control.
* Accessibility: Supports various accessibility features to make applications available to a wide variety of users.
* Theme: Supports several built-in Office 2016 themes.


## Choose between different ComboBox controls

The Syncfusion WinForms suite comes with the following ComboBox controls:

* [SfComboBox](https://www.syncfusion.com/winforms-ui-controls/combobox)
* [ComboBoxAdv](https://help.syncfusion.com/windowsforms/classic/combobox/overview)
* [MultiSelectionComboBox](https://www.syncfusion.com/winforms-ui-controls/combobox/multiselect-combobox)
* [ComboBoxAutoComplete](https://help.syncfusion.com/windowsforms/classic/autocomplete/overview)
* [MultiColumnComboBox](https://help.syncfusion.com/windowsforms/multicolumn-combobox/overview)

### SfComboBox

The [SfComboBox](https://help.syncfusion.com/windowsforms/combobox/overview) textbox component allows the users to type a value or choose an option from a list of predefined options. It has several out-of-box features such as data binding, filtering, UI customization, accessibility, and more.

### ComboBoxAdv

The [ComboBoxAdv](https://help.syncfusion.com/windowsforms/classic/combobox/overview) is an advanced ComboBox control that provides a similar object model to the framework ComboBox control with additional features. It allows the user to select multiple items and display the default text when none of the items is selected.

### MultiSelectionComboBox

[MultiSelectionComboBox](https://help.syncfusion.com/windowsforms/classic/multiselectioncombobox/overview) is a type of ComboBox control with multiple item selection and auto-suggest capabilities. When you type a character into the text area, the control performs a search operation and suggests a list of possible matching results to select.

### ComboBoxAutoComplete

The [ComboBoxAutoComplete](https://help.syncfusion.com/windowsforms/classic/autocomplete/overview) control combines the ComboBox control with the AutoComplete control for autocompletion within that instance of ComboBox. It can be used on a form for autocompletion of one or several edit controls (textbox and combobox).

### MultiColumnComboBox

The [MultiColumnComboBox](https://help.syncfusion.com/windowsforms/multicolumn-combobox/overview) advanced ComboBox control has the capability to show multiple columns in the drop-down list. You can also display headers for the multiple columns.

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

It also provides support to {{'[autocompletion](https://help.syncfusion.com/windowsforms/combobox/autocomplete )'| markdownify }} based on case sensitivity.

</td>
</tr>
<tr>
<td>
Multiple items selection
</td>
<td>
Selects {{'[multiple items](https://help.syncfusion.com/windowsforms/combobox/selection#multi-selection )'| markdownify }} using the checkbox selection in drop-down.

</td>
</tr>
<tr>
<td>
Loading custom user control in dropdown
</td>
<td>
Shows the header and footer items in the drop-down by enabling the {{'[ShowHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_ShowHeader)'| markdownify }} and {{'[ShowFooter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_ShowFooter)'| markdownify }} properties. To learn more about loading custom user controls, refer {{'[here](https://help.syncfusion.com/windowsforms/combobox/dropdown#load-custom-control-in-drop-down)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Watermark
</td>
<td>
Sets the {{'[watermark](https://help.syncfusion.com/windowsforms/combobox/watermark)'| markdownify }} text to display a hint in the editor portion when the ComboBox has an empty string.

</td>
</tr>
<tr>
<td>
Sorting
</td>
<td>
{{'[Sort](https://help.syncfusion.com/windowsforms/combobox/sorting)'| markdownify }} the data either in ascending or descending order using the {{'[SfComboBox.DropDownListView.View.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortDescriptors)'| markdownify }} property.

</td>
</tr>
</table>
