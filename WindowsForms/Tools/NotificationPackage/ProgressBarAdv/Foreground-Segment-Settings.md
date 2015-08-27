---
layout: post
title: Foreground-Segment-Settings
description: foreground segment settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Foreground Segment Settings

The foreground segment settings available in the ProgressBarAdv control are explained below.

The foreground of the ProgressBarAdv can be displayed with a segmented appearance using the property given below.

_Table_ _601_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
ForeSegments</td><td>
Determines if the foreground is segmented.</td></tr>
</table>


By default this property will be set to 'True'. To set it to 'False', use the code snippet given below.

{% highlight c# %}

this.progressBarAdv1.ForeSegments = false;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.ForeSegments = False

{% endhighlight %}

![](Overview_images/Overview_img12.jpeg) 

### Segment Width

The foreground segments can be customized using the property given below.

_Table_ _602_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
SegmentWidth</td><td>
Specifies the width of the segments.</td></tr>
</table>

{% highlight vbnet %}

this.progressBarAdv1.SegmentWidth = 20;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.SegmentWidth = 20

{% endhighlight %}

![](Overview_images/Overview_img13.jpeg) 


See Also

