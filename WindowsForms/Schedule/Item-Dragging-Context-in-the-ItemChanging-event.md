---
layout: post
title: Item-Dragging-Context-in-the-ItemChanging-event | Windows Forms | Syncfusion
description: item dragging context in the itemchanging event
platform: windowsforms
control: Schedule
documentation: ug
---

# Item Dragging Context in the ItemChanging event

This feature provides support to detect the dragging context when an item is dropped in schedule part or calendar part. It also enables to cancel the needed items through ItemChanging event.

### Use Case Scenario

In ItemChanging event, through the ItemDragHitContext enumeration, you can detect the dragging context (Schedule or Calendar) and cancel the needed items.

### Properties

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
ItemDragHitContext</td><td>
Specifies where the mouse is during an appointment drag in a Week or Month view.</td><td>
enum</td></tr>
</table>

### Events

<table>
<tr>
<th>
Event</th><th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
ItemChanging</td><td>
object sender, ScheduleAppointmentCancelEventArgs e</td><td>
Occurs after an IScheduleAppointment is modified</td></tr>
</table>

#### Sample Link

You can get the schedule sample from the following online location,

[http://samples.syncfusion.com/windowsforms](http://samples.syncfusion.com/windowsforms)

### Adding this support to an Application

The following steps help you to get the target part in the Schedule control while dragging:

1. Create a schedule control enabled sample application
2. Add appointments in that schedule grid
3. Hook the ‘ItemChanging’ event

{% highlight c# %}

this.scheduleControl1.ItemChanging += new ScheduleAppointmentChangingEventHandler(scheduleControl1_ItemChanging);

{% endhighlight %}

{% highlight vbnet %}

AddHandler scheduleControl1.ItemChanging, AddressOf scheduleControl1_ItemChanging

{% endhighlight %}


Get the drag hit context with the below code.

{% highlight c# %}

void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)

{

    if (e.Action == ItemAction.ItemDrag)

    {

         Console.WriteLine("Dropped Area :" + e.ItemDragHitContext);

    }

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

     If e.Action = ItemAction.ItemDrag Then

          Console.WriteLine("Dropped Area :" + e.ItemDragHitContext.ToString())

     End If

End Sub

{% endhighlight %}


You can cancel the dropped item using the ItemDragHitContext property as shown below in the following code.

{% highlight c# %}

void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)

{

       if (e.ItemDragHitContext == ItemDragHitContext.Calendar)

                e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

     If e.ItemDragHitContext = ItemDragHitContext.Calendar Then

          e.Cancel = True

     End If

End Sub

{% endhighlight %}