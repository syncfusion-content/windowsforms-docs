---
layout: post
title: Alignment-Settings | WindowsForms | Syncfusion
description: alignment settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Alignment Settings

This section discusses the alignment settings of the CheckBoxAdv.

## Text Alignment

Text in the CheckBoxAdv can be aligned to the desired location as given below.

The `TextContentAlignment` property options included are as follows, TopLeft, TopCenter, TopRight, MiddleLeft, MiddleCenter, MiddleRight, BottomLeft, BottomCenter and BottomRight.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextContentAlignment</td><td>
Indicates the alignment of the text.The default value is set to `MiddleLeft`. WrapText property must be set to 'False'. Refer {{'[Text Settings](https://help.syncfusion.com/windowsforms/checkboxadv/text-settings)' | markdownify}}</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv Changed text alignment](Overview_images/CheckBoxAdv_textalign.jpeg)

## CheckBox Alignment

The CheckBox itself can be aligned to any desired location that can be chosen from the options given in the following property.

The `CheckAlign` property options included are as follows, TopLeft, TopCenter, TopRight, MiddleLeft, MiddleCenter, MiddleRight, BottomLeft, BottomCenter and BottomRight.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckAlign</td><td>
Indicates the alignment of the CheckBox. The default value is set to 'MiddleLeft'.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv Changed the position](Overview_images/CheckBoxAdv_checkalign.jpeg)


{% seealso %}

[Text Settings](http://docs.syncfusion.com//WindowsForms/CheckBoxAdv/Text-Settings), [CheckBoxAdv Settings](http://docs.syncfusion.com//WindowsForms/CheckBoxAdv/CheckBoxAdv-Settings)
{% endseealso %}
