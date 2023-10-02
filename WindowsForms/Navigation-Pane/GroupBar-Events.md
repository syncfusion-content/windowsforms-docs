---
layout: post
title: GroupBar Events in Windows Forms Navigation Pane control | Syncfusion
description: Learn about GroupBar Events support in Syncfusion Windows Forms Navigation Pane (GroupBar) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# GroupBar Events in Windows Forms Navigation Pane (GroupBar)

The list of events and a detailed explanation about each of them is given in the following sections.

* [GroupBarItemAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemAdded)
* [GroupBarItemRemoved](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemRemoved)
* [GroupBarItemRenamed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemRenamed)
* [GroupBarItemSelectionChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemSelectionChanging)
* [GroupBarItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemSelected)
* [ShowContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_ShowContextMenu)
* [NavigationPaneDropDownClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_NavigationPaneDropDownClick)
* [ProvideGroupBarItemBrush](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_ProvideGroupBarItemBrush)

## GroupBarItemAdded event

This [GroupBarItemAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemAdded) event is handled after a GroupBar Item is added to the GroupBar Items Collection. It is handled to create client controls when new GroupBar Items are added at runtime.

The event handler of this event receives an argument of type [GroupBarItemEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBarItemEventArgs.html).

{% tabs %}

{% highlight C# %}

// The GroupBarItemAdded event occurs when a GroupBar Item is added to the GroupBar Items Collection.

private void grp_GroupBarItemAdded(object sender, GroupBarItemEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemAdded", "Item Added: " +args.Item.Text});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}



{% highlight VB %}

// The GroupBarItemAdded event occurs when a GroupBar Item is added to the GroupBar Items Collection.

Private Sub grp_GroupBarItemAdded(ByVal sender As Object, ByVal args As GroupBarItemEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemAdded", "Item Added: " + args.Item.Text})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}
		
{% endtabs %}


## GroupBarItemRemoved event

This [GroupBarItemRemoved](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemRemoved) event is handled after a GroupBar Item is removed from the GroupBar Items Collection. It is handled to dispose client controls when GroupBar Items are removed at runtime.

The event handler of this event receives an argument of type [GroupBarItemEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBarItemEventArgs.html).

{% tabs %}

{% highlight C# %}

// The GroupBarItemRemoved event occurs when a GroupBar Item is removed from the GroupBar Items Collection.

private void grp_GroupBarItemRemoved(object sender, GroupBarItemEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemRemoved", "Item Removed: " +args.Item.Text});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}


{% highlight VB %}

// The GroupBarItemRemoved event occurs when a GroupBar Item is removed from the GroupBar Items Collection.

Private Sub grp_GroupBarItemRemoved(ByVal sender As Object, ByVal args As GroupBarItemEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemRemoved", "Item Removed: " + args.Item.Text})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}

{% endtabs %}

## GroupBarItemRenamed event

This [GroupBarItemRenamed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemRenamed) event is handled after a GroupBar Item is renamed by an in-place edit operation. It is handled when a GroupBar Item is renamed at runtime.

The event handler of this event receives an argument of type [GroupItemRenamedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupItemRenamedEventArgs.html).

{% tabs %}

{% highlight C# %}

// The GroupBarItemRenamed event occurs when a GroupBar Item is renamed by an in-place edit operation.

private void grp_GroupBarItemRenamed(object obj, GroupItemRenamedEventArgs arg)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemRenamed", "Item Renamed: " +arg.Index + " NewLabel: " + arg.NewLabel + " OldLabel: " + arg.OldLabel});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}


{% highlight VB %}

// The GroupBarItemRenamed event occurs when a GroupBar Item is renamed by an inplace edit operation.

Private Sub grp_GroupBarItemRenamed(ByVal obj As Object, ByVal arg As GroupItemRenamedEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemRenamed", "Item Renamed: " + arg.Index + " NewLabel: " + arg.NewLabel + " OldLabel: " + arg.OldLabel})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}

{% endtabs %}

## GroupBarItemSelectionChanging event

This [GroupBarItemSelectionChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemSelectionChanging) event occurs when a GroupBar Item is selected in the GroupBar control. It is handled when a GroupBar Item is selected at runtime.

The event handler of this event receives an argument of type [GroupItemSelectionChangingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBarItemSelectionChangingEventArgs.html).

{% tabs %}

{% highlight C# %}

// The GroupBarItemSelected event occurs when a GroupBar Item is selected in the GroupBar control. 

private void grp_GroupBarItemSelectionChanging(object sender, GroupBarItemSelectionChangingEventArgs args)

{

listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupBarItemSelectionChanging ", "Old Selected: " +args.OldSelected.ToString() +" New Selected: " + args.NewSelected.ToString()});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}

{% highlight VB %}



// The GroupBarItemSelected event occurs when a GroupBar Item is selected in the GroupBar control. 

Private Sub grp_GroupBarItemSelectionChanging(ByVal sender As Object, ByVal args As GroupBarItemSelectionChangingEventArgs)

listViewItem1 = New System.Windows.Forms.ListViewItem(New String() {"GroupBarItemSelectionChanging ", "Old Selected: " + args.OldSelected.ToString() + " New Selected: " + args.NewSelected.ToString()})

Me.listView1.Items.Add(listViewItem1)

End Sub

{% endhighlight %}

{% endtabs %}

## GroupBarItemSelected event

[GroupBarItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemSelected) occurs when a GroupBar Item of the GroupBar control is selected. Accessing the [GroupBar.SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_SelectedItem) property from within the [GroupBarItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItemSelected) event handler will allow you to determine the item that was clicked. Based on this appropriate command, handling routines can be invoked.

The event handler of this event receives an argument of type EventArgs.

{% tabs %}

{% highlight C# %}

// Provide a handler for the GroupBar.GroupBarItemSelected event.

this.groupBar1.GroupBarItemSelected += new System.EventHandler(this.groupBar1_GroupBarItemSelected); 

// GroupBar.GroupBarItemSelected event handler.

// The GroupBar.SelectedItem property fetches the index of the selected item, while the item is obtained by referencing the selected index within the GroupBar.GroupBarItems collection.

private void groupBar1_GroupBarItemSelected(object sender, System.EventArgs e)

{

Trace.WriteLine(String.Concat("Selected Item = ", this.groupBar1.GroupBarItems[this.groupBar1.SelectedItem].Text)); 

}

{% endhighlight %}



{% highlight VB %}

' Provide a handler for the GroupBar.GroupBarItemSelected event.

Private Me.groupBar1.GroupBarItemSelected += New System.EventHandler(Me.groupBar1_GroupBarItemSelected)

' GroupBar.GroupBarItemSelected event handler.

' The GroupBar.SelectedItem property fetches the index of the selected item, while the item is obtained by referencing the selected index within the GroupBar.GroupBarItems collection.

Private Sub groupBar1_GroupBarItemSelected(ByVal sender As Object, ByVal e As System.EventArgs)

Trace.WriteLine(String.Concat("Selected Item = ", Me.groupBar1.GroupBarItems(Me.groupBar1.SelectedItem).Text))

End Sub

{% endhighlight %}

{% endtabs %}

## ShowContextMenu event

[ShowContextMenu event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_ShowContextMenu) occurs on right-clicking the mouse button over the GroupBar control. It is handled when the mouse is right-clicked over the GroupBar control at runtime.

The event handler receives an argument of type EventArgs.

{% tabs %}

{% highlight C# %}

private void groupBar1_ShowContextMenu(object sender, EventArgs e)

{

  // You can see the below line in the output window during run-time.

Console.Write(" ShowContextMenu Event is raised ");

}

{% endhighlight %}



{% highlight VB %}

Private Sub groupBar1_ShowContextMenu(ByVal sender As Object, ByVal e As EventArgs)

  // You can see the below line in the output window during run-time.

Console.Write(" ShowContextMenu Event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## NavigationPaneDropDownClick event

It occurs when the user clicks on the GroupBar control's Navigation Pane DropDown button. This event is applicable for the Stacked GroupBar i.e. the StackedMode property of the GroupBar should be set to`true`. The event handler receives an argument of type [NavigationPaneDropDownClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationPaneDropDownClickEventArgs.html) containing data related to this event.

The event handler of this event receives an argument of type [NavigationPaneDropDownClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationPaneDropDownClickEventArgs.html).

{% tabs %}

{% highlight C# %}

private void groupBar1_NavigationPaneDropDownClick(object sender, NavigationPaneDropDownClickEventArgs e)

{

  // NavigationPaneDropDownClick Event has a property called ContextMenuProvider which returns the object   

// used for creating the context menu.

Console.Write(" NavigationPaneDropDownClick Event is raised ");

Console.Write("ContextMenuProvider :" + e.ContextMenuProvider.ToString());

}

{% endhighlight %}



{% highlight VB %}

Private Sub groupBar1_NavigationPaneDropDownClick(ByVal sender As Object, ByVal e As NavigationPaneDropDownClickEventArgs)

// NavigationPaneDropDownClick Event has a property called ContextMenuProvider which returns the object   

// used for creating the context menu.

Console.Write(" NavigationPaneDropDownClick Event is raised ")

Console.Write("ContextMenuProvider :" + e.ContextMenuProvider.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## ProvideGroupBarItemBrush event

It occurs when a GroupBar Item is about to be drawn. The event handler receives an argument of type [ProvideGroupBarItemBrushEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs.html).

The event properties associated with the [ProvideGroupBarItemBrushEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs.html) are given below.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
BackgroundBrush</td><td>
Gets/sets the brush that will be used to draw the specified bounds.</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Item</td><td>
Returns the index of the GroupBar Item being drawn.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void groupOutlook_ProvideGroupBarItemBrush (object sender, Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs args)
 
{

System.Drawing.Drawing2D.Blend blend = new System.Drawing.Drawing2D.Blend();

blend.Factors = new float[] { 0.0f, 0.0f, 1.0f };

blend.Positions = new float[] { 0.0F, 0.5f, 1.0F };

// Estimate the GroupBar Item bounds.

Rectangle rcGroupBarItem = args.Bounds;

// Create and initialize the LinearGradientBrush.

System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(rcGroupBarItem, groupOutlook.GroupBarItems[0].BackColor, SystemColors.ScrollBar, 90, true);

brush.Blend = blend;

args.BackgroundBrush = brush;

}

{% endhighlight %}



{% highlight VB %}

Private Sub groupOutlook_ProvideGroupBarItemBrush(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs)

Dim blend As New System.Drawing.Drawing2D.Blend()

blend.Factors = New Single() {0.0F, 0.0F, 1.0F}

blend.Positions = New Single() {0.0F, 0.5F, 1.0F}

' Estimate the GroupBar Item bounds. 

Dim rcGroupBarItem As Rectangle = args.Bounds

' Create and initialize the LinearGradientBrush. 

Dim brush As New System.Drawing.Drawing2D.LinearGradientBrush(rcGroupBarItem, groupOutlook.GroupBarItems(0).BackColor, SystemColors.ScrollBar, 90, True)

brush.Blend = blend

args.BackgroundBrush = brush

End Sub

{% endhighlight %}

{% endtabs %}
