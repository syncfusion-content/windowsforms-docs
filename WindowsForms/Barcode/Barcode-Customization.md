---
layout: post
title: Barcode Customization in Windows Forms Barcode control | Syncfusion
description: Learn about Barcode Customization support in Syncfusion Windows Forms Barcode control and more details.
platform: wpf
control: SfBarcode
documentation: ug
---

# Barcode Customization in Windows Forms Barcode

The color of the barcode can be customized by modifying the DarkBarBrush and LightBarBrush properties of the barcode control. 

{% tabs %}
{% highlight c# %}

this.sfBarcode1.DarkBarColor = System.Drawing.Color.FromArgb(255, 0, 0);
this.sfBarcode1.LightBarColor = System.Drawing.Color.FromArgb(255, 0, 0);

{% endhighlight  %}
{% highlight vb %}

Me.SfBarcode1.DarkBarColor = System.Drawing.Color.FromArgb(255, 0, 0)
Me.SfBarcode1.LightBarColor = System.Drawing.Color.FromArgb(255, 0, 0)

{% endhighlight  %}
{% endtabs %}

The DarkBarBrush represents the color of the dark bar (Black color usually) and the LightBarBrush represents the color of the gap between two adjacent black bars (White color usually).

![Barcode-Customization_img1](Barcode-Customization_images/Barcode-Customization_img1.png)

Barcode color combinations- Red
{:.caption}


![Barcode-Customization_img2](Barcode-Customization_images/Barcode-Customization_img2.png)

Barcode color combinations- Blue
{:.caption}

N> The DarkBarBrush and LightBarBrush customizations are applicable only for one dimensional barcodes. In order for a barcode symbol to be recognized by a scanner, there must be an adequate contrast between the dark bars and the light spaces and not all the barcode scanners have support for colored barcodes.
