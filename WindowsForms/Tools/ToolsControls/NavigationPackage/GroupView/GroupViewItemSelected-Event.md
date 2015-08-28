---
layout: post
title: GroupViewItemSelected Event
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
---
# GroupViewItemSelected Event

It occurs when a GroupView Item in the GroupView control is selected.

Accessing the GroupView.SelectedItem property from within the GroupViewItemSelected event handler will allow you to determine the item that was clicked. Based on this appropriate command, handling routines can be invoked. 

The GroupView.SelectedItem property is accessed from within the handler to determine the selected item. 

{% highlight C# %}  

// Provide a handler for the GroupView.GroupViewItemSelected event.

this.groupView1.GroupViewItemSelected += new System.EventHandler(this.groupView1_GroupViewItemSelected); 

// GroupView.GroupViewItemSelected event handler.

// The GroupView.SelectedItem property fetches the index of the selected item, while the item is obtained by referencing the selected index within the GroupView.GroupViewItems collection.

private void groupView1_GroupViewItemSelected(object sender, System.EventArgs e)

{

Trace.WriteLine(String.Concat("Selected Item = ", this.gvcWinForms.GroupViewItems[this.gvcWinForms.SelectedItem].Text)); 

}

{% endhighlight %}



{% highlight vbnet %} 

' Provide a handler for the GroupView.GroupViewItemSelected event.

AddHandler Me.groupView1.GroupViewItemSelected, New System.EventHandler(AddressOf groupView1_GroupViewItemSelected)

' GroupView.GroupViewItemSelected event handler.

' The GroupView.SelectedItem property fetches the index of the selected item, while the item is obtained by referencing the selected index within the GroupView.GroupViewItems collection.

Private Sub groupView1_GroupViewItemSelected(ByVal sender As Object, ByVal e As System.EventArgs)

MessageBox.Show([String].Concat("Selected Item Index = ", Me.groupView1.SelectedItem.ToString()))

End Sub 

{% endhighlight %}
