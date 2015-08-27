---
layout: post
title: Right-to-Left
description: right to left
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Right to Left

If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as RightToLeft, the marquee will traverse the screen from right to left.

_Table_ _646_: _Property Table_

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

  this.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom;



//Set animation direction.

  this.splashPanel1.MarqueeDirection = MarqueeDirection.RightToLeft;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.marquee


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom


'Set animation direction.
Me.splashPanel1.MarqueeDirection = MarqueeDirection.RightToLeft


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

