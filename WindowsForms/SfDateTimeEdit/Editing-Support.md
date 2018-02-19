---
layout: post
title: DateTime Editing Modes of SfDateTimeEdit control for Windows Forms
description: How to use different editing modes of SfDateTimeEdit control
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# DateTime Editing

The DateTime value of the `SfDateTimeEdit` control can be updated by editing the text in the control. `DateTimeEditingMode` decides how to insert the input values for SfDateTimeEdit from keyboard. DateTimeText text can be edited by two ways. 

* Default Editing 
* Mask Editing

## Default Editing

The DateTime can be edited in the textbox of the `SfDateTimeEdit` control when the `DateTimeEditingMode` is Default. In Default editing mode the value can be assigned in any valid format. Even if the text box text is not in the correct pattern, SfDateTimeEdit control automatically update the value in the correct pattern on lost focus. i.e If the date time pattern is LongDate with pattern "dddd, MMMM dd, yyyy" and date is entered as "Mar 28 2017" in Editing text box, DateTimeText will be automatically converted according to LongDate pattern while pressing the enter key or on lost focus of the control. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 6, 27);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 6, 27)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default

{% endhighlight  %}

{% endtabs %} 

![](editing-support-images/default.png)

## Mask Editing

The Mask Edit mode provides an easy and reliable way of collecting user input and displaying standard data in a specific format. In Mask editing mode the date will be separated into different fields such as Date, Month, Year, Minutes, Hours and Seconds. The field can be updated by selecting the field and pressing the UP or DOWN arrow to increment or decrement the selected field. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2018, 2, 01);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2018, 2, 1)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

{% endhighlight  %}

{% endtabs %} 

![](editing-support-images/mask.png)

## ReadOnly

This control supports `ReadOnly` which is used to restrict edit date and time fields in the `SfDateTimeEdit`. Set ReadOnly as **true** restricts the text editing in `SfDateTimeEdit` and user can change the Value only by clicking UpDown buttons or pick the date from the DropDown `SfCalendar`. The following code snippets illustrates the same.

{% tabs %}

{% highlight C# %}

//Enable the User interactions

this.dateTimeEdit.ReadOnly = false;

{% endhighlight  %}

{% highlight VB %}

'Enable the User interactions

Me.dateTimeEdit.ReadOnly = false

{% endhighlight  %}

{% endtabs %}

![](editing-support-images/readonly.png)