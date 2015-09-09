---
layout: post
title: Themes-and-Visual-Styles
description: themes and visual styles
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Themes and Visual Styles

This section discusses themes and visual styles settings of the NumericUpDownExt control.

## Themes

Themes define the look and feel of the NumericUpDownExt control. They can be set using the property given below.



<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether XP Themes (visual styles) should be used for this control when available.</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.ThemesEnabled = true;                          

{% endhighlight %}

{% highlight vbnet %}

Me.numericUpDownExt1.ThemesEnabled = True

{% endhighlight %}

![](Themes-and-Visual-Styles_images/Themes-and-Visual-Styles_img1.png)



## Visual Styles

Visual Styles enhance the appearance of the NumericUpDownExt control and can be set using the property given below.



<table>
<tr>
<th>
NumericUpDownExt Properties</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Specifies the visual style of the NumericUpDownExt control. It includes the options given below.Default andOffice2007.</td></tr>
<tr>
<td>
ColorScheme</td><td>
Gets / sets Office2007Theme for Office2007 style.</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007;

this.numericUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;    

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

Me.numericUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

{% endhighlight %}

![](Themes-and-Visual-Styles_images/Themes-and-Visual-Styles_img2.png)



![](Themes-and-Visual-Styles_images/Themes-and-Visual-Styles_img3.png)



When the ColorScheme property is set to 'Managed', the NumericUpDownExt control can be displayed using custom colors supported by the control.

This can be done programmatically as follows.

{% highlight c# %}



this.numericUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007;

this.numericUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orange);

{% endhighlight %}

{% highlight vbnet %}

Me.numericUpDownExt1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2007

Me.numericUpDownExt1.ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orange)

{% endhighlight %}

![](Themes-and-Visual-Styles_images/Themes-and-Visual-Styles_img4.png)



N> The ThemesEnabled property should be set to 'True' for the above settings to take effect.

A sample which demonstrates the ThemesEnabled property and Office 2007 Visual Styles of TextBoxExt control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

