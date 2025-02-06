---
layout: post
title: Validation in Windows Forms Numeric TextBox control | Syncfusion®
description: Learn about Validation support in Syncfusion® Windows Forms Numeric TextBox (SfNumericTextBox) control and more details.
platform: windowsforms
control: SfNumericTextBox
documentation: ug
---

# Validation in Windows Forms Numeric TextBox (SfNumericTextBox)

SfNumericTextBox allows data validation, which enables user to validate the values and notify the errors using the Validating event.

## ValidationMode

This [ValidationMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_ValidationMode) property decides whether to validate the entered text on KeyPress or on LostFocus. By default, the validation is done at lost focus.

*	KeyPress
    The decimal mask will be maintained while entering value and the MinValue, MaxValue validation will be carried out while entering the value.

*	LostFocus
    In contrary with the KeyPress, the decimal mask, MinValue and MaxValue validation will be carried out only when control lost its focus.

{% tabs %}

{% highlight C# %}

this.numericTextBox.ValidationMode = Syncfusion.WinForms.Input.Enums.ValidationMode.KeyPress;

{% endhighlight %}

{% highlight VB %}

Me. numericTextBox.ValidationMode = Syncfusion.WinForms.Input.Enums.ValidationMode.KeyPress

{% endhighlight %}

{% endtabs %}

## ValueChangeMode

The [ValueChangeMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfNumericTextBox.html#Syncfusion_WinForms_Input_SfNumericTextBox_ValueChangeMode) property is used to mention when the value need to update, either in key pressed or in lost focus. When ValueChangeMode is assigned to KeyPress, the value property will get updated for each key press. While in LostFocus, the Value property will get updated only when control lost its focus.

*	LostFocus
*	KeyPress

{% tabs %}

{% highlight C# %}

this.numericTextBox.ValueChangeMode = Syncfusion.WinForms.Input.Enums.ValueChangeMode.LostFocus;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.ValueChangeMode = Syncfusion.WinForms.Input.Enums.ValueChangeMode.LostFocus

{% endhighlight %}

{% endtabs %}

N> When value change mode is in keypress, the value gets updated only when the MinValue, MaxValue and number decimal digit validation gets passed.

## LostFocusValidation

While the control losing its focus, the valid value need to be maintained. If the entered value is valid there will be no change. But if the value is not valid it need to be reset to valid value. For this case the reset can be done to any of below value.

*	Reset

    It resets the invalid value to its last valid value.

*	MaxValue

    It resets the invalid value to the MaxValue given in the control.

*	MinValue

    It resets the invalid value to the MinValue given in the control.

{% tabs %}

{% highlight C# %}

this.numericTextBox.LostFocusValidation = Syncfusion.WinForms.Input.Enums.ValidationResetOption.MaxValue;

{% endhighlight %}

{% highlight VB %}

Me.numericTextBox.LostFocusValidation = Syncfusion.WinForms.Input.Enums.ValidationResetOption.MaxValue

{% endhighlight %}

{% endtabs %}
