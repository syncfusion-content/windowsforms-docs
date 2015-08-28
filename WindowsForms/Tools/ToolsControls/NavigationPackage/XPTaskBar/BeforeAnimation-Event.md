---
layout: post
title: BeforeAnimation Event
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# BeforeAnimation Event

This event gets called before the XPTaskBar Box expands or collapses.

The event handler receives an argument of the type EventArgs.

{% highlight C# %}  

private void taskMenuBox1_BeforeAnimation(object sender, System.EventArgs e)

{

XPTaskBarBox box = sender as XPTaskBarBox;

ListViewItem listViewItem = new ListViewItem(new String[]{"Before Animation", "XPTaskBarBox: " + box.Text});

this.listView1.Items.Add(listViewItem);

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox1_BeforeAnimation(ByVal sender As Object, ByVal e As System.EventArgs)

Dim box As XPTaskBarBox = TryCast(sender, XPTaskBarBox)

Dim listViewItem As New ListViewItem(New String() {"Before Animation", "XPTaskBarBox: " + box.Text})

Me.listView1.Items.Add(listViewItem)

End Sub

{% endhighlight %}
