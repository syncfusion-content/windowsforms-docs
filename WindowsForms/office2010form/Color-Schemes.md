---
layout: post
title: Color Schemes in Windows Forms Office2010Form control | Syncfusion
description: Learn about Color Schemes support in Syncfusion® Windows Forms Office2010Form control and more details.
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Color Schemes in Windows Forms Office2010Form

Office2010Form supports following office color schemes which can be edited through `ColorScheme` property.

* Blue
* Silver
* Black
* Managed

{% tabs %}

{% highlight C# %}

//To set Blue color scheme.

this.ColorScheme = Office2010Theme.Blue;

{% endhighlight %}

{% highlight VB %}

'To set Blue color scheme.

Me.ColorScheme = Office2010Theme.Blue

{% endhighlight %}

{% endtabs %}

  ![Winforms showing colorscheme blue applied in office2010form](Color-Schemes_images/ColorScheme1.png)
  
To apply the Managed color scheme `ApplyManagedColors` function from Office2010Colors is used as in the below code snippet.

{% tabs %}

{% highlight C# %}

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

  ![Winforms showing colorscheme managed applied in office2007form](Color-Schemes_images/ManagedScheme.png)

## Background color for Office2010 Form

The background of the Office2010 Form can be same, as the color scheme applied to the form. `UseOffice2007SchemeBackColor` property has to `true`, to make this effective.

{% tabs %}

{% highlight C# %}

this.UseOffice2010SchemeBackColor = true;

{% endhighlight %}

{% highlight VB %}

Me.UseOffice2010SchemeBackColor = True

{% endhighlight %}

{% endtabs %}

![Winforms showing background color applied in office2010form](Color-Schemes_images/ColorScheme2.png)
  
  
## Applying color schemes

Office2010Form now have the option to apply the Aero theme on forms, which provides a glassy effect. This can be done through the [ApplyAeroTheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_ApplyAeroTheme) property.

Aero theme support is available for Office2010Form when used on Windows Vista machines. Previously, ColorSchemes could not be applied to the Office2010Form when the Aero theme was enabled. Now, ColorSchemes can be applied by disabling the Aero theme on Office2010Form.

{% tabs %}

{% highlight C# %}

// Disables Aero Theme on Office2010 Form.

this.ApplyAeroTheme = false;

{% endhighlight %}

{% highlight VB %}

‘Disables Aero Theme on Office2010 Form.

Me.ApplyAeroTheme = false;

{% endhighlight %}

{% endtabs %}
