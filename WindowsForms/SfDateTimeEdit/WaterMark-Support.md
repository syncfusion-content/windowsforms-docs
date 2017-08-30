---
layout: post
title: Watermark support in SfDateTimeEdit
description: Null value support
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Watermark on NullValue

##  Null Value

`SfDateTimeEdit` control accepts null values only when the `DateTimeEditingMode` is Default. NullValue support in the `SfDateTimeEdit` control can be enabled by setting the `AllowNull` property to true. If the Value is null and the editing text box is empty then the `WaterMarkText` will be displayed as the Text in `SfDateTimeEdit` control. The WatermarkText will be displayed only when the control lost its focus.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.AllowNull = true;

dateTimeEdit.Value = null;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.AllowNull = True

dateTimeEdit.Value = Nothing

{% endhighlight  %}

{% endtabs %} 

![](Null-Value-Support_image/NullValue.png)

## Watermark

Watermark is the help content to displayed in the `SfDateTimeEdit` control when AllowNull property is true and the Value property is set to null, and it displayed when the control lost its Focus. The context of the Watermark text can be assigned by set the `WatermarkText` of SfDateTimeEdit.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.AllowNull = true;

dateTimeEdit.Value = null;

dateTimeEdit.WatermarkText = "Date is null";

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.AllowNull = True

dateTimeEdit.Value = Nothing

dateTimeEdit.WatermarkText = "Date is null"

{% endhighlight  %}

{% endtabs %} 

![](WatermarkSupport_image/Watermark.png)