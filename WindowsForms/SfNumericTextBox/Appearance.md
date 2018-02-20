---
layout: post
title: SfNumericTextBox Appearance.
description: This section provides the information about customizing the appearnce of SfNumericTextBox.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

## Fore color for positive, negative and zero color

Fore color for positive, negative and zero color
SfNumericTextBox UI can be customized with the following properties. It helps in differentiating the values easily. 
*	NegativeColor – Assign the foreground color to the control, when Value is negative.
*	PositiveColor - Assign the foreground color to the control, when Value is positive.
*	ZeroColor - Assign the foreground color to the control, when Value is zero.

{% highlight c# %}

this.numericTextBox.Style.PositiveForeColor = Color.Green;
this.numericTextBox.Style.NegativeForeColor = Color.Red;
this.numericTextBox.Style.ZeroForeColor = Color.Blue;

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Style.PositiveForeColor = Color.Green
Me.numericTextBox.Style.NegativeForeColor = Color.Red
Me.numericTextBox.Style.ZeroForeColor = Color.Blue

{% endhighlight %}

![](Appearance_images/ForeColor.png)

## WatermarkForeColor

Assign the fore color to the watermark text. The Watermark text will be displayed in the control when the Value is null.

{% highlight c# %}

this.numericTextBox.Style.WatermarkForeColor = Color.IndianRed;

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Style.WatermarkForeColor = Color.IndianRed

{% endhighlight %}

![](Appearance_images/Watermark.png)

## BorderColor

We can customize the UI of the control by changing border color in different states like Focus and mouse hover. The properties available to customize are
*	BorderColor- Assign the border color to the control.
*	FocusBorderColor  - Assign the border color to the control, when the control gets its focus.
*	HoverBorderColor - Assign the border color to the control, when the mouse is hover on it.

{% highlight c# %}

this.numericTextBox.Style.BorderColor = ColorTranslator.FromHtml("#ababab");
this.numericTextBox.Style.FocusBorderColor = SystemColors.MenuHighlight;
this.numericTextBox.Style.HoverBorderColor = ColorTranslator.FromHtml("#e5c365");

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Style.BorderColor = ColorTranslator.FromHtml("#ababab")
Me.numericTextBox.Style.FocusBorderColor = SystemColors.MenuHighlight
Me.numericTextBox.Style.HoverBorderColor = ColorTranslator.FromHtml("#e5c365")

{% endhighlight %}

![](Appearance_images/BorderColor.png)