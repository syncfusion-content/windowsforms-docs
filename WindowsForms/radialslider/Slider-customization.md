---
layout: post
title: Slider-customization | RadialSlider |  WindowsForms | Syncfusion
description: This section explains appearence customization for RadialSlider.
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider customization

## Slider background color

The background color for the radial slider can be customized using the [BackgroundColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~BackgroundColor.html).

{% tabs %}

{% highlight C# %}

radialSlider1.BackgroundColor = System.Drawing.SystemColors.Navy;

{% endhighlight %}

{% highlight VB %}

radialSlider1.BackgroundColor = System.Drawing.SystemColors.Navy

{% endhighlight %}

{% endtabs %}

![RadialSlider background color](Slider-customization_images/Slider-customization_img1.png)



## Circle color

The Circle color of the [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider.html) can be customized using the properties [InnerCircleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~InnerCircleColor.html) and [OuterCircleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~OuterCircleColor.html).

{% tabs %}

{% highlight C# %}

radialSlider1.InnerCircleColor = System.Drawing.Color.Blue;
radialSlider1.OuterCircleColor = System.Drawing.Color.Blue;

{% endhighlight %}

{% highlight VB %}

radialSlider1.InnerCircleColor = System.Drawing.Color.Blue
radialSlider1.OuterCircleColor = System.Drawing.Color.Blue

{% endhighlight %}

{% endtabs %}

![RadialSlider control inner circle color customized](Slider-customization_images/Slider-customization_img2.png)



## Needle color

The needle color of the **RadialSlider** can be customized using [SliderNeedleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~SliderNeedleColor.html).

{% tabs %}

{% highlight C# %}

radialSlider1.SliderNeedleColor = System.Drawing.Color.DarkViolet;

{% endhighlight %}

{% highlight VB %}

radialSlider1.SliderNeedleColor = System.Drawing.Color.DarkViolet

{% endhighlight %}

{% endtabs %}

![Needle color customized](Slider-customization_images/Slider-customization_img3.png)



## Fore color

The foreground color of the **RadialSlider** can be customized using [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=netframework-4.7.2).

{% tabs %}

{% highlight C# %}

radialSlider1.ForeColor = System.Drawing.Color.BlueViolet;


{% endhighlight %}

{% highlight VB %}

radialSlider1.ForeColor = System.Drawing.Color.BlueViolet

{% endhighlight %}

{% endtabs %}

![RadialSlider fore color customized](Slider-customization_images/Slider-customization_img4.png)



## Needle type

The needle type of the **RadialSlider** can be customized using the [NeedleType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RadialSlider~NeedleType.html) enumeration. Available needle types in the RadialSlider are:

* Straight Line (Default)
* Dotted Line

{% tabs %}

{% highlight C# %}

radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine;

{% endhighlight %}

{% highlight VB %}

radialSlider1.NeedleType = Syncfusion.Windows.Forms.Tools.SliderNeedleType.DottedLine

{% endhighlight %}

{% endtabs %}

![RadialSlider needle type customized](Slider-customization_images/Slider-customization_img5.png)

## Visual Style

The **RadialSlider** control has rich set of themes for professional representation. You can easily modify the look and feel of the RadialSlider using the built-in themes.

It has the below themes.

* Default
* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black


### Default

This option helps to set the Default theme.

{% tabs %}

{% highlight C# %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Default;

{% endhighlight %}

{% highlight VB %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Default

{% endhighlight %}

{% endtabs %}

![RadialSlider default theme](Style_images/Style_img_1.png) 

### Office2016Colorful

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![RadialSlider Office2016Colorful style](Style_images/Style_img_2.png)

### Office2016White

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016White;

{% endhighlight %}

{% highlight VB %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016White

{% endhighlight %}

{% endtabs %}

![RadialSlider Office2016White style](Style_images/Style_img_3.png)

### Office2016DarkGray

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016DarkGray;

{% endhighlight %}

{% highlight VB %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016DarkGray

{% endhighlight %}

{% endtabs %}

![RadialSlider Office2016DarkGray style](Style_images/Style_img_4.png) 

### Office2016Black

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016Black;

{% endhighlight %}

{% highlight VB %}

radialSlider1.Style = Syncfusion.Windows.Forms.Tools.RadialSliderStyle.Office2016Black

{% endhighlight %}

{% endtabs %}

![RadialSlider Office2016Black style](Style_images/Style_img_5.png)
