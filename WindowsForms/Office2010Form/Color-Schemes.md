---
layout: post
title: Color-Schemes | WindowsForms | Syncfusion
description: color schemes
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Color Schemes

Office2010 Form supports following office color schemes which can be edited through `ColorScheme` property.

* Blue
* Silver
* Black
* Managed

{% tabs %}

{% highlight c# %}

//To set Blue color scheme.

this.ColorScheme = Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'To set Blue color scheme.

Me.ColorScheme = Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

  ![](Color-Schemes_images/ColorScheme1.png)
  
To apply the Managed color scheme `ApplyManagedColors` function from Office2010Colors is used as in the below code snippet.

{% tabs %}

{% highlight c# %}

//To set Managed color scheme.

this.ColorScheme = Office2010Theme.Managed;

Office2010Colors.ApplyManagedColors(this, Color.DarkMagenta);

{% endhighlight %}

{% highlight VB %}

'To set Managed color scheme.

Me.ColorScheme = Office2010Theme.Managed

Office2010Colors.ApplyManagedColors(this, Color.DarkMagenta);

{% endhighlight %}

{% endtabs %}

  ![](Color-Schemes_images/ManagedScheme.png)

## Background Color for Office2010 Form

The background of the Office2010 form can be same, as the color scheme applied to the form. `UseOffice2007SchemeBackColor` property has to true, to make this effective.

{% tabs %}

{% highlight c# %}

this.UseOffice2010SchemeBackColor = true;

{% endhighlight %}

{% highlight VB %}

Me.UseOffice2010SchemeBackColor = True

{% endhighlight %}

{% endtabs %}

![](Color-Schemes_images/ColorScheme2.png)
  
  
## Applying Color Schemes

Office2010 Form now have the option to apply the Aero theme on forms, which provides a glassy effect. This can be done through the `ApplyAeroTheme` property.

Aero theme support is available for Office2010 Forms when used on Windows Vista machines. Previously, ColorSchemes could not be applied to the Office2010 Form when the Aero theme was enabled. Now, ColorSchemes can be applied by disabling the Aero theme on Office2010 Forms. 

{% tabs %}

{% highlight c# %}

// Disables Aero Theme on Office2010 Form.

this. ApplyAeroTheme = false;

{% endhighlight %}

{% highlight VB %}

‘Disables Aero Theme on Office2010 Form.

Me. ApplyAeroTheme = false;

{% endhighlight %}

{% endtabs %}