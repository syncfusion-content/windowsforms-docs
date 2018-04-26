---
layout: post
title: Color-Schemes | WindowsForms | Syncfusion
description: color schemes
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Color schemes

Office2007Form supports following office color schemes which can be edited through the `ColorScheme` property.

* Blue
* Silver
* Black
* Managed


![](Color-Schemes_images/Color-Schemes_img1.png)

{% tabs %}

{% highlight C# %}

//To set Blue color scheme

this.ColorScheme = Office2007Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'To set Blue color scheme

Me.ColorScheme = Office2007Theme.Blue

{% endhighlight %}

{% endtabs %}

![](Color-Schemes_images/Color-Schemes_img2.png)

To apply the Managed color scheme `ApplyManagedColors` function is used as in the below code snippet.

{% tabs %}

{% highlight C# %}

//To set Managed color scheme.

this.ColorScheme = Office2010Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.DarkMagenta);

{% endhighlight %}

{% highlight VB %}

'To set Managed color scheme.

Me.ColorScheme = Office2010Theme.Managed

Office2007Colors.ApplyManagedColors(this, Color.DarkMagenta);

{% endhighlight %}

{% endtabs %}

  ![](Color-Schemes_images/Managed.png)


## Background color for Office2007Form

The background color of the Office2007Form can be same, as the color scheme applied to the Form. `UseOffice2007SchemeBackColor` property has to be `true`, to make this effective.

{% tabs %}

{% highlight C# %}

this.UseOffice2007SchemeBackColor = true;

{% endhighlight %}

{% highlight VB %}

Me.UseOffice2007SchemeBackColor = True

{% endhighlight %}

{% endtabs %}

![](Color-Schemes_images/Color-Schemes_img3.png)

## Applying color schemes

Office2007Form now have the ability to apply or not to apply AeroTheme on Forms with a glassy effect. This can be done by `ApplyAeroTheme` property.

AeroTheme support is available for Office2007Form when used in Vista machine. Earlier, ColorSchemes cannot be applied to Office2007Form when AeroTheme was enabled. Now ColorSchemes can be applied by disabling AeroTheme on Office2007Form.

{% tabs %}

{% highlight C# %}

// Disables Aero Theme on Office2007Form.

this. ApplyAeroTheme = false;

{% endhighlight %}

{% highlight VB %}

‘Disables Aero Theme on Office2007Form.

Me. ApplyAeroTheme = false;

{% endhighlight %}

{% endtabs %}