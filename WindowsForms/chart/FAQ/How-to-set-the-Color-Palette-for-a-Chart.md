---
layout: post
title: How-to-set-the-Color-Palette-for-a-Chart | Windows Forms | Syncfusion
description: how to set the color palette for a chart
platform: windowsforms
control: chart
documentation: ug
---

# How to set the Color Palette for a Chart

ChartColorPalette.Color property can be used to specify the color palettes for the Chart.ColorPalette class. Apart from specifying predefined palettes, you can specify your own palette colors using the Custom style in the ChartColorPalette.

{% tabs %}

{% highlight c# %}

// Specify a custom color.

this.chartControl1.CustomPalette = new System.Drawing.Color[] {System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(203)))), ((int)(((byte)(216))))),System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(209)))), ((int)(((byte)(248))))),System.Drawing.Color.FromArgb(((int)(((byte)(250)))), ((int)(((byte)(155)))), ((int)(((byte)(155)))))};

this.chartControl1.Palette = ChartColorPalette.Custom;

{% endhighlight %}

{% highlight vb %}

' Specify a custom color.

Me.chartControl1.CustomPalette = New System.Drawing.Color() {System.Drawing.Color.FromArgb((CInt(Fix((CByte(255))))), (CInt(Fix((CByte(203))))), (CInt(Fix((CByte(216)))))),System.Drawing.Color.FromArgb((CInt(Fix((CByte(222))))), (CInt(Fix((CByte(209))))), (CInt(Fix((CByte(248)))))), System.Drawing.Color.FromArgb((CInt(Fix((CByte(250))))), (CInt(Fix((CByte(155))))), (CInt(Fix((CByte(155))))))}

Me.chartControl1.Palette = ChartColorPalette.Custom

{% endhighlight %}

{% endtabs %}

![Chart Color](How-to-set-the-Color-Palette-for-a-Chart_images/How-to-set-the-Color-Palette-for-a-Chart_img1.jpeg)

