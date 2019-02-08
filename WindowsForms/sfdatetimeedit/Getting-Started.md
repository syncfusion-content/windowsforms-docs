---
layout: post
title: Getting started | SfDateTimeEdit | WindowsForms | Syncfusion  
description: How to add SfDateTimeEdit and enable its basic features.
platform: WindowsForms
control: SfDateTimeEdit 
documentation: ug
---

# Getting started

This section briefly describes how to design the `SfDateTimeEdit` control in a Windows Forms application and overview of its basic functionalities.

* Adding SfDateTimeEdit Control
* Configuring SfDateTimeEdit Values

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfdatetimeedit) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Creating simple application with SfDateTimeEdit

You can create the Windows Forms application with SfDateTimEdit control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Configuring date range](#configuring-date-range)
5. [Configure editing mode](#configure-editing-mode)
6. [Configure allow null value](#configure-allow-null-value)
7. [Configure custom format](#configure-custom-format)
8. [Configure UpDown DateTimeEdit](#configure-updown-datetimeedit)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the SfDateTimEdit with date and time information.

## Adding control via designer

The `SfDateTimEdit` control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Core.WinForms.dll
* Syncfusion.SfInput.WinForms.dll

![Drag and drop the SfDateTimeEdit control to form](getting-started-images/toolbox.png)

## Adding control manually in code

To add the control manually in C#, follow the given steps:

**1.** Add the following required assembly references to the project:
	* Syncfusion.Core.WinForms.dll
	* Syncfusion.SfInput.WinForms.dll

**2.** Include the namespaces **Syncfusion.WinForms.Input**.

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

**3.** Create a `SfDateTimeEdit` control instance and add it to the form.

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

In a real-time appointment scenario, the appointment is open only for a limited number of days. You have to select a date and time within the given range. This can be achieved by [MinDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~MinDateTime.html) and [MaxDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~MaxDateTime.html) properties that enables the specified date range in the SfDateTimeEdit control.

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

## Configure editing mode

The date-time value in the DateTimeEdit can be edited by two ways as follows: 

* Default Editing 
* Mask Editing

Editing modes can be changed by [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~DateTimeEditingMode.html) of the SfDateTimEdit. The following code example illustrates how to change the date time editing mode:

{% tabs %}

{% highlight C# %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask;

{% endhighlight  %}

{% highlight VB %}

dateTimeEdit.DateTimeEditingMode = DateTimeEditingMode.Mask

{% endhighlight  %}

{% endtabs %} 

![Editing mode](editing-support-images/mask.png)

## Configure allow null value

The SfDateTimEdit allows you to set the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~Value.html) to null in the mask mode of DateTimeEditing when [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~AllowNull.html) is set to true.

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

![SfDateTimEdit allows null value](watermark-images/nullvalue.png)

## Configure custom format

The custom pattern can be displayed in the `SfDateTimeEdit` control by using the [Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~Format.html) property when the [DateTimePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~DateTimePattern.html) is set to custom. Refer to the following list to create a custom format for the `SfDateTimeEdit`:

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

![Custom format](getting-started-images/customformat.png)

## Configure up-down DateTimeEdit

To make the DateTimeEdit to up-down control, set the [ShowUpDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~ShowUpDown.html) property to `true`. The up-down will appear only when the [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~DateTimeEditingMode.html) is set to mask.

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