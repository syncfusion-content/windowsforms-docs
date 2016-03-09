---
layout: post
title: How to access the default panel of a SplashControl | WindowsForms | Syncfusion
description: How to access the default panel of a SplashControl
platform: WindowsForms
control: Notification Package 
documentation: ug
---

#  How to access the default panel of a SplashControl
The default panel of a SplashControl can be accessed through the SplashControlPanel property.
The example given below illustrates how the background color of a SplashControl's internal panel can be changed.

{% highlight C# %}


this.splashControl1.SplashControlPanel.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.RosyBrown, System.Drawing.SystemColors.ControlLight);

{% endhighlight %}

{% highlight vbnet %}


Me.splashControl1.SplashControlPanel.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.RosyBrown, System.Drawing.SystemColors.ControlLight)
{% endhighlight %}