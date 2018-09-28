---
layout: post
title: Keyboard and Mouse interaction with SfDateTimeEdit
description: Keyboard and Mouse interaction with SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Navigation

The `SfDateTimeEdit` provides navigation and `Value` changes through the keyboard and mouse interaction in mask mode of the `DateTimeEditMode`, and also provides free style text editing support for date and time information. The `SfDateTimeEdit` allows you to change the `SelectedField` by using <kbd>Right</kbd> and <kbd>Left</kbd> arrows through keyboard interaction and this can be restricted by setting the `InterceptArrowKeys` to `false`.

## Navigate to drop-down calendar

The drop-down calendar control to pick the date `Value` for `SfDateTimeEdit` can be opened by <kbd>Alt+Down</kbd> arrow combinations. The drop-down calendar can be closed by <kbd>Alt+Up</kbd> and <kbd>Alt+Down</kbd> key combinations if the drop-down calendar is already opened. The state of drop-down calendar can be obtained from `ShowDropDown` of the SfDateTimeEdit.

The drop-down calendar provides key board support to change the selected date by using the keyboard. The date from different month, year, or decade can be selected by navigating to next view on pressing <kbd>Ctrl+Up</kbd> and navigate back to the old view on pressing <kbd>Ctrl+Down</kbd> key combinations. The selection in views can be changed by <kbd>Right</kbd> and <kbd>Left</kbd> arrows.

### Handle drop-down calendar programmatically

The drop-down calendar can be opened by `ShowPopup` method of the SfDateTimeEdit. The following code illustrates how to open the drop-down calendar programmatically:

{% tabs %}

{% highlight C# %}

dateTimeEdit.ShowPopup();

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.ShowPopup()

{% endhighlight  %}

{% endtabs %}

The drop-down calendar can be closed by the `ClosePopup` method of the SfDateTimeEdit. The following code illustrates how to close the drop-down calendar programmatically:

{% tabs %}

{% highlight C# %}

dateTimeEdit.ClosePopup();

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.ClosePopup()

{% endhighlight  %}

{% endtabs %}

## Change value by keyboard

In `Mask` edit mode, the `Value` of `SfDateTimeEdit` can be changed through <kbd>Up</kbd> and <kbd>Down</kbd> arrows. The `SfDateTimeEdit` spins the value of `SelectedField` (month, day, year, hour, second, and minute) to one step up or down based on the pressed arrows. Changing the value by <kbd>Up</kbd> and <kbd>Down</kbd> arrows can be applicable for `Mask` mode only, because the control does not aware of `SelectedField` of the SfDateTimeEdit in `Default` editing mode. This value change by <kbd>Up</kbd> and <kbd>Down</kbd> arrows can be restricted by setting the `InterceptArrowKeys` to `false`.

## Change value by mouse

In `Mask` edit mode, the `Value` of `SfDateTimeEdit` can be changed through up and down buttons. To make DateTimeEdit to up-down control, set the `ShowUpDown` to `true`, and the DateTimeEdit control can be used as up-down only when the `DateTimeEditMode` is `Mask`. The SfDateTimeEdit spins the value of `SelectedField` (month, day, year, hour, second, and minute) to one step up or down based on the up and down buttons press. The `SelectedField` of SfDateTimeEdit provides the information about FieldType and FieldValue. The `FieldType` of SelectedField in the SfDateTimeEdit mention the type of selected `DateTimeField`, and the `FieldValue` of SelectedField in the SfDateTimeEdit provides text in the selected `DateTimeField`.

The `SfDateTimeEdit` allows you to change the `Value` by mouse wheel action. But this mouse wheel changing of value can be applicable only in mask mode `DateTimeEditing`. This value change by mouse wheel can be restricted by setting the `AllowValueChangeOnMouseWheel` to `false`.

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

After selecting any part in the DateTime value by pressing the <kbd>Up</kbd> and <kbd>Down</kbd> arrows (or scrolling the mouse up or down), the selected value will change automatically.

![](navigation-images/Mask.png)