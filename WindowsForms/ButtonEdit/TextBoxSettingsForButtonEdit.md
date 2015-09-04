---
layout: post
title: TextBox Settings For ButtonEdit
description: TextBox Settings For ButtonEdit
platform: WindowsForms
control: Tools
documentation: ug
---

# TextBox Settings For ButtonEdit

The default textbox within the ButtonEdit control can be replaced with any custom textbox like PercentTextBox, IntegerTextBox, and so on. The properties of Embedded textbox of a ButtonEdit control are discussed below.

Table 148: Property Table

<table>
<tr>
<th>
ButtonEdit Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowTexBox</td><td>
Indicates whether the embedded TextBox is visible in the ButtonEdit control. This property setting can be reset to default by calling ResetShowTextBox method.</td></tr>
<tr>
<td>
SelectionLength</td><td>
Sets the selection length of the embedded TextBox. This property setting can be reset to default by calling ResetSelectionLength method.</td></tr>
<tr>
<td>
SelectionStart</td><td>
Sets the SelectionStart property of the ButtonEdit control which is same as the TextBoxBase.SelectionStart of the embedded TextBox. This property setting can be reset to default by calling ResetSelectionStart method.</td></tr>
</table>


{%highlight c#%}



this.buttonEdit1.SelectionLength = 1;

this.buttonEdit1.SelectionStart = 3;

this.buttonEdit1.ShowTexBox = true;

{%endhighlight%}

{%highlight vbnet%}



Me.buttonEdit1.SelectionLength = 1

Me.buttonEdit1.SelectionStart = 3

Me.buttonEdit1.ShowTexBox = True

{%endhighlight%}


 N> To increase the height of the ButtonEdit control, make the text as multiline textbox.