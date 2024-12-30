---
layout: post
title: How to set color pallette for chart | Windows Forms | Syncfusion®
description: To set the color palette in a WinForms chart, use the Palette property to choose a predefined palette or define a custom color set for the chart.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to set the Color Palette for a Chart

Custom color Palette can be specified in PivotChart by using the CustomPalette color collection.

{% highlight C# %}



 
// Specifies a custom color.
this.pivotChart1.CustomPalette = new System.Drawing.Color[] {System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(203)))), ((int)(((byte)(216))))),System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(209)))), ((int)(((byte)(248))))),System.Drawing.Color.FromArgb(((int)(((byte)(250)))), ((int)(((byte)(155)))), ((int)(((byte)(155)))))};
{% endhighlight %}


{% highlight vbnet %}

 
'Specifies a custom color.
Me.pivotChart1.CustomPalette = New System.Drawing.Color() {System.Drawing.Color.FromArgb(CInt(CByte(255)), CInt(CByte(203)), CInt(CByte(216))), System.Drawing.Color.FromArgb(CInt(CByte(222)), CInt(CByte(209)), CInt(CByte(248))), System.Drawing.Color.FromArgb(CInt(CByte(250)), CInt(CByte(155)), CInt(CByte(155)))}
{% endhighlight %}