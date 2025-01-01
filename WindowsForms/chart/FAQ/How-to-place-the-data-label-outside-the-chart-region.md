---
layout: post
title: Place-data-label-to-outside-chart | Windows Forms | Syncfusion
description: How to place the callout data label text outside the chart region in Syncfusion® Windows Forms Chart control
platform: windowsforms
control: chart
documentation: ug
---

# How to place the data label outside the chart region

## Callout Labels

Callout data label is used to customize the text dynamically. It allows you to drag and drop the data label in any place of chart area and edit text by double clicking on the callout data label.

The following code sample demonstrates how to customize the text displayed in callout.

{% tabs %}  

{% highlight c# %}

// Specified 3D View

this.chartControl1.Series3D = true;

// Enable Callout Feature

this.chartControl1.Series[0].Style.Callout.Enable = true;

// Change position, DisplayText format and color

this.chartControl1.Series[0].Style.Callout.DisplayTextAndFormat = "{1}: {2}";

this.chartControl1.Series[0].Style.Callout.Position = LabelPosition.Top;

this.chartControl1.Series[0].Style.Callout.Color = Color.LightBlue;

// Customize Text Font

this.chartControl1.Series[0].Style.Callout.Font.FontStyle = FontStyle.Underline;

this.chartControl1.Series[0].Style.Callout.TextColor = Color.Black;

this.chartControl1.Series[0].Style.Callout.Font.Size = 11;

{% endhighlight %}

{% highlight vb %}

' Specified 3D View
 
            Me.chartControl1.Series3D = True

' Enable Callout Feature
 
           Me.chartControl1.Series(0).Style.Call.Enable = True
 
 ' Change position, DisplayText format and color
 
            Me.chartControl1.Series(0).Style.Call.DisplayTextAndFormat = "{1}: {2}"
 
            Me.chartControl1.Series(0).Style.Call.Position = LabelPosition.Top
 
            Me.chartControl1.Series(0).Style.Call.Color = Color.LightBlue

 ' Customize Text Font
 
            Me.chartControl1.Series(0).Style.Call.Font.FontStyle = FontStyle.Underline
 
            Me.chartControl1.Series(0).Style.Call.TextColor = Color.Black
 
            Me.chartControl1.Series(0).Style.Call.Font.Size = 11

{% endhighlight %}
{% endtabs %}

![Data label](How-to-place-the-data-label-outside-the-chart-region_images/How-to-place-the-data-label-outside-the-chart-region.png)