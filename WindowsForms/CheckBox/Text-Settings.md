---
layout: post
title: Text-Settings | WindowsForms | Syncfusion
description:  his section gives the detailed description about customizing the text feature of CheckBoxAdv control.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Text Settings of CheckBoxAdv

This section discusses the text settings of the [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html).

Text in the CheckBoxAdv can be shadowed and wrapped by using [TextShadow](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~TextShadow.html), [ShadowColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~ShadowColor.html), [ShadowOffset](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~ShadowOffset.html) and [WrapText](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~WrapText.html) properties.

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

[Alignment Settings](http://help.syncfusion.com/windowsforms/checkboxadv/alignment-settings)

{% endseealso %}

