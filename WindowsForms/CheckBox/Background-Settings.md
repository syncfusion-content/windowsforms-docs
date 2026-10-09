---
layout: post
title: Background Settings in Windows Forms CheckBoxAdv | Syncfusion®
description: Learn about background settings in the Syncfusion Windows Forms CheckBoxAdv control, including BackgroundStyle, GradientStart, and GradientEnd properties for gradient backgrounds.
platform: windowsforms
control: CheckBoxAdv
documentation: ug
---

# Background Settings in WinForms CheckBox

The background of the [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed using the [BackgroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BackgroundStyle), [GradientStart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_GradientStart) and [GradientEnd](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_GradientEnd) properties.

<table>
<tr>
<th>
WinForms CheckBox Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundStyle</td><td>
Sets the background style of the WinForms CheckBox. The options are `HorizontalGradient`, `VerticalGradient`, and `Default`.</td></tr>
<tr>
<td>
GradientStart</td><td>
Sets the start color of the gradient of the background of the WinForms CheckBox.</td></tr>
<tr>
<td>
GradientEnd</td><td>
Sets the end color of the gradient of the background of the WinForms CheckBox.</td></tr>
</table>

{% tabs %}
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

![WinForms CheckBoxAdv with a gradient style applied in the background](Overview_images/CheckBoxAdv_backgroundcolor.jpeg)


>**NOTE**: A gradient background cannot be applied to the WinForms CheckBox when its [BackgroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BackgroundStyle) property is set to `Default`. Also, the background image cannot be displayed with gradient settings.

