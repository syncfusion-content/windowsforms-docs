---
layout: post
title: Events in Windows Forms GridGrouping control | Syncfusion
description: Learn about Events support in Syncfusion Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Events in Windows Forms GridGrouping control
An Event is a message that is triggered to notify an object or a class of the occurrence of an action. When an event gets fired, all the event handlers will be notified i.e. the event handler functions will be invoked. In order to receive the event notifications, the caller object must subscribe to the desired events. If the user does not want to listen to an event, it can simply unsubscripted from the event notification. 

## Cell Events 
This section explains all the events that are related to the cells.

### CellClick 
This will occur when the user clicks inside a cell. The event handler receives an argument of type ‘[GridCellClickEventArgs’](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs.html).

{% tabs %}
{% highlight c# %}
// CellClick event
this.gridGroupingControl1.TableControl.CellClick += new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellClick);
{% endhighlight %}
{% highlight vb %}
' CellClick event
AddHandler gridGroupingControl1.TableControl.CellClick, AddressOf TableControl_CellClick
{% endhighlight %}
{% endtabs %}

### CellButtonClicked 
Occurs when the user clicked on a child button element inside the cell renderer.

{% tabs %}
{% highlight c# %}
// Occurs while clicking the button in the cell renderer
this.gridGroupingControl1.TableControl.CellButtonClicked += new Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventHandler(TableControl_CellButtonClicked);
{% endhighlight %}
{% highlight vb %}
' Occurs while clicking the button in the cell renderer
AddHandler gridGroupingControl1.TableControl.CellButtonClicked, AddressOf TableControl_CellButtonClicked
{% endhighlight %}
{% endtabs %}

The event handler receives an argument of type [GridCellButtonClickedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs.html) containing data related to this event.

### CellDoubleClick 
Occurs when the user double-clicks inside a cell. The event handler receives an argument of type ‘[GridCellClickEventArgs’](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs.html) containing data related to this event.
{% tabs %}
{% highlight c# %}
// Notify the double click performed on the cell
this.gridGroupingControl1.TableControl.CellDoubleClick += new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellDoubleClick);
private void TableControl_CellDoubleClick(object sender, Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs e)
{
    // Notify the double click performed in a cell
    MessageBox.Show("Mouse Button is clicked Twice");
}
{% endhighlight %}
{% highlight vb %}
Private Sub TableControl_CellDoubleClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs)
    ' Notify the double click performed in a cell
    MessageBox.Show("Mouse Button is clicked Twice")
End Sub
{% endhighlight %}
{% endtabs %}

### CellDrawn
It will occur for every cell after the grid has drawn the specified cell. The event handler receives an argument of type [GridDrawCellEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
// Notify after the Drawing is completed for the cell
this.gridGroupingControl1.TableControl.CellDrawn += new Syncfusion.Windows.Forms.Grid.GridDrawCellEventHandler(TableControl_CellDrawn);
{% endhighlight %}
{% highlight vb %}
' Notify after the Drawing is completed for the cell
AddHandler gridGroupingControl1.TableControl.CellDrawn, AddressOf TableControl_CellDrawn
{% endhighlight %}
{% endtabs %}

### TableControlCellClick 
This occurs when the user clicks inside a cell. The event handler receives an argument of type [GridCellClickEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs.html) containing data related to this event. This event can be invoked as follows.

{% tabs %}
{% highlight c# %}
// Notify while clicking inside the cell
this.gridGroupingControl1.TableControlCellClick+=new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellClick);
{% endhighlight %}
{% highlight vb %}
' Notify while clicking inside the cell
AddHandler Me.gridGroupingControl1.TableControlCellClick, AddressOf TableControl_CellClick
{% endhighlight %}
{% endtabs %}

### TableControlCellButtonClicked 
This occurs when a user clicks on a child button element inside the cell renderer. The event handler receives an argument of type [GridCellButtonClickedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs.html) containing data related to this event. This event can be invoked as follows,

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CellButtonClicked += new Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventHandler(TableControl_CellButtonClicked);

private void TableControl_CellButtonClicked(object sender, Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs e)
{
    Console.WriteLine("CellButtonClicked");
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.TableControl.CellButtonClicked += New Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventHandler(AddressOf TableControl_CellButtonClicked)

Private Sub TableControl_CellButtonClicked(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs)
    Console.WriteLine("CellButtonClicked")
End Sub
{% endhighlight %}
{% endtabs %}

### TableControlCellDoubleClick 
This occurs when the user double-clicks inside a cell. The event handler receives an argument of type [GridCellClickEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs.html) containing data related to this event. This event can be invoked as follows.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CellDoubleClick += new Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(TableControl_CellDoubleClick);

private void TableControl_CellDoubleClick(object sender, Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs e)
{

    // Notify the double click performed in a cell
    MessageBox.Show("Mouse Button is clicked Twice");
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.TableControl.CellDoubleClick += New Syncfusion.Windows.Forms.Grid.GridCellClickEventHandler(AddressOf TableControl_CellDoubleClick)

Private Sub TableControl_CellDoubleClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs)

    ' Notify the double click performed in a cell
    MessageBox.Show("Mouse Button is clicked Twice")
End Sub
{% endhighlight %}
{% endtabs %}

### TableControlCellDrawn
This occurs for every cell after the grid has drawn the specified cell. The event handler receives an argument of type [GridDrawCellEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs.html) containing data related to this event. This event can be invoked as follows.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CellDrawn += new Syncfusion.Windows.Forms.Grid.GridDrawCellEventHandler(TableControl_CellDrawn);

void TableControl_CellDrawn(object sender, Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs e)
{
    Console.WriteLine("Cell Drawn");
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.TableControl.CellDrawn += New Syncfusion.Windows.Forms.Grid.GridDrawCellEventHandler(AddressOf TableControl_CellDrawn)

Private Sub TableControl_CellDrawn(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs)
    Console.WriteLine("Cell Drawn")
End Sub
{% endhighlight %}
{% endtabs %}

## Current Cell Events
This section explains all the events that are related to the [CurrentCell](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html) in GridGroupingControl.

### CurrentCellActivating 
It will occur before the grid activates the specified cell as current cell. The event handler receives an argument of type [GridCurrentCellActivatingEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventArgs.html) containing data related to this event.
{% tabs %}
{% highlight c# %}
// Notifies before activating the current cell
this.gridGroupingControl1.TableControl.CurrentCellActivating += new Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventHandler(TableControl_CurrentCellActivating);

void TableControl_CurrentCellActivating(object sender, Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventArgs e)
{
    Console.WriteLine("CurrentCell is activating");
}
{% endhighlight %}
{% highlight vb %}
' Notifies before activating the current cell

Private Me.gridGroupingControl1.TableControl.CurrentCellActivating += New Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventHandler(AddressOf TableControl_CurrentCellActivating)

Private Sub TableControl_CurrentCellActivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventArgs)
    Console.WriteLine("CurrentCell is activating")
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellActivated 
It will occur after the grid activates the specified cell as current cell. 

{% tabs %}
{% highlight c# %}
// Notifies after activating the current cell
this.gridGroupingControl1.TableControl.CurrentCellActivated += new EventHandler(TableControl_CurrentCellActivated);

void TableControl_CurrentCellActivated(object sender, EventArgs e)
{
    Console.WriteLine("CurrentCell is activated");
}
{% endhighlight %}
{% highlight vb %}
' Notifies after activating the current cell
AddHandler gridGroupingControl1.TableControl.CurrentCellActivated, AddressOf TableControl_CurrentCellActivated

Private Sub TableControl_CurrentCellActivated(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("CurrentCell is activated")
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellChanged 
It will occur when the user changes contents of the current cell.

{% tabs %}
{% highlight c# %}
// Notify while changing the current cell
this.gridGroupingControl1.TableControl.CurrentCellChanged += new EventHandler(TableControl_CurrentCellChanged);

void TableControl_CurrentCellChanged(object sender, EventArgs e)
{
    Console.WriteLine("CurrentCell is Changed");
}
{% endhighlight %}
{% highlight vb %}
' Notify while changing the current cell
AddHandler gridGroupingControl1.TableControl.CurrentCellChanged, AddressOf TableControl_CurrentCellChanged

Private Sub TableControl_CurrentCellChanged(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("CurrentCell is Changed")
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellControlGotFocus 
It will occur when the current cell switches to in-place editing and the control associated with the current cell receives the focus. The event handler receives an argument of type [ControlEventArgs](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.controleventargs?view=windowsdesktop-7.0&viewFallbackFrom=net-5.0) containing data related to this event. 

{% tabs %}
{% highlight c# %}
// Notify while current cell control get focus 
this.gridGroupingControl1.TableControl.CurrentCellControlGotFocus += new ControlEventHandler(TableControl_CurrentCellControlGotFocus);    

void TableControl_CurrentCellControlGotFocus(object sender, ControlEventArgs e)
{
    Console.WriteLine("CurrentCell control is get focused")
}
{% endhighlight %}
{% highlight vb %}
' Notify while current cell control get focus 
AddHandler gridGroupingControl1.TableControl.CurrentCellControlGotFocus, AddressOf TableControl_CurrentCellControlGotFocus

Private Sub TableControl_CurrentCellControlGotFocus(ByVal sender As Object, ByVal e As ControlEventArgs)
    Console.WriteLine("CurrentCell control is get focused")
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellControlLostFocus 
Occurs when the current cell is in editing mode and the control associated with the current cell has lost the focus.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CurrentCellControlLostFocus += new ControlEventHandler(TableControl_CurrentCellControlLostFocus);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CurrentCellControlLostFocus, AddressOf TableControl_CurrentCellControlLostFocus
{% endhighlight %}
{% endtabs %}

### CurrentCellDeactivated 
It will occur after the grid deactivates current cell. The event handler receives an argument of type [GridCurrentCellDeactivatedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCellDeactivatedEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
// Notify after deactivating the current cell
this.gridGroupingControl1.TableControl.CurrentCellDeactivated += new Syncfusion.Windows.Forms.Grid.GridCurrentCellDeactivatedEventHandler(TableControl_CurrentCellDeactivated);

void TableControl_CurrentCellDeactivated(object sender, Syncfusion.Windows.Forms.Grid.GridCurrentCellDeactivatedEventArgs e)
{
    Console.WriteLine("CurrentCell is deactivated");
}
{% endhighlight %}
{% highlight vb %}
' Notify after deactivating the current cell
AddHandler gridGroupingControl1.TableControl.CurrentCellDeactivated, AddressOf TableControl_CurrentCellDeactivated

Private Sub TableControl_CurrentCellDeactivated(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCurrentCellDeactivatedEventArgs)
    Console.WriteLine("CurrentCell is deactivated")
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellStartEditing
It will occur while current cell enters to the edit mode. The event handler receives an argument of type [CancelEventArgs](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs?view=net-5.0) containing data related to this event. The [e.Cancel](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs.cancel?view=net-5.0) property will decide whether the event should be canceled or not.

{% tabs %}
{% highlight c# %}
// Notify the current cell enters to the edit mode
this.gridGroupingControl1.TableControl.CurrentCellStartEditing += new CancelEventHandler(TableControl_CurrentCellStartEditing);
{% endhighlight %}
{% highlight vb %}
' Notify the current cell enters to the edit mode
AddHandler gridGroupingControl1.TableControl.CurrentCellStartEditing, AddressOf TableControl_CurrentCellStartEditing
{% endhighlight %}
{% endtabs %}

### CurrentCellValidated 
It will occur when the grid has successfully validated the contents of the active current cell.

{% tabs %}
{% highlight c# %}
// Notify that the Current cell content is successfully validated
this.gridGroupingControl1.TableControl.CurrentCellValidated += new EventHandler(TableControl_CurrentCellValidated);

void TableControl_CurrentCellValidated(object sender, EventArgs e)
{
    Console.WriteLine("Current cell is validated");
}
{% endhighlight %}
{% highlight vb %}
' Notify that the Current cell content is successfully validated
AddHandler gridGroupingControl1.TableControl.CurrentCellValidated, AddressOf TableControl_CurrentCellValidated

Private Sub TableControl_CurrentCellValidated(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("Current cell is validated")
End Sub
{% endhighlight %}
{% endtabs %}

## Mouse Control Events
This section will explain all the important mouse controller events offered by GridGroupingControl.

### Click
This event will occur when the grid [TableControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html) is clicked.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.Click += new EventHandler(TableControl_Click);

void TableControl_Click(object sender, EventArgs e)
{
    Console.WriteLine("Control is Clicked");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.Click, AddressOf TableControl_Click

Private Sub TableControl_Click(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("Control is Clicked")
End Sub
{% endhighlight %}
{% endtabs %}

### DoubleClick
This event will be occur when grid [TableControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html) is double clicked.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.DoubleClick += new EventHandler(TableControl_DoubleClick);

void TableControl_DoubleClick(object sender, EventArgs e)
{
    Console.WriteLine("Double Click is performed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.DoubleClick, AddressOf TableControl_DoubleClick

Private Sub TableControl_DoubleClick(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("Double Click is performed")
End Sub
{% endhighlight %}
{% endtabs %}

### DragDrop 
This event will occur when the Drag and Drop is completed. 

{% tabs %}
{% highlight c# %}
// Notify the DragDrop operation
this.gridGroupingControl1.TableControl.DragDrop += new DragEventHandler(TableControl_DragDrop);

void TableControl_DragDrop(object sender, DragEventArgs e)
{
    Console.WriteLine("DragDrop");
}
{% endhighlight %}
{% highlight vb %}
' Notify the DragDrop operation
AddHandler gridGroupingControl1.TableControl.DragDrop, AddressOf TableControl_DragDrop

Private Sub TableControl_DragDrop(ByVal sender As Object, ByVal e As DragEventArgs)
    Console.WriteLine("DragDrop")
End Sub
{% endhighlight %}
{% endtabs %}

### GotFocus 
This event will occur when the GridGroupingControl receives the focus.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.GotFocus += new EventHandler(TableControl_GotFocus);

void TableControl_GotFocus(object sender, EventArgs e)
{
    Console.WriteLine("Control Got Focus.");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.GotFocus, AddressOf TableControl_GotFocus

Private Sub TableControl_GotFocus(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("Control Got Focus.")
End Sub
{% endhighlight %}
{% endtabs %}

### MouseDown
It occurs when the mouse pointer is over the control and mouse button is pressed. The event handler receives an argument of type [MouseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableClickCellsEventArgs.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableClickCellsEventArgs__ctor_Syncfusion_Windows_Forms_Grid_GridControlBase_Syncfusion_Windows_Forms_Grid_GridCellRendererBase_System_Windows_Forms_MouseEventArgs_) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.MouseDown += new MouseEventHandler(TableControl_MouseDown);

void TableControl_MouseDown(object sender, MouseEventArgs e)
{
    Console.WriteLine("MouseDown is performed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.MouseDown, AddressOf TableControl_MouseDown

Private Sub TableControl_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
    Console.WriteLine("MouseDown is performed")
End Sub
{% endhighlight %}
{% endtabs %}

### MouseLeave 
This event will occur when mouse pointer leaves the GridGroupingControl.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.MouseLeave += new EventHandler(TableControl_MouseLeave);

void TableControl_MouseLeave(object sender, EventArgs e)
{
    Console.WriteLine("Mouse button is released");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.MouseLeave, AddressOf TableControl_MouseLeave

Private Sub TableControl_MouseLeave(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("Mouse button is released")
End Sub
{% endhighlight %}
{% endtabs %}

### MouseUp
This event will occur when the mouse pointer is over the control and mouse button is released. The event handler receives the [MouseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableClickCellsMouseController.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableClickCellsMouseController_MouseMove_System_Windows_Forms_MouseEventArgs_) as an argument.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.MouseUp += new MouseEventHandler(TableControl_MouseUp);

private void TableControl_MouseUp(object sender, MouseEventArgs e)
{
    Console.WriteLine("MouseUp: No. of Clicks" + e.Clicks.ToString());
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.MouseUp, AddressOf TableControl_MouseUp

Private Sub TableControl_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)
    Console.WriteLine("MouseUp: No. of Clicks" & e.Clicks.ToString())
End Sub
{% endhighlight %}
{% endtabs %}

### GridControlMouseDown 
This event will occur before a MouseDown is raised and allows you to cancel the mouse event. The event handler receives an argument of type [CancelMouseEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CancelMouseEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.GridControlMouseDown += new Syncfusion.Windows.Forms.CancelMouseEventHandler(TableControl_GridControlMouseDown);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.GridControlMouseDown, AddressOf TableControl_GridControlMouseDown
{% endhighlight %}
{% endtabs %}

### GridControlMouseUp 
This event will occur before MouseUp is raised and allows user to cancel the mouse event

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.GridControlMouseUp += new Syncfusion.Windows.Forms.CancelMouseEventHandler(TableControl_GridControlMouseUp);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.GridControlMouseUp, AddressOf TableControl_GridControlMouseUp
{% endhighlight %}
{% endtabs %}

### TableControlMouseDown
It occurs when the mouse pointer is over the control and mouse button is pressed. It receives an argument of type [GridTableControlMouseEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlMouseEventArgs.html) that provides data related to this event. This event can be invoked as follows.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.MouseUp += new MouseEventHandler(TableControl_MouseUp);

private void TableControl_MouseUp(object sender, MouseEventArgs e)
{
    Console.WriteLine("MouseUp: No. of Clicks" + e.Clicks.ToString());
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.MouseUp, AddressOf TableControl_MouseUp

Private Sub TableControl_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)
    Console.WriteLine("MouseUp: No. of Clicks" & e.Clicks.ToString())
End Sub

{% endhighlight %}
{% endtabs %}

## Key Events
This section will explains the key related events of GridGroupingControl.

### KeyDown 
This event will occur when any key is pressed at the time of GridGroupingControl in focus. The event handler receives an argument of type [KeyEventArgs](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.keyeventargs?view=windowsdesktop-7.0&viewFallbackFrom=net-5.0) containing data related to this event. 

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.KeyDown += new KeyEventHandler(TableControl_KeyDown);

void TableControl_KeyDown(object sender, KeyEventArgs e)
{
    Console.WriteLine("key down is performed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.KeyDown, AddressOf TableControl_KeyDown

Private Sub TableControl_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    Console.WriteLine("key down is performed")
End Sub
{% endhighlight %}
{% endtabs %}

### KeyPress
This event will occur when any key is pressed at the time of GridGroupingControl in focus. The event handler receives an argument of type [KeyEventArgs](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.keyeventargs?view=windowsdesktop-7.0&viewFallbackFrom=net-5.0) containing data related to this event. 

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.KeyPress += new KeyPressEventHandler(TableControl_KeyPress);

void TableControl_KeyPress(object sender, KeyPressEventArgs e)
{
    Console.WriteLine("Key " + e.KeyChar + "is Pressed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.KeyPress, AddressOf TableControl_KeyPress

Private Sub TableControl_KeyPress(ByVal sender As Object, ByVal e As KeyPressEventArgs)
    Console.WriteLine("Key " & e.KeyChar & "is Pressed")
End Sub
{% endhighlight %}
{% endtabs %}

### KeyUp
This event will occur when any key is released at the time of GridGroupingControl in focus. The event handler receives an argument of type [KeyEventArgs](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.keyeventargs?view=windowsdesktop-7.0&viewFallbackFrom=net-5.0) containing data related to this event. 

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.KeyUp += new KeyEventHandler(TableControl_KeyUp);

void TableControl_KeyUp(object sender, KeyEventArgs e)
{
    Console.WriteLine("key is released");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.KeyUp, AddressOf TableControl_KeyUp

Private Sub TableControl_KeyUp (ByVal sender As Object, ByVal e As KeyEventArgs)
    Console.WriteLine("key is released ")
End Sub
{% endhighlight %}
{% endtabs %}

## FilterBar Selection Events
There are two events for filter bar selection, namely [FilterBarSelectedItemChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html) and [FilterBarSelectedItemChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html) are implemented for Essential Grid. These events enable the user to cancel or customize filter value.

### FilterBarSelectedItemChanging
This event will be triggered while filtering a column. Using this event, user can cancel the filtering and the selected index or selected text of the filter bar cell can be modified as required. The event handler receives an argument type of [FilterBarSelectedItemChangingEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangingEventArgs.html) contains data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.FilterBarSelectedItemChanging += new Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangingEventHandler(gridGroupingControl1_FilterBarSelectedItemChanging); 

void gridGroupingControl1_FilterBarSelectedItemChanging(object sender, Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangingEventArgs e)
{
    Console.WriteLine("FilterBar selected item is changing");
}

{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.FilterBarSelectedItemChanging, AddressOf gridGroupingControl1_FilterBarSelectedItemChanging

Private Sub gridGroupingControl1_FilterBarSelectedItemChanging(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangingEventArgs)
    Console.WriteLine("FilterBar selected item is changing")
End Sub
{% endhighlight %}
{% endtabs %}

### FilterBarSelectedItemChanged
This event will be triggered after a column is filtered. Selected column, selected index, and selected text can be retrieved with this event. The event handler receives an argument type of [FilterBarSelectedItemChangedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangedEventArgs.html) contains data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.FilterBarSelectedItemChanged += new Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangedEventHandler(gridGroupingControl1_FilterBarSelectedItemChanged);

void gridGroupingControl1_FilterBarSelectedItemChanged(object sender, Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangedEventArgs e)
{
    //Retrieves the selected column, selected index and selected text.
    MessageBox.Show(e.SelectedIndex.ToString());
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.FilterBarSelectedItemChanged, AddressOf gridGroupingControl1_FilterBarSelectedItemChanged

Private Sub gridGroupingControl1_FilterBarSelectedItemChanged(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.FilterBarSelectedItemChangedEventArgs)
    'Retrieves the selected column, selected index and selected text.
    MessageBox.Show(e.SelectedIndex.ToString())
End Sub
{% endhighlight %}
{% endtabs %}

## Table Events
This section will explain the important [Table](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html) events of the GridGroupingControl.

### BackColorChanged
It will trigger when the value of Control’s [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html#Syncfusion_Windows_Forms_Grid_GridStyleInfo_BackColor) property changes.

{% tabs %}
{% highlight c# %}
// Notify the BackColor of the table control is changed
this.gridGroupingControl1.TableControl.BackColorChanged  +=new EventHandler(TableControl_BackColorChanged);
{% endhighlight %}
{% highlight vb %}
' Notify the BackColor of the table control is changed
AddHandler gridGroupingControl1.TableControl.BackColorChanged, AddressOf TableControl_BackColorChanged
{% endhighlight %}
{% endtabs %}

### BackgroundImageChanged
It will be triggered when the value of Control's [BackgroundImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ComboDropDown.html#Syncfusion_Windows_Forms_Tools_ComboDropDown_BackgroundImage) property changes.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.BackgroundImageChanged += new EventHandler(TableControl_BackgroundImageChanged);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.BackgroundImageChanged, AddressOf TableControl_BackgroundImageChanged
{% endhighlight %}
{% endtabs %}

### BindingContextChanged 
It will trigger when the value of Control's [BindingContextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableBase.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableBase_BindingContext) property.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.BindingContextChanged += new EventHandler(TableControl_BindingContextChanged);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.BindingContextChanged, AddressOf TableControl_BindingContextChanged
{% endhighlight %}
{% endtabs %}

### QueryAllowDragColumn    
It will trigger when the user hovers the mouse over a column header or clicks on it. Using this event handler, user can determine the selected column can be dragged or not. The event handler receives an argument of type [GridQueryAllowDragColumnEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowDragColumnEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.QueryAllowDragColumn += new Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowDragColumnEventHandler(TableControl_QueryAllowDragColumn);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.QueryAllowDragColumn, AddressOf TableControl_QueryAllowDragColumn
{% endhighlight %}
{% endtabs %}

### QueryAllowGroupByColumn 
It will trigger when the user drags a column header over the [GridGroupDropArea](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDropArea.html). Using this event handler, user can determine if the grid can be grouped by the selected column. The event handler receives an argument of type [GridQueryAllowGroupByColumnEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowGroupByColumnEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.QueryAllowGroupByColumn += new Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowGroupByColumnEventHandler(TableControl_QueryAllowGroupByColumn);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.QueryAllowGroupByColumn, AddressOf TableControl_QueryAllowGroupByColumn
{% endhighlight %}
{% endtabs %}

### QueryAllowSortColumn 
It will occur when the user hovers the mouse over a column header or clicks on it. In the event handler, user can determine the selected column can be sorted or not. The event handler receives an argument of type [GridQueryAllowSortColumnEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.QueryAllowSortColumn += new Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventHandler(TableControl_QueryAllowSortColumn);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.QueryAllowSortColumn, AddressOf TableControl_QueryAllowSortColumn
{% endhighlight %}
{% endtabs %}

### Resize
This event will be triggered when the GridGroupingControl is resized.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.Resize += new EventHandler(TableControl_Resize);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.Resize, AddressOf TableControl_Resize
{% endhighlight %}
{% endtabs %}

### ResizingColumns 
It will occur when the user resizes a selected range of columns. The event handler receives an argument of type [GridResizingColumnsEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridResizingColumnsEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.ResizingColumns += new Syncfusion.Windows.Forms.Grid.GridResizingColumnsEventHandler(TableControl_ResizingColumns);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.ResizingColumns, AddressOf TableControl_ResizingColumns
{% endhighlight %}
{% endtabs %}

### TextChanged 
It will occur when value of Control’s text property changes.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.TextChanged += new EventHandler(TableControl_TextChanged);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.TextChanged, AddressOf TableControl_TextChanged
{% endhighlight %}
{% endtabs %}

### TopRowChanged
It will trigger when top row index is changed while scrolling the grid. The event handler receives an argument of type [GridRowColIndexChangedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridRowColIndexChangedEventArgs.html) containing data related to this event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.TopRowChanged += new Syncfusion.Windows.Forms.Grid.GridRowColIndexChangedEventHandler(TableControl_TopRowChanged);
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.TopRowChanged, AddressOf TableControl_TopRowChanged
{% endhighlight %}
{% endtabs %}

### CurrentRecordContextChange 
The event occurs before and after the status of the current record is changed. Event handler receives an argument of type [CurrentRecordContextChangeEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableModel.html) containing data related to this event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.CurrentRecordContextChange += new Syncfusion.Grouping.CurrentRecordContextChangeEventHandler(gridGroupingControl1_CurrentRecordContextChange);

void gridGroupingControl1_CurrentRecordContextChange(object sender, Syncfusion.Grouping.CurrentRecordContextChangeEventArgs e)
{
    if (e.Action == CurrentRecordAction.EndEditComplete)
        Console.WriteLine(e.Record);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.CurrentRecordContextChange, AddressOf gridGroupingControl1_CurrentRecordContextChange

Private Sub gridGroupingControl1_CurrentRecordContextChange(ByVal sender As Object, ByVal e As Syncfusion.Grouping.CurrentRecordContextChangeEventArgs)
    If e.Action = CurrentRecordAction.EndEditComplete Then
        Console.WriteLine(e.Record)
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### GroupAdded 
This event occurs when a new group is added to the table after the table was categorized and when a record is changed. It does not occur during the categorization of the table. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

User can handle this event to make the child groups that were not initially expanded.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupAdded += new GroupEventHandler(gridGroupingControl1_GroupAdded);

void gridGroupingControl1_GroupAdded(object sender, GroupEventArgs e)
{
    e.Group.IsExpanded = false;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupAdded, AddressOf gridGroupingControl1_GroupAdded

Private Sub gridGroupingControl1_GroupAdded(ByVal sender As Object, ByVal e As GroupEventArgs)
    e.Group.IsExpanded = False
End Sub
{% endhighlight %}
{% endtabs %}

### GroupCollapsing 
This occurs before a group is collapsed. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupCollapsing += new GroupEventHandler(gridGroupingControl1_GroupCollapsing);

void gridGroupingControl1_GroupCollapsing(object sender, GroupEventArgs e)
{
    foreach (Record r in e.Group.Records)
        Console.WriteLine("Collapsing event " + r.Info);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupCollapsing, AddressOf gridGroupingControl1_GroupCollapsing

Private Sub gridGroupingControl1_GroupCollapsing(ByVal sender As Object, ByVal e As GroupEventArgs)
    For Each r As Record In e.Group.Records
        Console.WriteLine("Collapsing event " & r.Info)
    Next r
End Sub
{% endhighlight %}
{% endtabs %}

### GroupCollapsed
This occurs when a group is collapsed. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupCollapsed += new GroupEventHandler(gridGroupingControl1_GroupCollapsed);

void gridGroupingControl1_ GroupCollapsed(object sender, GroupEventArgs e)
{
    foreach (Record r in e.Group.Records)
        Console.WriteLine("Collapsing event " + r.Info);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupCollapsed, AddressOf gridGroupingControl1_GroupCollapsed

Private Sub gridGroupingControl1_GroupCollapsed(ByVal sender As Object, ByVal e As GroupEventArgs)
    For Each r As Record In e.Group.Records
        Console.WriteLine("Collapsing event " & r.Info)
    Next r
End Sub
{% endhighlight %}
{% endtabs %}

### GroupExpanding
This will triggers before a group is expanded. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing the data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupExpanding += new GroupEventHandler(gridGroupingControl1_GroupExpanding);
bool IsClickExpand = false;

void gridGroupingControl1_GroupExpanding(object sender, GroupEventArgs e)
{
    if (IsClickExpand)
        IsClickExpand = false;
    else
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupExpanding, AddressOf gridGroupingControl1_GroupExpanding
Private IsClickExpand As Boolean = False

Private Sub gridGroupingControl1_GroupExpanding(ByVal sender As Object, ByVal e As GroupEventArgs)
    If IsClickExpand Then
        IsClickExpand = False
    Else
        e.Cancel = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### GroupExpanded 
This occurs when a group is expanded. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupExpanded += new GroupEventHandler(gridGroupingControl1_GroupExpanded);

void gridGroupingControl1_GroupExpanded(object sender, GroupEventArgs e)
{
    foreach (Record r in e.Group.Records)
        Console.WriteLine("Expanded event " + r.Info);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupExpanded, AddressOf gridGroupingControl1_GroupExpanded

Private Sub gridGroupingControl1_GroupExpanded(ByVal sender As Object, ByVal e As GroupEventArgs)
    For Each r As Record In e.Group.Records
        Console.WriteLine("Expanded event " & r.Info)
    Next r
End Sub
{% endhighlight %}
{% endtabs %}

### GroupRemoving 
This event occurs before a group is removed after the table was categorized and when a record is changed. It does not occur during the categorization of the table. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupRemoving += gridGroupingControl1_GroupRemoving;

void gridGroupingControl1_GroupRemoving(object sender, GroupEventArgs e)
{
    Console.WriteLine("Group is removing" + e.Group.Name);
}
{% endhighlight %}
{% highlight vb %}
Me.gridGroupingControl1.GroupRemoving += gridGroupingControl1_GroupRemoving

Private Sub gridGroupingControl1_GroupRemoving(ByVal sender As Object, ByVal e As GroupEventArgs)
    Console.WriteLine("Group is removing" & e.Group.Name)
End Sub
{% endhighlight %}
{% endtabs %}

### GroupSummaryInvalidated
This occurs when a summary has been marked dirty. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.GroupSummaryInvalidated += new GroupEventHandler(gridGroupingControl1_GroupSummaryInvalidated);void gridGroupingControl1_GroupSummaryInvalidated(object sender, GroupEventArgs e)
{
    e.Group.ParentTable.SummariesDirty = true;
    GridGroupingControl grid = sender as GridGroupingControl;
    GridTableControl  tableControl = grid.GetTableControl(e.Group.ParentTableDescriptor.Name);
     tableControl.RefreshRange(GridRangeInfo.Cell(8, 3));

    // Display the updated summary value in the message box
    MessageBox.Show( tableControl.Model[8, 3].Text);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.GroupSummaryInvalidated, AddressOf gridGroupingControl1_GroupSummaryInvalidated
Private Sub gridGroupingControl1_GroupSummaryInvalidated(ByVal sender As Object, ByVal e As GroupEventArgs)
    e.Group.ParentTable.SummariesDirty = True
    Dim grid As GridGroupingControl = TryCast(sender, GridGroupingControl)
    Dim  tableControl As GridTableControl = grid.GetTableControl(e.Group.ParentTableDescriptor.Name)
     tableControl.RefreshRange(GridRangeInfo.Cell(8, 3))

    ' Display the updated summary value in the message box
    MessageBox.Show( tableControl.Model(8, 3).Text)
End Sub
{% endhighlight %}
{% endtabs %}

### RecordExpanding
This occurs before a record with nested table is expanded. The event handler receives an argument of type [RecordEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.RecordEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.RecordExpanding += new RecordEventHandler(gridGroupingControl1_RecordExpanding);

void gridGroupingControl1_RecordExpanding(object sender, RecordEventArgs e)
{
    if (e.Record.GetRelatedChildTable(new RelationDescriptor("ParentToChild")).GetRecordCount() == 0)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.RecordExpanding, AddressOf gridGroupingControl1_RecordExpanding

Private Sub gridGroupingControl1_RecordExpanding(ByVal sender As Object, ByVal e As RecordEventArgs)
    If e.Record.GetRelatedChildTable(New RelationDescriptor("ParentToChild")).GetRecordCount() = 0 Then
        e.Cancel = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### RecordValueChanging 
This occurs when [RecordFieldCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellAppearance.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableCellAppearance_RecordFieldCell) cell’s value is changed and before [Record.SetValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRecord.html) is returned. The event handler receives an argument of type [RecordValueChangingEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.RecordValueChangingEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.RecordValueChanging +=new RecordValueChangingEventHandler(gridGroupingControl1_RecordValueChanging);

void gridGroupingControl1_RecordValueChanging(object sender, RecordValueChangingEventArgs e)
{
    Console.WriteLine(" New Value: {0} ", e.NewValue);
    Console.WriteLine(" Old Value: {0} ", e.Record.GetValue(e.Column));
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.RecordValueChanging, AddressOf gridGroupingControl1_RecordValueChanging

Private Sub gridGroupingControl1_RecordValueChanging(ByVal sender As Object, ByVal e As RecordValueChangingEventArgs)
    Console.WriteLine(" New Value: {0} ", e.NewValue)
    Console.WriteLine(" Old Value: {0} ", e.Record.GetValue(e.Column))
End Sub
{% endhighlight %}
{% endtabs %}

### RecordValueChanged 
This occurs when `RecordFieldCell` cell’s value is changed and after `Record.SetValue` is returned. The event handler receives an argument of type [RecordValueChangedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.RecordValueChangedEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.RecordValueChanged += new RecordValueChangedEventHandler(gridGroupingControl1_RecordValueChanged);

void gridGroupingControl1_RecordValueChanged(object sender, RecordValueChangedEventArgs e)
{
    Record r = e.Record;
    if (e.Column != "Column2")
        r.SetValue("Column2", "");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.RecordValueChanged, AddressOf gridGroupingControl1_RecordValueChanged

Private Sub gridGroupingControl1_RecordValueChanged(ByVal sender As Object, ByVal e As RecordValueChangedEventArgs)
    Dim r As Record = e.Record
    If e.Column <> "Column2" Then
        r.SetValue("Column2", "")
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### SortingItemsInGroup 
This occurs before the records for a group is sorted. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.Table.SortingItemsInGroup += new GroupEventHandler(Table_SortingItemsInGroup);

void Table_SortingItemsInGroup(object sender, GroupEventArgs e)
{
    Console.WriteLine("Before Sorting the records in the group: " + e.Group.Info);
}
{% endhighlight %}
{% highlight vb %}
AddHandler his.gridGroupingControl1.Table.SortingItemsInGroup, AddressOf Table_SortingItemsInGroup

Private Sub Table_SortingItemsInGroup(ByVal sender As Object, ByVal e As GroupEventArgs)
    Console.WriteLine("Before Sorting the records in the group: " & e.Group.Info)
End Sub
{% endhighlight %}
{% endtabs %}

### SortedItemsInGroup 
This occurs after the records for a group is sorted. The event handler receives an argument of type [GroupEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.GroupEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.Table.SortedItemsInGroup += new GroupEventHandler(Table_SortedItemsInGroup);

void Table_SortedItemsInGroup(object sender, GroupEventArgs e)
{
    Console.WriteLine("After Sorting the records in the group: " + e.Group.Info);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.Table.SortedItemsInGroup, AddressOf Table_SortedItemsInGroup

Private Sub Table_SortedItemsInGroup(ByVal sender As Object, ByVal e As GroupEventArgs)
    Console.WriteLine("After Sorting the records in the group: " & e.Group.Info)
End Sub
{% endhighlight %}
{% endtabs %}

### SourceListListChanged 
This occurs before the table processes [System.ComponentModel.IBindingList.ListChanged](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.ibindinglist.listchanged?view=net-5.0) event of attached source list. The event handler receives an argument of type [TableListChangedEventArgs](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableListChangedEventArgs.html) containing data related to this event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.SourceListListChanged += new TableListChangedEventHandler(gridGroupingControl1_SourceListListChanged);

void gridGroupingControl1_SourceListListChanged(object sender, TableListChangedEventArgs e)
{
    Console.WriteLine("ListChangedType :" + e.ListChangedType.ToString());
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.SourceListListChanged, AddressOf gridGroupingControl1_SourceListListChanged

Private Sub gridGroupingControl1_SourceListListChanged(ByVal sender As Object, ByVal e As TableListChangedEventArgs)
    Console.WriteLine("ListChangedType :" & e.ListChangedType.ToString())
End Sub
{% endhighlight %}
{% endtabs %}
