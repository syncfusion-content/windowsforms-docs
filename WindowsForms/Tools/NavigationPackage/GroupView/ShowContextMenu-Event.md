---
layout: post
title: ShowContextMenu Event
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
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
Figure 991: GroupView displaying Context Menu