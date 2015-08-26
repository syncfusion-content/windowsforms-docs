---
layout: post
title: GroupBarItemSelectionChanging Event
description: GroupBarItemSelectionChanging Event
platform: windowsforms
control: Navigation Package
documentation: ug
---
## GroupBarItemSelectionChanging Event

This event occurs when a GroupBar Item is selected in the GroupBar control. It is handled when a GroupBar Item is selected at 
runtime.

The event handler of this event receives an argument of type GroupItemSelectionChangingEventArgs.

{% highlight C# %}  

// The GroupBarItemSelected event occurs when a GroupBar Item is selected in the GroupBar control. 

private void grpbr_GroupBarItemSelectionChanging(object sender, GroupBarItemSelectionChangingEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemSelectionChanging ", "Old Selected: " +args.OldSelected.ToString() +" New Selected: " + args.NewSelected.ToString()});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}

{% highlight vbnet %} 



// The GroupBarItemSelected event occurs when a GroupBar Item is selected in the GroupBar control. 

Private Sub grpbr_GroupBarItemSelectionChanging(ByVal sender As Object, ByVal args As GroupBarItemSelectionChangingEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemSelectionChanging ", "Old Selected: " + args.OldSelected.ToString() + " New Selected: " + args.NewSelected.ToString()})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}
