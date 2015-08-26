---
layout: post
title: GroupViewItemRenamed Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupViewItemRenamed Event

It occurs when a GroupView Item has been renamed by an inplace edit operation. 

The event handler receives an argument of type GroupItemRenamedEventArgs. The event properties associated with the GroupItemRenamedEventArgs are as follows.

_Table_ _578__: Members Table_

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
BackgroundBrush</td><td>
Gets / sets the brush that will be used to draw the specified bounds.</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Item</td><td>
Returns the index of the GroupBar Item being drawn.</td></tr>
</table>


{% highlight C# %}  

// This event occurs when a GroupView Item in the GroupView is renamed.

private void gvcWinForms_GroupViewItemRenamed(object obj, Syncfusion.Windows.Forms.Tools.GroupItemRenamedEventArgs arg)

{

ListViewItem listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupViewItemRenamed", "Old Label: " +arg.OldLabel + " New Label: " +arg.NewLabel});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}



{% highlight vbnet %} 

// This event occurs when a GroupView Item in the GroupView is renamed.

Private Sub gvcWinForms_GroupViewItemRenamed(ByVal obj As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.GroupItemRenamedEventArgs) Handles gvcWinForms.GroupViewItemRenamed

Dim listViewItem1 As ListViewItem = New System.Windows.Forms.ListViewItem(New String() {"GroupViewItemRenamed", "Old Label: " + arg.OldLabel & " New Label: " + arg.NewLabel})

Me.ListView1.Items.Add(listViewItem1)

End Sub


{% endhighlight %}
