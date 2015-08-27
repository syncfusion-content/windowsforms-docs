---
layout: post
title: Animation-Settings
description: animation settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Animation Settings

This section demonstrates how to display a splash image with animation.

When animation is set for the splash image, by default, the splash image will be drawn from left to right. 

_Table_ _633_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
AnimationSpeed</td><td>
Indicates the speed at which the animation unfolds on the screen and the SplashPanel becomes visible.</td></tr>
<tr>
<td>
ShowAnimation</td><td>
Specifies if the window display should be animated.</td></tr>
<tr>
<td>
ShowAsTopMost</td><td>
Specifies if the SplashPanel is to be displayed as a topmost window.</td></tr>
</table>


This can be achieved through code also. Create a SplashPanel and set the below properties.

{% highlight c# %}



this.splashPanel1.AnimationSpeed = 30;

this.splashPanel1.ShowAnimation = true;

this.splashPanel1.ShowAsTopMost = true;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.AnimationSpeed = 30

Me.splashPanel1.ShowAnimation = True

Me.splashPanel1.ShowAsTopMost = True

{% endhighlight %}

### Sliding Style

The splash image, can not only be displayed from left to right, but can be displayed in different styles using the property given below.

_Table_ _634_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
SlideStyle</td><td>
Gets / sets the slide style for the SplashPanel. The options included are as follows.Horizontal,Vertical,LeftToRight,RightToLeft,TopToBottom,BottomToTop andFadeIn.The ShowAnimation property must be set to 'True'.</td></tr>
</table>


{% highlight c# %}



this.splashPanel1.SlideStyle = Syncfusion.Windows.Forms.Tools.SlideStyle.FadeIn;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.SlideStyle = Syncfusion.Windows.Forms.Tools.SlideStyle.FadeIn

{% endhighlight %}

