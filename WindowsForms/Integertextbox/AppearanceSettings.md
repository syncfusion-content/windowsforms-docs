---
layout: post
title: Appearance Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: Tools
documentation: ug
---


# Appearance Settings

## Background Settings

The background settings of the IntegerTextBox control are discussed below.

### Background Color

The background color of the control can be set using the properties given below.



<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
<tr>
<td>
ReadOnlyBackColor</td><td>
Specifies the back color to be used when the control is in the ReadOnly mode.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


this.integerTextBox1.BackColor = System.Drawing.Color.PeachPuff;

this.integerTextBox1.ReadOnly = true;

this.integerTextBox1.ReadOnlyBackColor = System.Drawing.Color.LavenderBlush;

{% endhighlight %}

{% highlight VB %}

Me.integerTextBox1.BackColor = System.Drawing.Color.PeachPuff
Me.integerTextBox1.ReadOnly = True
Me.integerTextBox1.ReadOnlyBackColor = System.Drawing.Color.LavenderBlush

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img453.png)


 ![](Overview_images/Overview_img454.png) 



N> The ReadOnly property must be set to 'True' for the above setting to take effect.

The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetBackColor</td><td>
Resets the BackColor property to it's default value.</td></tr>
<tr>
<td>
ResetReadOnlyBackColor</td><td>
Resets the ReadOnlyBackColor property to it's default value.</td></tr>
</table>


## Foreground Settings

The foreground settings of the IntegerTextBox control are discussed below.

### Foreground Color

The foreground color of the control can be set using the properties given below.



<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
PositiveColor</td><td>
Gets / sets the fore color when the current value is positive.</td></tr>
<tr>
<td>
NegativeColor</td><td>
Gets / sets the fore color when the current value is negative. The default value is set to 'Red'.</td></tr>
<tr>
<td>
ZeroColor</td><td>
Gets / sets the fore color, when the current value is zero.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.integerTextBox1.PositiveColor = System.Drawing.Color.DarkOrange;

this.integerTextBox1.NegativeColor = System.Drawing.Color.SteelBlue;

this.integerTextBox1.ZeroColor = System.Drawing.Color.OliveDrab;

{% endhighlight %}

{% highlight VB %}

Me.integerTextBox1.PositiveColor = System.Drawing.Color.DarkOrange

Me.integerTextBox1.NegativeColor = System.Drawing.Color.SteelBlue

Me.integerTextBox1.ZeroColor = System.Drawing.Color.OliveDrab

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img456.png) 


The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetForeColor</td><td>
Resets the fore color of the control to it's default value.</td></tr>
<tr>
<td>
ResetPositiveColor</td><td>
Resets the PositiveColor property to it's default value.</td></tr>
<tr>
<td>
ResetNegativeColor</td><td>
Resets the NegativeColor property to it's default value.</td></tr>
<tr>
<td>
ResetZeroColor</td><td>
Resets the ZeroColor property to it's default value.</td></tr>
<tr>
<td>
SetControlColor</td><td>
Sets the fore color of the control depending on whether the current value is negative.</td></tr>
<tr>
<td>
ShouldSerializePositiveColor</td><td>
Serializes the PositiveColor property.</td></tr>
<tr>
<td>
ShouldSerializeNegativeColor</td><td>
Serializes the NegativeColor property.</td></tr>
<tr>
<td>
ShouldSerializeZeroColor</td><td>
Serializes the ZeroColor property.</td></tr>
</table>

## Visual Style

Please refer the [TextBoxExt Visual style](/windowsforms/TextBoxExt/Appearance-Settings) to set themes for IntegerTextBox.

A sample which demonstrates the Foreground Settings of IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS
