---
layout: post
title: Appearance | SfNumericTextBox | WindowsForms | Syncfusion
description: This section provides the information about customizing the appearnce of SfNumericTextBox.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

## Fore color for positive, negative and zero color

SfNumericTextBox UI can be customized with the following properties. It helps in differentiating the values easily.

*	[NegativeForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~NegativeForeColor.html) – Assign the foreground color to the control, when Value is negative.
*	[PositiveForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~PositiveForeColor.html) - Assign the foreground color to the control, when Value is positive.
*	[ZeroForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~ZeroForeColor.html) - Assign the foreground color to the control, when Value is zero.

{% tabs %}

{% highlight C# %}

this.numericTextBox.Style.PositiveForeColor = Color.Green;
this.numericTextBox.Style.NegativeForeColor = Color.Red;
this.numericTextBox.Style.ZeroForeColor = Color.Blue;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.Style.PositiveForeColor = Color.Green
Me.numericTextBox.Style.NegativeForeColor = Color.Red
Me.numericTextBox.Style.ZeroForeColor = Color.Blue

{% endhighlight %}

{% endtabs %}

![Fore color customization](Appearance_images/ForeColor.png)

## WatermarkForeColor

Assign the fore color to the watermark text using the [WatermarkForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~WatermarkForeColor.html) property. The Watermark text will be displayed in the control when the Value is null.

{% tabs %}

{% highlight C# %}

this.numericTextBox.Style.WatermarkForeColor = Color.IndianRed;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.Style.WatermarkForeColor = Color.IndianRed

{% endhighlight %}

{% endtabs %}

![Watermark fore customization](Appearance_images/Watermark.png)

## BorderColor

We can customize the UI of the control by changing border color in different states like Focus, Disabled and mouse hover. The properties available to customize are

*	[BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~BorderColor.html)- Assign the border color to the control.
*	[FocusBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~FocusBorderColor.html)  - Assign the border color to the control, when the control gets its focus.
*	[HoverBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~HoverBorderColor.html) - Assign the border color to the control, when the mouse is hover on it.
*   [DisabledBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle~DisabledBorderColor.html) - Assign the border color to the control, when the control gets disabled.

> Note :
>
> BorderColor, FocusBorderColor, DisabledBorderColor and HoverBorderColor will be applied only when BorderStyle property set as “FixedSingle”. 

{% tabs %}

{% highlight C# %}

this.numericTextBox.Style.BorderColor = ColorTranslator.FromHtml("#ababab");
this.numericTextBox.Style.FocusBorderColor = SystemColors.MenuHighlight;
this.numericTextBox.Style.HoverBorderColor = ColorTranslator.FromHtml("#e5c365");

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.Style.BorderColor = ColorTranslator.FromHtml("#ababab")
Me.numericTextBox.Style.FocusBorderColor = SystemColors.MenuHighlight
Me.numericTextBox.Style.HoverBorderColor = ColorTranslator.FromHtml("#e5c365")

{% endhighlight %}

{% endtabs %}

![Border color customization](Appearance_images/BorderColor.png)