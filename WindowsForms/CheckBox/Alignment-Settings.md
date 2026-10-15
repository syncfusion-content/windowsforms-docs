---
layout: post
title: Alignment Settings in Windows Forms CheckBoxAdv | Syncfusion®
description: Learn about alignment settings in the Syncfusion Windows Forms CheckBoxAdv control, including the TextContentAlignment and CheckAlign properties.
platform: windowsforms
control: CheckBoxAdv
documentation: ug
---

# Alignment Settings in WinForms CheckBox

This section discusses the alignment settings of the [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control.

## Text Alignment

Text alignment of the [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed by using the [TextContentAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_TextContentAlignment) property with `TopLeft`, `TopCenter`, `TopRight`, `MiddleLeft`, `MiddleCenter`, `MiddleRight`, `BottomLeft`, `BottomCenter`, and `BottomRight` as options.

<table>
<tr>
<th>
WinForms CheckBox Properties</th><th>
Description</th></tr>
<tr>
<td>
TextContentAlignment</td><td>
Indicates the alignment of the text. The default value is set to `MiddleLeft`. The `WrapText` property must be set to `False`. Refer to [Text Settings](https://help.syncfusion.com/windowsforms/checkbox/text-settings).</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter

{% endhighlight %}
{% endtabs %}

![WinForms CheckBoxAdv with changed text alignment](Overview_images/CheckBoxAdv_textalign.jpeg)

## CheckBox Alignment

The CheckBox alignment of the [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) can be changed to any desired location using the [CheckAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_CheckAlign) property with `TopLeft`, `TopCenter`, `TopRight`, `MiddleLeft`, `MiddleCenter`, `MiddleRight`, `BottomLeft`, `BottomCenter`, and `BottomRight` as options.

<table>
<tr>
<th>
WinForms CheckBox Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckAlign</td><td>
Indicates the alignment of the CheckBox. The default value is set to `MiddleLeft`.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight

{% endhighlight %}
{% endtabs %}

![WinForms CheckBoxAdv with changed check box position](Overview_images/CheckBoxAdv_checkalign.jpeg)


{% seealso %}

[Text Settings](https://help.syncfusion.com/windowsforms/checkbox/text-settings), [WinForms CheckBox Settings](https://help.syncfusion.com/windowsforms/checkbox/checkboxadv-settings)
{% endseealso %}
