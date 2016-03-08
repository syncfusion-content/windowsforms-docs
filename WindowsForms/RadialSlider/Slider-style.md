---
layout: post
title: Slider-style | Windows Forms | Syncfusion
description: slider style
platform: windowsforms
control: RadialSlider 
documentation: ug
---

# Slider style

Radial Slider supports two different visual styles for its appearance through the enumeration SliderStyle: 

* Default
* Frame

### Default Slider Style

Default slider style will render the slider control with two hollow circles and a small circle as center, with its dividend ticks available as shown in the following image:

![](Slider-style_images/Slider-style_img1.png)



![](Slider-style_images/Slider-style_img2.png)



Code sample:

{% highlight c# %}

this.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Default;

{% endhighlight %}



{% highlight vbnet %}

Me.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Default
{% endhighlight %}


### Frame style

This style will paint the background of the slider control with an HQ frame as shown in the following image:

![](Slider-style_images/Slider-style_img3.png)



{% highlight c# %}

   this.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame;

{% endhighlight %}





{% highlight vbnet %}

 Me.radialSlider1.SliderStyle = Syncfusion.Windows.Forms.Tools.SliderStyles.Frame

{% endhighlight %}



