---
layout: post
title: Background-Color-Settings
description: background color settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Background Color Settings

This section illustrates the color settings that can be applied to the background of the ProgressBarAdv.

### Gradient Color

The color of the background gradient can be changed using the properties given below.

_Table_ _598_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
BackGradientStartColor</td><td>
Specifies the start color of the background gradient.The BackgroundStyle property should be set to 'Gradient' or 'VerticalGradient'.</td></tr>
<tr>
<td>
BackGradientEndColor</td><td>
Specifies the end color of the background gradient.The BackgroundStyle property should be set to 'Gradient' or 'VerticalGradient'.</td></tr>
</table>


{% highlight c# %}

this.progressBarAdv1.BackGradientEndColor = System.Drawing.Color.Aquamarine;

this.progressBarAdv1.BackGradientStartColor = System.Drawing.Color.IndianRed;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.BackGradientEndColor = System.Drawing.Color.Aquamarine

Me.progressBarAdv1.BackGradientStartColor = System.Drawing.Color.IndianRed

{% endhighlight %}

![](Overview_images/Overview_img9.jpeg) 


The background gradient can be displayed with multiple colors using the property given below.

_Table_ _599_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
BackMultipleColors</td><td>
Specifies the array of colors used to draw the multiple gradient of the background.The BackgroundStyle property should be set to 'MultipleGradient'.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.BackMultipleColors = new System.Drawing.Color[] {System.Drawing.Color.Blue, System.Drawing.Color.Red, System.Drawing.Color.Green, System.Drawing.Color.Pink, System.Drawing.Color.Yellow};

{% endhighlight %}

{% highlight vbnet %}
 
Me.progressBarAdv1.BackMultipleColors = New System.Drawing.Color[] {System.Drawing.Color.Blue, System.Drawing.Color.Red, System.Drawing.Color.Green, System.Drawing.Color.Pink, System.Drawing.Color.Yellow}

{% endhighlight %}

![](Overview_images/Overview_img10.jpeg) 


### Tube Color

Colors can be set for the background tube of the ProgressBarAdv.

_Table_ _600_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
BackTubeStartColor</td><td>
Specifies the start color of the background tube.The BackgroundStyle property should be set to 'Tube'.</td></tr>
<tr>
<td>
BackTubeEndColor</td><td>
Specifies the end color of the background tube.The BackgroundStyle property should be set to 'Tube'.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.BackTubeEndColor = System.Drawing.Color.RosyBrown;

this.progressBarAdv1.BackTubeStartColor = System.Drawing.Color.Yellow;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.BackTubeEndColor = System.Drawing.Color.RosyBrown

Me.progressBarAdv1.BackTubeStartColor = System.Drawing.Color.Yellow

{% endhighlight %}

 ![](Overview_images/Overview_img11.jpeg) 


