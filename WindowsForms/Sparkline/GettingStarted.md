---
layout: post
title: Getting Started with Windows Forms Sparkline control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Sparkline control, its elements and more details.
platform: windowsforms
control: Sparkline
documentation: ug
---

# Getting Started with Windows Forms Sparkline

This section provides the details that you will need to know about getting started with our Sparkline control. 

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sparkline) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)


## Adding sparkline to form

To add sparkline to your form, follow the given steps:

1.Open your form in the designer. Add the Syncfusion controls to your VS.NET toolbox if you have not done it already (the install would have automatically done this unless you selected not to complete toolbox integration during installation).

2.Drag the sparkline control from toolbox and drop into the form. The default appearance of sparkline will be rendered.

![Drag toolbox in WindowsForms Sparkline](gettingstarted_images/windowsforms-sparkline-drag-toolbox.jpg)

## Customizing sparkline appearance

The appearance of the sparkline can be customized by using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.SparkLine.html#Syncfusion_Windows_Forms_Chart_SparkLine_LineStyle) property.

{% tabs %}

{% highlight c# %}

this.sparkLine1.LineStyle.LineColor = System.Drawing.Color.Maroon;

{% endhighlight %}

{% highlight vb %}

Me.sparkLine1.LineStyle.LineColor = System.Drawing.Color.Maroon

{% endhighlight %}

{% endtabs %}

![Customize Sparkline appearance in WindowsForms application](gettingstarted_images/windowsforms-sparkline-customization.jpg)

## Adding marker to sparkline

The markers are visual indicators; they are used to represent the location of data points in the sparkline graph. This customization is applicable for all sparklines. 

{% tabs %}

{% highlight c# %}

this.sparkLine1.Markers.ShowMarker = true;

{% endhighlight %}

{% highlight vb %}

Me.sparkLine1.Markers.ShowMarker = true

{% endhighlight %}

{% endtabs %}

![Adding marker in WindowsForms Sparkline](gettingstarted_images/windowsforms-sparkline-adding-marker.jpg)

## Highlighting high/low values

The marker feature supports [HighPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowHighPoint), [LowPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowLowPoint), [StartPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowStartPoint), [EndPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowEndPoint) and [NegativePoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Markers.html#Syncfusion_Windows_Forms_Chart_Markers_ShowNegativePoint) of Sparkline.

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

![Marker customization in WindowsForms Sparkline](gettingstarted_images/windowsforms-sparkline-marker-customization.jpg)

You can find the complete getting started sample from this [link](https://www.syncfusion.com/downloads/support/directtrac/general/ze/SparklineGettingStarted-1907776967).


