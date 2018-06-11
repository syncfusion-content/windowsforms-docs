---
layout: post
title: Ribbon-Form | WindowsForms | Syncfusion
description: ribbon form
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon Form

`RibbonForm` is an extension that replaces the default form to enable different Visual styles to the ribbon. This RibbonForm now gives similar look and feel of Microsoft office, to its controls.

## Appearance Settings

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Appearance</td><td>
Sets the appearance of the form. The values are,Normal andOffice2007 (Default)Office 2010</td></tr>
<tr>
<td>
ColorScheme</td><td>
Specifies the office color scheme of the Ribbon form. The color schemes are, Blue, Black, Silver and Managed (Default).</td></tr>
<tr>
<td>
EnableAeroTheme</td><td>
Specifies the Aero theme of the Ribbon form. </td></tr>
<tr>
<td>
EnableHighContrastTheme</td><td>
Specifies whether to use default High Contrast theme color</td></tr>
<tr>
<td>
Font</td><td>
Gets or sets the RibbonControlAdv Font.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Specifies the appearance of the form
this.Appearance = AppearanceType.Office2007;

//Specifies the color scheme for the form
this.ColorScheme = ColorSchemeType.Blue;

//Specifies the Aero theme
this.EnableAeroTheme = true;

{% endhighlight %}

{% highlight vb %}

Me.Appearance = AppearanceType.Office2007

Me.ColorScheme = ColorSchemeType.Blue

Me.EnableAeroTheme = True

{% endhighlight %}

{% endtabs %}

`IsFormManager` property can be used to remove the form title bar and replace it with the RibbonControlAdv build in system buttons.

*	Default Theme

![](Ribbon_Form_Images/Ribbon-Form_img1.jpg)

*	Aero Theme

![](Ribbon_Form_Images/Ribbon-Form_img2.jpg)


## Customization

The property which lets you set borders for the Office2007Style form is as follows.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
Borders</td><td>
Gets/sets the border values of an Office 2007 style form. Sets borders for Left, Top, Right and Bottom sides of the form.</td></tr>
</table>


{% highlight c# %}

this.Borders = new System.Windows.Forms.Padding(10);

{% endhighlight %}

{% highlight vbnet %}

Me.Borders = New System.Windows.Forms.Padding(10)

{% endhighlight %}


### Customizing the Top Left Edge

This TopLeftRadius property gets/sets the curved radius of the top left edge of the form. Default is 8.

{% highlight c# %}

this.TopLeftRadius = 20;

{% endhighlight %}

{% highlight vbnet %}

Me.TopLeftRadius = 20

{% endhighlight %}
