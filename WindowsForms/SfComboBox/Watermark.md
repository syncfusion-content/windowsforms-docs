---
layout: post
title: Watermark
description: This section explains about the Watermark support in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Watermark
 
## Null value

Watermark text can be shown in the SfComboBox control by setting the `AllowNull` property to `true`. If the value is null and the editor portion of the control is empty, the watermark will be displayed as text in the SfComboBox control. The default value of `AllowNull` is `false`.

{% tabs %}
{% highlight c# %}
sfComboBox1.AllowNull = true;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AllowNull = True
{% endhighlight %}
{% endtabs %}

![](Watermark_images/Watermark_img1.png)

## Appearance

Watermark text can be changed by setting value to the `Watermark` property. Watermark fore color can be changed by setting value to the `WatermarkForeColor` property. The default watermark text is `None`.

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

![](Watermark_images/Watermark_img2.png)