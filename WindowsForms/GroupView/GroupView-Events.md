---
layout: post
title: GroupView Events
description: Concepts and Features
platform: WindowsForms
control: GroupView
documentation: ug
---
# GroupView Events

The list of events and a detailed explanation about each of them is given in the following sections.



<table>
<tr>
<th>
GroupView Events</th><th>
Description</th></tr>
<tr>
<td>
GroupViewItemHighlighted</td><td>
This event occurs when a GroupView Item in the GroupView control is highlighted.</td></tr>
<tr>
<td>
GroupViewItemRenamed</td><td>
This event occurs when a GroupView Item has been renamed by an in-place edit operation.</td></tr>
<tr>
<td>
GroupViewItemSelected</td><td>
This event occurs when a GroupView Item in the GroupView control is selected.</td></tr>
<tr>
<td>
GroupViewItemsReordered</td><td>
This event occurs when a GroupView Item in the GroupView control is reordered.</td></tr>
<tr>
<td>
ShowContextMenu</td><td>
This event occurs when the right mouse button is clicked over the GroupView control.</td></tr>
</table>

## GroupViewItemHighlighted Event

It occurs when a GroupView Item in the GroupView control is highlighted.

The event handler receives an argument of type EventArgs.

{% highlight C# %}  

//Handle the GroupViewItemHighlighted event.

this.groupView1.GroupViewItemHighlighted+=new EventHandler(groupView1_GroupViewItemHighlighted);



private void groupView1_GroupViewItemHighlighted(object sender, EventArgs e)

{

this.groupView1.HighlightText = true;

this.groupView1.HighlightItemColor = System.Drawing.Color.AliceBlue;

}

{% endhighlight %}



{% highlight vbnet %} 

'Handle the GroupViewItemHighlighted event. 

AddHandler Me.groupView1.GroupViewItemHighlighted, AddressOf groupView1_GroupViewItemHighlighted 



Private Sub groupView1_GroupViewItemHighlighted(ByVal sender As Object, ByVal e As EventArgs)

    Me.groupView1.HighlightText = True

    Me.groupView1.HighlightItemColor = System.Drawing.Color.AliceBlue

End Sub

{% endhighlight %}

![](Overview_images/Overview_img88.jpeg) 


## GroupViewItemRenamed Event

It occurs when a GroupView Item has been renamed by an inplace edit operation. 

The event handler receives an argument of type GroupItemRenamedEventArgs. The event properties associated with the GroupItemRenamedEventArgs are as follows.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
BackgroundBrush</td><td>
Gets / sets the brush that will be used to draw the specified bounds.</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Item</td><td>
Returns the index of the GroupBar Item being drawn.</td></tr>
</table>


{% highlight C# %}  

// This event occurs when a GroupView Item in the GroupView is renamed.

private void gvcWinForms_GroupViewItemRenamed(object obj, Syncfusion.Windows.Forms.Tools.GroupItemRenamedEventArgs arg)

{

ListViewItem listViewItem1 = new System.Windows.Forms.ListViewItem(new string[] {"GroupViewItemRenamed", "Old Label: " +arg.OldLabel + " New Label: " +arg.NewLabel});

this.listView1.Items.Add(listViewItem1);

}

{% endhighlight %}



{% highlight vbnet %} 

// This event occurs when a GroupView Item in the GroupView is renamed.

Private Sub gvcWinForms_GroupViewItemRenamed(ByVal obj As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.GroupItemRenamedEventArgs) Handles gvcWinForms.GroupViewItemRenamed

Dim listViewItem1 As ListViewItem = New System.Windows.Forms.ListViewItem(New String() {"GroupViewItemRenamed", "Old Label: " + arg.OldLabel & " New Label: " + arg.NewLabel})

Me.ListView1.Items.Add(listViewItem1)

End Sub


{% endhighlight %}

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

## GroupViewItemSelected Event

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

## ShowContextMenu Event

The GroupBar and the GroupView control implement a ShowContextMenu event that is generated when the user right-clicks on the control. Applications can handle this event to create and display a Context Menu for the control. Both controls provide a ContextMenuItem property that returns the index of the GroupBar Item or the GroupView Item over which the mouse click occurred and this can be used to populate the menu with accurate item-specific contextual information. 

The following code from the GroupBar Demo shows a sample handler for the GroupBar.ShowContextMenu event that uses the EssentialToolsXPMenus.PopupMenu class for the context menu. The handler accesses the control's GroupBar.ContextMenuItem property to ascertain whether the mouse click occurred over a GroupBar Item, and if so, to determine the identity of the particular item.

{% highlight C# %}  

// Handler for the GroupBar.ShowContextMenu event.

private void gbVS_ShowContextMenu(object sender, System.EventArgs e)

{

// Create the XPMenus.PopupMenu instance and populate it with the menu items.

Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu menu = new Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu();

menu.ParentBarItem = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();

Syncfusion.Windows.Forms.Tools.GroupBar grpbar = sender as GroupBar;              



BarItem addtab = new BarItem("Add New Tab", new EventHandler(this.OngbVSMenuAddNewTab));

addtab.Tag = this.grpBar;

menu.ParentBarItem.Items.Add(addtab);        



BarItem deletetab = new BarItem("Delete Tab", new EventHandler(this.OngbMenuRemoveGroup));

deletetab.Tag = this.grpBar;

menu.ParentBarItem.Items.Add(deletetab);

        ...

// If the mouse click occurred over a GroupBarItem then get that item's client control and update the menu with client specific menu items.

if(this.grpBar.ContextMenuItem != -1)

{

GroupView grpvwctrl = this.grpBar.GroupBarItems[this.grpBar.ContextMenuItem].Client as GroupView;



BarItem moveupitem = new BarItem("Move &Up", new EventHandler(this.OngbVSMenuMoveUpDown));

moveupitem.Tag = grpvwctrl;

menu.ParentBarItem.Items.Add(moveupitem);

moveupitem.Enabled = false;

}

// Finally invoke the XPMenus.PopupMenu.Show() method to display the context menu.

menu.Show(this.grpBar, this.grpBar.PointToClient(Cursor.Position));             

}

{% endhighlight %}



{% highlight vbnet %} 

// Handler for the GroupBar.ShowContextMenu event.

Private Sub gbVS_ShowContextMenu(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles gbVStudio.ShowContextMenu

' Create the XPMenus.PopupMenu instance and populate it with the menu items.

Dim menu As Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu = New Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu()

menu.ParentBarItem = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()



Private grpbar As Syncfusion.Windows.Forms.Tools.GroupBar = CType(IIf(TypeOf sender Is GroupBar, sender, Nothing), GroupBar)



Dim addtab As BarItem = New BarItem("Add New Tab", New EventHandler(Me.OngbVSMenuAddNewTab))

addtab.Tag = Me.grpBar

menu.ParentBarItem.Items.Add(addtab)



Dim deletetab As BarItem = New BarItem("Delete Tab", New EventHandler(Me.OngbMenuRemoveGroup))

deletetab.Tag = Me.grpBar

menu.ParentBarItem.Items.Add(deletetab)



' If the mouse click occurred over a GroupBarItem then get that item's client control and update the menu with client specific menu items.

If Me.grpBar.ContextMenuItem &lt;&gt; -1 Then

Dim grpvwctrl As GroupView =  Me.grpBar.GroupBarItems(Me.grpBar.ContextMenuItem).Client as GroupView 

Dim moveupitem As BarItem = New BarItem("Move &Up", New EventHandler(Me.OngbVSMenuMoveUpDown))

moveupitem.Tag = grpvwctrl

menu.ParentBarItem.Items.Add(moveupitem)

moveupitem.Enabled = False

End If

' Finally invoke the XPMenus.PopupMenu.Show() method to display the context menu.

menu.Show(Me.grpBar, Me.grpBar.PointToClient(Cursor.Position))

End Sub

{% endhighlight %}

The following code from the GroupView Demo shows a sample handler for the GroupView.ShowContextMenu event. The handler accesses the GroupView.HighlightedItem property to ascertain whether the mouse click occurred over a GroupView Item and populates the menu accordingly.

{% highlight C# %} 

// Handler for the GroupView.ShowContextMenu event.

private void gvc_ShowContextMenu(object sender, System.EventArgs e)

{

Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu menu = new Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu();

menu.ParentBarItem = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();



BarItem additem = new BarItem("Add New Item", new EventHandler(this.gvc_MenuAddNewItem));

menu.ParentBarItem.Items.Add(additem);



BarItem removeitem = new BarItem("Remove Item", new EventHandler(this.gvc_MenuRemoveItem));

menu.ParentBarItem.Items.Add(removeitem);



// Enable the RemoveItem menu item only if the mouse click occurred over a GroupView Item.

if(this.gvcWinForms.HighlightedItem == -1)

removeitem.Enabled = false;



// Show the context menu using the Cursor.Position value for the location.

menu.Show(this.gvcWinForms, this.gvcWinForms.PointToClient(Cursor.Position));

}   

 {% endhighlight %}



{% highlight vbnet %} 

' Handler for the GroupView.ShowContextMenu event.

Private Sub gvc_ShowContextMenu(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles gvcWinForms.ShowContextMenu



Dim menu As Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu = New Syncfusion.Windows.Forms.Tools.XPMenus.PopupMenu()

menu.ParentBarItem = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()



Dim additem As BarItem = New BarItem("Add New Item", New EventHandler(Me.gvc_MenuAddNewItem))

 menu.ParentBarItem.Items.Add(additem)



Dim removeitem As BarItem = New BarItem("Remove Item", New EventHandler(Me.gvc_MenuRemoveItem))

menu.ParentBarItem.Items.Add(removeitem)



' Enable the RemoveItem menu item only if the mouse click occurred over a GroupView Item.

If Me.gvcWinForms.HighlightedItem = -1 Then

removeitem.Enabled = False

End If



' Show the context menu using the Cursor.Position value for the location.

menu.Show(Me.gvcWinForms, Me.gvcWinForms.PointToClient(Cursor.Position))

End Sub

{% endhighlight %}

![](Overview_images/Overview_img89.jpeg) 

