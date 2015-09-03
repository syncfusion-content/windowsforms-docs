---
layout: post
title: Slider-value
description: slider value
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider value

## Minimum Value

The slider initial value depends on its minimum value, and the default minimum value is ‘0’. The minimum value can be changed by using the MinimumValue API in the control.

{% highlight c# %}

        this.radialSlider1.MinimumValue = 100;

{% endhighlight %}



{% highlight vbnet %}

         Me.radialSlider1.MinimumValue = 100

{% endhighlight %}

N> The Slider’s maximum value should be greater than its minimum value.

## Slider divisions

Slider divisions for the radial slider can be customized using the properties shown in the following code samples. The default slider division is 10.

{% highlight c# %}

            this.radialSlider1.SliderDivision = 20;

{% endhighlight %}


{% highlight vbnet %}

             Me.radialSlider1.SliderDivision = 20

{% endhighlight %}

N> This property will applicable only for default slider.

