---
layout: post
title: Getting started for Syncfusion Essential WindowsForms
description: This section provides the information about how to begin the SfNumericTextBox control.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

# Getting Started

This section will give a step-by-step procedure to design a SfNumericTextBox control and the overview of its basic functionalities.

## Assembly deployment

The following list of assemblies needs to be added as reference to use SfNumericTextBox in any application,

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.SfInput.WinForms
</td>
<td>
The Syncfusion.WinForms.Input contains the class that handles all UI operations, fundamentals and base class of SfNumericTextBox control.
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms contains NativeMethods which are used in SfNumericTextBox control.
</td>
</tr>
</table>

# Configuring Numeric TextBox

## Adding SfNumericTextBox control through Designer

SfNumericTextBox can be added through designer by following the below steps.
1.	Create a new **Windows Form Application**.
2.	Drag and Drop SfNumericTextBox from the toolbox into the designer page.

![](Gettingstarted_images/SfNumericTextBoxAdd.png)

3.	Once you drag drop the SfNumericTextBox into the designer page, the SfNumericTextBox will be added successfully into the application with the required libraries. The below mentioned assemblies will be added automatically into the application.
    *	Syncfusion.Core.WinForms.dll
    *	Syncfusion.SfInput.WinForms.dll

![](Gettingstarted_images/SfNumericTextBoxDesignerAdd.png)

## Adding SfNumericTextBox control through code

1.	SfNumericTextBox can be added through code-behind by following the below steps.
2.	Add the below assemblies into the project file.
    *	Syncfusion.Core.WinForms.dll
    *	Syncfusion.SfInput.WinForms.dll
3.	Initialize a SfNumericTextBox by using the below code in code behind.

{% highlight c# %}

private Syncfusion.WinForms.Input.SfNumericTextBox numericTextBox = new Syncfusion.WinForms.Input.SfNumericTextBox();

{% endhighlight %}

{% highlight vbnet %}

Private numericTextBox As Syncfusion.WinForms.Input.SfNumericTextBox = New Syncfusion.WinForms.Input.SfNumericTextBox() 

{% endhighlight %}

4.	Use the below code for adding the initialized SfNumericTextBox to the application.

{% highlight c# %}

this.numericTextBox.Size = new System.Drawing.Size(100, 20);

this.numericTextBox.Value = 123.45;

this.Controls.Add(this.numericTextBox);

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Size = new System.Drawing.Size(100, 20)

Me.numericTextBox.Value = 123.45

Me.Controls.Add(Me.numericTextBox)

{% endhighlight %}

## Addding Value to the control

It assigns the value to SfNumericTextBox. It holds the double value which can also hold null value. The “AllowNull” property needs to be set to make the Value nullable. The “Text” property of the control gets formatted from the Value property.

{% highlight c# %}

// To set the Value to the SfNumericTextBox.
this.numericTextBox.Value = 123.45;

{% endhighlight %}

{% highlight vbnet %}

‘ To set the Value to the SfNumericTextBox.
Me.numericTextBox.Value = 123.45

{% endhighlight %}

![](Gettingstarted_images/Value.png)

## Formatting the value

Formatting functionality allows to format the value based on the FormatMode of the control. By default, the value gets parsed from the application’s CurrentUICulture. Custom formatting can also be done using NumberFormatInfo property, which allow to set decimal separator, group separator, negative symbol, number of decimal digit, currency symbol, percent symbol.

{% highlight c# %}

this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency;
this.numericTextBox.NumberFormatInfo = new System.Globalization.NumberFormatInfo();
this.numericTextBox.NumberFormatInfo.CurrencySymbol = "€";

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency
Me.numericTextBox.NumberFormatInfo = New System.Globalization.NumberFormatInfo()
Me.numericTextBox.NumberFormatInfo.CurrencySymbol = "€"

{% endhighlight %}

![](Gettingstarted_images/Formatting.png)

## Different types of format modes

String formatting is the replacement of string in specified sting format. Based on the string formatting, the numbers can be formatted into three different modes. They are
*	Numeric
*	Percent
*	Currency

This mode can be applied in SfNumericTextBox by using the FormatMode property. By default, the FormatMode is set as Numeric.

{% highlight c# %}

// To set the format mode as currency.
this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency;

{% endhighlight %}

{% highlight vbnet %}

'To set the format mode as currency.
Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency

{% endhighlight %}

![](Gettingstarted_images/Mode.png)

## Adding watermark to the control

SfNumericTextBox comes with the in-built watermark support. WatermarkText helps to display the details about what value need to enter. WatermarkText property allows to show the watermark for the control when the value of the control is set to null.

{% highlight c# %}

// Sets the watermark text to SfNumericTextBox.
this.numericTextBox.WatermarkText = "Enter your age";

{% endhighlight %}

{% highlight vbnet %}

' Sets the watermark text to SfNumericTextBox.
Me.numericTextBox.WatermarkText = "Enter your age"

{% endhighlight %}

![](Gettingstarted_images/Watermark.png)

## Minimum and Maximum value support

We can define the range of value which can be accept by the control. To define this range, we need to provide minimum possible value and maximum possible value using the property “MinValue” and “MaxValue” respectively.

{% highlight c# %}

// The below codes assign the minimum value of SfNumericTextBox as 10 and maximum value as 100. i,e the value can accept the range between 10 to 100. 
this.numericTextBox.MinValue = 10;
this.numericTextBox.MaxValue = 100;

{% endhighlight %}

{% highlight vbnet %}

‘The below codes assign the minimum value of SfNumericTextBox as 10 and maximum value as 100. i,e the value can accept the range between 10 to 100.
Me.numericTextBox.MinValue = 10
Me.numericTextBox.MaxValue = 100

{% endhighlight %}

## Hiding the trail zeros in value

The trailing zeros after the decimal digit can be removed by using the property named “HideTrailingZeros”.

{% highlight c# %}

// Hides the trailing zeros.
this.numericTextBox.HideTrailingZeros = true;

{% endhighlight %}

{% highlight vbnet %}

' Hides the trailing zeros.
Me.numericTextBox.HideTrailingZeros = True

{% endhighlight %}

![](Gettingstarted_images/HideZeros.png)

## Adding custom units to the value

Allows to set the units or custom message at front or end of the text. This can be set using the Prefix and Suffix property.

{% highlight c# %}

// Sets the custom unit in SfNumericTextBox.
this.numericTextBox.Suffix = "inches";

{% endhighlight %}

{% highlight vbnet %}

' Sets the custom unit in SfNumericTextBox.
Me.numericTextBox.Suffix = "inches";

{% endhighlight %}

![](Gettingstarted_images/CustomUnit.png)