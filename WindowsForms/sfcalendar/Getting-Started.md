---
layout: post
title: Getting Started with SfCalendar | WindowsForms | Syncfusion
description: How to add SfCalendar and explore its basic features.
platform: WindowsForms
control: SfCalendar 
documentation: ug
---

# Getting started

This section briefly describes how to create a new Windows Forms project in Visual Studio and add the **SfCalendar** control with its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfcalendar) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.
 
## Adding the SfCalendar control via designer

The following steps describe how to create an **SfCalendar** control via designer.

1) Create a new Windows Forms application in Visual Studio.

2) Add the [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) control to an application by dragging it from the toolbox to design view. The following dependent assemblies will be added automatically:

* Syncfusion.Core.WinForms
* Syncfusion.SfInput.WinForms
* Syncfusion.Shared.Base

![Drag and drop the sfcalendar to form](getting-started-images/gettingstarted.png) 

## Adding the SfCalendar control via code

The following steps describe how to create an **SfCalendar** control programmatically:

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project:

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

4) Create an instance of the [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) control instance, and then add it to the form.

{% tabs %}

{% highlight C# %}

SfCalendar calendar = new SfCalendar();

this.Controls.Add(calendar);

{% endhighlight %}

{% highlight VB %}

Dim calendar As SfCalendar = New SfCalendar

Me.Controls.Add(calendar)

{% endhighlight %}

{% endtabs %}

## Select a date

At run time, a particular date should be focused or selected using the `SelectedDate` property. This property is also used to change the current date of SfCalendar.

{% tabs %}

{% highlight C# %}

calendar.SelectedDate = new System.DateTime(2019, 08, 12);

{% endhighlight %}

{% highlight VB %}

calendar.SelectedDate = New System.DateTime(2019, 08, 12)

{% endhighlight %}

{% endtabs %}

![Select the date in WF SfCalendar](Getting-Started-images/selecteddate.png)

### Selection change event

The SfCalendar control notifies the date changes using the `SelectionChanging` and `SelectionChanged` events. You can use the `NewValue` and `OldValue` properties to get the old and new dates in the `SelectionChanged` event. In the `SelectionChanging` event, you can use the `Cancel` property in event argument to avoid the date changes or mentioned date in SfCalendar.

{% tabs %}

{% highlight C# %}

// Invoking selection changing event
calendar.SelectionChanging += Calendar_SelectionChanging;

// Invoking selection changed event
calendar.SelectionChanged += Calendar_SelectionChanged;

// Occurs before the selected date is changed in Calendar.
private void Calendar_SelectionChanging(Syncfusion.WinForms.Input.SfCalendar sender, Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs e)
{
    var newDate = e.NewValue;
    if (newDate == new System.DateTime(2019,08,13))
        e.Cancel = true;            
}

// Occurs after the selected date is changed in Calendar.
private void Calendar_SelectionChanged(Syncfusion.WinForms.Input.SfCalendar sender, Syncfusion.WinForms.Input.Events.SelectionChangedEventArgs e)
{
    var newDate = e.NewValue;
    var oldDate = e.OldValue;
}

{% endhighlight %}

{% highlight VB %}

' Invoking selection changing event
Private calendar.SelectionChanging += AddressOf Calendar_SelectionChanging

' Invoking selection changed event
Private calendar.SelectionChanged += AddressOf Calendar_SelectionChanged

' Occurs before the selected date is changed in Calendar.
Private Sub Calendar_SelectionChanging(ByVal sender As Syncfusion.WinForms.Input.SfCalendar, ByVal e As Syncfusion.WinForms.Input.Events.SelectionChangingEventArgs)
	Dim newDate = e.NewValue
	If newDate Is New System.DateTime(2019,08,13) Then
		e.Cancel = True
	End If
End Sub

' Occurs after the selected date is changed in Calendar.
Private Sub Calendar_SelectionChanged(ByVal sender As Syncfusion.WinForms.Input.SfCalendar, ByVal e As Syncfusion.WinForms.Input.Events.SelectionChangedEventArgs)
	Dim newDate = e.NewValue
	Dim oldDate = e.OldValue
End Sub

{% endhighlight %}

{% endtabs %}

## Date range

The [SfCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar.html) prevents users from selecting dates within specified minimum and maximum ranges. To specify a range, set the start date and end date to the [MinDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~MinDate.html) and [MaxDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~MaxDate.html) properties, respectively.

{% tabs %}

{% highlight C# %}

// Setting the minimum and maximum dates

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();
this.Controls.Add(calendar);

calendar.SelectedDate = new DateTime(2018, 1, 17);
calendar.MinDate = new DateTime(2018, 1, 05);
calendar.MaxDate = new DateTime(2018, 1, 25);

{% endhighlight  %}

{% highlight VB %}

' Setting the minimum and maximum dates

Dim calendar As Syncfusion.WinForms.Input.SfCalendar = New Syncfusion.WinForms.Input.SfCalendar
Me.Controls.Add(calendar)

calendar.SelectedDate = New DateTime(2018, 1, 17)
calendar.MinDate = New DateTime(2018, 1, 5)
calendar.MaxDate = New DateTime(2018, 1, 25)

{% endhighlight  %}

{% endtabs %} 

![Windows Forms SfCalendar showing selected date with in range](appearance-images/minmax.png)

## Blackout dates

[BlackoutDates](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~BlackoutDates.html) refers the disabled dates that restrict users from selecting it. A date collection can be provided to set the `BlackoutDates` for this control.

{% tabs %}

{% highlight C# %}

//Setting the blackout dates

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

The **SfCalendar** allows you to highlight special dates with icons and descriptions. Special dates can be added to the calendar using the [SpecialDates](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfInput.WinForms~Syncfusion.WinForms.Input.SfCalendar~SpecialDates.html) collection.

The following code sample demonstrates how to add special dates to the calendar.

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