---
layout: post
title: CollapsedStateChanged Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## CollapsedStateChanged Event

This event occurs after the XPTaskBar Box has been collapsed or expanded.

The event handler receives an argument of the type EventArgs.

{% highlight C# %} 

private void taskMenuBox1_CollapsedStateChanged(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"CollapsedStateChanged", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

 {% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_CollapsedStateChanged(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"CollapsedStateChanged", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}