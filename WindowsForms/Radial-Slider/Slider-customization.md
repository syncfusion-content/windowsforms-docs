---
layout: post
title: Slider Customization in Windows Forms Radial Slider | Syncfusion
description: Learn about Slider Customization support in Syncfusion Windows Forms Radial Slider control and more details.
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Slider Customization in Windows Forms Radial Slider

## Slider background color

The background color for the radial slider can be customized using the [BackgroundColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html#Syncfusion_Windows_Forms_Tools_RadialSlider_BackgroundColor).

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

The circle color of the [RadialSlider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html) can be customized using the [InnerCircleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html#Syncfusion_Windows_Forms_Tools_RadialSlider_InnerCircleColor) and [OuterCircleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html#Syncfusion_Windows_Forms_Tools_RadialSlider_OuterCircleColor) properties.

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

The needle color of the **RadialSlider** can be customized using the [SliderNeedleColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html#Syncfusion_Windows_Forms_Tools_RadialSlider_SliderNeedleColor) property.

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

The foreground color of the **RadialSlider** can be customized using the [ForeColor](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?view=netframework-4.7.2) property.

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

The needle type of the **RadialSlider** can be customized using the [NeedleType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialSlider.html#Syncfusion_Windows_Forms_Tools_RadialSlider_NeedleType) enumeration. Available needle types in the RadialSlider are:

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

The **RadialSlider** control contains a rich set of themes for professional representation. You can easily modify the look and feel of the RadialSlider using built-in themes.

The following options are available in RadialSlider:

* Default
* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black

### Default

This option helps to set the default theme.

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
