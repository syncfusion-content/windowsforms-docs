---
layout: post
title: Getting Started with Windows Forms Numeric TextBox | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Numeric TextBox (SfNumericTextBox) control, its elements, and more.
platform: WindowsForms
control: SfNumericTextBox
documentation: ug
---

# Getting Started with Windows Forms Numeric TextBox (SfNumericTextBox)

This section briefly describes how to create a new Windows Forms project in Visual Studio and add **SfNumericTextBox** with its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfnumerictextbox) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install nuget packages in a Windows Forms application.

## Adding SfNumericTextBox control via designer

The following steps describe how to create a **SfNumericTextBox** control via designer:

1) Create a new Windows Forms application in Visual Studio.

2) Add the [SfNumericTextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html) control to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically:

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

![Drag and drop the SfNumericTextBox control to form](Gettingstarted_images/SfNumericTextBoxAdd.png)

## Adding SfNumericTextBox control via code

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project:

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

3) Include the required namespace.

{% tabs %}

{% highlight C# %}

Using Syncfusion.WinForms.Input;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight %}

{% endtabs %}

4) Create an instance of [SfNumericTextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html), and then add it to the form.

{% tabs %}

{% highlight C# %}

private Syncfusion.WinForms.Input.SfNumericTextBox numericTextBox = new Syncfusion.WinForms.Input.SfNumericTextBox();
this.numericTextBox.Size = new System.Drawing.Size(150, 20);
this.Controls.Add(this.numericTextBox);

{% endhighlight %}

{% highlight VB %}

Private numericTextBox As Syncfusion.WinForms.Input.SfNumericTextBox = New Syncfusion.WinForms.Input.SfNumericTextBox() 
Me.numericTextBox.Size = new System.Drawing.Size(150, 20)
Me.Controls.Add(Me.numericTextBox)

{% endhighlight %}

{% endtabs %}

## Value

SfNumericTextBox holds double value, and it can also hold null value. The [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_AllowNull) property needs to be set to make the value nullable. The [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_Text) property of the control is formatted from the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_Value) property.

{% tabs %}

{% highlight C# %}

// To set the value to SfNumericTextBox.
this.numericTextBox.Value = 123.45;

{% endhighlight %}

{% highlight VB %}

‘ To set the value to the SfNumericTextBox.
Me.numericTextBox.Value = 123.45

{% endhighlight %}

{% endtabs %}

![Value assigned in numeric text box control](Gettingstarted_images/Value.png)

## Format types

The string formatting is replacement of string in specified string format. Based on the string formatting, the numbers can be formatted into the following three different modes:

* Numeric
* Percent
* Currency

These modes can be applied in SfNumericTextBox using the [FormatMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_FormatMode) property. By default, the FormatMode is set to Numeric.

{% tabs %}

{% highlight C# %}

// To set the format mode to Numeric.
this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Numeric;

// To set the format mode to Currency.
this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency;

// To set the format mode to Percent.
this.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Percent;

{% endhighlight %}

{% highlight VB %}

' To set the format mode to Numeric.
Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Numeric

' To set the format mode to Currency.
Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Currency

' To set the format mode to Percent.
Me.numericTextBox.FormatMode = Syncfusion.WinForms.Input.Enums.FormatMode.Percent

{% endhighlight %}

{% endtabs %}

![Format mode](Gettingstarted_images/Mode.png)

## Formatting the value

The formatting functionality allows to format the values based on the FormatMode of the control. By default, the value is parsed from the application’s CurrentUICulture. Custom formatting can also be done using the [NumberFormatInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_NumberFormatInfo) property, which allows to set decimal separator, group separator, negative symbol, number of decimal digit, currency symbol, and percent symbol.

{% tabs %}

{% highlight C# %}

this.numericTextBox.NumberFormatInfo = new CultureInfo("de-DE").NumberFormat;


{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.NumberFormatInfo = New CultureInfo("de-DE").NumberFormat

{% endhighlight %}

{% endtabs %}

![Formatting the value](Gettingstarted_images/Formatting.png)

## Watermark

SfNumericTextBox comes with the in-built watermark support. [WatermarkText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_WatermarkText) helps to display the details about what value need to enter. [WatermarkText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_WatermarkText) property allows to show the watermark for the control when the value of the control is set to null.

{% tabs %}

{% highlight C# %}

// Sets the watermark text to SfNumericTextBox.
this.numericTextBox.WatermarkText = "Enter your age";

// Sets true to AllowNull property
this.numericTextBox.AllowNull = true;

{% endhighlight %}

{% highlight VB %}

' Sets the watermark text to SfNumericTextBox.
Me.numericTextBox.WatermarkText = "Enter your age"

' Sets true to AllowNull property
Me.numericTextBox.AllowNull = True

{% endhighlight %}

{% endtabs %}

![Watermark support](Gettingstarted_images/Watermark.png)

## Minimum and maximum values

We can define the range of value which can be accept by the control. To define this range, we need to provide minimum possible value and maximum possible value using the property [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_MinValue) and [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_MaxValue) respectively.

{% tabs %}

{% highlight C# %}

// Sets the minimum and maximum values
this.numericTextBox.MinValue = 10;
this.numericTextBox.MaxValue = 150;

{% endhighlight %}

{% highlight VB %}

‘ Sets the minimum and maximum values
Me.numericTextBox.MinValue = 10
Me.numericTextBox.MaxValue = 150

{% endhighlight %}

{% endtabs %}

## Hiding the trail zeros

The trailing zeros after the decimal digit can be removed using the [HideTrailingZeros](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_HideTrailingZeros) property.

{% tabs %}

{% highlight C# %}

// Hides the trailing zeros.
this.numericTextBox.HideTrailingZeros = true;

{% endhighlight %}

{% highlight VB %}

' Hides the trailing zeros.
Me.numericTextBox.HideTrailingZeros = True

{% endhighlight %}

{% endtabs %}

![Hide the decimal value](Gettingstarted_images/HideZeros.png)

## Custom units

Set units or custom message at front or end of the text using the [Prefix](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_Prefix) and [Suffix](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_Suffix) properties.

{% tabs %}

{% highlight C# %}

// Sets the custom unit in SfNumericTextBox.
this.numericTextBox.Suffix = "inches";

{% endhighlight %}

{% highlight VB %}

' Sets the custom unit in SfNumericTextBox.
Me.numericTextBox.Suffix = "inches";

{% endhighlight %}

{% endtabs %}

![Custom units added in numeric text box](Gettingstarted_images/CustomUnit.png)
