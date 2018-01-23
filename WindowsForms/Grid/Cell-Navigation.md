---
layout: post
title: Cell Navigation in GridControl for Syncfusion Essential Windows Forms
description: This section explains about the navigation of the current cell in GridControl.
platform: windowsforms
control: GridControl
documentation: ug
---

# Cell Navigation
This section explains about the cell navigation in GridControl using <kbd>Tab</kbd>, <kbd>Enter</kbd>, arrow keys and other combination of keys. 

The navigation of cells can be identified through the selection of the [CurrentCell](http://help.syncfusion.com/windowsforms/grid/editing) or the range of cells. The [selection](http://help.syncfusion.com/windowsforms/grid/selection) will be changed according to the selection mode set for the GridControl such as [range selection](http://help.syncfusion.com/windowsforms/grid/selection#range-selection) and [record selection](http://help.syncfusion.com/windowsforms/grid/selection#record-selection). 

## Navigation Using Keyboard Keys
The GridControl provides support for all the standard navigation using keyboard. The current cell of the grid can be navigated by using the up, down, left and right arrow keys of the keyboard. 

Other navigation keys such as Page Up, Page Down will be used to navigate to the top and bottom row of the view layout of the grid. 
The <kbd>Shift</kbd>+ Arrow Keys combination is used to include the next cell to the selection at the given direction.
The <kbd>Ctrl</kbd>+ Arrow keys combination is used to navigate the current cell to the leftmost, rightmost, topmost and bottommost position. 
The <kbd>Ctrl</kbd>+<kbd>Home</kbd> and <kbd>Ctrl</kbd>+<kbd>End</kbd> key combinations are used to move the current cell selection to the TopLeft and BottomRight cells of the GridControl.

## Navigation of Cells Using Mouse
The GridControl provides the support for navigating the cells using the mouse click. The CurrentCell selection can be navigated to the desired cell by clicking on it. This default option of the grid can be restricted by using the [ControllerOptions](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~ControllerOptions.html) property.

{% tabs %}
{% highlight c# %}
//Prevent cell navigation using mouse click.
this.gridControl1.ControllerOptions &= ~Syncfusion.Windows.Forms.Grid.GridControllerOptions.SelectCells & ~Syncfusion.Windows.Forms.Grid.GridControllerOptions.ClickCells;
{% endhighlight %}
{% highlight vb %}
'Prevent cell navigation using mouse click.
Me.gridControl1.ControllerOptions = Me.gridControl1.ControllerOptions And (Not Syncfusion.Windows.Forms.Grid.GridControllerOptions.SelectCells) And Not Syncfusion.Windows.Forms.Grid.GridControllerOptions.ClickCells
{% endhighlight %}
{% endtabs %}

### Prevent Removing of Selection Using Mouse Right Click
The selection will be cleared when perform the right click on the selected range of cells. It can be restricted from clearing the selection using the [SelectCellsMouseButtonsMask](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~SelectCellsMouseButtonsMask.html) property. This will be used to display the context menu for performing the actions on the selected range of cells.
{% tabs %}
{% highlight c# %}
//Restrict the clearing of selection using the mouse right click.
this.gridControl1.SelectCellsMouseButtonsMask = System.Windows.Forms.MouseButtons.Left;
{% endhighlight %}
{% highlight vb %}
' Restrict the clearing of selection using the mouse right click.
Me.gridControl1.SelectCellsMouseButtonsMask = System.Windows.Forms.MouseButtons.Left
{% endhighlight %}
{% endtabs %}

### Restrict Cell Navigation Using Event
The current cell navigation can be restricted by canceling the [CurrentCellActivating](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~CurrentCellActivating_EV.html) event.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellActivating += new GridCurrentCellActivatingEventHandler(gridControl1_CurrentCellActivating);
void gridControl1_CurrentCellActivating(object sender, Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventArgs e)
{
    //Cancel the activation of current cell.
    e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.CurrentCellActivating += New GridCurrentCellActivatingEventHandler(AddressOf gridControl1_CurrentCellActivating)
Private Sub gridControl1_CurrentCellActivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCurrentCellActivatingEventArgs)
	'Cancel the activation of current cell.
	e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}

## Setting TAB Key Behavior 
The cell navigation using <kbd>TAB</kbd> key can be enabled in GridControl by setting the [WantTabKey](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~WantTabKey.html) property to `true`.

{% tabs %}
{% highlight c# %}
//Enable Cell Navigation using Tab Key.
this.gridControl.WantTabKey = true;

//Disable Cell Navigation Using Tab Key.
this.gridControl.WantTabKey = false;
{% endhighlight %}
{% highlight vb %}
'Enable Cell Navigation using Tab Key.
Me.gridControl.WantTabKey = True

'Disable Cell Navigation Using Tab Key.
Me.gridControl.WantTabKey = False
{% endhighlight %}
{% endtabs %}

### Handling the TAB Key to Navigate within Grid 
The [WantTabKeyInPreProcessMessage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~WantTabKeyInPreProcessMessage.html) property is used to indicate whether the GridControl should handle <kbd>TAB</kbd> keys to move the focus either cells or controls. If it is `true` then it will make sure that no other control on a form can override the <kbd>TAB</kbd> key behavior of this control. 

{% tabs %}
{% highlight c# %}
//set true for tab key move between cells right away and restrict to other controls use the tab behavior.
this.gridControl.WantTabKeyInPreProcessMessage = true;
{% endhighlight %}
{% highlight vb %}
' set true for tab key move between cells right away and restrict to other controls use the tab behavior.
Me.gridControl.WantTabKeyInPreProcessMessage = True
{% endhighlight %}
{% endtabs %}

## Setting the TAB Index 
The [TabIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~TabIndex.html) property is used to set the tab order of the GridControl while using the <kbd>TAB</kbd> key navigations. 

{% tabs %}
{% highlight c# %}
//The grid will get the focus at the 4th time of pressing the Tab key on the form.
this.gridControl.TabIndex = 4;
{% endhighlight %}
{% highlight vb %}
'The grid will get the focus at the 4th time of pressing the Tab key on the form.
Me.gridControl.TabIndex = 4
{% endhighlight %}
{% endtabs %}

N> The Changing of `TabIndex` in GridControl can be notified by using the [TabIndexChanged](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ScrollControl~TabIndex.html) event.

### Avoid Setting Focus Using TAB Key for Particular Control
The focus for particular control using <kbd>TAB</kbd> key can be restricted by using [TabStop](https://msdn.microsoft.com/en-in/library/system.windows.forms.control.tabstop%28v=vs.110%29.aspx) property.

{% tabs %}
{% highlight c# %}
//Set true to allow focus using TAB key, Set false to restrict the focus using TAB key.
this.gridControl.TabStop = false;
{% endhighlight %}
{% highlight vb %}
'Set true to allow focus using TAB key, Set false to restrict the focus using TAB key.
Me.gridControl.TabStop = False
{% endhighlight %}
{% endtabs %}

### Releasing TAB Focus from Grid
When setting the [ActiveControl](https://msdn.microsoft.com/en-us/library/system.windows.forms.icontainercontrol.activecontrol.aspx) of the form as GridControl, the focus will not move from the grid to other controls in the form using the <kbd>TAB</kbd> key. This difficulty can be overcome by setting `WantTabKey` property to `false` after setting the `ActiveControl`. This helps to navigate other controls in the form.

{% tabs %}
{% highlight c# %}
//Setting the ActiveControl to GridControl.
this.ActiveControl = this.gridControl1;
this.gridControl1.WantTabKey = false;
{% endhighlight %}
{% highlight vb %}
'Setting the ActiveControl to GridControl.
Me.ActiveControl = Me.gridControl1
Me.gridControl1.WantTabKey = False
{% endhighlight %}
{% endtabs %}

## Disabling Escape Key 
The grid can reset the cell contents or the cell selection using the <kbd>Escape</kbd> key. This can be disabled by setting the [WantEscapeKey](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~WantEscapeKey.html) property to `false`.

{% tabs %}
{% highlight c# %}
//To avoid the Escape key.
this.gridControl.WantEscapeKey = false;
{% endhighlight %}
{% highlight vb %}
'To avoid the Escape key.
Me.gridControl.WantEscapeKey = False
{% endhighlight %}
{% endtabs %}

## Disabling Enter Key 
The <kbd>Enter</kbd> Key can be used to navigate the cells in GridControl when it’s not in editing mode. This can be disabled by setting the [WantEnterKey](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~WantEnterKey.html) property to `false`.
{% tabs %}
{% highlight c# %}
//To avoid the Enter key.
this.gridControl.WantEnterKey = false;
{% endhighlight %}
{% highlight vb %}
'To avoid the Enter key.
Me.gridControl.WantEnterKey = False
{% endhighlight %}
{% endtabs %}

## Setting Enter Key Behavior
The navigation of cells using the <kbd>Enter</kbd> key can be handled using [EnterKeyBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~EnterKeyBehavior.html) property. It provides the following navigation options to move the cell focus when <kbd>Enter</kbd> is pressed.

* Bottom
* BottomRight
* Down
* Left
* MostLeft
* MostRight
* None
* PageDown
* PageUp
* Right
* Top
* TopLeft
* Up

{% tabs %}
{% highlight c# %}
// Cell focus moved to down direction.
this.gridControl.EnterKeyBehavior = GridDirectionType.Down;
{% endhighlight %}
{% highlight vb %}
' Cell focus moved to down direction.
Me.gridControl.EnterKeyBehavior = GridDirectionType.Down
{% endhighlight %}
{% endtabs %}

## Setting Cell Navigation Behavior 
The `EnterKeyBehavior` is working based on [WrapCellBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~WrapCellBehavior.html) property**.** It is used to navigate to first column of the next row or last column of the previous row when at end or beginning of a row.  

The [GridWrapCellBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridWrapCellBehavior.html) enumeration has the following list of options,

* **WrapGrid** - Move to first row and column, when focus at the last row and last column.
* **WrapRow** - Move to first column in next row or last column in previous row.
* **None** - Don’t move current cell.
* **NextControlInForm** - Activate next sibling control in the dialog when focus at the last row and last column or Activate previous sibling control in the dialog when focus at the first row and column.

{% tabs %}
{% highlight c# %}
//Focus was moved to first row and column, when focus at the last row and last column.
this.gridControl.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapGrid;
{% endhighlight %}
{% highlight vb %}
' Focus was moved to first row and column, when focus at the last row and last column.
Me.gridControl.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapGrid
{% endhighlight %}
{% endtabs %}

## Programmatic Cell Navigation 
The cells navigation through arrow keys can be achieved programmatically by using the MoveUp, MoveDown, MoveLeft and MoveRight methods of the CurrentCell.

{% tabs %}
{% highlight c# %}
//Move the Current Cell to the Up direction.
this.gridControl1.CurrentCell.MoveUp();

//Move the Current Cell to the down direction.
this.gridControl1.CurrentCell.MoveDown();

//Move current cell to the left.
this.gridControl1.CurrentCell.MoveLeft();

//Move Current Cell to the right.
this.gridControl1.CurrentCell.MoveRight();
{% endhighlight %}
{% highlight vb %}
'Move the Current Cell to the Up direction.
Me.gridControl1.CurrentCell.MoveUp()

'Move the Current Cell to the down direction.
Me.gridControl1.CurrentCell.MoveDown()

'Move current cell to the left.
Me.gridControl1.CurrentCell.MoveLeft()

'Move Current Cell to the right.
Me.gridControl1.CurrentCell.MoveRight()
{% endhighlight %}
{% endtabs %}

### Navigate to Particular Cell
The current cell can be moved to particular cell by using [MoveTo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDragWindow~MoveTo.html) method.

{% tabs %}
{% highlight c# %}
//Move the current cell to specific cell.
this.gridControl1.CurrentCell.MoveTo(GridRangeInfo.Cell(2, 2));
{% endhighlight %}
{% highlight vb %}
'Move the current cell to specific cell.
Me.gridControl1.CurrentCell.MoveTo(GridRangeInfo.Cell(2, 2))
{% endhighlight %}
{% endtabs %}

N> The desired cell can be programmatically get into the view by using the [ScrollCellInView](http://help.syncfusion.com/windowsforms/grid/scrolling#scroll-and-view-a-specific-cell) method.

### Moving Current Cell without Selecting Any Cells
The current cell can be moved to the specific direction without selecting any cells by using the [InternalMove](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridCurrentCell~InternalMove.html) method. It will skip the number of cells given in the argument from the current cell position.

{% tabs %}
{% highlight c# %}
// Used to move the current cell to the specific direction without selection. 
this.gridControl1.CurrentCell.InternalMove(GridDirectionType.Right, 4, GridSetCurrentCellOptions.ScrollInView);
{% endhighlight %}
{% highlight vb %}
' Used to move the current cell to the specific direction without selection. 
Me.gridControl1.CurrentCell.InternalMove(GridDirectionType.Right, 4, GridSetCurrentCellOptions.ScrollInView)
{% endhighlight %}
{% endtabs %}