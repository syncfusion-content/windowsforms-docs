---
layout: post
title: DropDown Settings
description: DropDown Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---


# DropDown Settings

FontComboBox has properties to control the appearance and behavior of the dropdown.


<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownStyle</td><td>
Specifies the style of the dropdown. The options are,<br/>
DropDownList - The user cannot directly edit the text portion.<br/> 
The user must click the arrow button to display the list portion,<br/>
DropDown (default) - The user can directly edit the text portion. <br/>
The user must click the arrow button to display the list portion,<br/>
Simple - The text portion is editable. The list portion is always visible.<br/></td></tr>
<tr>
<td>
DropDownHeight</td><td>
Specifies the height of the dropdown combo box in pixels.</td></tr>
<tr>
<td>
DropDownWidth</td><td>
Specifies the width of the dropdown combo box in pixels.</td></tr>
<tr>
<td>
MaxDropDownItems</td><td>
Indicates the maximum number of entries to display in the drop down list.</td></tr>
</table>

{%highlight c#%}



this.fontComboBox2.DropDownHeight = 107;

this.fontComboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;

this.fontComboBox2.DropDownWidth = 154;

this.fontComboBox2.MaxDropDownItems = 10;

{%endhighlight%}


{%highlight vbnet%}
Me.fontComboBox2.DropDownHeight = 107

Me.fontComboBox2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList

Me.fontComboBox2.DropDownWidth = 154

Me.fontComboBox2.MaxDropDownItems = 10

{%endhighlight%}


## Customizing DropDown Items

The height of the FontComboBox items is specified in ItemHeight property and sorting of the items is enabled through Sorted property.

{%highlight c#%}



this.fontComboBox2.ItemHeight = 17;

this.fontComboBox2.Sorted = true;

{%endhighlight%}

{%highlight vbnet%}

Me.fontComboBox2.ItemHeight = 17

Me.fontComboBox2.Sorted = True

{%endhighlight%}