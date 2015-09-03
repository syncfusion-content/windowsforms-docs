---
layout: post
title: Background-Settings
description: background settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Background Settings

The background settings of the CheckBoxAdv are discussed below.

The CheckBoxAdv can be provided with a gradient background using the properties given below.

Table 400: Property Table

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the CheckBoxAdv.The options included are as follows.{{ '_HorizontalGradient,_' | markdownify }}{{ '_VerticalGradient and_' | markdownify }}{{ '_Default._' | markdownify }}</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the CheckboxAdv.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the CheckboxAdv.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient;

this.checkBoxAdv1.GradientStart = System.Drawing.Color.Aqua;

this.checkBoxAdv1.GradientEnd = System.Drawing.Color.Magenta;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient

Me.checkBoxAdv1.GradientStart = System.Drawing.Color.Aqua

Me.checkBoxAdv1.GradientEnd = System.Drawing.Color.Magenta

{% endhighlight %}

 ![](Overview_images/Overview_img616.jpeg)


> Note: Gradient background cannot be applied to the CheckBoxAdv when its BackgroundStyle property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.

A sample which demonstrates the Background Settings of CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_