---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: SfCalendar 
documentation: ug
---

# Getting Started

This section briefly describes how to design a `SfCalendar` Control in a Windows Forms Application.

* Adding SfCalendar Control 
* Configuring SfCalendar Values

## Adding SfCalendar Control

### Through Designer

The following steps illustrate how to create an Edit Control through designer.

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and Drop `SfCalendar` control in the Form from Toolbox.

![](Getting-Started_images/GettingStarted.png) 

### Through Code

There are several ways to add Syncfusion control in to the Visual Studio Windows Forms project. The following steps help to add a SfDateTimeEdit control through Code.

1) Create a Windows Forms project in Visual Studio and refer to the following assemblies.

* Syncfusion.Core.Windows.dll
* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.SfInput.Windows.dll
* Syncfusion.Tools.Windows.dll

2) Now add the `SfCalendar` control with a required optimal name by using the included namespace.

To add `SfCalendar` Control to a Windows Forms Application through code behind.

1. Include the namespaces Syncfusion.WinForms.Input

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 

2. Create an instance of the `SfCalendar` control and add it to the Form.

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

## Restrict Dates

`SfCalendar` allows to select dates that falls between certain range of dates. To specify the range, set start date and end date to `MinDate` and `MaxDate` properties respectively.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

this.Controls.Add(calendar);

calendar.Value = new DateTime(2018, 1, 12);

calendar.MinDate = new DateTime(2018, 1, 03);

calendar.MaxDate = new DateTime(2018, 1, 29);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar As Syncfusion.WinForms.Input.SfCalendar = New Syncfusion.WinForms.Input.SfCalendar

Me.Controls.Add(calendar)

calendar.Value = New DateTime(2018, 1, 12)

calendar.MinDate = New DateTime(2018, 1, 3)

calendar.MaxDate = New DateTime(2018, 1, 29)

{% endhighlight  %}

{% endtabs %} 

![](Working-with-Calendar/MinMax.png)

# Set Blackout Dates

`BlackoutDates` refers the disabled dates that restrict the user from selecting it.

A date collection can be provided to set the `BlackoutDates` for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the Blackout Dates
    
    DateTime date = new DateTime(2018, 01, 25);
    
    DateTime date1 = new DateTime(2018, 01, 23);
    
    DateTime date2 = new DateTime(2018, 01, 17);
    
    DateTime date3 = new DateTime(2018, 01, 18);
    
    DateTime date4 = new DateTime(2018, 01, 20);
    
    DateTime date5 = new DateTime(2018, 01, 22);
    
    this.SfCalendar1.BlackoutDates = new DateTime[]{ date, date1, date2, date3, date4, date5};

{% endhighlight  %}

{% highlight VB %}

Dim date As DateTime = New DateTime(2018, 1, 25)

Dim date1 As DateTime = New DateTime(2018, 1, 23)

Dim date2 As DateTime = New DateTime(2018, 1, 17)

Dim date3 As DateTime = New DateTime(2018, 1, 18)

Dim date4 As DateTime = New DateTime(2018, 1, 20)

Dim date5 As DateTime = New DateTime(2018, 1, 22)

Me.SfCalendar1.BlackoutDates = New DateTime() {date, date1, date2, date3, date4, date5}

{% endhighlight  %}

{% endtabs %} 

![](Blockout-dates_images/BlackoutDates.png)

## Setting Week Number

By showing week numbers near the left margin. To show week numbers, set `ShowWeekNumber` property to true as follows.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = true;

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Me.SfCalendar1.ShowWeekNumber = true

{% endhighlight  %}

{% endtabs %} 

![](Working-with-Calendar/ShowWeekNumber.png)

# Selecting Multiple Dates

This control allows you to select multiple dates, by setting the `AllowMultipleSelection` property to true. The following code example illustrates this.

{% tabs %}

{% highlight C# %}

// Setting to Allow Multiple Selection

this.SfCalendar1.AllowMultipleSelection = true;

{% endhighlight  %}

{% highlight VB %}

' Setting to Allow Multiple Selection

Me.SfCalendar1.AllowMultipleSelection = true

{% endhighlight  %}

{% endtabs %} 

![](Selecting-Multiple-Dates_images/MultiSelection.png)

## Culture

The culture information can be applied using the `Culture` property. 

To change the culture for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the culture

this.SfCalendar1.Culture = new System.Globalization.CultureInfo(2);

{% endhighlight  %}

{% highlight VB %}

'Setting the culture

Me.SfCalendar1.Culture = New System.Globalization.CultureInfo(2)

{% endhighlight  %}

{% endtabs %} 

![](Culture_images/Culture.png)