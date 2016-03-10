---
layout: post
title: Text-Settings | WindowsForms | Syncfusion
description: text settins
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Text Settings

This section discusses the text settings of the RadioButtonAdv.

Text in the RadioButtonAdv can be shadowed and wrapped as illustrated below.

Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextShadow</td><td>
Determines if the text shadow is visible.</td></tr>
<tr>
<td>
ShadowColor</td><td>
Specifies the color of the text shadow.</td></tr>
<tr>
<td>
ShadowOffset</td><td>
Specifies the offset of the text shadow.</td></tr>
<tr>
<td>
WrapText</td><td>
Determines if the text in the CheckBoxAdv is wrapped.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.TextShadow = true;

this.radioButtonAdv1.ShadowColor = System.Drawing.Color.Gold;

this.radioButtonAdv1.ShadowOffset = new System.Drawing.Point(8, 8);

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.TextShadow = True

Me.radioButtonAdv1.ShadowColor = System.Drawing.Color.Gold

Me.radioButtonAdv1.ShadowOffset = New System.Drawing.Point(8, 8)

{% endhighlight %}

![](Overview_images/Overview_img633.jpeg)


A sample which demonstrates the TextShadow property of RadioButtonAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{%seealso%}

Alignment Settings

{%endseealso%}