---
layout: post
title: Background Settings in Windows Forms Radio Button control | Syncfusion
description: Learn about Background Settings support in Syncfusion Windows Forms Radio Button (RadioButtonAdv) control and more details.
platform: WindowsForms
control: RadioButtonAdv
documentation: ug
---

# Background Settings in Windows Forms Radio Button (RadioButtonAdv)

The background settings of the RadioButtonAdv are discussed below.

The RadioButtonAdv can be provided with a gradient background using the properties given below.


<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the RadioButtonAdv.The options included are as follows.{{ '_HorizontalGradient,_' | markdownify }} {{ '_VerticalGradient and_' | markdownify }} {{ '_Default._' | markdownify }}</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the RadioButtonAdv.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the RadioButtonAdv.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient;
this.radioButtonAdv1.GradientStart = System.Drawing.Color.LightCoral;
this.radioButtonAdv1.GradientEnd = System.Drawing.Color.DarkSlateBlue;

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient
Me.radioButtonAdv1.GradientStart = System.Drawing.Color.LightCoral
Me.radioButtonAdv1.GradientEnd = System.Drawing.Color.DarkSlateBlue

{% endhighlight %}
{% endtabs %}

![Windows forms RadioButtonAdv gradient style applied in background](Overview_images/RadioButtonAdv_backgroundstyle.jpeg)


N> Gradient background cannot be applied to the RadioButtonAdv when its BackgroundStyle property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.
