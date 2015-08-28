---
layout: post
title: AutoClose
description: autoclose
platform: windowsforms
control: Notification Package 
documentation: ug
---

# AutoClose

This section discusses the properties that can be set for the animation of SplashPanel.

AutoClose

Auto closing of the SplashPanel can be accomplished using the property given below.

_Table_ _635_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
SuspendAutoCloseWhenMouseOver</td><td>
Indicates whether the SplashPanel should not be closed when the mouse is over it.</td></tr>
</table>


Thisproperty which is available in SplashPanel, when enabled, will close the SplashPanel at run time before the specified time interval ends, when the mouse is moved over it. By default this will be set to 'False'.

> Note: The CloseOnClick property can also be used to close the SplashPanel by a single mouse click._

{% highlight c# %}



this.splashPanel1.SuspendAutoCloseWhenMouseOver = true;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.SuspendAutoCloseWhenMouseOver = True

{% endhighlight %}

AutoClose mode of the splash screen can be suspended or restored using the below methods.

_Table_ _636_: _Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
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

{% highlight c# %}



private void button1_Click(object sender, EventArgs e)

{

this.splashPanel1.SuspendAutoCloseMode();

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.splashPanel1.SuspendAutoCloseMode()

End Sub

{% endhighlight %}

* RestoreAutoCloseMode() - This method will restore the auto closing of the splash screen which was suspended by calling the SuspendAutoCloseMode() method.

{% highlight c# %}



private void button1_Click(object sender, EventArgs e)

{

this.splashPanel1.RestoreAutoCloseMode();

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Me.splashPanel1.RestoreAutoCloseMode()

End Sub

{% endhighlight %}

