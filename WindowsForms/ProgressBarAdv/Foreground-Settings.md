---
layout: post
title: Foreground-Settings | WindowsForms | Syncfusion
description: foreground settings
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# Foreground settings

This section discusses the foreground settings of the ProgressBarAdv control.

## Foreground segment settings

The foreground segment settings available in the ProgressBarAdv control are explained below.

The foreground of the ProgressBarAdv can be displayed with a segmented appearance using the property given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
ForeSegments</td><td>
Determines if the foreground is segmented.</td></tr>
</table>


By default this property will be set to 'True'. To set it to 'False', use the code snippet given below.

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.ForeSegments = false;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.ForeSegments = False

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img12.jpeg) 

### Segment width

The foreground segments can be customized using the property given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
SegmentWidth</td><td>
Specifies the width of the segments.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.SegmentWidth = 20;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.SegmentWidth = 20

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img13.jpeg)



##  Foreground color settings

This section illustrates the color settings that can be applied to the foreground of the ProgressBarAdv.

### Font and fore color settings

The font color and the fore color can be set using the properties given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the color used to draw the foreground in segment mode and constant mode.</td></tr>
<tr>
<td>
FontColor</td><td>
Specifies the color of the font used to draw the text of the ProgressBarAdv.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.FontColor = System.Drawing.Color.SteelBlue;

this.progressBarAdv1.ForeColor = System.Drawing.Color.Turquoise;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.FontColor = System.Drawing.Color.SteelBlue

Me.progressBarAdv1.ForeColor = System.Drawing.Color.Turquoise

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img14.jpeg) 


### Gradient color settings

The color of the foreground gradient can be changed using the properties given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
GradientStartColor</td><td>
Specifies the start color of the foreground gradient.The ProgressStyle property should be set to 'Gradient'.</td></tr>
<tr>
<td>
GradientEndColor</td><td>
Specifies the start color of the foreground gradient.The ProgressStyle property should be set to 'Gradient'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.GradientEndColor = System.Drawing.Color.Yellow;

this.progressBarAdv1.GradientStartColor = System.Drawing.Color.OrangeRed;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.GradientEndColor = System.Drawing.Color.Yellow

Me.progressBarAdv1.GradientStartColor = System.Drawing.Color.OrangeRed

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img15.jpeg) 


The foreground can be displayed with multiple colors using the property given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
MultipleColors</td><td>
Specifies the array of colors used to draw the multiple gradient of the foreground.The ProgressStyle property should be set to 'MultipleGradient'.</td></tr>
<tr>
<td>
StretchMultiGrad</td><td>
Determines if the multiple gradient will be stretched.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

this.progressBarAdv1.MultipleColors = new System.Drawing.Color[] {System.Drawing.Color.Orange, System.Drawing.Color.Yellow, System.Drawing.Color.Blue, System.Drawing.Color.Pink, System.Drawing.Color.Green};

this.progressBarAdv1.StretchMultGrad = false;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient

Me.progressBarAdv1.MultipleColors = New System.Drawing.Color[] {System.Drawing.Color.Orange, System.Drawing.Color.Yellow, System.Drawing.Color.Blue, System.Drawing.Color.Pink, System.Drawing.Color.Green};

Me.progressBarAdv1.StretchMultGrad = False

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img16.jpeg) 


### Tube color settings

Colors can be set for the foreground tube of the ProgressBarAdv.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
TubeStartColor</td><td>
Specifies the start color of the foreground tube.The ProgressStyle property should be set to 'Tube'.</td></tr>
<tr>
<td>
TubeEndColor</td><td>
Specifies the start color of the foreground tube.The ProgressStyle property should be set to 'Tube'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.TubeEndColor = System.Drawing.Color.Black;

this.progressBarAdv1.TubeStartColor = System.Drawing.Color.Red;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.TubeEndColor = System.Drawing.Color.Black

Me.progressBarAdv1.TubeStartColor = System.Drawing.Color.Red

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img17.jpeg) 



## Foreground image settings

This section discusses the foreground image settings of ProgressBarAdv.

When the BackgroundStyle and ProgressStyle are set to the 'Image' style, then the foreground image can be specified using the below given property.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
ForegroundImage</td><td>
Determines if the foreground is segmented.</td></tr>
<tr>
<td>
StretchImage</td><td>
Indicates whether the foreground image will be stretched.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.ForegroundImage = ((System.Drawing.Image)(resources.GetObject("clouds")));

this.progressBarAdv1.StretchImage = true;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.ForegroundImage = CType((resources.GetObject("clouds")), System.Drawing.Image)

Me.progressBarAdv1.StretchImage = True

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img18.jpeg) 


## Foreground style settings

The progress style of the ProgressBarAdv control can be set using the properties given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
ProgressStyle</td><td>
Determines the foreground drawing style. It includes the options given below.Constant, Gradient, MultipleGradient, Tube, Image and System.</td></tr>
<tr>
<td>
ProgressFallBackStyle</td><td>
Determines the foreground drawing style when the ProgressStyle is set to 'System', provided the system doesn't support themes.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.WaitingGradient;

this.progressBarAdv1.ProgressFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.ProgressStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.WaitingGradient

Me.progressBarAdv1.ProgressFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarStyles.MultipleGradient;

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img19.jpeg) 


The Waiting Gradient Style of the ProgressBarAdv consists of the following properties that can be used to change the appearance and behavior of the style.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
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

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.WaitingGradientEnabled = true;

this.progressBarAdv1.WaitingGradientInterval = 20;

this.progressBarAdv1.WaitingGradientWidth = 500;

this.progressBarAdv1.CustomWaitingRender = true;

this.progressBarAdv1.ForeColor = System.Drawing.Color.Crimson;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.WaitingGradientEnabled = True

Me.progressBarAdv1.WaitingGradientInterval = 20

Me.progressBarAdv1.WaitingGradientWidth = 500

Me.progressBarAdv1.CustomWaitingRender = True

Me.progressBarAdv1.ForeColor = System.Drawing.Color.Crimson

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img20.jpeg)




