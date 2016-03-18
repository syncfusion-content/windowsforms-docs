---
layout: post
title: Background-Settings | WindowsForms | Syncfusion
description: background settings
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# Background Settings

The ProgressBarAdv control consists of various properties to customize the background. These properties and their description are given below.

## Background Style

The style of the background can be set using the properties given below.

Property Table

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Determines the style of the background. It includes the options given below.Image,Gradient,VerticalGradient,Tube,MultipleGradient,System andNone.</td></tr>
<tr>
<td>
BackgroundFallBackStyle</td><td>
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


N> To display the above styles in different colors the BackGradientStartColor and BackGradientEndColor properties can be used._


## Background Segments

The background of the ProgressBarAdv can be displayed with a segmented appearance using the property given below.

Property Table

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
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

## Background Color Settings

This section illustrates the color settings that can be applied to the background of the ProgressBarAdv.

### Gradient Color

The color of the background gradient can be changed using the properties given below.

Property Table

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
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

Property Table

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
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

Property Table

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
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


