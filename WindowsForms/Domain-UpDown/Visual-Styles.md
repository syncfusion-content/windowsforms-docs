---
layout: post
title: Visual Styles in Windows Forms DomainUpdownExt | Syncfusion®
description: Learn about visual styles in Syncfusion Windows Forms DomainUpdownExt control, including Office2007 themes, Office2016 themes, XP themes, and custom colors.
platform: windowsforms
control: DomainUpdownExt
documentation: ug
---

# Visual Styles in WinForms DomainUpDownExt

WinForms DomainUpDownExt supports the Office2007 visual style with all three color schemes.

{% tabs %}
{% highlight c# %}

//sets the Office2007 Visual Style.
this.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007;

//To set Blue Color scheme.
this.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//To set Silver Color scheme.
this.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//To set Black Color scheme.
this.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vb %}

'Sets the Office2007 Visual Style.
Me.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

'To set Blue Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'To set Silver Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'To set Black Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}
{% endtabs%}

![WinForms DomainUpDownExt with the Office2007 color themes](DomainUpdownExt_images/Overview_img427.png)

It also provides support for the XP themes look and feel.

{% tabs %}
{% highlight c# %}

// Enable themes.
this.domainUpDownExt1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vb %}

' Enable themes.
Me.domainUpDownExt1.ThemesEnabled = True

{% endhighlight %}
{% endtabs %}

![WinForms DomainUpDownExt with Office2007 themes applied](DomainUpdownExt_images/Overview_img428.png)

![WinForms DomainUpDownExt with themes enabled](DomainUpdownExt_images/Overview_img429.png)

## Office2016 Themes

WinForms DomainUpDownExt supports Office2016 visual styles such as Office2016Colorful, Office2016White, Office2016Black, and Office2016DarkGray.

// Sample code for setting the "Office2016 Colorful" visual style for the WinForms DomainUpDownExt

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![WinForms DomainUpDownExt with the Office2016 Colorful theme](DomainUpdownExt_images/Overview_img433.png)

## Custom Colors

You can also apply custom colors to the WinForms DomainUpDownExt control by setting `ColorScheme` to "Managed" and specifying the custom color through the [ApplyManagedColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Colors.html#Syncfusion_Windows_Forms_Office2007Colors_ApplyManagedColors_System_Windows_Forms_Form_System_Drawing_Color_) method as follows.

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Orange);

{% endhighlight %}

{% highlight vb %}

Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Office2007Colors.ApplyManagedColors(Me, Color.Orange)

{% endhighlight %}
{% endtabs %}

![WinForms DomainUpDownExt with custom colors applied](DomainUpdownExt_images/Overview_img430.png)
