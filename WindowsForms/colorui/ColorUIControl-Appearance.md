---
layout: post
title: ColorUIControl Appearance in Windows Forms ColorUI | Syncfusion®
description: Learn about ColorUIControl Appearance support in Syncfusion® Windows Forms ColorUI control, its elements and more details.
platform: windowsforms
control: ColorUI
documentation: ug
---
# ColorUIControl Appearance in Windows Forms ColorUI

This section discusses the appearance, border styles and size settings of the ColorUIControl.

## Border Styles

The border styles for the ColorUIControl can be set through BorderStyle property.

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Sets border style for the control. The options are,{{ 'FixedSingle,' | markdownify }}{{ 'Fixed3D (default) and'  | markdownify }}{{ 'None.' | markdownify }}</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight  %}

{% highlight vb %}

Me.colorUIControl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight  %}
{% endtabs %}

![Overview_img236](ColorUI_images/Overview_img236.jpeg) 

## Panel Sizing

The Custom and User color panels can be stretched according to the size of the control using the below properties respectively.

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

{% tabs %}
{% highlight c# %}

this.colorUIControl1.CustomColorsStretchOnResize = true;
this.colorUIControl1.UserColorsStretchOnResize = true;

{% endhighlight  %}

{% highlight vb %}

Me.colorUIControl1.CustomColorsStretchOnResize = True
Me.colorUIControl1.UserColorsStretchOnResize = True

{% endhighlight  %}
{% endtabs %}

![Overview_img237](ColorUI_images/Overview_img237.jpeg)

## VisualStyle

VisualStyles provides rich and professional look and feel UI for the ColorUIControl. Some of the available VisualStyles are as follows:

* Default
* Office2010
* Metro
* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray

The visual style can be applied for the ColorUIControl using `VisualStyle` property.

{% tabs %}
{% highlight C# %}

//Set the visual Style of the ColorUIControl control.
this.colorUIControl1.VisualStyle = Syncfusion.Windows.Forms.ColorUIStyle.Office2016Colorful;

{% endhighlight %}

{% highlight VB %}

'Set the visual Style of the ColorUI control.
Me.colorUIControl1.VisualStyle = Syncfusion.Windows.Forms.ColorUIStyle.Office2016Colorful
 
{% endhighlight %}
{% endtabs %}

![Office2016Colorful](ColorUI_images/Office2016Colorful.jpeg)
