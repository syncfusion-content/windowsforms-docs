---
layout: post
title: GroupViewItemReordered Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupViewItemReordered Event

It occurs when a GroupView Item in the GroupView control is reordered.

The event handler receives an argument of type GroupItemRenamedEventArgs. 

{% highlight C# %}  

// This event occurs when a GroupView Item in the GroupView is reordered.

private void gvcWinForms_GroupViewItemsReordered(object sender, System.EventArgs e)

{

ListViewItem listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupViewItemsReordered"});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}



{% highlight vbnet %} 

// This event occurs when a GroupView Item in the GroupView is reordered.

Private Sub gvcWinForms_GroupViewItemsReordered(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvcWinForms.GroupViewItemsReordered

Dim listViewItem1 As ListViewItem = New System.Windows.Forms.ListViewItem(New String() {"GroupViewItemsReordered"})

Me.ListView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}