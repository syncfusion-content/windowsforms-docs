---
layout: post
title: Background Settings in Windows Forms CheckBox control | Syncfusion®
description: Learn about Background Settings support in Syncfusion® Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Background Settings in Windows Forms CheckBox (CheckBoxAdv)

The background of the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed using the [BackgroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BackgroundStyle), [GradientStart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_GradientStart) and [GradientEnd](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_GradientEnd) properties.

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


N> Gradient background cannot be applied to the CheckBoxAdv when its [BackgroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BackgroundStyle) property is set to 'Default'. Also, the background image cannot be displayed with gradient settings.

