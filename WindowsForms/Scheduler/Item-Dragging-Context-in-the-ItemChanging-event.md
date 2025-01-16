---
layout: post
title: Item Dragging Context in the ItemChanging in Scheduler | Syncfusion
description: Learn about Item Dragging Context in the ItemChanging event support in Syncfusion® Windows Forms Scheduler (Schedule) control and more details.
platform: windowsforms
control: Schedule
documentation: ug
---

# Item Dragging Context in the ItemChanging event in Scheduler

This feature provides support to detect the dragging context when an item is dropped in the schedule part or calendar part. It also enables you to cancel the needed items through the ItemChanging event.

### Use case scenario

In ItemChanging event, through the ItemDragHitContext enumeration, you can detect the dragging context (Schedule or Calendar) and cancel the needed items.

### Property

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
ItemDragHitContext</td><td>
Specifies where the mouse is during an appointment drag in a week or month view.</td><td>
enum</td></tr>
</table>

### Event

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
Occurs after an IScheduleAppointment is modified.</td></tr>
</table>

#### Sample link

You can get the schedule sample from the following online location:

[http://samples.syncfusion.com/windowsforms](http://samples.syncfusion.com/windowsforms)

### Adding this support to an application

The following steps help you to get the target part in the Schedule control while dragging:

1. Create a Schedule control enabled sample application.
2. Add appointments in that schedule grid.
3. Hook the `ItemChanging` event.

{% capture codesnippet1 %}​
{% tabs %}
{% highlight c# %}
this.scheduleControl1.ItemChanging += new ScheduleAppointmentChangingEventHandler(scheduleControl1_ItemChanging);
{% endhighlight %}
{% highlight vb %}
AddHandler scheduleControl1.ItemChanging, AddressOf scheduleControl1_ItemChanging
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

Get the drag hit context with the following code.

{% tabs %}
{% highlight c# %}
void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)
{

    if (e.Action == ItemAction.ItemDrag)
    {
         Console.WriteLine("Dropped Area :" + e.ItemDragHitContext);
    }
}
{% endhighlight %}
{% highlight vb %}
Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

     If e.Action = ItemAction.ItemDrag Then
         Console.WriteLine("Dropped Area :" + e.ItemDragHitContext.ToString())
     End If
End Sub
{% endhighlight %}
{% endtabs %}

You can cancel the dropped item using the ItemDragHitContext property.

{% tabs %}
{% highlight c# %}
void scheduleControl1_ItemChanging(object sender, ScheduleAppointmentCancelEventArgs e)
{

   if (e.ItemDragHitContext == ItemDragHitContext.Calendar)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private Sub scheduleControl1_ItemChanging(ByVal sender As Object, ByVal e As ScheduleAppointmentCancelEventArgs)

    If e.ItemDragHitContext = ItemDragHitContext.Calendar Then
        e.Cancel = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}
