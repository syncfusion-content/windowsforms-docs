---
layout: post
title: Slide Direction | WindowsForms | Syncfusion
description: Slide Direction
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# Slide Direction

## Transition Settings

The splash panel supports the following transitions over the screen: 

* Slide transition
* Marquee transition

## Slide Transitions


The splash panel supports the following slide transitions:

* Default 
* Right to left
* Left to right

### Default


If the animation direction is set as Default, the transition of the panel occurs from the bottom to the top for the LeftBottom or RightBottom DesktopAlignment.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
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


### Left to Right

If the splash panel DesktopAlignment is set to BottomLeft or TopLeft, support can also be enabled for a left-to-right slide transition using the sample code that follows.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
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

### Right to Left

If the splash panel DesktopAlignment is set to BottomRight or TopRight, support can also be enabled for a right-to-left slide transition using the sample code that follows.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
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

## Marquee Transition

The splash panel supports the following marquee transitions:

* Left to right
* Right to left
* Top to bottom
* Bottom to top


### Left to Right


If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as LeftToRight, the marquee will traverse the screen from left to right.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
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

### Right to Left

If the splash panel SlideStyle is set as marquee and the MarqueeDirection is set as RightToLeft, the marquee will traverse the screen from right to left.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
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

### Bottom to Top

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

### Top to Bottom

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

