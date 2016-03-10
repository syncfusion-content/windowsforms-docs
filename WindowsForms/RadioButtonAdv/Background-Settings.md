---
layout: post
title: Background-Settings | WindowsForms | Syncfusion
description: background settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Background Settings

The background settings of the RadioButtonAdv are discussed below.

The RadioButtonAdv can be provided with a gradient background using the properties given below.

Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the RadioButtonAdv.The options included are as follows.{{ '_HorizontalGradient,_' | markdownify }}{{ '_VerticalGradient and_' | markdownify }}{{ '_Default._' | markdownify }}</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the RadioButtonAdv.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the RadioButtonAdv.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient;

this.radioButtonAdv1.GradientStart = System.Drawing.Color.LightBlue;

this.radioButtonAdv1.GradientEnd = System.Drawing.Color.DarkSalmon;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient

Me.radioButtonAdv1.GradientStart = System.Drawing.Color.LightBlue

Me.radioButtonAdv1.GradientEnd = System.Drawing.Color.DarkSalmon

{% endhighlight %}

![](Overview_images/Overview_img636.jpeg)


N> Gradient background cannot be applied to the RadioButtonAdv when its BackgroundStyle property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.

A sample which demonstrates the Background Settings of RadioButtonAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo