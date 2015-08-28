---
layout: post
title: Default
description: default
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Default


If the animation direction is set as Default, the transition of the panel occurs from the bottom to the top for the LeftBottom or RightBottom DesktopAlignment.

_Table_ _642_: _Property Table_

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

this.splashPanel1.AnimationDirection = AnimationDirection.Default;



//Show panel.

this.splashPanel1.ShowSplash();

{% endhighlight %}

{% highlight vbnet %}

'Set panel slide style.
Me.splashPanel1.SlideStyle = SlideStyle.Slide


'Set panel location. 
Me.splashPanel1.DesktopAlignment = SplashAlignment.LeftBottom


'Set animation direction.
Me.splashPanel1.AnimationDirection = AnimationDirection.Default


'Show panel.
Me.splashPanel1.ShowSplash()

{% endhighlight %}

