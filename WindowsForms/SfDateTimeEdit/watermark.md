---
layout: post
title: Watermark support in SfDateTimeEdit control for Windows Forms
description: How to change watermark on null value for SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Watermark

The `SfDateTimeEdit` control allows you to set the `Value` to null in the default mode of the `DateTimeEditingMode`; the watermark can be shown on null value.

## Null value

The `SfDateTimeEdit` control accepts null values only when the `DateTimeEditingMode` is default. The NullValue support in the `SfDateTimeEdit` control can be enabled by setting the `AllowNull` property to true. If the value is null and the editing text box is empty then the `Watermark` will be displayed as the text in the `SfDateTimeEdit` control.

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

![](watermark-images/nullvalue.png)

## Change watermark

The watermark is a help content that is used to display in the `SfDateTimeEdit` control when the `AllowNull` property is true and the `Value` property is set to null. The `Watermark` text will be displayed only when the control lost its focus. The context of the watermark text can be assigned by setting the `Watermark` of the SfDateTimeEdit.

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

![](watermark-images/watermark.png)