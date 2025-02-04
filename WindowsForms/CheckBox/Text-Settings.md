---
layout: post
title: Text Settings in Windows Forms CheckBox control | Syncfusion®
description: Learn about Text Settings support in Syncfusion® Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Text Settings in Windows Forms CheckBox (CheckBoxAdv)

This section discusses the text settings of the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html).

Text in the CheckBoxAdv can be shadowed and wrapped by using [TextShadow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_TextShadow), [ShadowColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_ShadowColor), [ShadowOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_ShadowOffset) and [WrapText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_WrapText) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextShadow</td><td>
Determines if the text shadow is visible.</td></tr>
<tr>
<td>
ShadowColor</td><td>
The color of the text shadow.</td></tr>
<tr>
<td>
ShadowOffset</td><td>
The offset of the text shadow.</td></tr>
<tr>
<td>
WrapText</td><td>
Determines if the text in the CheckBoxAdv is wrapped.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.TextShadow = true;
this.checkBoxAdv1.ShadowColor = System.Drawing.Color.BurlyWood;
this.checkBoxAdv1.ShadowOffset = new System.Drawing.Point(8, 8);
this.checkBoxAdv1.WrapText = true;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.TextShadow = True
Me.checkBoxAdv1.ShadowColor = System.Drawing.Color.BurlyWood
Me.checkBoxAdv1.ShadowOffset = New System.Drawing.Point(8, 8)
Me.checkBoxAdv1.WrapText = True

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv TextShadow applied](Overview_images/CheckBoxAdv_shadow.jpeg)

![Windows forms CheckBoxAdv WrapText applied](Overview_images/CheckBoxAdv_wraptext.jpeg)


{% seealso %}

[Windows Forms CheckBox Alignment Settings](http://help.syncfusion.com/windowsforms/checkboxadv/alignment-settings)

{% endseealso %}

