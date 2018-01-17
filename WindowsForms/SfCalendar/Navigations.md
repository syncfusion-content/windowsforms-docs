---
layout: post
title: Working with SfCalendar
description: Working with SfCalendar describes customizing the display of Minimum and Maximum dates and Week Number
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Working with SfCalendar

## Settings the Days   

It is possible to hide the days of the next month and the previous month in the calendar, to enhance the appearance of the Calendar. This is done by disabling the `InactiveDatesVisible` property.

For setting these properties, use the following code.

{% tabs %}

{% highlight C# %}

// Setting the Next and Previous Months Dates invisible

this.SfCalendar1.InactiveDatesVisible = false;

{% endhighlight  %}

{% highlight VB %}

' Setting the Next and Previous Months Dates invisible

this.SfCalendar1.InactiveDatesVisible = False

{% endhighlight  %}

{% endtabs %}

![](Working-with-Calendar/InActiveDaysFalse.png)

## Week Number

By showing week numbers near the left margin. To show week numbers, set `ShowWeekNumber` property to true as follows.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = true;

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = True

{% endhighlight  %}

{% endtabs %} 

![](Working-with-Calendar/ShowWeekNumber.png)

## Customizing the display of Minimum and Maximum dates

Date Range: between two dates is achieved by `MinDate`, `MaxDate` properties.

## Minimum Date

`MinDate` can help to restrict the `DateTime` value set lesser than specific `DateTime` Value. If the Value of `SfCalendar` is less than `MinDate`, then the Value property reset to `MinDate`. When the `MinDate` is set, if the new `MinDate` value is greater than the `MaxDate`, then the `MaxDate` reset to the `MinDate`. 

## Maximum Date

`MaxDate` can help to restrict the `DateTime` value set greater than specific `DateTime` Value. If the Value of `SfCalendar` is greater than `MaxDate`, then the Value property reset to `MaxDate`. When the `MaxDate` is set, if the `MinDate` property is greater than the new `MaxDate`, then the `MinDate` reset to the `MaxDate`. 

Sometimes, the value needs to be restricted in between some date range. Lets Consider a project for hotel reservation system. The “In Date” should be lesser than the “Out Date” and vice versa. So “In Date” should be set as minimum Date and “Out Date” should be set as maximum Date in the `SfCalendar` control.


{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

Syncfusion.WinForms.Input.SfCalendar calendar = new Syncfusion.WinForms.Input.SfCalendar();

this.Controls.Add(calendar);

calendar.Value = new DateTime(2018, 1, 12);

calendar.MinDate = new DateTime(2018, 1, 03);

calendar.MaxDate = new DateTime(2018, 1, 30);

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

Dim calendar  As New Syncfusion.WinForms.Input.SfCalendar ()

Me.Controls.Add(calendar )

calendar.Value = New DateTime(2018, 1, 12)

calendar.MinDate = new DateTime(2018, 1, 03)

calendar.MaxDate = new DateTime(2018, 1, 30)

{% endhighlight  %}

{% endtabs %} 

![](Working-with-Calendar/MinMax.png)