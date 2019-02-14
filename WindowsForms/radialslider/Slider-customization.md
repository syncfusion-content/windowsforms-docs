---
layout: post
title: Slider-customization | RadialSlider |  WindowsForms | Syncfusion
description: slider customization
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider customization

## Slider background color

The background color for the radial slider can be customized using the [BackgroundColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~BackgroundColor.html).

{% tabs %}

{% highlight C# %}

  this.radialSlider1.BackgroundColor = System.Drawing.SystemColors.Control;

{% endhighlight %}



{% highlight VB %}

 Me.radialSlider1.BackgroundColor = System.Drawing.SystemColors.Control

{% endhighlight %}

{% endtabs %}

![RadialSlider background color](Slider-customization_images/Slider-customization_img1.png)



## Circle color

Circle colors of the radial slider can be customized using the properties [InnerCircleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~InnerCircleColor.html) and OuterCircleColor.

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

![RadialSlider control inner circle color customized](Slider-customization_images/Slider-customization_img2.png)



## Needle color

The needle color for the Radial slider can be customized using [SliderNeedleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~SliderNeedleColor.html).

{% tabs %}

{% highlight C# %}

         this.radialSlider1.SliderNeedleColor = System.Drawing.Color.Pink;



{% endhighlight %}

{% highlight VB %}

         Me.radialSlider1.SliderNeedleColor = System.Drawing.Color.Pink


{% endhighlight %}

{% endtabs %}

![Needle color customized](Slider-customization_images/Slider-customization_img3.png)



## Fore color

The foreground color for the Radial slider can be customized using [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=netframework-4.7.2).

{% tabs %}

{% highlight C# %}

this.radialSlider1.ForeColor = System.Drawing.Color.BlueViolet;


{% endhighlight %}

{% highlight VB %}

Me.radialSlider1.ForeColor = System.Drawing.Color.BlueViolet

{% endhighlight %}

{% endtabs %}

![RadialSlider fore color customized](Slider-customization_images/Slider-customization_img4.png)



## Needle type

The needle type for the radial slider can be customized using the [NeedleType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~NeedleType.html) enumeration. Available needle types in the RadialSlider are:

* Straight Line (Default)
* Dotted Line

{% tabs %}

{% highlight C# %}

   this.radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine;


{% endhighlight %}

{% highlight VB %}

   Me.radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine

{% endhighlight %}

{% endtabs %}

![RadialSlider needle type customized](Slider-customization_images/Slider-customization_img5.png)



