---
layout: post
title: Alignment-Settings | WindowsForms | Syncfusion
description:  This section gives the detailed description about customizing the text and CheckBox alignment of CheckBoxAdv control. 
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Alignment Settings of CheckBoxAdv

This section discusses the alignment settings of the [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control.

## Text Alignment

Text alignment of [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed by using the [TextContentAlignment](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~TextContentAlignment.html) property with TopLeft, TopCenter, TopRight, MiddleLeft, MiddleCenter, MiddleRight, BottomLeft, BottomCenter and BottomRight  as options.

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

The CheckBox alignment of [CheckBoxAdv](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed to any desired location using [CheckAlign](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CheckRadioBase~CheckAlign.html) property with TopLeft, TopCenter, TopRight, MiddleLeft, MiddleCenter, MiddleRight, BottomLeft, BottomCenter and BottomRight as options.

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
