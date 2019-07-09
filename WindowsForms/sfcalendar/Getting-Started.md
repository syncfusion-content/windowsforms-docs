---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: How to add SfCalendar and enable its basic features.
platform: WindowsForms
control: SfCalendar 
documentation: ug
---

# Getting started

This section briefly describes how to create a new Windows Forms project in Visual Studio, and add the **SfCalendar** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfcalendar) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.
 
## Adding the SfCalendar control via designer

The following steps describe how to create an **SfCalendar** control via the designer.

1) Create a new Windows Forms application in Visual Studio.

2) The [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

![Drag and drop the sfcalendar to form](getting-started-images/gettingstarted.png) 

## Adding the SfCalendar control via code

The following steps illustrate how to create an **SfCalendar** control programmatically.

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly reference to the project.
	
* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

3) Include the required namespaces.

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

4) Create an instance of [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) control instance and add it to the form.

{% tabs %}

{% highlight C# %}

SfCalendar sfCalendar = new SfCalendar();

this.Controls.Add(sfCalendar);

{% endhighlight %}

{% highlight VB %}

Dim sfCalendar As SfCalendar = New SfCalendar

Me.Controls.Add(sfCalendar)

{% endhighlight %}

{% endtabs %}

## Date range

The [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) prevent users from selecting dates within a specified minimum and maximum range. To specify the range, set the start date and end date to [MinDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~MinDate.html) and [MaxDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~MaxDate.html) properties respectively.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

this.Controls.Add(calendar);

calendar.SelectedDate = new DateTime(2018, 1, 17);

calendar.MinDate = new DateTime(2018, 1, 05);

calendar.MaxDate = new DateTime(2018, 1, 25);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar As Syncfusion.WinForms.Input.SfCalendar = New Syncfusion.WinForms.Input.SfCalendar

Me.Controls.Add(calendar)

calendar.SelectedDate = New DateTime(2018, 1, 17)

calendar.MinDate = New DateTime(2018, 1, 5)

calendar.MaxDate = New DateTime(2018, 1, 25)

{% endhighlight  %}

{% endtabs %} 

![Windows Forms SfCalendar showing selected date with in range](appearance-images/minmax.png)

## Blackout dates

[BlackoutDates](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~BlackoutDates.html) refers the disabled dates that restrict the user from selecting it. A date collection can be provided to set the `BlackoutDates` for this control.

{% tabs %}

{% highlight C# %}

//Setting the Blackout Dates

calendarBlackoutDates.Add(new System.DateTime(2018, 1, 7));
calendarBlackoutDates.Add(new System.DateTime(2018, 1, 14));
calendar.BlackoutDates.Add(new System.DateTime(2018, 1, 21));
calendar.BlackoutDates.Add(new System.DateTime(2018, 1, 6));
calendar.BlackoutDates.Add(new System.DateTime(2018, 1, 13));
calendar.BlackoutDates.Add(new System.DateTime(2018, 1, 20));

{% endhighlight  %}

{% highlight VB %}

'Setting the Blackout Dates

calendarBlackoutDates.Add(New System.DateTime(2018, 1, 7))
calendarBlackoutDates.Add(New System.DateTime(2018, 1, 14))
calendar.BlackoutDates.Add(New System.DateTime(2018, 1, 21))
calendar.BlackoutDates.Add(New System.DateTime(2018, 1, 6))
calendar.BlackoutDates.Add(New System.DateTime(2018, 1, 13))
calendar.BlackoutDates.Add(New System.DateTime(2018, 1, 20))
    
{% endhighlight  %}

{% endtabs %} 

![Windows Forms SfCalendar showing BlackOutDates](getting-started-images/blackoutdates.png)

## Special dates

The **SfCalendar** allows you to highlight special dates with icons and descriptions. Special dates can be added to the calendar through the [SpecialDates](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~SpecialDates.html) collection.
Following code illustrates how to add the special dates to the calendar:

{% tabs %}

{% highlight C# %}

SpecialDate specialDate1 = new SpecialDate();
List<SpecialDate> SpecialDates = new List<SpecialDate>();  
    
specialDate1.BackColor = System.Drawing.Color.White;
specialDate1.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
specialDate1.ForeColor = System.Drawing.Color.Magenta;
specialDate1.Image = Properties.Resources.icons_Womens_day;
specialDate1.Description = "Army Day";
specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter;
specialDate1.IsDateVisible = false;
specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage;
specialDate1.Value = new System.DateTime(2018, 1, 15);
SpecialDates.Add(specialDate1);
calendar.SpecialDates = SpecialDates;
  
{% endhighlight  %}

{% highlight VB %}

Dim specialDate1 As New SpecialDate()
Dim SpecialDates As New List(Of SpecialDate)()

specialDate1.BackColor = System.Drawing.Color.White
specialDate1.Font = New System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, (CByte(0)))
specialDate1.ForeColor = System.Drawing.Color.Magenta
specialDate1.Image = My.Resources.icons_Womens_day
specialDate1.Description = "Army Day"
specialDate1.ImageAlign = System.Drawing.ContentAlignment.MiddleCenter
specialDate1.IsDateVisible = False
specialDate1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
specialDate1.TextImageRelation = System.Windows.Forms.TextImageRelation.TextBeforeImage
specialDate1.Value = New System.DateTime(2018, 1, 15)
SpecialDates.Add(specialDate1)
calendar.SpecialDates = SpecialDates

{% endhighlight  %}

{% endtabs %}  

![Windows Forms SfCalendar showing special date](cell-customization-images/specialdates.png)

## Allow multiple selection

The **SfCalendar** control allows you to select multiple dates by setting the [AllowMultipleSelection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~AllowMultipleSelection.html) property to true.

{% tabs %}

{% highlight C# %}

// Setting to Allow Multiple Selection

calendar.AllowMultipleSelection = true;

{% endhighlight  %}

{% highlight VB %}

' Setting to Allow Multiple Selection

calendar.AllowMultipleSelection = True

{% endhighlight  %}

{% endtabs %} 

![Windows Forms SfCalendar showing multiple date selection](getting-started-images/multiselection.png)

## Configure first day of week

The first day of a week can be changed by setting the [FirstDayOfWeek](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~FirstDayOfWeek.html) property. 

{% tabs %}

{% highlight C# %}

//Setting the First Day Of Week

this.SfCalendar1.FirstDayOfWeek = DayOfWeek.Monday;

{% endhighlight  %}

{% highlight VB %}

'Setting the First Day Of Week

Me.SfCalendar1.FirstDayOfWeek = DayOfWeek.Monday

{% endhighlight  %}

{% endtabs %} 

![First day of week](getting-started-images/firstdayofweek.png)

## Configure to show week number

The week number of current week in a year can be shown in the calendar control by setting the [ShowWeekNumber](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~ShowWeekNumbers.html) property to true as follows:

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

calendar.ShowWeekNumber = true;

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

calendar.ShowWeekNumber = True

{% endhighlight  %}

{% endtabs %} 

![SfCalendar shows week number](appearance-images/showweeknumber.png)