---
layout: post
title: Button Content in Windows Forms Button control | Syncfusion®
description: Learn about Button Content support in Syncfusion® Windows Forms Button (SfButton) control and more details.
platform: windowsforms
control: SfButton
documentation: ug
---

# Button Content in Windows Forms Button (SfButton)

## Adding Rich Text

The rich text can be displayed inside the SfButton by enabling the [AllowRichText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_AllowRichText) property and the proper rich text can be added in the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_Text) property.

{% tabs %}
{% highlight c# %}
//Enable the rich text support
this.sfButton1.AllowRichText = true

//Adding the rich text value.
this.sfButton1.Text = "{\\rtf1\\ansi\\deff0{\\colortbl;\\red0\\green0\\blue0;\\red255\\green0\\blue0;}" +
"{\\fonttbl{\\f0 Monotype Corsiva;\r\n}}\\qc\\f0\\fs30 {\\i Italic} {\\b Bold} \\cf2 Red}";

{% endhighlight %}
{% endtabs %}

![SfButton_img6](SfButton_images/SfButton_img6.jpeg)

**Note**: When the AllowRichText property is false, even if you add the rich text to the Text property, it will draw as normal text inside the button.

## Wrapping the Text

The text can be wrapped in the SfButton by setting the [AllowWrapText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_AllowWrapText) property to true.

{% tabs %}
{% highlight c# %}
//Initialize the text to SfButton
sfButton1.Text = "SfButton with wrap text";

//Enable the text wrapping
sfButton1.AllowWrapText = true;

{% endhighlight %}
{% endtabs %}

![SfButton_img7](SfButton_images/SfButton_img7.jpeg)

**Note**: If the AutoSize property is enabled, the SfButton does not allow you to wrap the text.

## Trimming and Showing Ellipsis Character

The ellipsis character can be shown inside the SfButton by enabling the [AllowEllipsis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_AutoEllipsis) property.

{% tabs %}
{% highlight c# %}
//Enable AutoEllipsis property to show the ellipsis character.
sfButton1.AutoEllipsis = true;

{% endhighlight %}
{% endtabs %}

![SfButton_img8](SfButton_images/SfButton_img8.jpeg)

**Note**: The SfButton will trim the characters only when disabling the AutoSize property and text length should be greater than the button width.

## Auto Fit the SfButton

The SfButton allows auto fitting the size based on the content by setting the [AutoSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_AutoSize) property to true.

{% tabs %}
{% highlight c# %}
//Auto fit the content of SfButton
sfButton1.AutoSize = true;
{% endhighlight %}
{% endtabs %}

## Content Alignment

This section describes how to change the text and image alignment inside the SfButton.

### Text

The text alignment can be changed by initializing any one of the ContentAlignment enumeration value to the TextAlign property.

{% tabs %}
{% highlight c# %}
//Initialize the Top Center alignment to text.
sfButton1.TextAlign = ContentAlignment.TopCenter;

{% endhighlight %}
{% endtabs %}

### Image

The image alignment can be changed by initializing any one of the ContentAlignment enumeration value to the ImageAlign property.

{% tabs %}
{% highlight c# %}
//Initialize the Top Center alignment to Image.
sfButton1.ImageAlign = ContentAlignment.TopCenter;

{% endhighlight %}
{% endtabs %}
