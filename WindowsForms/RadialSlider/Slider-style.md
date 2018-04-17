---
layout: post
title: Slider-style | WindowsForms | Syncfusion
description: slider style
platform: WindowsForms
control: RadialSlider
documentation: ug
---

# Slider style

Radial Slider supports two different visual styles for its appearance through the enumeration SliderStyle:

* Default
* Frame

### Default slider style

Default slider style will render the slider control with two hollow circles and a small circle as center, with its dividend ticks available as shown in the following image:

![](Slider-style_images/Slider-style_img1.png)



![](Slider-style_images/Slider-style_img2.png)

{% tabs %}

{% highlight C# %}

this.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Default;

{% endhighlight %}



{% highlight VB %}

Me.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Default

{% endhighlight %}

{% endtabs %}

### Frame style

This style will paint the background of the slider control with an HQ frame as shown in the following image:

![](Slider-style_images/Slider-style_img3.png)

{% tabs %}

{% highlight C# %}

   this.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame;

{% endhighlight %}





{% highlight VB %}

 Me.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame

{% endhighlight %}

{% endtabs %}

