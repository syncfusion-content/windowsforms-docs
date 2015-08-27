---
layout: post
title: Alignment-Settings
description: alignment settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Alignment Settings

The position of the SplashPanel in the desktop can be changed according to the needs of the user using the property given below.

_Table_ _640_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
DesktopAlignment</td><td>
Specifies the desktop alignment of the splash image. It includes the following options.SystemTray,Center,LeftTop,LeftBottom,RightTop,RightBottom andCustom.</td></tr>
</table>


{% highlight c# %}



this.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.SystemTray;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.SystemTray

{% endhighlight %}

![](Overview_images/Overview_img57.jpeg) 



A Sample which demonstrates theDesktop Alignment options is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

