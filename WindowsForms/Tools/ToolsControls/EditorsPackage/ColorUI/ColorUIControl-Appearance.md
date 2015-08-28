---
layout: post
title: ColorUIControl Appearance
description: coloruicontrol appearance
platform: windowsforms
control: ColorUI
documentation: ug
---
# ColorUIControl Appearance

This section discusses the appearance, border styles and size settings of the ColorUIControl.

## Border Styles

The border styles for the ColorUIControl can be set through BorderStyle property.

_Table201: Property Table_

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Sets border style for the control. The options are,{{ '_FixedSingle,_' | markdownify }}{{ '_Fixed3D (default) and_'  | markdownify }}{{ '_None._' | markdownify }}</td></tr>
</table>




{% highlight c# %}

this.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight  %}
{% highlight vbnet %}





Me.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle


{% endhighlight  %}

![](ColorUI_images/Overview_img236.jpeg) 



## Panel Sizing

The Custom and User color panels can be stretched according to the size of the control using the below properties respectively.

_Table202: Property Table_

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
CustomColorStretchOnResize</td><td>
Gets or Sets enable stretch Custom colors panel on resize.</td></tr>
<tr>
<td>
UserColorStretchOnResize</td><td>
Gets or Sets enable stretch User colors panel on resize.</td></tr>
</table>





{% highlight c# %}
this.colorUIControl1.CustomColorsStretchOnResize = true;

this.colorUIControl1.UserColorsStretchOnResize = true;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorUIControl1.CustomColorsStretchOnResize = True

Me.colorUIControl1.UserColorsStretchOnResize = True

{% endhighlight  %}

![](ColorUI_images/Overview_img237.jpeg) 
