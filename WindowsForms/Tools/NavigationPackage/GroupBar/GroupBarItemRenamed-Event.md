---
layout: post
title: GroupBarItemRenamed Event
description: GroupBarItemRenamed Event
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupBarItemRenamed Event

This event is handled after a GroupBar Item is renamed by an inplace edit operation. It is handled when a GroupBar Item is renamed at runtime.

The event handler of this event receives an argument of type GroupItemRenamedEventArgs.

{% highlight C# %}  

// The GroupBarItemRenamed event occurs when a GroupBar Item is renamed by an inplace edit operation.

private void grpbr_GroupBarItemRenamed(object obj, GroupItemRenamedEventArgs arg)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemRenamed", "Item Renamed: " +arg.Index + " NewLabel: " + arg.NewLabel + " OldLabel: " + arg.OldLabel});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}


{% highlight vbnet %} 

// The GroupBarItemRenamed event occurs when a GroupBar Item is renamed by an inplace edit operation.

Private Sub grpbr_GroupBarItemRenamed(ByVal obj As Object, ByVal arg As GroupItemRenamedEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemRenamed", "Item Renamed: " + arg.Index + " NewLabel: " + arg.NewLabel + " OldLabel: " + arg.OldLabel})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}