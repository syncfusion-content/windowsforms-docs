---
layout: post
title: Appearance in Windows Forms SfNumericTextBox | Syncfusion®
description: Learn about appearance customization in the Syncfusion Windows Forms Numeric TextBox (SfNumericTextBox) control, including positive, negative, zero, watermark, and border colors.
platform: windowsforms
control: SfNumericTextBox
documentation: ug
---

# Appearance in WinForms Numeric TextBox

WinForms Numeric TextBox UI can be customized with the following properties, which help in differentiating the values easily.

* [NegativeForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_NegativeForeColor) – Assign the foreground color to the control, when the value is negative.
* [PositiveForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_PositiveForeColor) - Assign the foreground color to the control, when the value is positive.
* [ZeroForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_ZeroForeColor) - Assign the foreground color to the control, when the value is zero.

{% tabs %}

{% highlight c# %}

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

![Fore color customization for the WinForms Numeric TextBox](Appearance_images/ForeColor.png)

## WatermarkForeColor

Assign the fore color to the watermark text using the [WatermarkForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_WatermarkForeColor) property. The watermark text will be displayed in the control when the value is null.

{% tabs %}

{% highlight c# %}

this.numericTextBox.Style.WatermarkForeColor = Color.IndianRed;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.Style.WatermarkForeColor = Color.IndianRed

{% endhighlight %}

{% endtabs %}

![Watermark fore color customization for the WinForms Numeric TextBox](Appearance_images/Watermark.png)

## BorderColor

You can customize the UI of the control by changing the border color in different states such as focus, disabled, and mouse hover. The properties available to customize are:

* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_BorderColor)- Assign the border color to the control.
* [FocusBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_FocusBorderColor)  - Assign the border color to the control, when the control gets its focus.
* [HoverBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_HoverBorderColor) - Assign the border color to the control, when the mouse is hovering over it.
* [DisabledBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.Styles.NumericTextBoxVisualStyle.html#Syncfusion_WinForms_Input_Styles_NumericTextBoxVisualStyle_DisabledBorderColor) - Assign the border color to the control, when the control gets disabled.

> **NOTE**:
>
> The `BorderColor`, `FocusBorderColor`, `DisabledBorderColor`, and `HoverBorderColor` properties will be applied only when the `BorderStyle` property is set to “FixedSingle”.

{% tabs %}

{% highlight c# %}

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

![Border color customization for the WinForms Numeric TextBox](Appearance_images/BorderColor.png)
