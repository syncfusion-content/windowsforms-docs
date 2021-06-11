---
layout: post
title: Validation in Windows Forms DateTimePicker Control | Syncfusion
description: SfDateTimeEdit control provides an support to validation of date and time value when the enter key is pressed.
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Validation in Windows Forms DateTimePicker (SfDateTimeEdit)

The `SfDateTimeEdit` control validates the DateTime value when the <kbd>Enter</kbd> key is pressed, so that the control lost its focus or the date is picked from the drop-down calendar.


## Validation reset option

The [ValidationOption](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_ValidationOption) that helps you to decide how the value will be changed when the validation is failed. If the validation is failed, the value will reset with previous date-time [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Value) or `MinValue` or `MaxValue`. If the validating event is not handled then the validation will be done based on the `ValidationOption` of the SfDateTimeEdit.

The validation results can be obtained based on the input provided to `Value` or `DateTimeText` of the SfDateTimeEdit. If the provided input has invalid date-time format or value that meets minimum or maximum value constraint, then the validation results will be failed.

* **Reset**: A control that maintains the previous value before validating. If the validation is failed then the value will be reset with the previous value.

* **MinValue**: Resets value with the `MinValue`, when the validation is failed.

* **MaxValue**: Resets value with the `MaxValue`, when the validation is failed.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2018, 2, 1);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default;

// On Validation failed the value will be reset with MinValue.
dateTimeEdit.ValidationOption = ValidationResetOption.MinValue;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2018, 2, 1)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default

' On Validation failed the value will be reset with MinValue.

dateTimeEdit.ValidationOption = ValidationResetOption.MinValue

{% endhighlight  %}

{% endtabs %} 

The given value can be treated as a date/time value. It can be validated based on the DateTime format with culture. The following error indicating image will be shown, when the validation test is failed.

![Validation support](validation-images/errorsymbol.png)

## Handle validation

The `ValidatingEventArgs` provides data for the [Validating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html) event of the SfDateTimeEdit control. By handling the `Validating` event, it is possible to find the cause for validation failure with error message in the `ValidatingEventArgs`.

* **IsError**: Indicates whether the entered date and time is valid or invalid.

* **ErrorMessage**: Updates the cause of the error. The error may be caused due to minimum or maximum value constraint met or incorrect date time format.

{% tabs %}

{% highlight C# %}

// Invoking Validating event

this.dateTimeEdit.Validating += DateTimeEdit_Validating;

private void DateTimeEdit_Validating(object sender, ValidatingEventArgs e)

{

   if (e.IsError)

   {

      MessageBox.Show(e.ErrorMessage);

   }
   
}

{% endhighlight  %}

{% highlight VB %}

' Invoking Validating event

Me.dateTimeEdit.Validating = (Me.dateTimeEdit.Validating + DateTimeEdit_Validating)
    
    Private Sub DateTimeEdit_Validating(ByVal sender As Object, ByVal e As ValidatingEventArgs)

        If e.IsError Then

            MessageBox.Show(e.ErrorMessage)

        End If
        
    End Sub

{% endhighlight  %}

{% endtabs %}
