---
layout: post
title: TabbedMDIManager-Events
description: tabbedmdimanager events
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# TabbedMDIManager Events

The list of events and a detailed explanation about each of them is given in the following sections.

_Table_ _859_: Events Table_

<table>
<tr>
<th>
 TabbedMDIManager Events</th><th>
Description</th></tr>
<tr>
<td>
BeforeMDIChildAdded Event</td><td>
This event is handled before an MDI child is added to the TabbedMDIManager.</td></tr>
<tr>
<td>
BeforeDropDownPopup Event</td><td>
This event is handled to set the visual dropdown styles for the dropdown button. </td></tr>
<tr>
<td>
TabControlAdded Event</td><td>
Using this event, the fonts of active and inactive tabs can be customized.</td></tr>
<tr>
<td>
TabControlAdding Event</td><td>
This event is handled when a tab control is added.</td></tr>
<tr>
<td>
TabControlRemoved Event</td><td>
This event is handled after a tab control is removed from a tab group.</td></tr>
<tr>
<td>
UnLockingMdiClient Event</td><td>
This event is handled to notify that the locked MDI client area is being unlocked.</td></tr>
</table>

## BeforeMDIChildAdded Event

This events occurs before an MDIChild is added to the TabbedMDIManager.

{% highlight c# %}



private void tabbedMDIManager1_BeforeMDIChildAdded(object sender, MDIChildAddCancelEventArgs e)

{

MessageBox.Show(args.NewControl.ToString() + "is added!");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub tabbedMDIManager1_BeforeMDIChildAdded(ByVal sender As Object, ByVal e As MDIChildAddCancelEventArgs)

MessageBox.Show(args.NewControl.ToString() + "is added!")

End Sub

{% endhighlight %}

### BeforeDropDownPopup Event

This events is discussed in DropDown Button topic.

## TabControlAdded Event

This event is explained in detail in the How to customize the fonts of Active and Inactive Tabs? topic under Frequently Asked Questions. 

## TabControlAdding Event

This event is handled when a tab control is added and it provides options to customize tab controls.

{% highlight c# %}



private void tabbedMDIManager1_TabControlAdding(object sender, TabbedMDITabControlEventArgs e)

{

MessageBox.Show(e.TabControl.Text.ToString());

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub tabbedMDIManager1_TabControlAdding(ByVal sender As Object, ByVal e As TabbedMDITabControlEventArgs)

MessageBox.Show(e.TabControl.Text.ToString())

End Sub

{% endhighlight %}

### TabControlRemoved Event

This event is handled after a tab control is removed from a tab group.

{% highlight c# %}



private void tabbedMDIManager1_TabControlRemoved(object sender, TabbedMDITabControlEventArgs e)

{

MessageBox.Show(e.TabControl.Text.ToString());

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub tabbedMDIManager1_TabControlRemoved(ByVal sender As Object, ByVal e As TabbedMDITabControlEventArgs)

MessageBox.Show(e.TabControl.Text.ToString())

End Sub

{% endhighlight %}

## UnLockingMdiClient Event

This event is handled to notify that the locked MDI client area is being unlocked.

{% highlight c# %}



private void tabbedMDIManager1_UnLockingMdiClient(object sender, EventArgs e)

{

Console.Write("UnlockingMDIClient event is Raised");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub tabbedMDIManager1_UnLockingMdiClient(ByVal sender As Object, ByVal e As EventArgs)

Console.Write("UnlockingMDIClient event is Raised")

End Sub

{% endhighlight %}


