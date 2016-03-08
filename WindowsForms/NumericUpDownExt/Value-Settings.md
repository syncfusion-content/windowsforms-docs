---
layout: post
title: Value-Settings | Windows Forms | Syncfusion
description: value settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Value Settings

The various Values of the NumericUpDownExt control and their settings are given below.



<table>
<tr>
<th>
NumericUpDownExt Properties</th><th>
Description</th></tr>
<tr>
<td>
Value</td><td>
Gets / sets the value assigned to the spin box (also known as an up-down control).</td></tr>
<tr>
<td>
Hexadecimal</td><td>
Gets / sets the value indicating whether the spin box (also known as an up-down control) should display the value it contains in hexadecimal format.</td></tr>
<tr>
<td>
HexValue</td><td>
Gets the value in hexadecimal numeration.</td></tr>
<tr>
<td>
Minimum</td><td>
Gets / sets the minimum allowed value for the spin box (also known as an up-down control).</td></tr>
<tr>
<td>
Increment</td><td>
Gets / sets the value to increment or decrement the spin box (also known as an up-down control) when the up or down buttons are clicked. The default value is set to '1'.</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.Value = new decimal(new int[] {25, 0, 0, 0});

this.numericUpDownExt1.Hexadecimal = true;

this.numericUpDownExt1.Minimum = new decimal(new int[] {50, 0, 0, 0});

this.numericUpDownExt1.Increment = new decimal(new int[] {5, 0, 0, 0});

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.Value = New Decimal(New Integer() {25, 0, 0, 0})

Me.numericUpDownExt1.Hexadecimal = True

Me.numericUpDownExt1.Minimum = New Decimal(New Integer() {50, 0, 0, 0})

Me.numericUpDownExt1.Increment = New Decimal(New Integer() {5, 0, 0, 0})

{% endhighlight %}

The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
DownButton</td><td>
Decrements the value of the spin box (also known as an up-down control).</td></tr>
<tr>
<td>
UpButton</td><td>
Increments the value of the spin box (also known as an up-down control).</td></tr>
</table>


