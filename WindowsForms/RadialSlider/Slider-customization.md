---
layout: post
title: Slider-customization | WindowsForms | Syncfusion
description: slider customization
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider customization

## Slider background color

The background color for the radial slider can be customized using the BackgroundColor.

{% tabs %}

{% highlight C# %}

  this.radialSlider1.BackgroundColor = System.Drawing.SystemColors.Control;

{% endhighlight %}



{% highlight VB %}

 Me.radialSlider1.BackgroundColor = System.Drawing.SystemColors.Control

{% endhighlight %}

{% endtabs %}

![](Slider-customization_images/Slider-customization_img1.png)



## Circle color

Circle colors of the radial slider can be customized using the properties InnerCircleColor and OuterCircleColor.

{% tabs %}

{% highlight C# %}

    this.radialSlider1.InnerCircleColor = System.Drawing.Color.Pink;

    this.radialSlider1.OuterCircleColor = System.Drawing.Color.Pink;

{% endhighlight %}

{% highlight VB %}

   Me.radialSlider1.InnerCircleColor = System.Drawing.Color.Pink
   Me.radialSlider1.OuterCircleColor = System.Drawing.Color.Pink

{% endhighlight %}

{% endtabs %}

![](Slider-customization_images/Slider-customization_img2.png)



## Needle color

The needle color for the Radial slider can be customized using SliderNeedleColor.

{% tabs %}

{% highlight C# %}

         this.radialSlider1.SliderNeedleColor = System.Drawing.Color.Pink;



{% endhighlight %}

{% highlight VB %}

         Me.radialSlider1.SliderNeedleColor = System.Drawing.Color.Pink


{% endhighlight %}

{% endtabs %}

![](Slider-customization_images/Slider-customization_img3.png)



## Fore color

The foreground color for the Radial slider can be customized using ForeColor.

{% tabs %}

{% highlight C# %}

this.radialSlider1.ForeColor = System.Drawing.Color.BlueViolet;


{% endhighlight %}

{% highlight VB %}

Me.radialSlider1.ForeColor = System.Drawing.Color.BlueViolet

{% endhighlight %}

{% endtabs %}

![](Slider-customization_images/Slider-customization_img4.png)



## Needle type

The needle type for the radial slider can be customized using the NeedleType enumeration. Available needle types in the RadialSlider are:

* Straight Line (Default)
* Dotted Line

{% highlight C# %}

   this.radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine;


{% endhighlight %}

{% highlight VB %}

   Me.radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine

{% endhighlight %}

{% endtabs %}

![](Slider-customization_images/Slider-customization_img5.png)



