---
layout: post
title: How to assign the currently selected GroupBar Item to the GroupBar's Tag property
description: Frequently asked questions
platform: windowsforms
control: GroupBar
documentation: ug
---
# How to assign the currently selected GroupBar Item to the GroupBar's Tag property

You could do so by handling the GroupBar’s GroupBarItemSelected event. Within this event handler, index into the GroupBar Items Collection using the GroupBar's SelectedItem property value, to get the currently selected GroupBar Item, and then assign it to the GroupBar’s Tag property. 

The following code sample shows how this can be done.

{% highlight C# %}  

private void groupBar1_GroupBarItemSelected(object sender, System.EventArgs e) 

{ 

// Index into the GroupBar Items Collection using GroupBar.SelectedItem   

// as the index value, and assign it to GroupBar’s Tag property. 

this.groupBar1.Tag = this.groupBar1.GroupBarItems[this.groupBar1.SelectedItem]; 

} 

{% endhighlight %}



{% highlight vbnet %} 

Private Sub groupBar1_GroupBarItemSelected(ByVal sender As Object, ByVal e As System.EventArgs)

' Index into the GroupBarItems Collection using GroupBar.SelectedItem  

' as the index value, and assign it to GroupBar’s Tag property. 

Me.groupBar1.Tag = Me.groupBar1.GroupBarItems(Me.groupBar1.SelectedItem)

End Sub

{% endhighlight %}