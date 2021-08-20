---
layout: post
title: How-to-hide-the-Chart-ZoomButton | Windows Forms | Syncfusion
description: Learn here how to hide the chart zoombutton of Syncfusion WindowsForms Chart (Sfchart) control and more.
platform: windowsforms
control: chart
documentation: ug
---

# How to hide the Chart ZoomButton

Syncfusion Chart provides a way to access the ZoomOutButton through the ScrollBar instance. In order to hide this Zoom button, if Visible property is set to false, ZoomButton will be disabled, but there will be an empty space. So instead of setting Visible property, we can set the ZoomButton size to be 0.

{% tabs %}

{% highlight c# %}

this.chartControl1.GetVScrollBar(this.chartControl1.PrimaryYAxis).ZoomButton.Size = new Size(0,0);

this.chartControl1.GetHScrollBar(this.chartControl1.PrimaryXAxis).ZoomButton.Size = new Size(0, 0);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.GetVScrollBar(Me.chartControl1.PrimaryYAxis).ZoomButton.Size = New Size(0,0)

Me.chartControl1.GetHScrollBar(Me.chartControl1.PrimaryXAxis).ZoomButton.Size = New Size(0, 0)

{% endhighlight %}

{% endtabs %}

![Chart Zoom](How-to-hide-the-Chart-ZoomButton_images/How-to-hide-the-Chart-ZoomButton_img1.jpeg)

This setting will be useful, if you need to display the scrollbar, without ZoomingCancel operation, or if you need to change the back color and other properties, as ZoomButton is derived from the Button control.

{% seealso %}

[Zooming and Scrolling](/windowsforms/chart/runtime-features#zooming-and-scrolling)

{% endseealso %}
