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

## Events

<table>
<tr>
<th>
Events</th><th>
Description</th><th>
EventArgs</th></tr>

<tr>
<td>
BeforeCustomizeDropDownPopup</td><td>
Occurs before the DropDown of QuickItemsDropDownButton is shown.</td><td>
DropDownEventArgs</td></tr>
<tr>
<td>
AfterCustomizeDropDownPopup</td><td>
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
<td>
RibbonControlAdv.MenuButtonDoubleClick</td><td>
Occurs when the OfficeMenuButton is double clicked.</td><td>
EventArgs</td></tr>
<tr>
<td>
QATCustomizationMenuClicked</td><td>
This event will be triggered when the Customize Quick Access Toolbar is clicked from the Ribbon Context Menu.</td><td>
BeforeQATEventArgs</td></tr>
<tr>
<td>
RibbonCustomizationMenuClicked</td><td>
This event will be triggered when the Customize the Ribbon is clicked from the Ribbon Context Menu.</td><td>
BeforeCustomizeRibbonEventArgs</td></tr>
<tr>
<td>
RibbonCustomizationMenuClicked</td><td>
This event will be triggered when the Customize the Ribbon is clicked from the Ribbon Context Menu.</td><td>
BeforeCustomizeRibbonEventArgs</td></tr>
</table>


### SelectedTabItemChanged Event

This event is handled when selected tab of the RibbonControlAdv is changed. With the SelectedTabChangedEventArgs of this event, we can retrieve the NewSelectedTab and PrevSelectedTab.

{% tabs %}

{% highlight c# %}

private void ribbonControlAdv1_SelectedTabItemChanged(object sender, SelectedTabChangedEventArgs e)

{

    MessageBox.Show(e.NewSelectedTab.Text);

}

{% endhighlight %}

{% highlight vb %}

Private Sub ribbonControlAdv1_SelectedTabItemChanged(ByVal sender As Object, ByVal e As SelectedTabChangedEventArgs)

    MessageBox.Show(e.NewSelectedTab.Text)

End Sub

{% endhighlight %}

{% endtabs %}

### BeforeCustomizeDropDownPopup Event

RibbonControlAdv has two events BeforeCustomizeDropDownPopup and AfterCustomizeDropDownPopup events that are handled before and after the CustomizeDropDownPopup is activated.

The QAT context menu items can be accessed through the DropDownEventArgs of the BeforeCustomizeDropDownPopup event and the QAT context menu can be customized such as adding new items, accessing existing items and so on.

{% tabs %}

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

{% highlight vb %}

Private newItem As ToolStripButton = New ToolStripButton()

Private Sub ribbonControlAdv1_BeforeCustomizeDropDownPopup(ByVal sender As Object, ByVal e As DropDownEventArgs)

    newItem.Text = "New Item"

    e.DropDown.Items.Add(newItem)

    For Each ts As ToolStripItem In e.DropDown.Items

        Me.listBox1.Items.Add(ts.Text)

    Next ts

End Sub

{% endhighlight %}

{% endtabs %}

### QATCustomizationMenuClicked

This event will be triggered when the Customize Quick Access Toolbar is clicked from the Ribbon Context Menu.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.QATCustomizationMenuClicked += ribbonControlAdv1_QATCustomizationMenuClicked;

void ribbonControlAdv1_QATCustomizationMenuClicked(object sender, BeforeQATEventArgs e)

{

MessageBox.Show("Customize Quick Access Toolbar context menu is clicked");

}

{% endhighlight %}

{% highlight vb %}

AddHandler Me.ribbonControlAdv1.QATCustomizationMenuClicked, AddressOf ribbonControlAdv1_QATCustomizationMenuClicked

Private Sub ribbonControlAdv1_QATCustomizationMenuClicked(ByVal sender As Object, ByVal e As BeforeQATEventArgs)

MessageBox.Show("Customize Quick Access Toolbar context menu is clicked")

End Sub

{% endhighlight %}

{% endtabs %}

### RibbonCustomizationMenuClicked

This event will be triggered when the Customize the Ribbon is clicked from the Ribbon Context Menu.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.RibbonCustomizationMenuClicked += ribbonControlAdv1_RibbonCustomizationMenuClicked;

void ribbonControlAdv1_RibbonCustomizationMenuClicked(object sender, BeforeCustomizeRibbonEventArgs e)

{

MessageBox.Show("Customize Ribbon context menu is clicked");

}

{% endhighlight %}

{% highlight vb %}

AddHandler Me.ribbonControlAdv1.RibbonCustomizationMenuClicked, AddressOf ribbonControlAdv1_RibbonCustomizationMenuClicked

Private Sub ribbonControlAdv1_RibbonCustomizationMenuClicked(ByVal sender As Object, ByVal e As BeforeCustomizeRibbonEventArgs)

MessageBox.Show("Customize Ribbon context menu is clicked")

End Sub

{% endhighlight %}

{% endtabs %}

### BeforeAddItem and BeforeRemoveItem Events

**BeforeAddItem** event is handled, just before the item gets added to the Quick Access Toolbar. **BeforeRemoveItem** event is handled, just before an item is removed from the Quick Access Toolbar.

{% tabs %}

{% highlight c# %}

private void QuickItems_BeforeAddItem(object sender, RibbonItemEventArgs e)

{

//Gets the item that is going to be added

MessageBox.Show(e.Item.Text.ToString() + " Item is Added");

}

private void QuickItems_BeforeRemoveItem(object sender, RibbonItemEventArgs e)

{

//Gets the item that is going to be Removed

MessageBox.Show(e.Item.Text.ToString() + " Item is Removed");

}

{% endhighlight %}

{% highlight vb %}

Private Sub QuickItems_BeforeAddItem(ByVal sender As Object, ByVal e As RibbonItemEventArgs)

'Gets the item that is going to be added 

MessageBox.Show(e.Item.Text.ToString() + " Item is Added")

End Sub

Private Sub QuickItems_BeforeRemoveItem(ByVal sender As Object, ByVal e As RibbonItemEventArgs)

'Gets the item that is going to be Removed 

MessageBox.Show(e.Item.Text.ToString() + " Item is Removed")

End Sub

{% endhighlight %}

{% endtabs %}

### QuickItemAdded and QuickItemRemoved Events

When the QuickAccessToolBar items are added, RibbonControlAdv.Header.**QuickItemAdded** event will be handled. Similarly when the QuickAccessToolBar items are removed, RibbonControlAdv.Header.**QuickItemRemoved** event will be handled. 

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.Header.QuickItemAdded += new ToolStripItemEventHandler(Header_QuickItemAdded);

this.ribbonControlAdv1.Header.QuickItemRemoved += new ToolStripItemEventHandler(Header_QuickItemRemoved); 

private void Header_QuickItemAdded(object sender, ToolStripItemEventArgs e)

{

MessageBox.Show(e.Item.Text);

}

private void Header_QuickItemRemoved(object sender, ToolStripItemEventArgs e)

{

MessageBox.Show(e.Item.Text);

}

{% endhighlight %}

{% highlight vb %}

AddHandler ribbonControlAdv1.Header.QuickItemAdded, AddressOf Header_QuickItemAdded 

AddHandler ribbonControlAdv1.Header.QuickItemRemoved, AddressOf Header_QuickItemRemoved 

Private Sub Header_QuickItemAdded(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)

MessageBox.Show(e.Item.Text)

End Sub

Private Sub Header_QuickItemRemoved(ByVal sender As Object, ByVal e As ToolStripItemEventArgs)

MessageBox.Show(e.Item.Text)

End Sub

{% endhighlight %}

{% endtabs %}

## Methods

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