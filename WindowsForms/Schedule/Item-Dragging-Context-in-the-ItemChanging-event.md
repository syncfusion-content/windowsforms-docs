---
layout: post
title: Item-Dragging-Context-in-the-ItemChanging-event
description: item dragging context in the itemchanging event
platform: WindowsForms
control: Schedule
documentation: ug
---

# Item Dragging Context in the ItemChanging event

This feature provides support to detect the dragging context when an item is dropped in schedule part or calendar part. It also enables to cancel the needed items through ItemChanging event.

Use Case Scenario

In ItemChanging event, through the ItemDragHitContext enumeration, you can detect the dragging context (Schedule or Calendar) and cancel the needed items.

Properties

<table>
<tr>
<td>
Property </td><td>
Description </td><td>
Data Type </td></tr>
<tr>
<td>
ItemDragHitContext</td><td>
Specifies where the mouse is during an appointment drag in a Week or Month view.</td><td>
enum</td></tr>
</table>
Events

<table>
<tr>
<td>
Event</td><td>
Parameters</td><td>
Description</td></tr>
<tr>
<td>
ItemChanging</td><td>
object sender, ScheduleAppointmentCancelEventArgs e</td><td>
Occurs after an IScheduleAppointment is modified</td></tr>
</table>
Sample Link

You can get the schedule sample from the following online location,

[http://asp.syncfusion.com/sfwinrepsamplebrowser/8.4.0.10/Windows/Schedule.Windows/Samples/2.0/Schedule%20Samples/Scheduler%20With%20Recurrence%20Demo/Sample.aspx?args=0](http://asp.syncfusion.com/sfwinrepsamplebrowser/8.4.0.10/Windows/Schedule.Windows/Samples/2.0/Schedule%20Samples/Scheduler%20With%20Recurrence%20Demo/Sample.aspx?args=0)

Adding this support to an Application

The following steps help you to get the target part in the Schedule control while dragging:

1. Create a schedule control enabled sample application
2. Add appointments in that schedule grid
3. Hook the ‘ItemChanging’ event

[C#] 



this.scheduleControl1.ItemChanging += new ScheduleAppointmentChangingEventHandler(scheduleControl1_ItemChanging);



[VB]



AddHandler scheduleControl1.ItemChanging, AddressOf scheduleControl1_ItemChanging



Get the drag hit context with the below code.

[C#]

void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)

{

    if (e.Action == ItemAction.ItemDrag)

    {

         Console.WriteLine("Dropped Area :" + e.ItemDragHitContext);

    }

}



[VB]



Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

     If e.Action = ItemAction.ItemDrag Then

          Console.WriteLine("Dropped Area :" + e.ItemDragHitContext.ToString())

     End If

End Sub



You can cancel the dropped item using the ItemDragHitContext property as shown below in the following code.

[C#]



void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)

{

       if (e.ItemDragHitContext == ItemDragHitContext.Calendar)

                e.Cancel = true;

}



[VB]



Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

     If e.ItemDragHitContext = ItemDragHitContext.Calendar Then

          e.Cancel = True

     End If

End Sub



