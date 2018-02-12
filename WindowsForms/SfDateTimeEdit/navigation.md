---
layout: post
title: Keyboard and Mouse interaction with SfDateTimeEdit
description: Keyboard and Mouse interaction with SfDateTimeEdit
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Navigation

`SfDateTimeEdit` provides on easy navigation and `Value` changes though keyboard and mouse interaction in Mask mode of `DateTimeEditMode` and also provides free style text editing support for date and time information.`SfDateTimeEdit` allows to change the `SelectedField` by Right and Left arrow keys through keyboard interaction. Right and Left arrow key change the `SelectedField` of `SfDateTimeEdit` can be restricted by set `InterceptArrowKeys` as `false`.

## Navigate to DropDown Calendar

DropDown Calendar control to pick the date `Value` for `SfDateTimeEdit` can be opened by `ALT + DOWN` arrow combinations. DropDown calendar can be closed by `ALT + UP` and `ALT + DOWN` key combinations if dropdown calendar is already opened. State of DropDown calendar can be get from `IsDropDowOpen` of SfDateTimeEdit.

DropDown Calendar provides key board support to change the selected date by keyboard. Date from different month, year or decade can be selected by navigate to next view on press `CTRL + UP` and navigate back to the old view on `CTRL + DOWN` key combinations. Selection in views can be changed by Right and Left arrow keys.

### Handle DropDown Calendar Programmatically

Dropdown calendar can be opened by `ShowPopup` method of SfDateTimeEdit. the follow code illustrates how to open the DropDown Calendar programmatically.

{% tabs %}

{% highlight C# %}

dateTimeEdit.ShowPopup();

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.ShowPopup()

{% endhighlight  %}

{% endtabs %}

Dropdown calendar can be closed by `ClosePopup` method of SfDateTimeEdit. the follow code illustrates how to open the DropDown Calendar programmatically.

{% tabs %}

{% highlight C# %}

dateTimeEdit.ClosePopup();

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.ClosePopup()

{% endhighlight  %}

{% endtabs %}

## Change Value by Keyboard

In `Mask` edit mode, `Value` of `SfDateTimeEdit` can be changed through Up and Down arrow keys. `SfDateTimeEdit` spin the value of `SelectedField` (Month, Day, Year, Hour, Second and Minute) one step up or down based on the arrow keys press. This vale change by up and down arrow keys only applicable for `Mask` mode because control will not aware of `SelectedField` of SfDateTimeEdit in `Default` editing mode. This vale change by up and down arrow keys can be restricted by set `InterceptArrowKeys` as `false` 

## Change Value by Mouse

In `Mask` edit mode, `Value` of `SfDateTimeEdit` can be changed through Up and Down buttons. To make DateTimeEdit as UpDown control, set `ShowUpDown` as `true` and DateTimeEdit control can be used as UpDown only when `DateTimeEditMode` is `Mask`. SfDateTimeEdit spin the value of `SelectedField` (Month, Day, Year, Hour, Second and Minute) one step up or down based on the up and down buttons press. `SelectedField` of SfDateTimeEdit provides the information about FieldType and FieldValue. `FieldType` of SelectedField in SfDateTimeEdit mention the type of selected `DateTimeField` and `FieldValue`  of SelectedField in SfDateTimeEdit provides text in selected `DateTimeField`.

`SfDateTimeEdit` also allows to change the `Value` by mouse wheel action. But this mouse wheel changing the value applicable only on Mask mode DateTimeEditing. This vale change by mouse wheel can be restricted by set `AllowValueChangeOnMouseWheel` as `false`.

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

![](navigation-images/Mask.png)