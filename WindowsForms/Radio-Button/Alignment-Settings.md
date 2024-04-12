---
layout: post
title: Alignment Settings in Windows Forms Radio Button Control | Syncfusion
description: Learn here all about alignment settings support in Syncfusion Windows Forms Radio Button (RadioButtonAdv) control, it's elements and more.
platform: windowsforms
control: RadioButtonAdv
documentation: ug
---

# Alignment Settings in Windows Forms Radio Button (RadioButtonAdv)

This section discusses the alignment settings of the RadioButtonAdv.

## Text alignment

Text in the RadioButtonAdv can be aligned to the desired location as given below.


<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextContentAlignment</td><td>
Indicates the alignment of the text. The default value is set to 'MiddleLeft'.The options included are as follows.{{ '_TopLeft,_' | markdownify }} {{ '_TopCenter,_' | markdownify }} {{ '_TopRight,_' | markdownify }} {{ '_MiddleLeft,_' | markdownify }} {{ '_MiddleCenter,_' | markdownify }} {{ '_MiddleRight,_' | markdownify }} {{ '_BottomLeft,_' | markdownify }} {{ '_BottomCenter and_' | markdownify }} {{ '_BottomRight._' | markdownify }} WrapText property must be set to 'False'. Refer {{'[Text Settings](https://help.syncfusion.com/windowsforms/radiobuttonadv/text-settings)' | markdownify }}.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter

{% endhighlight %}
{% endtabs %}

![Windows Forms RadioButtonAdv changed text alignment](overview_images/windows-forms-radio-button-text-align.jpeg) 


## RadioButton alignment

The RadioButton itself can be aligned to any desired location that can be chosen from the options given in the following property.

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckAlign</td><td>
Indicates the alignment of the RadioButton. The default value is set to 'MiddleLeft'.The options included are as follows.{{ '_TopLeft,_' | markdownify }} {{ '_TopCenter,_' | markdownify }} {{ '_TopRight,_' | markdownify }} {{ '_MiddleLeft,_' | markdownify }} {{ '_MiddleCenter,_' | markdownify }} {{ '_MiddleRight,_' | markdownify }} {{ '_BottomLeft,_' | markdownify }} {{ '_BottomCenter and_' | markdownify }} {{ '_BottomRight._' | markdownify }}</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.radioButtonAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;

{% endhighlight %}

{% highlight vb %}

Me.radioButtonAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight

{% endhighlight %}
{% endtabs %}

![Windows Forms RadioButtonAdv changed check aligned](overview_images/windows-forms-radio-button-check-align.jpeg)
