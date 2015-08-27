---
layout: post
title: Foreground-Color-Settings
description: foreground color settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

#  Foreground Color Settings

This section illustrates the color settings that can be applied to the foreground of the ProgressBarAdv.

### Font and Fore Color Settings

The font color and the fore color can be set using the properties given below.

_Table_ _603_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the color used to draw the foreground in segment mode and constant mode.</td></tr>
<tr>
<td>
FontColor</td><td>
Specifies the color of the font used to draw the text of the ProgressBarAdv.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.FontColor = System.Drawing.Color.SteelBlue;

this.progressBarAdv1.ForeColor = System.Drawing.Color.Turquoise;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.FontColor = System.Drawing.Color.SteelBlue

Me.progressBarAdv1.ForeColor = System.Drawing.Color.Turquoise

{% endhighlight %}

![](Overview_images/Overview_img14.jpeg) 


### Gradient Color Settings

The color of the foreground gradient can be changed using the properties given below.

_Table_ _604_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
GradientStartColor</td><td>
Specifies the start color of the foreground gradient.The ProgressStyle property should be set to 'Gradient'.</td></tr>
<tr>
<td>
GradientEndColor</td><td>
Specifies the start color of the foreground gradient.The ProgressStyle property should be set to 'Gradient'.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.GradientEndColor = System.Drawing.Color.Yellow;

this.progressBarAdv1.GradientStartColor = System.Drawing.Color.OrangeRed;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.GradientEndColor = System.Drawing.Color.Yellow

Me.progressBarAdv1.GradientStartColor = System.Drawing.Color.OrangeRed

{% endhighlight %}

![](Overview_images/Overview_img15.jpeg) 


The foreground can be displayed with multiple colors using the property given below.

_Table_ _605_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
MultipleColors</td><td>
Specifies the array of colors used to draw the multiple gradient of the foreground.The ProgressStyle property should be set to 'MultipleGradient'.</td></tr>
<tr>
<td>
StretchMultGrad</td><td>
Determines if the multiple gradient will be stretched.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

this.progressBarAdv1.MultipleColors = new System.Drawing.Color[] {System.Drawing.Color.Orange, System.Drawing.Color.Yellow, System.Drawing.Color.Blue, System.Drawing.Color.Pink, System.Drawing.Color.Green};

this.progressBarAdv1.StretchMultGrad = false;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient

Me.progressBarAdv1.MultipleColors = New System.Drawing.Color[] {System.Drawing.Color.Orange, System.Drawing.Color.Yellow, System.Drawing.Color.Blue, System.Drawing.Color.Pink, System.Drawing.Color.Green};

Me.progressBarAdv1.StretchMultGrad = False

{% endhighlight %}

![](Overview_images/Overview_img16.jpeg) 


### Tube Color Settings

Colors can be set for the foreground tube of the ProgressBarAdv.

_Table_ _606_: _Property Table_

<table>
<tr>
<td>
ProgressBarAdv Property</td><td>
Description</td></tr>
<tr>
<td>
TubeStartColor</td><td>
Specifies the start color of the foreground tube.The ProgressStyle property should be set to 'Tube'.</td></tr>
<tr>
<td>
TubeEndColor</td><td>
Specifies the start color of the foreground tube.The ProgressStyle property should be set to 'Tube'.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.TubeEndColor = System.Drawing.Color.Black;

this.progressBarAdv1.TubeStartColor = System.Drawing.Color.Red;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.TubeEndColor = System.Drawing.Color.Black

Me.progressBarAdv1.TubeStartColor = System.Drawing.Color.Red

{% endhighlight %}

![](Overview_images/Overview_img17.jpeg) 


See Also

