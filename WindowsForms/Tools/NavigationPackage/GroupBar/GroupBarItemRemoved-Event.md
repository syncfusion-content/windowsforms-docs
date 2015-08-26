---
layout: post
title: GroupBarItemRemoved Event
description: GroupBarItemRemoved Event
platform: windowsforms
control: Navigation Package
documentation: ug
---

## GroupBarItemRemoved Event

This event is handled after a GroupBar Item is removed from the GroupBar Items Collection. It is handled to dispose client 
controls when GroupBar Items are removed at runtime.

The event handler of this event receives an argument of type GroupBarItemEventArgs.

{% highlight C# %}  

// The GroupBarItemRemoved event occurs when a GroupBar Item is removed from the GroupBar Items Collection.

private void grpbr_GroupBarItemRemoved(object sender, GroupBarItemEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemRemoved", "Item Removed: " +args.Item.Text});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}


{% highlight vbnet %} 

// The GroupBarItemRemoved event occurs when a GroupBar Item is removed from the GroupBar Items Collection.

Private Sub grpbr_GroupBarItemRemoved(ByVal sender As Object, ByVal args As GroupBarItemEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemRemoved", "Item Removed: " + args.Item.Text})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}