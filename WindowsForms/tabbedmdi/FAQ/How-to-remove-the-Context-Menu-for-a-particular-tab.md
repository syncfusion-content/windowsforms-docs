---
layout: post
title: Remove-the-Context-Menu | WindowsForms | Syncfusion®
description: how to remove the context menu for a particular tab
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to remove the Context Menu for a particular tab

This can be achieved by handling the BeforePopup event of TabbedMDIManager.ContextMenuItem. Before that we should know which tab is currently active. To keep track of this, SelectedIndexChanged event of MDITabPanel can be used.

First handle the [TabControlAdded](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) event of TabbedMDIManager. Then subscribe to the args.TabControl.SelectedIndexChanged event (where args is the argument passed into this event). In the [SelectedIndexChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabControlAdv.html) event handler, store the SelectedTab in a variable which is accessible by all the methods inside that class. In the BeforePopup event, check for the TabPageAdv and cancel the context menu by setting e.Cancel = `true`.

In this example, we are going to remove context menu for the pages which are having the text as 'New Document'.

{% tabs %}

{% highlight C# %}



// Declare the object st to store SelectedTab with enough scope. 

TabPageAdv st =new TabPageAdv(); 

// Handles the TabControlAdded event of TabbedMDIManager. 

void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args) 

{ 

args.TabControl.SelectedIndexChanged += new EventHandler(TabControl_SelectedIndexChanged); 

} 

// Handler for SelectedIndexChanged. 

void TabControl_SelectedIndexChanged(object sender, EventArgs e) 

{ 

// Store in a temporary variable.  

st = (sender as MDITabPanel).SelectedTab; 

} 

// Adding handler for the Context Menu Item. 

tabbedMDIManager.ContextMenuItem.BeforePopup += new CancelEventHandler(ContextMenuItem_BeforePopup); 

// Handler for BeforePopup event.

void ContextMenuItem_BeforePopup(object sender, CancelEventArgs e)

// Canceling if the Title is New Document.  

{ 

if (st.Text == "New Document") e.Cancel = true; 

} 

{% endhighlight %}

{% highlight VB %}



' Declare the object st to store SelectedTab with enough scope. 

Private st As TabPageAdv

' Handles the TabControlAdded event of TabbedMDIManager. 

Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs) Handles tabbedMDIManager.TabControlAdded

' Subscribe to SelectedIndexChanged event. 

AddHandler args.TabControl.SelectedIndexChanged, AddressOf SelectedIndexChanged

End Sub

' Handler for SelectedIndexChanged. 

Private Sub SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

Dim mdiTabPanel As MDITabPanel = CType(sender, MDITabPanel)

' Store in a temporary variable.  

st = mdiTabPanel.SelectedTab

End Sub

' Adding handler for the Context Menu Item. 

AddHandler tabbedMDIManager.ContextMenuItem.BeforePopup, AddressOf TabbedMDIManager_BeforePopup 

' Handler for BeforePopup event. 

Private Sub tabbedMDIManager_BeforePopup(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs)

' Canceling if the Title is New Document. 

If st.Text = "New Document" Then e.Cancel = True

End Sub


{% endhighlight %}

{% endtabs %}
