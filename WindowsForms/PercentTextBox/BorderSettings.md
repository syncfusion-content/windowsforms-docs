---
layout: post
title: Border Settings
description: Border Settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Border Settings

Color and Styles can be applied to the Border of the PercentTextBox control as discussed below.

Table 301: Property Table

<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows:{{ 'RaisedOuter,' | markdownify }}{{ 'SunkenOuter,' | markdownify }}{{ 'RaisedInner,' | markdownify }}{{ 'SunkenInner,' | markdownify }}{{ 'Raised,' | markdownify }}{{ 'Etched,' | markdownify }}{{ 'Bump,' | markdownify }}{{ 'Sunken,' | markdownify }}{{ 'Adjust and' | markdownify }}{{ 'Flat.' | markdownify }}The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSides</td><td>
Indicates the border sides of the panel. The options included are as follows:{{ 'Left,' | markdownify }}{{ 'Top,' | markdownify }}{{ 'Right,' | markdownify }}{{ 'Bottom,' | markdownify }}{{ 'Middle and' | markdownify }}{{ 'All.'| markdownify }}</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the edit control should have a border. The options included are given below.{{ 'FixedSingle,' | markdownify }}{{ 'Fixed3D and' | markdownify }}{{ 'None.' | markdownify }}</td></tr>
</table>



{% highlight C# %}





this.percentTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched;

this.percentTextBox1.BorderColor = System.Drawing.Color.Orange;

this.percentTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All;

this.percentTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
{% endhighlight %}





{% highlight vbnet %}


Me.percentTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched

Me.percentTextBox1.BorderColor = System.Drawing.Color.Orange

Me.percentTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All

Me.percentTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
{% endhighlight %}


 ![](PercentTextBox-Images/Overview_img484.png) 



A Sample which demonstrates the Border Settings of PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo