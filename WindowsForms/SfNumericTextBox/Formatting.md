---
layout: post
title: SfNumericTextBox formatting.
description: This section provides the information about the value formatting in SfNumericTextBox.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

## FormatMode

Formatting functionality allows formatting the value based on the FormatString. We can format the value in different mode, in which we picked the specific three formats. They are Numeric, Currency, Percent. In this Currency and Percent mode display the value with its symbol.
The three specified formats are explained below
*	**Numeric** - It used for displaying values in numeric without specific format. The number may contain different decimal symbol, decimal separator, decimal digits and group size in different culture. All this can be customized using the NumberFormatInfo property. 

*	**Currency** – The Currency format specifier converts a number to string and it is used for displaying currency values in currency format.  The currency text may contain currency symbol, currency decimal separator, currency decimal digit and currency group size. This symbol can be customized by using NumberFormatInfo.

*	**Percent** - The Currency format specifier converts a number to string and it is used for displaying percentage values in percent format. The percentage text may contain percent symbol, percent decimal separator, percent decimal digit and percent group size. This symbol can be customized by using NumberFormatInfo.

N> If NumberFormatInfo is null then the Text will be parsed based on CurrentUICulture.

Numeric FormatMode

{% highlight c# %}

this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Numeric;

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Numeric

{% endhighlight %}

Percent FormatMode

{% highlight c# %}

this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Percent;

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Percent

{% endhighlight %}

Currency FormatMode

{% highlight c# %}

this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency;

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency

{% endhighlight %}

![](Formatting_images/FormatMode.png)

## Format using NumberFormatInfo

The NumberFormatInfo class contains culture-specific information that is used when you format and parse numeric values. This NumberFormatInfo includes 
*	Currency symbol
*	Decimal symbol
*	Percent symbol
*	Group separator symbol and 
*	Symbols for negative signs.

Using this NumberFormatInfo, we can define how the values can be formatted and display. We can also format based on culture by specifying in NumberFormatInfo. 

{% highlight c# %}

NumberFormatInfo numberformat = new NumberFormatInfo();
 numberformat.NumberDecimalSeparator = "*";
 numberformat.NumberDecimalDigits = 4;
 numberformat.NumberGroupSeparator = "/";
 numberformat.NumberGroupSizes = new int[3] { 1, 2, 3 };
 numericTextBox.NumberFormatInfo = numberformat;

{% endhighlight %}

{% highlight vbnet %}

 Dim numberformat As New NumberFormatInfo()
 numberformat.NumberDecimalSeparator = "*"
 numberformat.NumberDecimalDigits = 4
 numberformat.NumberGroupSeparator = "/"
 numberformat.NumberGroupSizes = New Integer(2) { 1, 2, 3 }
 Me.numericTextBox.NumberFormatInfo = numberformat

{% endhighlight %}

![](Formatting_images/NumberFormatInfo.png)

N> The Value in the SfNumericTextBox can be parsed by using the “NumberFormatInfo” property. If the NumberFormatInfo is not initialized, then the Value will be parsed based on the CurrentUICulture.

## Hiding trailing zeros

Trailing zeros are a sequence of 0 in the decimal representation of a number, after which no other digits follow. Trailing zeros to the right of the decimal point do not affect value of a number, it can be removed by enabling “HideTrailingZeros” property.

{% highlight c# %}

// Hides the trailing zeros.
this.numericTextBox.HideTrailingZeros = true;

{% endhighlight %}

{% highlight vbnet %}

' Hides the trailing zeros.
Me.numericTextBox.HideTrailingZeros = True

{% endhighlight %}

![](Formatting_images/HideZeros.png)

## Prefix and Suffix

Addition details about the value will always improve the meaning of the value. This type of details can be displayed along with Value using Prefix and Suffix property. For eg: Values for speed, weight, length can be displayed with units as Km/h, Kg, m 

{% highlight c# %}

this.numericTextBox.Prefix = "Pass percent";

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Prefix = "Pass percent"

{% endhighlight %}

![](Formatting_images/Prefix.png)

{% highlight c# %}

this.numericTextBox.Suffix = "inches";

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.Suffix = "inches"

{% endhighlight %}

![](Formatting_images/Suffix.png)

## WatermarkText

Watermark is the dummy content displayed in the SfNumericTextBox when the value is null. It can be used for giving instruction or guideline to the control. 

{% highlight c# %}

this.numericTextBox.WatermarkText = "Enter your age";

{% endhighlight %}

{% highlight vbnet %}

Me.numericTextBox.WatermarkText = "Enter your age"

{% endhighlight %}

![](Formatting_images/Watermark.png)

N> The WatermarkText will be visible when value is null and the control doesn’t have the focus.