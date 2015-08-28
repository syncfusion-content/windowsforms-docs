---
layout: post
title: Left-to-Right
description: left to right
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Left to Right


If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as LeftToRight, the marquee will traverse the screen from left to right.

_Table_ _645_: _Property Table_

<table>
<tr>
<td>
Property</td><td>
Description</td></tr>
<tr>
<td>
MarqueeDirection</td><td>
Gets or sets the marquee direction.</td></tr>
</table>


{% highlight c# %}

//Set panel slide style.

this.splashPanel1.SlideStyle == SlideStyle.marquee;



//Set panel location. 

  this.splashPanel1.DesktopAlignment = SplashAlignment.LeftBottom;



//Set animation direction.

  this.splashPanel1.MarqueeDirection = MarqueeDirection.LeftToRight;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.marquee


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.LeftBottom


'Set animation direction.
Me.splashPanel1.MarqueeDirection = MarqueeDirection.LeftToRight


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

