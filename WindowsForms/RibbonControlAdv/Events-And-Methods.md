---
layout: post
title: Events-And-Methods | WindowsForms | Syncfusion
description: events and methods
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Events And Methods

RibbonControlAdv comes with various events and methods to make easy customization.

### Events

_Table_ _775_: _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th><th>
EventArgs</th></tr>
<tr>
<td colspan = "4">
QuickAccessToolbar Events</td></tr>
<tr>
<td>
RibbonControlAdv1.BeforeCustomizeDropDownPopup</td><td>
Occurs before the DropDown of QuickItemsDropDownButton is shown.</td><td>
DropDownEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv1.AfterCustomizeDropDownPopup</td><td>
Occurs after the DropDown of QuickItemsDropDownButton is shown.</td><td>
EventArgs</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.QuickItems.BeforeAddItem</td><td>
Occurs before ToolStripItem added to the QuickAccessPanel collection.</td><td>
RibbonItemsEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.QuickItems.BeforeRemoveItem</td><td>
Occurs before ToolStripItem is removed from the QuickAccessPanel collection.</td><td>
RibbonItemsEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv.Header.QuickItemAdded</td><td>
Occurs when an item is added to the Quick Menu.</td><td>
ToolStripItemEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv.Header.QuickItemRemoved</td><td>
Occurs when an item is removed from the Quick Menu.</td><td>
ToolStripItemEventArgs</td></tr>
<tr>
<td colspan = "4">
ToolStripTabItem Events</td></tr>
<tr>
<td>
RibbonControlAdv1.SelectedTabItemChanged</td><td>
Occurs when selected ToolStripTabItem has changed.</td><td>
SelectedTabChangedEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.MainItems.BeforeAddItem</td><td>
Occurs before a ToolStripItem is added to the collection.</td><td>
RibbonItemEventArgs</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.MainItems.BeforeRemoveItem</td><td>
Occurs before a ToolStripItem is removed from the collection.</td><td>
RibbonItemEventArgs</td></tr>
<tr>
<td colspan = "4">
OfficeMenuButton Event</td></tr>
<tr>
<td>
RibbonControlAdv.MenuButtonDoubleClick</td><td>
Occurs when the OfficeMenuButton is double clicked.</td><td>
EventArgs</td></tr>
</table>

### Methods

_Table_ _776_: _Methods Table_

<table>
<tr>
<td>
Methods</td><td>
Description</td></tr>
<tr>
<td colspan = "2">
QuickAccessToolbar Methods</td></tr>
<tr>
<td>
RibbonControlAdv1.ShowCustomizeDialog</td><td>
Shows QuickItems customizing dialog.</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.AddQuickItem</td><td>
Adds ToolStripItems to the QuickAccessPanel.</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.QuickItems.RemoveAt</td><td>
Removes the specified ToolStripItems from the QuickAccessPanel.</td></tr>
<tr>
<td colspan = "2">
ToolStripTabItem Method</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.AddMainItem</td><td>
Adds ToolStripTabItems to the RibbonPanel.</td></tr>
<tr>
<td>
RibbonControlAdv1.Header.MainItems.RemoveAt</td><td>
Removes the specified ToolStripTabItems from the QuickAccessPanel.</td></tr>
</table>

## SelectedTabItemChanged Event

This event is handled when selected tab of the RibbonControlAdv is changed. With the SelectedTabChangedEventArgs of this event, we can retrieve the NewSelectedTab and PrevSelectedTab.

{% highlight c# %}

private void ribbonControlAdv1_SelectedTabItemChanged(object sender, SelectedTabChangedEventArgs e)

{

    MessageBox.Show(e.NewSelectedTab.Text);

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub ribbonControlAdv1_SelectedTabItemChanged(ByVal sender As Object, ByVal e As SelectedTabChangedEventArgs)

    MessageBox.Show(e.NewSelectedTab.Text)

End Sub

{% endhighlight %}

## BeforeCustomizeDropDownPopup Event

RibbonControlAdv has two events BeforeCustomizeDropDownPopup and AfterCustomizeDropDownPopup events that are handled before and after the CustomizeDropDownPopup is activated.

#### Example

The QAT context menu items can be accessed through the DropDownEventArgs of the BeforeCustomizeDropDownPopup event and the QAT context menu can be customized such as adding new items, accessing existing items and so on.

{% highlight c# %}

ToolStripButton newItem = new ToolStripButton();

private void ribbonControlAdv1_BeforeCustomizeDropDownPopup(object sender, DropDownEventArgs e)

{

    newItem.Text = "New Item";

    e.DropDown.Items.Add(newItem);

    foreach (ToolStripItem ts in e.DropDown.Items)

    {

        this.listBox1.Items.Add(ts.Text);

    }

} 

{% endhighlight %}

{% highlight vbnet %}

Private newItem As ToolStripButton = New ToolStripButton()

Private Sub ribbonControlAdv1_BeforeCustomizeDropDownPopup(ByVal sender As Object, ByVal e As DropDownEventArgs)

    newItem.Text = "New Item"

    e.DropDown.Items.Add(newItem)

    For Each ts As ToolStripItem In e.DropDown.Items

        Me.listBox1.Items.Add(ts.Text)

    Next ts

End Sub

{% endhighlight %}