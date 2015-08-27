---
layout: post
title: SplashPanel-Settings
description: splashpanel settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# SplashPanel Settings

This section discusses how a SplashPanel control can be displayed as a SplashScreen for the SplashControl.

The SplashControl allows the user to display a SplashPanel control as the splash screen. The following settings can be changed to customize the SplashPanel in the SplashControl.

_Table_ _620_: _Property Table_

<table>
<tr>
<td>
SplashControl Property</td><td>
Description</td></tr>
<tr>
<td>
SplashControlPanel</td><td>
Gets / sets the internal SplashPanel that is displayed as the splash screen.</td></tr>
<tr>
<td>
ShowInTaskBar</td><td>
Indicates if the SplashPanel is to be shown in the taskbar.</td></tr>
<tr>
<td>
FormIcon</td><td>
Gets / sets the icon for the SplashPanel. </td></tr>
</table>

{% highlight c# %}

this.splashControl1.ShowInTaskbar = true;

this.splashControl1.FormIcon = ((System.Drawing.Icon)(resources.GetObject("splashControl1.FormIcon")));

{% endhighlight %}

{% highlight vbnet %}

Me.splashControl1.ShowInTaskbar = True

Me.splashControl1.FormIcon = DirectCast((resources.GetObject("splashControl1.FormIcon")), System.Drawing.Icon)

{% endhighlight %}

![](Overview_images/Overview_img36.jpeg) 


See Also

