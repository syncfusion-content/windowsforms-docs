---
layout: post
title: Text-Settings
description: text settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Text Settings

This section discusses the text settings of the CheckBoxAdv.

Text in the CheckBoxAdv can be shadowed and wrapped as illustrated below.

Table 395: Property Table

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


{% highlight c# %}



this.checkBoxAdv1.TextShadow = true;

this.checkBoxAdv1.ShadowColor = System.Drawing.Color.BurlyWood;

this.checkBoxAdv1.ShadowOffset = new System.Drawing.Point(8, 8);

this.checkBoxAdv1.WrapText = true;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.TextShadow = True

Me.checkBoxAdv1.ShadowColor = System.Drawing.Color.BurlyWood

Me.checkBoxAdv1.ShadowOffset = New System.Drawing.Point(8, 8)

Me.checkBoxAdv1.WrapText = True

{% endhighlight %}

![](Overview_images/Overview_img612.jpeg)

![](Overview_images/Overview_img613.jpeg)


A sample which demonstrates the TextShadow property of CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

See Also

Alignment Settings