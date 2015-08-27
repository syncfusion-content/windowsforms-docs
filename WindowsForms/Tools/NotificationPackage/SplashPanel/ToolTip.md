---
layout: post
title: ToolTip
description: tooltip
platform: windowsforms
control: Notification Package 
documentation: ug
---

# ToolTip

ToolTip can be displayed for the SplashPanel when the mouse is moved over the control. This can be done using the following property.

_Table_ _641_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
ToolTip on toolTip1</td><td>
Determines the ToolTip shown when the mouse hovers over the control.The ToolTip on toolTip1 property is an extender property, i.e., it will appear in the Property grid only when you add a tooltip control onto the form.</td></tr>
</table>


ToolTip can also be set through the code given below.

{% highlight c# %}



this.toolTip1.SetToolTip(this.splashPanel1, "Splash Panel Tooltip");

{% endhighlight %}

{% highlight vbnet %}



Me.toolTip1.SetToolTip(this.splashPanel1, "Splash Panel Tooltip")

{% endhighlight %}

![](Overview_images/Overview_img58.jpeg) 

