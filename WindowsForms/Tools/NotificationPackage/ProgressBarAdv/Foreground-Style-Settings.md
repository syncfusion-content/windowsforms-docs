---
layout: post
title: Foreground-Style-Settings
description: foreground style settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Foreground Style Settings

The progress style of the ProgressBarAdv control can be set using the properties given below.

_Table_ _608_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
ProgressStyle</td><td>
Determines the foreground drawing style. It includes the options given below.Constant, Gradient, MultipleGradient, Tube, Image and System.</td></tr>
<tr>
<td>
ProgressFallbackStyle</td><td>
Determines the foreground drawing style when the ProgressStyle is set to 'System', provided the system doesn't support themes.</td></tr>
</table>


{% highlight c# %}

this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.WaitingGradient;

this.progressBarAdv1.ProgressFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.WaitingGradient

Me.progressBarAdv1.ProgressFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

{% endhighlight %}

![](Overview_images/Overview_img19.jpeg) 


The Waiting Gradient Style of the ProgressBarAdv consists of the following properties that can be used to change the appearance and behavior of the style.

_Table_ _609_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
WaitingGradientEnabled</td><td>
Determines if the waiting gradient is enabled.The ProgressStyle property should be set to 'WaitingGradient'.</td></tr>
<tr>
<td>
WaitingGradientInterval</td><td>
Determines the interval of the waiting gradient.</td></tr>
<tr>
<td>
WaitingGradientWidth</td><td>
Determines the width of the waiting gradient.</td></tr>
<tr>
<td>
CustomWaitingRender</td><td>
Indicates whether the waiting gradient will be replaced by another custom waiting render which is defaulted to segments.This property when set to 'True' will display the foreground with segments in the color that has been set for the ForeColor property.This property when set to 'False' will display the foreground in the default waiting gradient style.</td></tr>
</table>


{% highlight c# %}

this.progressBarAdv1.WaitingGradientEnabled = true;

this.progressBarAdv1.WaitingGradientInterval = 20;

this.progressBarAdv1.WaitingGradientWidth = 500;

this.progressBarAdv1.CustomWaitingRender = true;

this.progressBarAdv1.ForeColor = System.Drawing.Color.Crimson;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.WaitingGradientEnabled = True

Me.progressBarAdv1.WaitingGradientInterval = 20

Me.progressBarAdv1.WaitingGradientWidth = 500

Me.progressBarAdv1.CustomWaitingRender = True

Me.progressBarAdv1.ForeColor = System.Drawing.Color.Crimson

{% endhighlight %}

![](Overview_images/Overview_img20.jpeg)


See Also

