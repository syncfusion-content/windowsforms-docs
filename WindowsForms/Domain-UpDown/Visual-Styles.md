---
layout: post
title: Visual Styles in Windows Forms Domain UpDown control | Syncfusion®
description: Learn about Visual Styles support in Syncfusion® Windows Forms Domain UpDown (DomainUpdownExt) control and more details.
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Visual Styles in Windows Forms Domain UpDown (DomainUpdownExt)

DomainUpDownExt supports Office2007 visual style with all three color schemes.

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

{% endhighlight  %}

{% highlight vb %}

'Sets the Office2007 Visual Style.
Me.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

'To set Blue Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'To set Silver Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'To set Black Color scheme.
Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight  %}
{% endtabs%}

![Office2007 color themes](DomainUpdownExt_images/Overview_img427.png)

It also provides support for XP Themes look and feel.

{% tabs %}
{% highlight c# %}

//Enable Themes.
this.domainUpDownExt1.ThemesEnabled =true;

{% endhighlight  %}

{% highlight vb %}

'Enable Themes.
Me.domainUpDownExt1.ThemesEnabled =True

{% endhighlight  %}
{% endtabs %}

![DomainUpDownExt office2007 themes](DomainUpdownExt_images/Overview_img428.png) 

![DomainUpDownExt themes enabled](DomainUpdownExt_images/Overview_img429.png)

## Office2016 Themes

DomainUpDownExt supports Office2016 visual styles such as Office2016Colorful,Office2016White,Office2016Black and Office2016DarkGray.

//Sample code for setting "Office2016 Colorful" Visual style for DomainUpDownExt

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight  %}

{% highlight vb %}

Me.domainUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight  %}
{% endtabs %}

![Office2016 theme](DomainUpdownExt_images/Overview_img433.png)

## Custom Colors

We can also apply custom colors to the DomainUpDownExt control by setting ColorScheme to "Managed" and specifying the custom color through the [ApplyManagedColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Colors.html#Syncfusion_Windows_Forms_Office2007Colors_ApplyManagedColors_System_Windows_Forms_Form_System_Drawing_Color_) method as follows.

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this,Color.Orange);

{% endhighlight  %}

{% highlight vb %}

Me.domainUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(Me,Color.Orange)

{% endhighlight  %}
{% endtabs %}

![Custom colors](DomainUpdownExt_images/Overview_img430.png)
