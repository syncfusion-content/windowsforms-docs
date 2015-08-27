---
layout: post
title: Behavior-Settings
description: behavior settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Behavior Settings

The user will not be able to close or resize the splash image, which is displayed during run time, normally. But by setting certain properties of the SplashPanel, the user can alter the SplashPanel. These properties are explained below in detail.

_Table_ _638_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
AllowMove</td><td>
Indicates whether the SplashPanel can be moved by the user at run time.</td></tr>
<tr>
<td>
AllowResize</td><td>
Indicates whether the SplashPanel can be resized by the user at run time.</td></tr>
<tr>
<td>
CloseOnClick</td><td>
Indicates whether the SplashPanel gets closed when the user clicks on it.</td></tr>
</table>


When the AllowMove property is setto 'True', the user will be allowed to click within the SplashPanel and move the SplashPanel on the screen.

When the AllowResize property is set to 'True', resize handles will be displayed when the user moves the mouse near the border of the SplashPanel.

> Note: In the above cases, the splash panel will not be closed, until the host form is closed._

The user can also close the SplashPanel by a single mouse click. This feature can be enabled by setting the CloseOnClick property to 'True'.

{% highlight c# %}



this.splashPanel1.AllowMove = true;

this.splashPanel1.AllowResize = true;

this.splashPanel1.CloseOnClick = true;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.AllowMove = True

Me.splashPanel1.AllowResize = True

Me.splashPanel1.CloseOnClick = True

{% endhighlight %}

