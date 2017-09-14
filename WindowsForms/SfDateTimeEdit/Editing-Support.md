---
layout: post
title: DateTime Editing Modes of SfDateTimeEdit control for Windows Forms
description: DateTime Editing Modes of SfDateTimeEdit control for Windows Forms
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# DateTime Editing Modes

The DateTime value of the `SfDateTimeEdit` control can be updated by editing the text in the control. DateTimeText text can be edited by two modes. 

* Textbox Editing 
* Mask Editing

## Textbox Editing

The DateTime can be edited in the TextBox of the `SfDateTimeEdit` control when the `DateTimeEditingMode` is Default. In Default editing mode the value can be assigned in any valid format. Even if the text box text is not in the correct pattern, SfDateTimeEdit control automatically update the value in the correct pattern on lost focus. i.e If the date time pattern is LongDate with pattern "dddd, MMMM dd, yyyy" and date is entered as "Mar 28 2017" in Editing text box, DateTimeText will be automatically converted according to LongDate pattern while pressing the enter key or on lost focus of the control.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 6, 27);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 6, 27)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Default

{% endhighlight  %}

{% endtabs %} 

![](Editing-Support_images/Default.png)

## Mask Editing

The Mask Edit mode provides an easy and reliable way of collecting user input and displaying standard data in a specific format. In Mask editing mode the date will be separated into different fields such as Date, Month, Year, Minutes, Hours and Seconds. The field can be updated by selecting the field and pressing the UP or Down arrow to increment or decrement the selected field.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 6, 27);

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 6, 27)

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

{% endhighlight  %}

{% endtabs %} 

![](Editing-Support_images/Mask.png)