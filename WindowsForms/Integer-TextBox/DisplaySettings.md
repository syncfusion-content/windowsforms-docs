---
layout: post
title: Display Settings in Windows Forms IntegerTextBox | Syncfusion®
description: Learn about Display Settings support in Syncfusion Windows Forms IntegerTextBox (Integertextbox) control and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# Display Settings in WinForms Integer TextBox

This section discusses the display settings of the WinForms Integer TextBox control.

It provides a list of properties to set the display characteristics associated with the integer value:

* [NumberGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSeparator) - String that separates groups of digits to the left of the decimal.
* [NumberGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSizes) - Number of digits in each group to the left of the decimal.
* [NumberNegativePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberNegativePattern) - Format pattern used for negative values.
* [NegativeSign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeSign) - String used as the negative sign.

The grouping size of the number digits can be set using the `Int32 Collection Editor`, which is displayed on selecting the [NumberGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSizes) property in the property grid.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NumberGroupSeparator = "/";
this.integerTextBox1.NumberGroupSizes = new int[] { 5 };
this.integerTextBox1.NumberNegativePattern = 2;
this.integerTextBox1.NegativeSign = "-";
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NumberGroupSeparator = "/"
Me.integerTextBox1.NumberGroupSizes = New Integer() {5}
Me.integerTextBox1.NumberNegativePattern = 2
Me.integerTextBox1.NegativeSign = "-"
{% endhighlight %}
{% endtabs %}

![WinForms Integer TextBox with custom number group separator, group sizes, and negative pattern applied](Overview_images/Overview_img442.png)

A sample that demonstrates the Display Settings of the WinForms Integer TextBox control is available at the following sample installation path:

`%USERPROFILE%\Documents\Syncfusion\EssentialStudio\<Version Number>\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo`

## Value settings

The various values of the WinForms Integer TextBox control and their settings are described below:

* [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_IntegerValue) - Gets or sets the underlying `long` integer value.
* [DefaultValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_DefaultValue) - Gets or sets the value assigned to the control when it is reset.
* [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) - Gets or sets a value suitable for data binding (also supports `null`).

{% tabs %}
{% highlight C# %}
this.integerTextBox1.IntegerValue = 777L;
this.integerTextBox1.DefaultValue = 0;
this.integerTextBox1.BindableValue = 777;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.IntegerValue = CLng(777)
Me.integerTextBox1.DefaultValue = 0
Me.integerTextBox1.BindableValue = 777
{% endhighlight %}
{% endtabs %}

![WinForms Integer TextBox with a value, default value, and bindable value applied](Overview_images/Overview_img443.png)

## Null value settings

There are various settings that can be applied to the WinForms Integer TextBox control when the value of the control is set to `null`. These settings are illustrated below.

* [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString) - The string shown when the value is `null`.
* [NullFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullFormat) - Gets or sets a `NumberFormatInfo` used when the value is `null`.
* [IsNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_IsNull) - Gets whether the value is `null`.
* [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_AllowNull) - When `true`, the control allows a `null` value (and displays the `NullString`).

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NullString = "Null Value";
this.integerTextBox1.AllowNull = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NullString = "Null Value"
Me.integerTextBox1.AllowNull = True
{% endhighlight %}
{% endtabs %}

![WinForms Integer TextBox with the NullString "Null Value" displayed when the value is null](Overview_images/Overview_img444.png)

## Min and max value settings

The minimum and maximum values of the WinForms Integer TextBox can be set using the following properties:

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_MaxValue) - Upper bound of the value the control will accept.
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_MinValue) - Lower bound of the value the control will accept.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.MaxValue = 9223372036854775807L;
this.integerTextBox1.MinValue = -9223372036854775808L;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.MaxValue = 9223372036854775807L
Me.integerTextBox1.MinValue = -9223372036854775808L
{% endhighlight %}
{% endtabs %}
