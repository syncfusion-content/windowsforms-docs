---
layout: post
title: Getting Started with Windows Forms DateTimePicker | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms DateTimePicker (SfDateTimeEdit) control, its elements, and more.
platform: WindowsForms
control: SfDateTimeEdit 
documentation: ug
---

# Getting Started with Windows Forms DateTimePicker (SfDateTimeEdit)

This section briefly describes how to create a new Windows Forms project in Visual Studio and add the **SfDateTimeEdit** control with its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfdatetimeedit) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.

## Adding the SfDateTimeEdit control via designer

The following steps describe how to create an **SfDateTimeEdit** control via designer.

1) Create a new Windows Forms application in Visual Studio.

2) Add the [SfDateTimeEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html) control to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically:

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

![Drag and drop the SfDateTimeEdit control to form](getting-started-images/toolbox.png)

## Adding SfDateTimeEdit control via code

The following steps describe how to create an **SfDateTimeEdit** control programmatically:

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project:

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

3) Include the required namespace.

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

4) Create an instance of the [SfDateTimeEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html) control, and then add it to the form.

{% tabs %}

{% highlight C# %}

SfDateTimeEdit sfDateTimeEdit = new SfDateTimeEdit();

this.Controls.Add(sfDateTimeEdit);

{% endhighlight %}

{% highlight VB %}

Dim SfDateTimeEdit As New SfDateTimeEdit()

Me.Controls.Add(sfDateTimeEdit)

{% endhighlight %}

{% endtabs %}

## Date range

In a real-time appointment scenario, the appointment is open only for a limited number of days. You have to select a date and time within given range using the [MinDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_MinDateTime) and [MaxDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_MaxDateTime) properties, which enable specified date range in the SfDateTimeEdit control.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2018, 2, 16);

dateTimeEdit.MinDateTime = new DateTime(2018, 2, 3);

dateTimeEdit.MaxDateTime = new DateTime(2018, 2, 27);

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As New Syncfusion.WinForms.Input.SfDateTimeEdit()

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2018, 2, 16)

dateTimeEdit.MinDateTime = New DateTime(2018, 2, 3)

dateTimeEdit.MaxDateTime = New DateTime(2018, 2, 27)

{% endhighlight  %}

{% endtabs %}

![SfDateTimeEdit control](getting-started-images/minmax.png)

## Editing mode

The date-time value in the DateTimeEdit can be edited by two ways as follows.

* Default Editing 
* Mask Editing

Editing modes can be changed using the [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimeEditingMode) property of SfDateTimEdit. The following code example demonstrates how to change the date-time editing mode.

{% tabs %}

{% highlight C# %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

{% endhighlight  %}

{% endtabs %} 

![Editing mode](editing-support-images/mask.png)

## Allow null value

The **SfDateTimEdit** allows you to set [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Value) to null in the mask mode of DateTimeEditing when [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_AllowNull) is set to true.

{% tabs %}

{% highlight C# %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

dateTimeEdit.AllowNull = true;

dateTimeEdit.Watermark = "Choose a date";

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

dateTimeEdit.AllowNull = true

dateTimeEdit.Watermark = "Choose a date"

{% endhighlight  %}

{% endtabs %}

![SfDateTimEdit allows null value](watermark-images/watermark.png)

## Custom format

The custom pattern can be displayed in the **SfDateTimeEdit** control using the [Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Format) property when [DateTimePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimePattern) is set to custom.

{% tabs %}

{% highlight C# %}

dateTimeEdit.Value = new DateTime(2018, 2, 5);

dateTimeEdit.DateTimePattern = DateTimePattern.Custom;

//Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss";

{% endhighlight %}

{% highlight VB %}

dateTimeEdit.Value = New DateTime(2018, 2, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.Custom

'Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss"

{% endhighlight %}

{% endtabs %}

![Custom format](getting-started-images/customformat.png)

## Configure up-down

You can edit value of DateTimeEdit using the up-down button by setting the [ShowUpDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_ShowUpDown) property to `true`. The up-down button appears only when [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimeEditingMode) is set to mask.

{% tabs %}

{% highlight C# %}

//Enable the UpDown Button

this.dateTimeEdit.ShowUpDown = true;

{% endhighlight  %}

{% highlight VB %}

'Enable the UpDown Button

Me.dateTimeEdit.ShowUpDown = true

{% endhighlight  %}

{% endtabs %} 

![Up down DateTimeEdit](getting-started-images/daterange.png)

## Configure the calculation of week number based on culture

You can get the current week number in `SfDateTimeEdit` control by changing the `CalendarWeekRule` property value of date time format in `CultureInfo`. The default value of `CalendarWeekRule` property is `FirstDay`.

{% tabs %}

{% highlight C# %}

SfDateTimeEdit sfdateTimeEdit1 = new SfDateTimeEdit();
CultureInfo info = new CultureInfo("en-EN");
info.DateTimeFormat.CalendarWeekRule = CalendarWeekRule.FirstFullWeek;
sfdateTimeEdit1.Culture = info;

{% endhighlight  %}

{% highlight VB %}

Dim sfdateTimeEdit1 As SfDateTimeEdit = New SfDateTimeEdit()
Dim info As CultureInfo = New CultureInfo("en-EN")
info.DateTimeFormat.CalendarWeekRule = CalendarWeekRule.FirstFullWeek
sfdateTimeEdit1.Culture = info

{% endhighlight  %}

{% endtabs %} 
