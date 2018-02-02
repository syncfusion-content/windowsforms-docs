---
layout: post
title: DateTime Validation of SfDateTimeEdit
description: DateTime Validation of SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# DateTime Validation

`SfDateTimeEdit` control validate the DateTime Value on pressing the Enter key or control lost its focus. If the validation failed, Value reset with previous date time Value or MinDateTime or MaxDateTime. If the validating event is not handled then the validation will be done based on the `ValidationOption` of SfDateTimeEdit.

* **Reset** - The control maintain the previous Value before validating. If the validation failed then the value will be reset with that previous Value.

* **MinDateTime** - On Validation failed the value will be reset with MinDateTime.

* **MaxDateTime** - On Validation failed the value will be reset with MaxDateTime.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2018, 2, 1);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default;

// On Validation failed the value will be reset with MinDateTime.
dateTimeEdit.ValidationOption = ValidationOption.MinDateTime;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2018, 2, 1)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default

' On Validation failed the value will be reset with MinDateTime.
dateTimeEdit.ValidationOption = ValidationOption.MinDateTime

{% endhighlight  %}

{% endtabs %} 

## Handle Validation

By handling the validating event, it is possible to find the cause of the validation failed with the error message in the `ValidatingEventArgs`. The `ValidatingEventArgs` contains two properties. They are

* **IsError** - Update whether the entered date is valid on in-valid.

* **ErrorMessage** - Update the cause of the Error. The error may be caused due to MinMaxValidation or Incorrect date time format.

{% tabs %}

{% highlight C# %}

private void DateTimeEdit_Validating(object sender, ValidatingEventArgs e)

{

   if (e.IsError)

   {

      MessageBox.Show(e.ErrorMessage);

   }
   
}

{% endhighlight  %}

{% highlight VB %}

Private Sub DateTimeEdit_Validating(sender As Object, e As ValidatingEventArgs)

	If e.IsError Then

		MessageBox.Show(e.ErrorMessage)

	End If

End Sub

{% endhighlight  %}

{% endtabs %} 