---
layout: post
title: Top-to-Bottom
description: top to bottom
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Top to Bottom

If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as TopToBottom, the marquee will traverse the screen from the top to the bottom.

{% highlight c# %}

//Set panel slide style.

this.splashPanel1.SlideStyle == SlideStyle.marquee;



//Set panel location. 

  this.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom;



//Set animation direction.

  this.splashPanel1.MarqueeDirection = MarqueeDirection.TopToBottom;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.marquee


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom


'Set animation direction.
Me.splashPanel1.MarqueeDirection = MarqueeDirection.TopToBottom


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

