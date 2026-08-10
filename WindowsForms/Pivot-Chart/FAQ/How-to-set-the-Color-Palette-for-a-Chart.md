---
layout: post
title: How to Set a Color Palette for Windows Forms Pivot Chart | Syncfusion®
description: Learn how to set a color palette for a Windows Forms Pivot Chart using the CustomPalette collection.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to Set a Color Palette for Windows Forms Pivot Chart

A custom color palette can be specified in the PivotChart by using the [CustomPalette](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_CustomPalette) color collection.

{% tabs %}

{% highlight c# %}

//Specifies a custom color.
this.pivotChart1.CustomPalette = new System.Drawing.Color[] { System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(203)))), ((int)(((byte)(216))))), System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(209)))), ((int)(((byte)(248))))), System.Drawing.Color.FromArgb(((int)(((byte)(250)))), ((int)(((byte)(155)))), ((int)(((byte)(155))))) };

{% endhighlight %}

{% highlight vb %}

'Specifies a custom color.
Me.pivotChart1.CustomPalette = New System.Drawing.Color() {System.Drawing.Color.FromArgb(CInt(CByte(255)), CInt(CByte(203)), CInt(CByte(216))), System.Drawing.Color.FromArgb(CInt(CByte(222)), CInt(CByte(209)), CInt(CByte(248))), System.Drawing.Color.FromArgb(CInt(CByte(250)), CInt(CByte(155)), CInt(CByte(155)))}

{% endhighlight %}

{% endtabs %}