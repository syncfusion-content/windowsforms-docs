---
layout: post
title: Button Content| WindowsForms | Syncfusion
description: Button Content
platform: WindowsForms
control: SfButton
documentation: ug
---

# Button Content

## Adding the Rich Text

The rich text can display inside the **SfButton**, by enable the **AllowRichText** property and adding the proper rich text into the **Text** property.

{% highlight c# %}
//Enable the rich text support
this.sfButton1.AllowRichText = true

//Adding the rich text value.
this.sfButton1.Text = "{\\rtf1\\ansi\\deff0{\\colortbl;\\red0\\green0\\blue0;\\red255\\green0\\blue0;}" +
"{\\fonttbl{\\f0 Monotype Corsiva;\r\n}}\\qc\\f0\\fs30 {\\i Italic} {\\b Bold} \\cf2 Red}";

{% endhighlight %}

Please find the **SfButton** with rich text below,

![](SfButton_images/SfButton_img6.jpeg)

**Note**

If the **AllowRichText** property is false, even if you add the rich text to **Text** property it will draw as normal text inside the button.

## Wrapping the Text

The text can be wrapped in the SfButton by setting the **AllowWrapText** property to true.

{% highlight c# %}
//Initialize the text to SfButton
sfButton1.Text = "SfButton with wrap text";

//Enable the text wrapping
sfButton1.AllowWrapText = true;

{% endhighlight %}

Please find the SfButton with wrapped text below,

![](SfButton_images/SfButton_img7.jpeg)

**Note**

If the **AutoSize** property is enabled, the **SfButton** does not allow to wrap the text.

## Trimming and showing ellipsis character

The ellipsis character can be shown inside the SfButton by enable the **AllowEllipsis** property.

{% highlight c# %}
//Enable AutoEllipsis property to show the ellpsis character.
sfButton1.AutoEllipsis = true;

{% endhighlight %}

Please find below, the **SfButton** with ellipsis character and showing tool tip when mouse hover,

![](SfButton_images/SfButton_img8.jpeg)

**Note**

**SfButton** will trim the characters only when disable the **AutoSize** property and text length should be greater than the button width.

## Autofit the SfButton

**SfButton** allows to auto fit the size based on the content by setting the **AutoSize** property to true.

{% highlight c# %}
//Auto fit the content of SfButton
sfButton1.AutoSize = true;
{% endhighlight %}

## Content Alignment

This section describes how to change the text and image alignment inside the SfButton.

### Text

The text alignment can be changed by initializing any one of **ContentAlignment** enumeration value to the **TextAlign** property.

{% highlight c# %}
//Initialize the Top Center alignment to text.
sfButton1.TextAlign = ContentAlignment.TopCenter;

{% endhighlight %}

### Image

The image alignment can be changing by initializing any one of **ContentAlignment** enumeration value to the **ImageAlign** property.

{% highlight c# %}
//Initialize the Top Center alignment to Image.
sfButton1.ImageAlign = ContentAlignment.TopCenter;

{% endhighlight %}
