---
layout: post
title: AfterAnimation Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## AfterAnimation Event

This event gets called after the XPTaskBar Box box expands or collapses.

The event handler receives an argument of the type EventArgs.

{% highlight C# %} 

private void taskMenuBox1_AfterAnimation(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"After Animation", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

 {% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_AfterAnimation(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"After Animation", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}
