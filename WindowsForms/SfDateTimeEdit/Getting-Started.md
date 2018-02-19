---
layout: post
title: Getting started with SfDateTimeEdit for Syncfusion Essential Windows Forms
description: How to add SfDateTimeEdit and enable its basic features.
platform: WindowsForms
control: SfDateTimeEdit 
documentation: ug
---

# Getting Started

This section briefly describes how to design a `SfDateTimeEdit` control in a Windows Forms Application.

* Adding SfDateTimeEdit Control 
* Configuring SfDateTimeEdit Values

## Creating simple application with SfDateTimeEdit

In this walk through, you will create Windows Forms Application that contains SfDateTimEdit control.

1. [Creating project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Configuring date range](#configuring-date-range)
5. [Configure editing mode](#configure-editing-mode)
6. [Configure allow null value](#configure-allow-null-value)
7. [Configure custom format](#configure-custom-format)
8. [Configure UpDown DateTimeEdit](#configure-updown-datetimeedit)

### Creating the project

Create new Windows Forms Project in Visual Studio to display SfDateTimEdit with date and time information.

### Adding control via Designer

`SfDateTimEdit` control can be added to the application by dragging it from Toolbox and dropping it in designer view. The required assembly references will be added automatically.

![](getting-started-images/toolbox.png)

### Adding control manually in Code

In order to add control manually in C#, do the below steps,

1. Add the below required assembly references to the project,
	* Syncfusion.Core.WinForms.dll
	* Syncfusion.SfInput.WinForms.dll

2. Include the namespaces **Syncfusion.WinForms.Input**

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

2. Create `SfDateTimeEdit` control instance and add it to the Form.

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

## Configure date range

In a real-time appointment scenario, the appointment is open only for a limited number of days. You have to select a date and time within the given range. This can be achieved by the properties minimum and maximum that enables the specified date range in the SfDateTimeEdit control. The following code snippets illustrates the same.

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

![](getting-started-images/minmax.png)

## Configure editing mode

Date-time value in DateTimeEdit can be edited by two ways. 

* Default Editing 
* Mask Editing

Editing modes can be changed by `DateTimeEditingMode` of SfDateTimEdit. The following code example illustrates how to change the date time edting mode.

{% tabs %}

{% highlight C# %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

{% endhighlight  %}

{% endtabs %} 

![](editing-support-images/mask.png)

## Configure allow null value

SfDateTimEdit allow to set the `Value` as null in Mask mode of DateTimeEditing when `AllowNull` is true. The following code snippets illustrates the same

{% tabs %}

{% highlight C# %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

dateTimeEdit.AllowNull = true;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

dateTimeEdit.AllowNull = true

{% endhighlight  %}

{% endtabs %} 

![](watermark-images/nullvalue.png)

## Configure custom format

The custom pattern can be displayed in the `SfDateTimeEdit` control using the `Format` property when `DateTimePattern` is Custom. Refer the following list to create the custom format for `SfDateTimeEdit`.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.Custom;

//Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss";

{% endhighlight %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.Custom

'Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss"

{% endhighlight %}

{% endtabs %} 

![](getting-started-images/customformat.png)

## Configure UpDown DateTimeEdit

To Make the DateTimeEdit as UpDown control set `ShowUpDown` property as `true`. UpDown will appear only when `DateTimeEditingMode` is Mask.

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

![](getting-started-images/daterange.png)