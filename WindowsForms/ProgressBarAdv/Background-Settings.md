---
layout: post
title: Background-Settings | WindowsForms | Syncfusion
description: background settings
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# Background settings

The ProgressBarAdv control consists of various properties to customize the background. These properties and their description are given below.

## Background style

The style of the background can be set using the properties given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Determines the style of the background. It includes the options given below.Image,Gradient,VerticalGradient,Tube,MultipleGradient,System, Office2016Colorful, Office2016White, Office2016DarkGray, Office2016Black and None.</td></tr>
<tr>
<td>
BackgroundFallBackStyle</td><td>
Determines the style of the background when BackgroundStyle is set to 'System', provided the system does not support themes.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Gradient;

this.progressBarAdv1.BackgroundFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.MultipleGradient;

{% endhighlight %}

{% highlight VB %}


Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Gradient

Me.progressBarAdv1.BackgroundFallbackStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.MultipleGradient

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img6.jpeg) 

**Office2016Colorful**

This option helps to set the Office2016Colorful BackgroundStyle.

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016Colorful;

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img117.png) 

**Office2016White**

This option helps to set the Office2016White BackgroundStyle.

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016White;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016White;

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img118.png) 

**Office2016DarkGray**

This option helps to set the Office2016DarkGray BackgroundStyle.

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016DarkGray;

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img119.png) 

**Office2016Black**

This option helps to set the Office2016Black BackgroundStyle.

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016Black;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.ProgressBarBackgroundStyles.Office2016Black;

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img120.png) 


N> To display the above styles in different colors the BackGradientStartColor and BackGradientEndColor properties can be used.


## Background segments

The background of the ProgressBarAdv can be displayed with a segmented appearance using the property given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
BackSegments</td><td>
Determines if the background is segmented.The BackgroundStyle property must be set to 'Tube'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackSegments = true;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackSegments = True

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img8.jpeg)

## Background color settings

This section illustrates the color settings that can be applied to the background of the ProgressBarAdv.

### Gradient color

The color of the background gradient can be changed using the properties given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
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

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackGradientEndColor = System.Drawing.Color.Aquamarine;

this.progressBarAdv1.BackGradientStartColor = System.Drawing.Color.IndianRed;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackGradientEndColor = System.Drawing.Color.Aquamarine

Me.progressBarAdv1.BackGradientStartColor = System.Drawing.Color.IndianRed

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img9.jpeg)


The background gradient can be displayed with multiple colors using the property given below.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
BackMultipleColors</td><td>
Specifies the array of colors used to draw the multiple gradient of the background.The BackgroundStyle property should be set to 'MultipleGradient'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackMultipleColors = new System.Drawing.Color[] {System.Drawing.Color.Blue, System.Drawing.Color.Red, System.Drawing.Color.Green, System.Drawing.Color.Pink, System.Drawing.Color.Yellow};

{% endhighlight %}

{% highlight VB %}
 
Me.progressBarAdv1.BackMultipleColors = New System.Drawing.Color[] {System.Drawing.Color.Blue, System.Drawing.Color.Red, System.Drawing.Color.Green, System.Drawing.Color.Pink, System.Drawing.Color.Yellow}

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img10.jpeg) 


### Tube color

Colors can be set for the background tube of the ProgressBarAdv.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
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

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.BackTubeEndColor = System.Drawing.Color.RosyBrown;

this.progressBarAdv1.BackTubeStartColor = System.Drawing.Color.Yellow;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.BackTubeEndColor = System.Drawing.Color.RosyBrown

Me.progressBarAdv1.BackTubeStartColor = System.Drawing.Color.Yellow

{% endhighlight %}

{% endtabs %}

 ![](Overview_images/Overview_img11.jpeg) 


