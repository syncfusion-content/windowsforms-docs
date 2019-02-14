---
layout: post
title: Slider-value | RadialSlider | WindowsForms | Syncfusion
description: slider value
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider value

## Minimum value

The slider initial value depends on its minimum value, and the default minimum value is ‘0’. The minimum value can be changed by using the [MinimumValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~MinimumValue.html) API in the control.

{% tabs %}

{% highlight C# %}

        this.radialSlider1.MinimumValue = 100;

{% endhighlight %}



{% highlight VB %}

         Me.radialSlider1.MinimumValue = 100

{% endhighlight %}

{% endtabs %}

N> The Slider’s maximum value should be greater than its minimum value.

## Slider divisions

[SliderDivision](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~SliderDivision.html) for the radial slider can be customized using the properties shown in the following code samples. The default slider division is 10.

{% tabs %}

{% highlight C# %}

            this.radialSlider1.SliderDivision = 20;

{% endhighlight %}


{% highlight VB %}

             Me.radialSlider1.SliderDivision = 20

{% endhighlight %}

{% endtabs %}

N> This property will applicable only for default slider.

