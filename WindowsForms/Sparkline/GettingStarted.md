---
layout: post
title: Getting Started with Windows Forms Sparkline control | Syncfusion
description: Learn here about getting started with Syncfusion® Windows Forms Sparkline control, its elements and more details.
platform: windowsforms
control: Sparkline
documentation: ug
---

# Getting Started with Windows Forms Sparkline

This section provides the details that you need to know about getting started with our Sparkline control.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sparkline) section to get the list of assemblies or the NuGet package that needs to be added as reference to use the control in any application.

Find more details on how to install the NuGet packages in the Windows Forms application in the following link:

[How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)


## Adding sparkline to the form

To add the sparkline to your form, follow these steps:

1. Open your form in the designer. Add the Syncfusion® controls to your Visual Studio toolbox if you have not done it already (the installation would have automatically done this unless you selected not to complete the toolbox integration during installation).

2. Drag the sparkline control from the toolbox and drop it into the form. The default appearance of the sparkline will be rendered.

![WinForms Sparkline drag and drop from toolbox](gettingstarted_images/windowsforms-sparkline-drag-toolbox.jpg)

## Customizing sparkline appearance

The appearance of the sparkline can be customized by using the [LineStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLine.html#Syncfusion_Windows_Forms_Chart_SparkLine_LineStyle) property.

{% tabs %}

{% highlight c# %}

this.sparkLine1.LineStyle.LineColor = System.Drawing.Color.Maroon;

{% endhighlight %}

{% highlight vb %}

Me.sparkLine1.LineStyle.LineColor = System.Drawing.Color.Maroon

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline appearance customization](gettingstarted_images/windowsforms-sparkline-customization.jpg)

## Adding marker to sparkline

The markers are visual indicators; they are used to represent the location of data points in the sparkline graph by using the [Markers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLine.html#Syncfusion_Windows_Forms_Chart_SparkLine_Markers) property. This customization is applicable for all sparklines. To enable the markers, set the [ShowMarker](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowMarker) property to `true`.

{% tabs %}

{% highlight c# %}

this.sparkLine1.Markers.ShowMarker = true;

{% endhighlight %}

{% highlight vb %}

Me.sparkLine1.Markers.ShowMarker = true

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline marker](gettingstarted_images/windowsforms-sparkline-adding-marker.jpg)

## Highlighting high/low values

The marker feature supports [HighPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowHighPoint), [LowPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowLowPoint), [StartPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowStartPoint), [EndPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowEndPoint), and [NegativePoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowNegativePoint) of Sparkline. The colors for these points can be customized by using the [HighPointColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_HighPointColor), [LowPointColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_LowPointColor), [StartPointColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_StartPointColor), [EndPointColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_EndPointColor), and [NegativePointColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_NegativePointColor) properties.

{% tabs %}

{% highlight c# %}

this.sparkLine1.Markers.ShowHighPoint = true;

this.sparkLine1.Markers.ShowLowPoint = true;

this.sparkLine1.Markers.ShowStartPoint = true;

this.sparkLine1.Markers.ShowEndPoint = true;

this.sparkLine1.Markers.ShowNegativePoint = true;

this.sparkLine1.Markers.HighPointColor = new BrushInfo(Color.Blue);

this.sparkLine1.Markers.LowPointColor = new BrushInfo(Color.Green);

this.sparkLine1.Markers.StartPointColor = new BrushInfo(Color.Maroon);

this.sparkLine1.Markers.EndPointColor = new BrushInfo(Color.Purple);

this.sparkLine1.Markers.NegativePointColor = new BrushInfo(Color.Red);

{% endhighlight %}

{% highlight vb %}

Me.sparkLine1.Markers.ShowHighPoint = true

Me.sparkLine1.Markers.ShowLowPoint = true

Me.sparkLine1.Markers.ShowStartPoint = true

Me.sparkLine1.Markers.ShowEndPoint = true

Me.sparkLine1.Markers.ShowNegativePoint = true

Me.sparkLine1.Markers.HighPointColor = New BrushInfo(Color.Blue)

Me.sparkLine1.Markers.LowPointColor = New BrushInfo(Color.Green)

Me.sparkLine1.Markers.StartPointColor = New BrushInfo(Color.Maroon)

Me.sparkLine1.Markers.EndPointColor = New BrushInfo(Color.Purple)

Me.sparkLine1.Markers.NegativePointColor = New BrushInfo(Color.Red)

{% endhighlight %}

{% endtabs %}

![WinForms Sparkline marker customization](gettingstarted_images/windowsforms-sparkline-marker-customization.jpg)

You can find the complete getting started sample from this [link](https://github.com/SyncfusionExamples/GettingStarted-WinForms-Sparkline).


