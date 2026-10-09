---
layout: post
title: ColorUIControl Appearance in Windows Forms ColorUI | Syncfusion®
description: Learn about appearance customization in the Syncfusion Windows Forms ColorUI control, including border styles, panel sizing, and visual styles.
platform: windowsforms
control: ColorUI
documentation: ug
---
# ColorUIControl Appearance in Windows Forms ColorUI

This section discusses the appearance, border styles, and size settings of the ColorUIControl.

## Border Styles

The border style for the ColorUIControl can be set through the `BorderStyle` property.

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the border style for the control. The options are `FixedSingle`, `Fixed3D` (default), and `None`.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight vb %}

Me.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}
{% endtabs %}

![WinForms ColorUI with the FixedSingle border style applied](ColorUI_images/Overview_img236.jpeg)

## Panel Sizing

The Custom and User color panels can be stretched according to the size of the control using the following properties.

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
CustomColorsStretchOnResize</td><td>
Gets or sets a value indicating whether to stretch the Custom Colors panel on resize.</td></tr>
<tr>
<td>
UserColorsStretchOnResize</td><td>
Gets or sets a value indicating whether to stretch the User Colors panel on resize.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.colorUIControl1.CustomColorsStretchOnResize = true;
this.colorUIControl1.UserColorsStretchOnResize = true;

{% endhighlight %}

{% highlight vb %}

Me.colorUIControl1.CustomColorsStretchOnResize = True
Me.colorUIControl1.UserColorsStretchOnResize = True

{% endhighlight %}
{% endtabs %}

![WinForms ColorUI with the Custom and User color panels stretched on resize](ColorUI_images/Overview_img237.jpeg)

## VisualStyle

`VisualStyle` provides a rich and professional look and feel UI for the ColorUIControl. Some of the available visual styles are as follows:

* `Default`
* `Office2010`
* `Metro`
* `Office2016Colorful`
* `Office2016White`
* `Office2016Black`
* `Office2016DarkGray`

The visual style can be applied for the ColorUIControl using the `VisualStyle` property.

{% tabs %}
{% highlight c# %}

//Set the visual Style of the ColorUIControl control.
this.colorUIControl1.VisualStyle = Syncfusion.Windows.Forms.ColorUIStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'Set the visual Style of the ColorUI control.
Me.colorUIControl1.VisualStyle = Syncfusion.Windows.Forms.ColorUIStyle.Office2016Colorful
 
{% endhighlight %}
{% endtabs %}

![WinForms ColorUI with the Office2016Colorful visual style applied](ColorUI_images/Office2016Colorful.jpeg)
