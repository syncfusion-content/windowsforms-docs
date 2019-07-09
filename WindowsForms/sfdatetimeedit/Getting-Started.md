---
layout: post
title: Getting started | SfDateTimeEdit | WindowsForms | Syncfusion  
description: How to add SfDateTimeEdit and enable its basic features.
platform: WindowsForms
control: SfDateTimeEdit 
documentation: ug
---

# Getting started

This section briefly describes how to create a new Windows Forms project in Visual Studio, and add the **SfDateTimeEdit** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfdatetimeedit) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.

## Adding the SfDateTimeEdit control via designer

The following steps describe how to create an **SfDateTimeEdit** control via the designer.

1) Create a new Windows Forms application in Visual Studio.

2) The [SfDateTimeEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit.html) control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

![Drag and drop the SfDateTimeEdit control to form](getting-started-images/toolbox.png)

## Adding SfDateTimeEdit control via code

The following steps illustrate how to create an **SfDateTimeEdit** control programmatically.

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly reference to the project.

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

4) Create an instance of [SfDateTimeEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit.html) control and add it to the form.

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

## Editing mode

The date-time value in the DateTimeEdit can be edited by two ways as follows.

* Default Editing 
* Mask Editing

Editing modes can be changed by [DateTimeEditingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~DateTimeEditingMode.html) of the SfDateTimEdit. The following code example illustrates how to change the date time editing mode.

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

The **SfDateTimEdit** allows you to set the [Value](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~Value.html) to null in the mask mode of DateTimeEditing when [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~AllowNull.html) is set to true.

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

The custom pattern can be displayed in the **SfDateTimeEdit** control by using the [Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~Format.html) property when the [DateTimePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfDateTimeEdit~DateTimePattern.html) is set to custom.

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