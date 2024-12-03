---
layout: post
title: How to set color pallette for chart | Windows Forms | Syncfusion
description: How to set the color palette in Syncfusion WinForms Pivot Chart using the Palette property to customize chart series colors.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to set the Color Palette for a Chart

Setting a custom color palette for a PivotChart allows you to tailor its visual appearance to better match your application's design or to emphasize specific data points. You can achieve this by specifying colors in the `CustomPalette` property.

Here’s how you can set a custom color palette using C#:
{% highlight C# %}



 
// Specifies a custom color.
this.pivotChart1.CustomPalette = new System.Drawing.Color[] {System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(203)))), ((int)(((byte)(216))))),System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(209)))), ((int)(((byte)(248))))),System.Drawing.Color.FromArgb(((int)(((byte)(250)))), ((int)(((byte)(155)))), ((int)(((byte)(155)))))};
{% endhighlight %}

Here’s how you can set a custom color palette using VB.NET:
{% highlight vbnet %}

 
'Specifies a custom color.
Me.pivotChart1.CustomPalette = New System.Drawing.Color() {System.Drawing.Color.FromArgb(CInt(CByte(255)), CInt(CByte(203)), CInt(CByte(216))), System.Drawing.Color.FromArgb(CInt(CByte(222)), CInt(CByte(209)), CInt(CByte(248))), System.Drawing.Color.FromArgb(CInt(CByte(250)), CInt(CByte(155)), CInt(CByte(155)))}
{% endhighlight %}