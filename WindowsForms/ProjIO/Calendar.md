---
layout: post
title: Calendar
description: calendar
platform: WindowsForms
control: ProjIO
documentation: ug
---

# Calendar

Calendar class is used to create calendars and add them to the project. Using the Calendar class, one can create calendar exceptions (holidays, different working times and working days), define working days, working times, and so on. It can also add a standard calendar to the project. Calendar class contains properties that can be used to retrieve information of all calendars present in a project.

## Properties, Methods, and Events Tables for Task

### Constructors

_Table_ _16_: _Calendar Constructors_

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
Calendar.Calendar()</td><td>
Initializes a new instance of Calendar class.</td></tr>
<tr>
<td>
Calendar.Calendar(string calendarName)</td><td>
Initializes a new instance of Calendar class with the calendar name.</td></tr>
</table>

### Properties

_Table_ _17_: _Calendar Properties_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
UID</td><td>
Gets or sets the unique identifier of the calendar.</td></tr>
<tr>
<td>
Name</td><td>
Gets or sets the name of the calendar.</td></tr>
<tr>
<td>
IsBaseCalendar</td><td>
True if the calendar is a base calendar.</td></tr>
<tr>
<td>
IsBaselineCalendar</td><td>
True if the calendar is a baseline calendar.</td></tr>
<tr>
<td>
BasecalendarUID</td><td>
Gets or sets the unique identifier of the base calendar on which this calendar depends. Only applicable if the calendar is not a base calendar.</td></tr>
<tr>
<td>
WeekDays</td><td>
Gets or sets the collection of weekdays that defines this calendar.</td></tr>
<tr>
<td>
Exceptions</td><td>
Gets or sets the collection of exceptions that is associated with the calendar.</td></tr>
<tr>
<td>
WorkWeeks</td><td>
Gets or sets the collection of effective work weeks associated with the calendar.</td></tr>
</table>

### Methods

_Table_ _18_: _Calendar Methods_

<table>
<tr>
<th>
Method </th><th>
Description </th></tr>
<tr>
<td>
Equals</td><td>
Returns a value indicating whether this instance is equal to a specified object</td></tr>
<tr>
<td>
GetHashCode</td><td>
Serves as a hash function for Calendar type</td></tr>
<tr>
<td>
GetType</td><td>
Gets the type of the current instance</td></tr>
<tr>
<td>
ToString</td><td>
Returns a string that represents the current object</td></tr>
<tr>
<td>
Calendar.StandardCalendar()</td><td>
Creates a standard calendar</td></tr>
<tr>
<td>
Calendar.StandardCalendar(string calendarName)</td><td>
Creates a standard calendar</td></tr>
</table>

## Creating a Standard Calendar

The static method StandardCalendar is used to create a standard calendar and add it to the project. 

This method contains two overloads namely:

* StandardCalendar() – Creates a standard calendar
* StandardCalendar(string calendarName) – Creates a standard calendar by passing the calendar name

The following code snippet shows how to make use of this method:


{% highlight c# %}

// Creating a standard calendar

Calendar calendar = Calendar.StandardCalendar();



// Creating a standard calendar by passing the calendar name

Calendar calendar1 = Calendar.StandardCalendar("Standard");

{% endhighlight %}

{% highlight vbnet %}

' Creating a standard calendar

Dim calendar As Calendar = Calendar.StandardCalendar()



' Creating a standard calendar by passing the calendar name

Dim calendar1 As Calendar = Calendar.StandardCalendar("Standard")

{% endhighlight %}