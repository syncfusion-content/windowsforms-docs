---
layout: post
title: Watermark in Windows Forms ComboBox control | Syncfusion
description: Learn about Watermark support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Watermark in Windows Forms ComboBox (SfComboBox)
 
## Null value

Watermark text can be shown in the SfComboBox control by setting the [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AllowNull) property to `true`. If the value is null and the editor portion of the control is empty, the watermark will be displayed as text in the SfComboBox control. The default value of `AllowNull` is `false`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AllowNull = true;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AllowNull = True
{% endhighlight %}
{% endtabs %}

![Watermark on the ComboTextBox](Watermark_images/Watermark_img1.png)

## Appearance

Watermark text can be changed by setting value to the [Watermark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_Watermark) property. Watermark fore color can be changed by setting value to the `WatermarkForeColor` property. The default watermark text is `None`.

{% tabs %}
{% highlight c# %}
sfComboBox1.Watermark = "Choose a US State";
sfComboBox1.Style.EditorStyle.WatermarkForeColor = Color.Blue;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.Watermark = "Choose a US State"
sfComboBox1.Style.EditorStyle.WatermarkForeColor = Color.Blue
{% endhighlight %}
{% endtabs %}

![Watermark text with different color](Watermark_images/Watermark_img2.png)
