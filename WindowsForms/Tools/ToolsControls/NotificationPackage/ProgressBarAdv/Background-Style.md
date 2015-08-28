---
layout: post
title: Background-Style
description: background style
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Background Style

The style of the background can be set using the properties given below.

_Table_ _596_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
BackgroundStyle</td><td>
Determines the style of the background. It includes the options given below.Image,Gradient,VerticalGradient,Tube,MultipleGradient,System andNone.</td></tr>
<tr>
<td>
BackgroundFallbackStyle</td><td>
Determines the style of the background when BackgroundStyle is set to 'System', provided the system does not support themes.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Gradient;

this.progressBarAdv1.BackgroundFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.MultipleGradient;

{% endhighlight %}

{% highlight vbnet %}


Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Gradient

Me.progressBarAdv1.BackgroundFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.MultipleGradient

{% endhighlight %}

![](Overview_images/Overview_img6.jpeg) 


![](Overview_images/Overview_img7.jpeg) 

> Note: To display the above styles in different colors the BackGradientStartColor and BackGradientEndColor properties can be used._

