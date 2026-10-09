---
layout: post
title: Validation in Windows Forms SfNumericTextBox | Syncfusion®
description: Learn about validation in the Syncfusion Windows Forms Numeric TextBox (SfNumericTextBox) control, including ValidationMode, ValueChangeMode, and LostFocusValidation.
platform: windowsforms
control: SfNumericTextBox
documentation: ug
---

# Validation in WinForms Numeric TextBox

WinForms Numeric TextBox allows data validation, which enables the user to validate the values and notify of errors using the `Validating` event.

## ValidationMode

This [ValidationMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_ValidationMode) property decides whether to validate the entered text on `KeyPress` or on `LostFocus`. By default, the validation is done at lost focus.

* **KeyPress**
    The decimal mask is maintained while entering a value, and the `MinValue` and `MaxValue` validation is carried out while entering the value.

* **LostFocus**
    In contrast with `KeyPress`, the decimal mask, `MinValue`, and `MaxValue` validation are carried out only when the control loses its focus.

{% tabs %}

{% highlight c# %}

this.numericTextBox.ValidationMode = Syncfusion.WinForms.Input.Enums.ValidationMode.KeyPress;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.ValidationMode = Syncfusion.WinForms.Input.Enums.ValidationMode.KeyPress

{% endhighlight %}

{% endtabs %}

## ValueChangeMode

The [ValueChangeMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_ValueChangeMode) property is used to specify when the value needs to be updated, either on key press or on lost focus. When `ValueChangeMode` is assigned to `KeyPress`, the `Value` property is updated for each key press. While in `LostFocus`, the `Value` property is updated only when the control loses its focus.

* **LostFocus**
* **KeyPress**

{% tabs %}

{% highlight c# %}

this.numericTextBox.ValueChangeMode = Syncfusion.WinForms.Input.Enums.ValueChangeMode.LostFocus;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.ValueChangeMode = Syncfusion.WinForms.Input.Enums.ValueChangeMode.LostFocus

{% endhighlight %}

{% endtabs %}

>**NOTE**: When the value change mode is set to `KeyPress`, the value is updated only when the `MinValue`, `MaxValue`, and number decimal digit validation checks are passed.

## LostFocusValidation

When the control is losing its focus, a valid value needs to be maintained. If the entered value is valid, there is no change. If the value is not valid, it needs to be reset to a valid value. In this case, the reset can be done to any of the values below.

* **Reset**

    Resets the invalid value to its last valid value.

* **MaxValue**

    Resets the invalid value to the `MaxValue` specified in the control.

* **MinValue**

    Resets the invalid value to the `MinValue` specified in the control.

{% tabs %}

{% highlight c# %}

this.numericTextBox.LostFocusValidation = Syncfusion.WinForms.Input.Enums.ValidationResetOption.MaxValue;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.LostFocusValidation = Syncfusion.WinForms.Input.Enums.ValidationResetOption.MaxValue

{% endhighlight %}

{% endtabs %}
