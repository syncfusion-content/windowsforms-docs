---
layout: post
title: About Windows Forms Scheduler control (Event Calendar) | Syncfusion
description: Learn here all about introduction of Syncfusion Windows Forms Scheduler (Event Calendar) control, its elements and more details.
platform: windowsforms
control: Schedule
documentation: ug
---

# Windows Forms Scheduler (Event Calendar) Overview

The Syncfusion Scheduler is a Windows Forms class library built around the functionalities found in the Windows Forms Grid control. The control allows you to add scheduling support to your applications. 

The most popular WinForms Scheduler includes creating new appointments, displaying those appointments in a variety of views, including Monthly, Daily, Weekly, Work Week, and multiple days. In the daily formats, you can use the UI to drag appointments to another time slot and to extend appointments. A flexible navigation calendar lets you easily home on the dates you would like to see in the Schedule control. 

![windows forms schedule showing month view](Overview_images/Overview_img1.png)

The [WinForms Scheduler](https://www.syncfusion.com/winforms-ui-controls/scheduler) control finds a wide variety of applications such as Time Tables, Calendars, Event Scheduling, Sequences, Activities, Project Management, Reservations, Resource Usage Planners, and so on.

## Key features

* Caption panel: Displays a caption on the top of the Schedule control. There are two button objects in this panel that will navigate Schedule forward and backward. This panel is docked on the top of the ScheduleControl client area. 
* Navigation panel: Places additional controls and makes them appear adjacent to the Schedule control. This can be optionally docked to the left or right side of the ScheduleControl. You can also hide this panel. The ScheduleControl.Calendar is a NavigationCalendar object docked at the top of this panel. There is also a splitter docked under the Navigation Calendar to display more or fewer calendars in the NavigationCalendar. The default settings display two such calendars.
* Navigation Calendar: The GridControl-derived object displays multiple calendars that allows selecting the dates displayed in the Schedule control. This calendar is docked on the top of the NavigationPanel. The number of calendars displayed in the Navigation Calendar is determined by its client height. Enlarging the height of the Navigation Calendar will display more calendars. There is a splitter docked under the Navigation Calendar to facilitate such sizing. 
* Editing: Supports editing the appointments using Appointment form.
* Drag-Drop: Supports dragging and dropping the appointment from one time slot to another time slot. Appointment resizing operation can also be performed as per required start and end time of the schedule in an interactive manner.
* Selection: Supports selecting the date, like Outlook.
* Built-in views: Supports displaying various types of schedule views (Month, WorkWeek, Week, and CustomWeek).
* Styling: Extensively supports customizing styles of the headers in the ScheduleControl.
* Globalization and localization: Supports localized static text, day, and month names based on the culture.
* Recurrence appointment: Supports schedule recurring appointments to repeat daily, weekly, monthly, or yearly.
* Touch support: Completely supports swiping, panning, zooming, and more.

N> You can also explore our [WinForms Scheduler example](https://github.com/syncfusion/winforms-demos/tree/master/schedulecontrol) that shows how to schedule and manage appointments through an intuitive user interface, similar to the Outlook calendar.