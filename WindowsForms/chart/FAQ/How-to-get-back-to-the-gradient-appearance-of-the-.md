---
layout: post
title: How-to-get-back-to-the-gradient-appearance-of-the- | Windows Forms | Syncfusion®
description: how to get back to the gradient appearance of the chart series
platform: windowsforms
control: chart
documentation: ug
---

# How to get back to the gradient appearance of the Chart Series

The default appearance of the chart series is as shown in the image below.

![Chart Gradient](How-to-get-back-to-the-gradient-appearance-of-the-_images/How-to-get-back-to-the-gradient-appearance-of-the-_img1.jpeg)

To get the gradient appearance, we need to set the ChartControl.Model.ColorModel.AllowGradient to true. By default this is set to false.

{% tabs %}

{% highlight c# %}

//Sets the Gradient look and feel.

this.chartControl1.Model.ColorModel.AllowGradient = true;

{% endhighlight %}

{% highlight vb %}

'Sets the Gradient look and feel.

Me.chartControl1.Model.ColorModel.AllowGradient = True

{% endhighlight %}

{% endtabs %}

![Chart Gradient](How-to-get-back-to-the-gradient-appearance-of-the-_images/How-to-get-back-to-the-gradient-appearance-of-the-_img2.jpeg)

N> We can also use ChartControl.AllowGradientPalette property to enable or disable gradient effect for chart series. By default it set to false.

