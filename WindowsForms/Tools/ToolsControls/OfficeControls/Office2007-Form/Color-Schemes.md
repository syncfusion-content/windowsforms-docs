---
layout: post
title: Color-Schemes
description: color schemes
platform: windowsforms
control: Office2007 Form
documentation: ug
---

# Color Schemes

Office2007 Form supports all the three office color schemes which can be edited through ColorSchemes property.

![](Color-Schemes_images/Color-Schemes_img1.jpeg)

{% highlight c# %}

//To set Blue color scheme

this.ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight vbnet %}

'To set Blue color scheme

Me.ColorScheme = Office2007Theme.Blue

{% endhighlight %}

![](Color-Schemes_images/Color-Schemes_img2.jpeg)


## Background Color for Office2007 Form

The background of the Office2007 form can be same, as the color scheme applied to the form. Set UseOffice2007SchemeBackColor property to true to make this effective.


{% highlight c# %}

this.UseOffice2007SchemeBackColor = true;

{% endhighlight %}

{% highlight vbnet %}

Me.UseOffice2007SchemeBackColor = True

{% endhighlight %}

![](Color-Schemes_images/Color-Schemes_img3.jpeg)

## Vista Aero Theme

Vista Aero theme support is available for Office Form when used in Vista machine.

![](Color-Schemes_images/Color-Schemes_img4.jpeg)

## Office2007Form Color Scheme Settings

Office2007Forms now have the ability to apply or not to apply AeroTheme on forms with a glassy effect. This can be done by ApplyAeroTheme property, setting its value either to True or False.

AeroTheme support is available for Office2007Form when used in Vista machine. Earlier ColorSchemes cannot be applied to Office2007Form when AeroTheme was enabled. Now ColorSchemes can be applied by disabling AeroTheme on Office2007Form. 

The following code illustrates how ColorSchemes can be applied by disabling AeroTheme on Office2007Form.


{% highlight c# %}

// Disables Aero Theme on Office2007Form.

this. ApplyAeroTheme = false;

{% endhighlight %}

{% highlight vbnet %}

‘Disables Aero Theme on Office2007Form.

Me. ApplyAeroTheme = false;

{% endhighlight %}