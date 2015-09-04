---
layout: post
title: What-are-the-events-implemented-in-the-TreeNavigator
description: what are the events implemented in the treenavigator?
platform: WindowsForms
control: TreeNavigator
documentation: ug
---

# What are the events implemented in the TreeNavigator?

Following listed events are available in TreeNavigator for use.

* SelectionChanging
* SelectionChanged

### SelectionChanging Event

This event is triggered before the TreeMenuItem selection.

#### Event Data

SelectionStateChangingEventArgs contains the following members that provide information specific to this event.

 _Table_ _948_: _Selection Changing Event_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
NewValue</td><td>
This property returns the newly selected item.</td></tr>
<tr>
<td>
OldValue</td><td>
This property returns the previously selected item.</td></tr>
<tr>
<td>
Expanded</td><td>
This property returns true when the selected item is expanded.</td></tr>
<tr>
<td>
Cancel</td><td>
This property enables you to avoid particular item from Selection.</td></tr>
</table>


{% highlight c# %}



void treeNavigator1_SelectionChanging(TreeNavigator sender, SelectionStateChangingEventArgs args)

   {

       args.Cancel = true;

       TreeMenuItem Newitem = args.NewValue;

        TreeMenuItem OldItem = args.OldValue;

       bool temp = args.Expanded;

   }


{% endhighlight %}


{% highlight vbnet %}



Private Sub treeNavigator1_SelectionChanging(sender As TreeNavigator, args As SelectionStateChangingEventArgs)



        args.Cancel = True

        Dim Newitem As TreeMenuItem = args.NewValue

        Dim OldItem As TreeMenuItem = args.OldValue

        Dim temp As Boolean = args.Expanded



End Sub


{% endhighlight %}


### SelectionChanged Event

This event triggers after the selection of the TreeMenuItem.

#### Event Data

SelectionStateChangedEventArgs contains the following members that provide information specific to this event.

_Table_ _949_: _Selection Changed Event_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
SelectedItem</td><td>
This property returns the currently selected item.</td></tr>
<tr>
<td>
Expanded</td><td>
This property returns true when the selected item is expanded.</td></tr>
</table>


{% highlight c# %}



void treeNavigator1_SelectionChanged(TreeNavigator sender, SelectionStateChangedEventArgs e)

    {

        TreeMenuItem tm = e.SelectedItem;

        bool temp = e.Expanded;

    }

{% endhighlight %}

{% highlight vbnet %}



Private Sub treeNavigator1_SelectionChanged(sender As TreeNavigator, e As SelectionStateChangedEventArgs)



   Dim tm As TreeMenuItem = e.SelectedItem

   Dim temp As Boolean = e.Expanded



End Sub

{% endhighlight %}

