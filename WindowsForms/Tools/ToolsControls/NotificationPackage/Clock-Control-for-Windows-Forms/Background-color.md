---
layout: post
title: Background-color
description: background color
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Background color

The background color for the DigitalClock can be changed using the BackgroundColor property. This color will be reflected in the background of the control.

{% highlight c# %}         



    this.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;

    this.clock1.ForeColor = System.Drawing.Color.Yellow;

{% endhighlight %}



{% highlight vbnet %}

   Me.clock1.BackgroundColor = System.Drawing.SystemColors.ActiveCaption

   Me.clock1.ForeColor = System.Drawing.Color.Yellow

{% endhighlight %}

![](Overview_images/Overview_img109.png) 



