---
layout: post
title: Default Panel Access in Windows Forms SplashControl | Syncfusion®
description: Default Panel Access in Windows Forms SplashControl to customize content, appearance, and behavior for specific application needs.
platform: WindowsForms
control: Notification Package 
documentation: ug
---

#  Default Panel Access in Windows Forms SplashControl 

The default panel of a SplashControl can be accessed through the SplashControlPanel property.
The example given below illustrates how the background color of a SplashControl's internal panel can be changed.

{% tabs %}
{% highlight C# %}

this.splashControl1.SplashControlPanel.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.RosyBrown, System.Drawing.SystemColors.ControlLight);

{% endhighlight %}

{% highlight vb %}

Me.splashControl1.SplashControlPanel.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.RosyBrown, System.Drawing.SystemColors.ControlLight)

{% endhighlight %}
{% endtabs %}
