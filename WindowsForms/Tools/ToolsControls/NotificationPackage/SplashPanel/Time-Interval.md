---
layout: post
title: Time-Interval
description: time interval
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Time Interval

The SplashPanel is, by default, a timed display splash screen. The SplashPanel uses internally, a System.Windows.Forms.Timer, to automatically close the splash screen after the set interval is elapsed. This behavior can be changed by setting the TimerInterval property to -1. 

_Table_ _632_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
TimerInterval</td><td>
The time interval for which the splash screen should be displayed (in milliseconds).</td></tr>
</table>


The splash screen will be displayed for a specific time period and will then be closed.

{% highlight c# %}



this.splashPanel1.TimerInterval = 7000;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.TimerInterval = 7000

{% endhighlight %}

