---
layout: post
title: Watermark in Windows Forms DateTimePicker Control | Syncfusion
description: Learn here all about Watermark feature of Syncfusion Windows Forms DateTimePicker (SfDateTimeEdit) control and more.
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Watermark in Windows Forms DateTimePicker (SfDateTimeEdit)

The `SfDateTimeEdit` control allows you to set the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Value) to null in the default mode of the [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimeEditingMode). The watermark can be shown on null value.

## Null value

The `SfDateTimeEdit` control accepts null values only when the [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimeEditingMode) is default. The NullValue support in the `SfDateTimeEdit` control can be enabled by setting the [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_AllowNull) property to true. If the value is null and the editing text box is empty then the `Watermark` will be displayed as the text in the `SfDateTimeEdit` control.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.AllowNull = true;

dateTimeEdit.Value = null;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.AllowNull = true

dateTimeEdit.Value = Nothing

{% endhighlight  %}

{% endtabs %}

![display null value](watermark-images/nullvalue.png)

## Change watermark

The watermark is a help content that is used to display in the `SfDateTimeEdit` control when the [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_AllowNull) property is true and the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Value) property is set to null. The `Watermark` text will be displayed only when the control lost its focus. The context of the watermark text can be assigned by setting the `Watermark` of the SfDateTimeEdit.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.AllowNull = true;

dateTimeEdit.Value = null;

dateTimeEdit.Watermark = "Choose a date";

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.AllowNull = true

dateTimeEdit.Value = Nothing

dateTimeEdit.Watermark = "Choose a date"

{% endhighlight  %}

{% endtabs %}

![Watermark support](watermark-images/watermark.png)
