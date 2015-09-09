---
layout: post
title: Appearance Settings
description: Appearance Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Appearance Settings

## Background Settings

The Background settings of the PercentTextBox control are discussed below.

### Background Color

The background color of the control can be set using the properties given below.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
<tr>
<td>
ReadOnlyBackColor</td><td>
Specifies the backcolor to be used when the control is in the ReadOnly mode.</td></tr>
</table>



{% highlight C# %}




this.percentTextBox1.BackColor = System.Drawing.Color.LightCyan;



this.percentTextBox1.ReadOnly = true;

this.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink;
{% endhighlight %}



{% highlight vbnet %}



Me.percentTextBox1.BackColor = System.Drawing.Color.LightCyan



Me.percentTextBox1.[ReadOnly] = True

Me.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink

{% endhighlight %}

![](PercentTextBox-Images/Overview_img480.png)





 ![](PercentTextBox-Images/Overview_img481.png)




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

The Foreground settings of the PercentTextBox control are discussed below.

### Foreground Color

The foreground color of the control can be set using the properties given below.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
PositiveColor</td><td>
Gets / sets the forecolor when the current value is positive.</td></tr>
<tr>
<td>
NegativeColor</td><td>
Gets / sets the forecolor when the current value is negative. The default value is set to 'Red'.</td></tr>
<tr>
<td>
ZeroColor</td><td>
Gets / sets the forecolor when the current value is zero.</td></tr>
</table>



{% highlight C# %}





this.percentTextBox1.PositiveColor = System.Drawing.Color.ForestGreen;

this.percentTextBox1.NegativeColor = System.Drawing.Color.Orange;

this.percentTextBox1.ZeroColor = System.Drawing.Color.Orchid;

{% endhighlight %}



{% highlight vbnet %}


Me.percentTextBox1.PositiveColor = System.Drawing.Color.ForestGreen

Me.percentTextBox1.NegativeColor = System.Drawing.Color.Orange

Me.percentTextBox1.ZeroColor = System.Drawing.Color.Orchid
{% endhighlight %}


 ![](PercentTextBox-Images/Overview_img483.png) 



The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetForeColor</td><td>
Resets the forecolor of the control to it's default value.</td></tr>
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
Sets the forecolor of the control depending on whether the current value is negative.</td></tr>
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


A sample which demonstrates the Foreground Settings of PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
