---
layout: post
title: GroupBarItemAdded Event
description: GroupBarItemAdded Event
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupBarItemAdded Event

This event is handled after a GroupBar Item is added to the GroupBar Items Collection. It is handled to create client controls when new GroupBar Items are added at runtime.

The event handler of this event receives an argument of type GroupBarItemEventArgs.

{% highlight C# %}  

// The GroupBarItemAdded event occurs when a GroupBar Item is added to the GroupBar Items Collection.

private void grpbr_GroupBarItemAdded(object sender, GroupBarItemEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemAdded", "Item Added: " +args.Item.Text});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}



{% highlight vbnet %} 

// The GroupBarItemAdded event occurs when a GroupBar Item is added to the GroupBar Items Collection.

Private Sub grpbr_GroupBarItemAdded(ByVal sender As Object, ByVal args As GroupBarItemEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemAdded", "Item Added: " + args.Item.Text})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}