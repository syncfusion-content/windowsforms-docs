---
layout: post
title: Style-Settings
description: style settings
platform: windowsforms
control: Calculator
documentation: ug
---

# Style Settings

This section discusses on the following styles:

## Button Flat Styles

The flat styles for the button objects in a Calculator control is set using CalculatorControl.FlatStyle property. The styles are Flat, Popup, Standard (default) and System.

{% highlight c# %}



this.calculatorControl1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.FlatStyle = System.Windows.Forms.FlatStyle.Flat

{% endhighlight %}

![](Overview_images/Overview_img121.jpeg) 



## Themes and Button Styles

### Themes for the Calculator control

Essential Tools Calculator control is themed by default. To disable, set ThemesEnabled property to false.

{% highlight c# %}



this.calculatorControl1.ThemesEnabled = false;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.ThemesEnabled = False

{% endhighlight %}

![](Overview_images/Overview_img122.jpeg) 



### Button Styles

The Calculator control supports the below button styles. UseVisualStyle property should be set to true to enable button styles for the control.

* Classic (default)
* Office2000
* WindowsXP
* OfficeXP
* Office2003
* Office2007



{% highlight c# %}



this.calculatorControl1.UseVisualStyle = true;

//Setting Office2007 button style for the calculator control

this.calculatorControl1.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.UseVisualStyle = True

'Setting Office2007 button style for the calculator control

this.calculatorControl1.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;

{% endhighlight %}

![](Overview_images/Overview_img123.jpeg) 



### OfficeColor Schemes

Essential Tools Calculator control supports all the three OfficeColorSchemes. When the ButtonStyle is set to Office2007 style, the color schemes will be blue by default. It can be modified using Office2007Theme property.

{% highlight c# %}



this.calculatorControl1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{% endhighlight %}

![](Overview_images/Overview_img124.png) 



### Custom Colors

We can also apply custom colors to the Calculator control by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}



this.calculatorControl1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Navy);

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Navy)

{% endhighlight %}

![](Overview_images/Overview_img125.jpeg) 