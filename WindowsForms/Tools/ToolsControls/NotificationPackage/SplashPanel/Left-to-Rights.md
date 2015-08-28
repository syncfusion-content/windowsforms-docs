---
layout: post
title: Left-to-Right
description: left to right
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Left to Right

If the splash panel DesktopAlignment is set to BottomLeft or TopLeft, support can also be enabled for a left-to-right slide transition using the sample code that follows.

_Table_ _643_: _Property Table_

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

this.splashPanel1.DesktopAlignment = SplashAlignment.LeftBottom;



//Set animation direction.

this.splashPanel1.AnimationDirection = AnimationDirection.LeftToRight;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.Slide


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.LeftBottom


'Set animation direction.
Me.splashPanel1.AnimationDirection = AnimationDirection.LeftToRight

'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

