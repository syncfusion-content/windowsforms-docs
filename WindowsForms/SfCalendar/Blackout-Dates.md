---
layout: post
title: Blackout Dates of SfCalendar control for Windows Forms
description: Blackout Dates of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Blackout Dates

`BlackoutDates` refers the disabled dates that restrict the user from selecting it.

A date collection can be provided to set the `BlackoutDates` for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the culture
    
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

