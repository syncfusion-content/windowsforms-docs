---
layout: post
title: Background-Settings | WindowsForms | Syncfusion
description: background settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Background Settings

The background of the [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed using the [BackgroundStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~BackgroundStyle.html), [GradientStart](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~GradientStart.html) and [GradientEnd](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~GradientEnd.html) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the CheckBoxAdv.The options included are as follows.{{ 'HorizontalGradient,' | markdownify }}{{ 'VerticalGradient and' | markdownify }}{{ 'Default.' | markdownify }}</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the CheckboxAdv.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the CheckboxAdv.</td></tr>
</table>

{%tabs %}
{% highlight c# %}

this.checkBoxAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient;
this.checkBoxAdv1.GradientStart = System.Drawing.Color.Aqua;
this.checkBoxAdv1.GradientEnd = System.Drawing.Color.Magenta;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.BackgroundStyle = Syncfusion.Windows.Forms.Tools.CheckBoxAdvBackStyle.HorizontalGradient
Me.checkBoxAdv1.GradientStart = System.Drawing.Color.Aqua
Me.checkBoxAdv1.GradientEnd = System.Drawing.Color.Magenta

{% endhighlight %}
{% endtabs %}

 ![Windows forms CheckBoxAdv gradient style applied in background](Overview_images/CheckBoxAdv_backgroundcolor.jpeg)


N> Gradient background cannot be applied to the CheckBoxAdv when its [BackgroundStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~BackgroundStyle.html) property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.

