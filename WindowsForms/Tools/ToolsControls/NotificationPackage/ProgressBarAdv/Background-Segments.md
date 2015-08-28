---
layout: post
title: Background-Segments
description: background segments
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Background Segments

The background of the ProgressBarAdv can be displayed with a segmented appearance using the property given below.

_Table_ _597_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
BackSegments</td><td>
Determines if the background is segmented.The BackgroundStyle property must be set to 'Tube'.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.BackSegments = true;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.BackSegments = True

{% endhighlight %}

![](Overview_images/Overview_img8.jpeg) 

