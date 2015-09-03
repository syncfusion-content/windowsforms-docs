---
layout: post
title: AutoComplete
description: AutoComplete
platform: windowsforms
control: Editors Package
documentation: ug
---

# AutoComplete

The AutoComplete feature of the FontComboBox can be turned on\off depending upon the type of behavior that is required for the FontComboBox control. The below properties enables the auto complete feature.

Table 383: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
UseAutoComplete</td><td>
Specifies whether auto complete feature is implemented in the control.</td></tr>
<tr>
<td>
AutoCompleteSource</td><td>
Specifies the source of the complete strings used for auto completion. DropDownStyle property should be set to "DropDown" to make this setting effective. </td></tr>
<tr>
<td>
AutoCompleteCustomSource</td><td>
Represents the collection of string for the custom source, when AutoCompleteSource is set to CustomSource.</td></tr>
</table>


{%highlight c#%}



// Enables AutoComplete feature.

this.fontComboBox1.UseAutoComplete =true;

this.fontComboBox2.AutoCompleteCustomSource.AddRange(new string[] { "Calibria", "Cambria", "Candara"});

this.fontComboBox2.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;

this.fontComboBox2.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;

{%endhighlight%}

{%highlight vbnet%}

' Enables AutoComplete feature.

Me.fontComboBox1.UseAutoComplete = True

Me.fontComboBox2.AutoCompleteCustomSource.AddRange(New String() {"Calibria", "Cambria", "Candara"}) 

Me.fontComboBox2.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend

Me.fontComboBox2.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource

{%endhighlight%}

![](Overview_images/Overview_img585.jpeg)


See Also

DropDown Settings