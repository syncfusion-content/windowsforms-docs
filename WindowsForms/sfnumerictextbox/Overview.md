---
layout: post
title: Overview of SfNumericTextBox control for Windows Forms
description: An overview of SfNumericTextBox control for Windows Forms and its key features like inbuilt watermark support, different display modes etc.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

# Overview

The numeric text box control is an advanced textbox which allows you to enter numeric values in a specific format such as numeric, currency, and percent. Also, it provides support to display value with custom units.

![Overview of SfNumericTextBox](Overview_images/Overview.png)

## Key Features

*	**Different modes:**  Supports specific modes like numeric, currency and percent.
*	**Value range support:** Allows us to define and validate the value based on minimum and maximum values.
*	**Formatting:** Supports to format the value based on user needs.
*	**Hide trailing zeros:** Supports hiding trailing zeros.
*	**Watermark:** Support to display watermark text when value is null.
*	**Custom units:** Supports to display values with custom units which can be appended as prefix or suffix.


## Choose between different textbox controls

Syncfusion WinForms suite comes up with following different textbox namely,

* [SfNumericTextBox](https://www.syncfusion.com/products/windows-forms/numeric-textbox)
* [CurrencyTextBox](https://help.syncfusion.com/windowsforms/currencytextbox/overview)
* [PercentTextBox](https://help.syncfusion.com/windowsforms/percenttextbox/overview)
* [IntegerTextBox](https://help.syncfusion.com/windowsforms/integertextbox/overview)

### SfNumericTextBox

[SfNumericTextBox](https://help.syncfusion.com/windowsforms/sfnumerictextbox/overview) control is an advanced text box that allows you to enter numeric values in a specific format such as value, currency or percent values can also be displayed with custom units. It supports hiding trailing zeros, display value with custom units.

### CurrencyTextBox

[CurrencyTextBox](https://help.syncfusion.com/windowsforms/currencytextbox/overview) is a textbox-derived control that implements all the functionality needed for formatting currency input and validation. It provides support for clipboard operations that are compatible with currency data.

### PercentTextBox

[PercentTextBox](https://help.syncfusion.com/windowsforms/percenttextbox/overview) is a textbox-derived control that can display double data type values in percentage. It supports display and collection of percentage values.

### IntegerTextBox

[IntegerTextBox](https://help.syncfusion.com/windowsforms/integertextbox/overview) is derived from the Windows Forms framework TextBox control and can display integer data type values. It supports only integer data type values.

### SfNumericTextBox vs existing numeric textbox controls

Both SfNumericTextBox and existing numeric textbox controls(IntegerTextBox, PercentTextBox and CurrencyTextBox) used for same purpose. But SfNumericTextBox control offers rich set of features over existing numeric textbox controls(IntegerTextBox, PercentTextBox, CurrencyTextBox). When you want to hide by trailing zeros, prefix or suffix and watermark text, you can use SfNumericTextBox.

You can see the list of some of the specific API difference between SfNumericTextBox and existing numeric textbox controls(IntegerTextBox, PercentTextBox and CurrencyTextBox) as follows:
<table>
<tr>
<td>
{{'**SfNumericTextBox**'| markdownify }}
</td>
<td>
{{'**IntegerTextBox, PercentTextBox and CurrencyTextBox**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Value
</td>
<td>
Text
</td>
<td>
To display the value in textbox.
</td>
</tr>
<tr>
<td>
WatermarkText
</td>
<td>
AllowNull
</td>
<td>
To set the null value in textbox.
</td>
</tr>
<tr>
<td>
MaxValue
</td>
<td>
MaxValue
</td>
<td>
To set the maximum value in textbox.
</td>
</tr>
<tr>
<td>
MinValue
</td>
<td>
MinValue
</td>
<td>
To set the minimum value in textbox.
</td>
</tr>
<tr>
<td>
Style.BorderColor
</td>
<td>
BorderColor
</td>
<td>
To apply the color of textbox border
</td>
</tr>
<tr>
<td>
ThemeName
</td>
<td>
Style
</td>
<td>
To apply the visual styles.
</td>
</tr>
<tr>
<td>
PositiveForeColor
</td>
<td>
PositiveColor
</td>
<td>
To set the color only in positive values.
</td>
</tr>
<tr>
<td>
NegativeForeColor
</td>
<td>
NegativeColor
</td>
<td>
To set the color only in negative values.
</td>
</tr>
<tr>
<td>
ZeroForeColor
</td>
<td>
ZeroColor
</td>
<td>
To set the color only in zero values.
</td>
</tr>
</table>
Below are the list of features in SfNumericTextBox over existing numeric textbox controls(IntegerTextBox, PercentTextBox and CurrencyTextBox),
<table>
<tr>
<td>
{{'**Feature**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Different modes
</td>
<td>
SfNumericTextBox provides supports to specific modes like numeric, currency and percent. To know more about different modes in SfNumericTextBox, refer {{'[here](https://help.syncfusion.com/windowsforms/sfnumerictextbox/gettingstarted#different-types-of-format-modes)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Formatting
</td>
<td>
SfNumericTextBox provides supports to format the value based on user needs. To know more about format modes in SfNumericTextBox, refer {{'[here](https://help.syncfusion.com/windowsforms/sfnumerictextbox/formatting#formatmode)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Hide trailing zeros
</td>
<td>
SfNumericTextBox provides supports to hiding trailing zeros. To know more about hiding zeros in SfNumericTextBox, refer {{'[here](https://help.syncfusion.com/windowsforms/sfnumerictextbox/formatting#hiding-trailing-zeros)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Custom units
</td>
<td>
SfNumericTextBox provides supports to display values with custom units which can be appended prefix or suffix. To know more about custom units in SfNumericTextBox, refer {{'[here](https://help.syncfusion.com/windowsforms/sfnumerictextbox/formatting#prefix-and-suffix)'| markdownify }}.
</td>
</tr>
</table>