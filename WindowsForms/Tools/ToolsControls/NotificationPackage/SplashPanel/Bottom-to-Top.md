---
layout: post
title: Bottom-to-Top
description: bottom to top
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Bottom to Top

If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as BottomToTop, the marquee will traverse the screen from the bottom to the top.

{% highlight c# %}

//Set panel slide style.

this.splashPanel1.SlideStyle == SlideStyle.marquee;



//Set panel location. 

  this.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom;



//Set animation direction.

  this.splashPanel1.MarqueeDirection = MarqueDirection.BottomToTop;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.marquee


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom


'Set animation direction.
Me.splashPanel1.MarqueeDirection = MarqueeDirection.BottomToTop


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

