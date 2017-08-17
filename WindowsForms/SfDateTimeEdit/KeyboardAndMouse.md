---
layout: post
title: Keyboard and Mouse interaction with SfDateTimeEdit
description: Keyboard and Mouse interaction with SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Keyboard and Mouse interaction

In Mask Edit mode, the Up and Down arrows in the `SfDateTimeEdit` control spin the selected field (Month, Day, Year, Hour, Second and Minute) one step up or down. Mouse Scroll in the `SfDateTimeEdit` control spin the selected parts in the Value property one step up or down. The spin behavior in the DateTimeEdit control can be enabled by setting the `AllowValueChangeOnMouseWheel` property to true.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new  Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate;

dateTimeEdit.AllowValueChangeOnMouseWheel = true;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate

dateTimeEdit.AllowValueChangeOnMouseWheel = True

{% endhighlight  %}

{% endtabs %}

After selecting any part in the DateTime value by pressing the Up or Down arrows (or Scroll the Mouse Up or Down) then the selected value will automatically change.

![](Editing-Support_images/Mask.png)