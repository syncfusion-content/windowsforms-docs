---
layout: post
title: Alignment-Settings
description: alignment settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Alignment Settings

This section discusses the alignment settings of the CheckBoxAdv.

## Text Alignment

Text in the CheckBoxAdv can be aligned to the desired location as given below.

Table 398: Property Table

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextContentAlignment</td><td>
Indicates the alignment of the text. The default value is set to 'MiddleLeft'.The options included are as follows.{{ 'TopLeft,' | markdownify }}{{ 'TopCenter,' | markdownify }}{{ 'TopRight,' | markdownify }}{{ 'MiddleLeft,' | markdownify }}{{ 'MiddleCenter,' | markdownify }}{{ 'MiddleRight,' | markdownify }}{{ 'BottomLeft,' | markdownify }}{{ '_BottomCenter and_' | markdownify }}{{ 'BottomRight.' | markdownify }}WrapText property must be set to 'False'. Refer Text Settings</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter

{% endhighlight %}

![](Overview_images/Overview_img614.jpeg)


## CheckBox Alignment

The CheckBox itself can be aligned to any desired location that can be chosen from the options given in the following property.

Table 399: Property Table

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckAlign</td><td>
Indicates the alignment of the CheckBox. The default value is set to 'MiddleLeft'.The options included are as follows.{{ 'TopLeft,' | markdownify }}{{ 'TopCenter,' | markdownify }}{{ 'TopRight,' | markdownify }}{{ 'MiddleLeft,' | markdownify }}{{ 'MiddleCenter,' | markdownify }}{{ 'MiddleRight,'| markdownify }}{{ 'BottomLeft,' | markdownify }}{{ 'BottomCenter and' | markdownify }}{{ 'BottomRight.' | markdownify }}</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight

{% endhighlight %}

![](Overview_images/Overview_img615.jpeg)

A sample which demonstrates the Text and CheckBox Alignment features of CheckBoxAdv is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

{% seealso %}

[Text Settings](/WindowsForms/CheckBoxAdv/Text-Settings), [CheckBoxAdv Settings](/WindowsForms/CheckBoxAdv/CheckBoxAdv-Settings)
{% endseealso %}
