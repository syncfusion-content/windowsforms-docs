---
layout: post
title: Foreground-Image-Settings
description: foreground image settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Foreground Image Settings

This section discusses the foreground image settings of ProgressBarAdv.

When the BackgroundStyle and ProgressStyle are set to the 'Image' style, then the foreground image can be specified using the below given property.

_Table_ _607_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
ForegroundImage</td><td>
Determines if the foreground is segmented.</td></tr>
<tr>
<td>
StretchImage</td><td>
Indicates whether the foreground image will be stretched.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.ForegroundImage = ((System.Drawing.Image)(resources.GetObject("clouds")));

this.progressBarAdv1.StretchImage = true;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.ForegroundImage = CType((resources.GetObject("clouds")), System.Drawing.Image)

Me.progressBarAdv1.StretchImage = True

{% endhighlight %}

![](Overview_images/Overview_img18.jpeg) 


