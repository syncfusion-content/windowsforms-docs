---
layout: post
title: Color Schemes in Windows Forms Office2007Form control | Syncfusion
description: Learn about Color Schemes support in Syncfusion® Windows Forms Office2007Form control and more details.
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Color Schemes in Windows Forms Office2007Form

Office2007Form supports following office color schemes which can be edited through the `ColorScheme` property.

* Blue
* Silver
* Black
* Managed


![Winforms showing how to apply colorscheme in office2007form](Color-Schemes_images/Color-Schemes_img1.png)

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

![Winforms showing colorscheme blue applied in office2007form](Color-Schemes_images/Color-Schemes_img2.png)

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

![Winforms showing colorscheme managed applied in office2007form](Color-Schemes_images/Managed.png)


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

![Winforms showing background color applied in office2007form](Color-Schemes_images/Color-Schemes_img3.png)

## Applying color schemes

Office2007Form now have the ability to apply or not to apply AeroTheme on Forms with a glassy effect. This can be done by [ApplyAeroTheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_ApplyAeroTheme) property.

AeroTheme support is available for Office2007Form when used in Vista machine. Earlier, ColorSchemes cannot be applied to Office2007Form when AeroTheme was enabled. Now ColorSchemes can be applied by disabling AeroTheme on Office2007Form.

{% tabs %}

{% highlight C# %}

// Disables Aero Theme on Office2007Form.

this.ApplyAeroTheme = false;

{% endhighlight %}

{% highlight VB %}

‘Disables Aero Theme on Office2007Form.

Me.ApplyAeroTheme = false;

{% endhighlight %}

{% endtabs %}
