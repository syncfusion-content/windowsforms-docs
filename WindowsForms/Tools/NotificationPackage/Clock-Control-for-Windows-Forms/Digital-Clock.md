---
layout: post
title: Digital-Clock
description: digital clock
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Digital Clock

The DigitalClock is implemented as an extension to the existing Clock control in the UI controls, but offers a richer UI experience than the existing clock and is capable of displaying the time as digital text.

You can use the DigitalClock in your application by simply switching the ClockType of the existing ClockControl as described in the following sample code:

{% highlight c# %}

this.clock1.ClockType = Syncfusion.Windows.Forms.Tools.ClockTypes.Digital;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ClockType = Syncfusion.Windows.Forms.Tools.ClockTypes.Digital

{% endhighlight %}

