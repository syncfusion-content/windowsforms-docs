---
layout: post
title: Right-to-Left
description: right to left
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Right to Left

If the splash panel DesktopAlignment is set to BottomRight or TopRight, support can also be enabled for a right-to-left slide transition using the sample code that follows.

_Table_ _644_: _Property Table_

<table>
<tr>
<td>
Property</td><td>
Description</td></tr>
<tr>
<td>
AnimationDirection</td><td>
Gets or sets the slide animation direction.</td></tr>
</table>


{% highlight c# %}

//Set panel slide style.

this.splashPanel1.SlideStyle == SlideStyle.Slide;



//Set panel location. 

  this.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom;



//Set animation direction.

this.splashPanel1.AnimationDirection = AnimationDirection.RightToLeft;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.Slide


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.RightBottom


'Set animation direction.
Me.splashPanel1.AnimationDirection = AnimationDirection.RightToLeft


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

