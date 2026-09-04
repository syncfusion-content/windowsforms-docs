---
layout: post
title: Background Settings in Windows Forms Radio Button | Syncfusion®
description: Background settings in Windows Forms Radio Button enable applying gradient backgrounds and configuring start and end colors for customized control appearance.
platform: WindowsForms
control: Radio Button
documentation: ug
---

# Background Settings in Windows Forms Radio Button

The background settings of the Radio Button are discussed below.

The Radio Button can be provided with a gradient background using the properties given below.


<table>
<tr>
<th>
Radio Button Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the Radio Button.The options included are as follows.{{ '_HorizontalGradient,_' | markdownify }} {{ '_VerticalGradient and_' | markdownify }} {{ '_Default._' | markdownify }}</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the Radio Button.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the Radio Button.</td></tr>
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

![Windows forms Radio Button gradient style applied in background](Overview_images/RadioButtonAdv_backgroundstyle.jpeg)


N> Gradient background cannot be applied to the Radio Button when its BackgroundStyle property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.
