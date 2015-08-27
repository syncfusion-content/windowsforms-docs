---
layout: post
title: Image-and-Animation-Settings
description: image and animation settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Image and Animation Settings

This section demonstrates how to set a splash image and how to display it with animation.

### Splash Image

The splash image can be displayed by setting the property given below.

_Table_ _622_: _Property Table_

<table>
<tr>
<td>
SplashControl Property</td><td>
Description</td></tr>
<tr>
<td>
SplashImage</td><td>
The image for displaying as the background of the default splash screen.</td></tr>
</table>

{% highlight c# %}

this.splashControl1.SplashImage = ((System.Drawing.Image)(resources.GetObject("splashControl1.SplashImage")));

{% endhighlight %}

{% highlight vbnet %}

Me.splashControl1.SplashImage = CType((resources.GetObject("splashControl1.SplashImage")), System.Drawing.Image)

{% endhighlight %}

![](Overview_images/Overview_img39.jpeg) 


### Animation

When animation is set for the splash image, by default, the splash image will be drawn from left to right.

_Table_ _623_: _Property Table_

<table>
<tr>
<td>
SplashControl Property</td><td>
Description</td></tr>
<tr>
<td>
ShowAnimation</td><td>
Indicates whether the splash image should occur on the screen in an animated manner.</td></tr>
<tr>
<td>
ShowAsTopMost</td><td>
Specifies if the splash screen is to be displayed as the topmost window.</td></tr>
<tr>
<td>
SplashImage</td><td>
The image for displaying as the background of the default splash screen.</td></tr>
<tr>
<td>
TransparentColor</td><td>
Gets / sets the color to be used to make the splash image transparent.</td></tr>
</table>

{% highlight c# %}

this.splashControl1.ShowAnimation = true;

this.splashControl1.ShowAsTopMost = false;

this.splashControl1.SplashImage = ((System.Drawing.Image)(resources.GetObject("splashControl1.SplashImage")));

this.splashControl1.TransparentColor = System.Drawing.Color.White;

{% endhighlight %}

{% highlight vbnet %}

Me.splashControl1.ShowAnimation = True

Me.splashControl1.ShowAsTopMost = False

Me.splashControl1.SplashImage = CType((resources.GetObject("splashControl1.SplashImage")), System.Drawing.Image)

Me.splashControl1.TransparentColor = System.Drawing.Color.White

{% endhighlight %}

