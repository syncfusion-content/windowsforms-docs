---
layout: post
title: built-in date and time validation of SfDateTimeEdit
description: How to handle date and time validation in SfDateTimeEdit control
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Validation

`SfDateTimeEdit` control validate the DateTime Value on pressing the Enter key, control lost its focus or pick the date from the DropDown Calendar. 


## Validation reset option

`ValidationOption` that helps to decides how the value will be changed when validation failed. If the validation failed, Value reset with previous date time `Value` or `MinValue` or `MaxValue`. If the validating event is not handled then the validation will be done based on the `ValidationOption` of SfDateTimeEdit.

Validation results based on the input provided to `Value` or `DateTimeText` of SfDateTimeEdit. If the provided input is invalid datetime format or value met minimum or maximum value constraint, validation results will be fail. 

* **Reset** - The control maintain the previous Value before validating. If the validation failed then the value will be reset with that previous Value.

* **MinValue** - On Validation failed the value will be reset with `MinValue`.

* **MaxValue** - On Validation failed the value will be reset with `MaxValue`.

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

The given value can be treated as a date/time value. It can be validated based on the DateTime format with culture. There is an error indicating image will be shown, when the validation test gets failed. 

![](validation-images/errorsymbol.png)

## Handle Validation

`ValidatingEventArgs` provides data for the `Validating` event of the SfDateTimeEdit control. By handling the `Validating` event, it is possible to find the cause of the validation failed with the error message in the `ValidatingEventArgs`.

* **IsError** - To indicate whether the entered date and time is valid or in-valid.

* **ErrorMessage** - Update the cause of the Error. The error may be caused due to minimum or maximum value constraint met or incorrect date time format.

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
