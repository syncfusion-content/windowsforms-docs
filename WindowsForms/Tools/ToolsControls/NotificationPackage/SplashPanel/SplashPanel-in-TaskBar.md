---
layout: post
title: SplashPanel-in-TaskBar
description: splashpanel in taskbar
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashPanel in TaskBar

The SplashPanel can be displayed in the taskbar and it's appearance can be customized using the properties given below.

_Table_ _631_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
ShowInTaskBar</td><td>
Specifies if the SplashPanel is to be shown in the taskbar.</td></tr>
<tr>
<td>
FormIcon</td><td>
Gets / sets the icon for the SplashPanel.</td></tr>
<tr>
<td>
Text</td><td>
Specifies the text when displayed in the taskbar.</td></tr>
</table>


{% highlight c# %}



this.splashPanel1.ShowInTaskbar = true;

this.splashControl1.FormIcon = ((System.Drawing.Icon)(resources.GetObject("splashControl1.FormIcon")));

this.splashPanel1.Text = "Splash Panel";

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.ShowInTaskbar = true

Me.splashControl1.FormIcon = DirectCast((resources.GetObject("splashControl1.FormIcon")), System.Drawing.Icon)

Me.splashPanel1.Text = "Splash Panel"

{% endhighlight %}

![](Overview_images/Overview_img50.jpeg) 



