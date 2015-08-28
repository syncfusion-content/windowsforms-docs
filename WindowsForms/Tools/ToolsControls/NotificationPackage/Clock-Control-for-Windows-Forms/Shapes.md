---
layout: post
title: Shapes
description: shapes
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Shapes

To enable background shapes in the Clock control, the “ShowClockFrame” property should be disabled so that the control can support rendering the background shapes. 

### Rectangular shape

{% highlight c# %}

    this.clock1.ShowClockFrame = false;

    this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Rectangle;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = False
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockFrames.CircularFrame

{% endhighlight %}



![](Overview_images/Overview_img103.png) 



### RoundedRectangular shape

{% highlight c# %}

    this.clock1.ShowClockFrame = false;

    this.clock2.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedRectangle;

 {% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = False
Me.clock1.ClockFrame = Syncfusion.Windows.Forms.Tools.ClockShapes.CircularFrame

{% endhighlight %}

![](Overview_images/Overview_img104.png) 



### Circular shape

{% highlight c# %}

  this.clock1.ShowClockFrame = false;

  this.clock2.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Circle;

{% endhighlight %}
 
{% highlight vbnet %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Circle

{% endhighlight %}

![](Overview_images/Overview_img105.png)



### Square shape

{% highlight c# %}

  this.clock1.ShowClockFrame = false;

  this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Square;

 {% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.Square

 {% endhighlight %}

![](Overview_images/Overview_img106.png) 



### RoundedSquare shape

{% highlight c# %}

  this.clock1.ShowClockFrame = false;

  this.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedSquare;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowClockFrame = false
Me.clock1.ClockShape = Syncfusion.Windows.Forms.Tools.ClockShapes.RoundedSquare

{% endhighlight %}

![](Overview_images/Overview_img107.png) 

