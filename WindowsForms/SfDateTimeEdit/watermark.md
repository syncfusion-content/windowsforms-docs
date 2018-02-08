---
layout: post
title: Watermark support in SfDateTimeEdit control for Windows Forms
description: How to change watermark on null value for SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Watermark

`SfDateTimeEdit` control allows to set the `Value` as null in Default mode of `DateTimeEditingMode` and watermark can be shown on null value.

## Null Value

`SfDateTimeEdit` control accepts null values only when the `DateTimeEditingMode` is Default. NullValue support in the `SfDateTimeEdit` control can be enabled by setting the `AllowNull` property to true. If the Value is null and the editing text box is empty then the `Watermark` will be displayed as the Text in `SfDateTimeEdit` control.

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

## Change Watermark

Watermark is the help content to display in the `SfDateTimeEdit` control when `AllowNull` property is true and the Value property is set to null. `Watermark` text will be displayed only when the control lost its focus. The context of the Watermark text can be assigned by set the `Watermark` of SfDateTimeEdit.

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