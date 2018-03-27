---
layout: post
title: Overview | Windows Forms | Syncfusion
description: overview
platform: windowsforms
control: Schedule
documentation: ug
---

# Overview

Syncfusion Essential Schedule is a Windows Forms class library built around the functionality that is found in the Windows Forms Grid control. The control allows you to add scheduling support to your applications. The scheduling support includes creating new appointments, displaying these appointments in a variety of views, including Monthly, Daily, Weekly, Work Week and multiple days. In the daily formats, you can use the UI to drag appointments to another time slot and to extend appointments. A flexible navigation calendar lets you easily home in on the dates you would like to see in the Schedule control. 

The data displayed in the Schedule control is provided through any object that implements the IScheduleDataProvider interface that is defined in the library. Included in the library is one concrete implementation based on the ArrayList that uses disk files to persist the data. With this implementation, you can easily have several schedule files that can either be treated as individual schedules or merged to be treated as a single schedule.

![](Overview_images/Overview_img1.png)

The Scheduler control finds a wide variety of applications such as Time Tables, Calendars, Event Scheduling, Sequences, Activities, Project Management, Reservations, Resource Usage Planners, and so on.

## Key Features

Some of the key features of the Schedule control are listed below:

* Caption Panel displays a caption at the top of the Schedule control. There are also two button objects on this panel that will navigate the Schedule forward and backward. This panel is docked at the top of the ScheduleControl client area. 
* Navigation Panel can be placed additional controls and make them appear adjacent to the Schedule control. This can be optionally docked to the left or right side of the ScheduleControl. You can also hide this panel. The ScheduleControl.Calendar which is a NavigationCalendar object is docked at the top of this panel. There is also a Splitter docked under the Navigation Calendar that allows you to display more or fewer calendars in the NavigationCalendar. The default setting displays two such calendars.
* Navigation Calendar is a GridControl-derived object that displays multiple calendars allowing you to select the dates displayed in the Schedule control. This calendar is docked at the top of the NavigationPanel. The number of calendars displayed in the Navigation Calendar is determined by its client height. Enlarging the height of the Navigation Calendar will display more calendars. There is a Splitter docked under the Navigation Calendar to facilitate such sizing. 
* Schedule Grid is a Grid control-derived object that displays the actual schedule content, i.e., the appointments for the various dates. The actual look of this Grid control is determined by the ScheduleViewType which is set by using the ScheduleControl.ScheduleType property. 

You can have both timed and without timed (all-day) appointments using this Schedule control. The ScheduleControl is easily localized and can display customizable alerts.

The product comes with numerous samples as well as an extensive documentation to guide you. This User Guide provides detailed information on the features and functionalities of the Schedule control. It is organized into the following sections:

* Overview-This section gives a brief introduction to our product and its key features.
* Installation and Deployment-This section elaborates on the install location of the samples, license etc.
* Getting Started-This section guides you on getting started with Windows application, controls etc.
* Concepts and Features-The features of the Schedule control are illustrated with use case scenarios, code examples and screen shots under this section.
* Frequently Asked Questions-This section discusses various frequently asked questions with their answers with examples and code snippets.
