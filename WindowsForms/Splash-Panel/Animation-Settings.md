---
layout: post
title: Animation Settings in Windows Forms Splash Panel control | Syncfusion
description: Learn about Animation Settings support in Syncfusion Windows Forms Splash Panel control and more details.
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# Animation Settings in Windows Forms Splash Panel

This section demonstrates how to display a splash image with animation.

When animation is set for the splash image, by default, the splash image will be drawn from left to right. 

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
AnimationSpeed</td><td>
Indicates the speed at which the animation unfolds on the screen and the SplashPanel becomes visible.</td></tr>
<tr>
<td>
AnimationSteps</td><td>
Indicates the number of pixels at which the animation unfolds in sliding style.</td></tr>
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

{% tabs %}
{% highlight c# %}

this.splashPanel1.AnimationSpeed = 30;
this.splashPanel1.AnimationSteps = 30;
this.splashPanel1.ShowAnimation = true;
this.splashPanel1.ShowAsTopMost = true;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.AnimationSpeed = 30
Me.splashPanel1.AnimationStpes = 30
Me.splashPanel1.ShowAnimation = True
Me.splashPanel1.ShowAsTopMost = True

{% endhighlight %}
{% endtabs %}

## Sliding style

The splash image, can not only be displayed from left to right, but can be displayed in different styles using the property given below.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
SlideStyle</td><td>
Gets / sets the slide style for the SplashPanel. The options included are as follows.Horizontal,Vertical,LeftToRight,RightToLeft,TopToBottom,BottomToTop andFadeIn.The ShowAnimation property must be set to 'True'.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.splashPanel1.SlideStyle = Syncfusion.Windows.Forms.Tools.SlideStyle.FadeIn;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.SlideStyle = Syncfusion.Windows.Forms.Tools.SlideStyle.FadeIn

{% endhighlight %}
{% endtabs %}

## AutoClose

This section discusses the properties that can be set for the animation of SplashPanel.

### AutoClose

Auto closing of the SplashPanel can be accomplished using the property given below.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
SuspendAutoCloseWhenMouseOver</td><td>
Indicates whether the SplashPanel should not be closed when the mouse is over it.</td></tr>
</table>


This property which is available in SplashPanel, when enabled, will close the SplashPanel at run time before the specified time interval ends, when the mouse is moved over it. By default this will be set to 'False'.

N> The CloseOnClick property can also be used to close the SplashPanel by a single mouse click.

{% tabs %}
{% highlight c# %}

this.splashPanel1.SuspendAutoCloseWhenMouseOver = true;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.SuspendAutoCloseWhenMouseOver = True

{% endhighlight %}
{% endtabs %}

AutoClose mode of the splash screen can be suspended or restored using the below methods.

Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
SuspendAutoCloseMode</td><td>
Suspends the auto closing of the SplashPanel after the TimerInterval.</td></tr>
<tr>
<td>
RestoreAutoCloseMode</td><td>
Restores the auto closing of the SplashPanel.</td></tr>
</table>

* SuspendAutoCloseMode() - The splash screen will be displayed at run time for a specific time interval and it closes automatically by default. This auto closing of the splash screen can be suspended by calling this method. 

On calling this method, the splash screen will be displayed till the application is closed or the RestoreAutoCloseMode() method is called. You can use the below code snippet to call this method.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, EventArgs e)
{
    this.splashPanel1.SuspendAutoCloseMode();
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
Me.splashPanel1.SuspendAutoCloseMode()
End Sub

{% endhighlight %}
{% endtabs %}

* RestoreAutoCloseMode() - This method will restore the auto closing of the splash screen which was suspended by calling the SuspendAutoCloseMode() method.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, EventArgs e)
{
    this.splashPanel1.RestoreAutoCloseMode();
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
Me.splashPanel1.RestoreAutoCloseMode()
End Sub

{% endhighlight %}
{% endtabs %}
