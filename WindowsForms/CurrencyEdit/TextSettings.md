---
layout: post
title: Text Settings
description: text settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Text Settings

The below properties will let you control the behavior of the text in the CurrencyEdit control.

Table 255 : Property Table

<table>
<tr>
<th>
CurrencyEdit Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowTextBox</td><td>
Indicates whether to show the textbox or not.</td></tr>
<tr>
<td>
Text</td><td>
Specifies the text of the embedded control.</td></tr>
<tr>
<td>
TextBox</td><td>
Specifies the properties for customizing the embedded textbox.</td></tr>
<tr>
<td>
TextAlign</td><td>
Specifies the alignment of the text in the control.</td></tr>
<tr>
<td>
TransferFromCalculator</td><td>
Specifies whether to transfer the calculated value to the edit control.</td></tr>
<tr>
<td>
TransferToCalculator</td><td>
Specifies whether to transfer the calculated value from the edit control.</td></tr>
<tr>
<td>
DecimalValue</td><td>
Specifies the decimal value of the currency control.</td></tr>
</table>


{%highlight c#%}



this.currencyEdit1.ShowTextBox = true;

this.currencyEdit1.Text = "$400.00";

this.currencyEdit1.TextAlign = HorizontalAlignment.Right;

this.currencyEdit1.TransferFromCalculator=true;

this.currencyEdit1.TransferToCalculator= false;

this.currencyEdit1.TextBox.DecimalValue = new decimal(new int[] {40000, 0, 0, 131072});


{%endhighlight%}

{%highlight vbnet%}

Me.currencyEdit1.ShowTextBox = True

Me.currencyEdit1.Text = "$400.00"

Me.currencyEdit1.TextAlign = HorizontalAlignment.Right

Me.currencyEdit1.TransferFromCalculator = True

Me.currencyEdit1.TransferToCalculator = False

Me.currencyEdit1.TextBox.DecimalValue = New Decimal(New Integer() {40000, 0, 0, 131072})

{%endhighlight%}

![](Overview_images/Overview_img417.png) 




> Note: Enabling ButtonEdit.UseVisualStyle property and by setting visual style for control using ButtonEdit.ButtonStyle property, we can change the appearance of the calculator button.
