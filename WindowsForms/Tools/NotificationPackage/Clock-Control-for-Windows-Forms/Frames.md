---
layout: post
title: Frames
description: frames
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Frames

To enable the background frames, the DigitalClock should be enabled with the property ShowClockFrame set to true. 

### Rectangular frame

{% highlight c# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.RectangularFrame;

{% endhighlight %}

{% highlight vbnet %}

    Me.clock1.ShowClockFrame = true
    Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.RectangularFrame

{% endhighlight %}

![](Overview_images/Overview_img100.png) 

### Circular frame

{% highlight c# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = true
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame

{% endhighlight %}

![](Overview_images/Overview_img101.png) 



### Square frame

{% highlight c# %}

    this.clock1.ShowClockFrame = true;

    this.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.SquareFrame;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = true
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.SquareFrame

{% endhighlight %}

![](Overview_images/Overview_img102.png) 



