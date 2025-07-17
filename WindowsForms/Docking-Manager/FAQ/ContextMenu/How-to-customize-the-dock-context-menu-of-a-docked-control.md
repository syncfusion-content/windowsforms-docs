---
layout: post
title: How to customize the dock context menu of a docked control | WindowsForms | Syncfusion®
description: How to customize the dock context menu of a docked control
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to customize the dock context menu of a docked control?

ContextMenu of the Docked controls can be customized using DockContextMenu event in DockingManager.The DockContextMenu event is fired when the mouse is right-clicked over a docking window's caption.

The DockContextMenuEventArgs allows us to,

* Edit the context menu that appears when right clicked on the caption bar (Using DockContextMenuEventArgs.ContextMenu).
* Retrieve the control that is displaying the context menu (Using DockContextMenuEventArgs.Owner).

Below is the code to add BarItem in the ContextMenu.

{% tabs %}

{% highlight C# %}

//Adding namespaces

using Syncfusion.Windows.Forms.Tools.XPMenus;



//Declaring the bar items

private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem bar1;

private Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem fileItem;



//Initialize and set the properties.

this.fileItem = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();

this.bar1 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();

this.fileItem.Text = "File";

this.bar1.Text = "Exit";

this.fileItem.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {this.bar1});

//Call the event

this.dockingManager1.DockContextMenu += new Syncfusion.Windows.Forms.Tools.DockContextMenuEventHandler(this.dockingManager1_DockContextMenu);



private void dockingManager1_DockContextMenu(object sender, Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs arg)

{

   arg.ContextMenu.ParentBarItem.Items.Add(this.fileItem);

}

{% endhighlight %}



{% highlight VB %}

' Adding Namespace

Imports Syncfusion.Windows.Forms.Tools.XPMenus


'Declaration

Private fileItem As Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem

Private WithEvents bar1 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem

'Initialize and set the properties

Me.fileItem = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()

Me.bar1 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()

Me.fileItem.Text = "File"

Me.bar1.Text = "Exit"

Me.fileItem.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() { Me.bar1})


//handling the event

Private Sub dockingManager1_DockContextMenu(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs)

arg.ContextMenu.ParentBarItem.Items.Add(Me.fileItem)

End Sub

{% endhighlight %}

{% endtabs %}

 ![how to customize the dock context menu of a docked control.](Images/Docking-Events_img1.jpeg) 




