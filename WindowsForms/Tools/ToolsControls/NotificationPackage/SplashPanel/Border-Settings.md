---
layout: post
title: Border-Settings
description: border settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Border Settings

 The border settings of the SplashPanel control can be customized to provide a 3D look for the border.

_Table_ _639_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the 3D border for the SplashPanel. The options included are as follows.RaisedOuter,SunkenOuter,RaisedInner,SunkenInner,Raised,Etched,Bump,Sunken,Adjust andFlat.</td></tr>
<tr>
<td>
BorderType</td><td>
Specifies the type of border. The options included are as follows.Border3D andNone.</td></tr>
</table>


{% highlight c# %}



this.splashPanel1.BorderStyle = System.Windows.Forms.Border3DStyle.Flat;

this.splashPanel1.BorderType = Syncfusion.Windows.Forms.Tools.SplashBorderType.Border3D;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.BorderStyle = System.Windows.Forms.Border3DStyle.Flat

Me.splashPanel1.BorderType = Syncfusion.Windows.Forms.Tools.SplashBorderType.Border3D;

{% endhighlight %}

![](Overview_images/Overview_img56.jpeg) 



