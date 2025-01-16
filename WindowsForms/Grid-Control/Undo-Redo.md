---
layout: post
title: Undo Redo in Windows Forms Grid Control | Syncfusion
description: Learn about Undo Redo support in Syncfusion® Essential® Studio Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: Grid
documentation: ug

---
# Undo Redo in Windows Forms Grid Control

GridControl gives support for Undo/Redo functionality. GridControl keeps a track on all the operations undergone, in a particular class [GridModelCommandManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html). The Undo/Redo operations can be done by using commands, methods and keyboard shortcuts. 

## Basic Commands

GridControl has [GridModelCommandManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html) class that implements support for the Undo/Redo commands in a grid. If an operation in a GridControl is done then the changes made will get tracked and stored in stack structures which will be stored in this class.

GridControl has a property [CommandStack](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_CommandStack) which will return a reference to [GridModelCommandManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html). Undo/Redo operations can be enabled/disabled through this property.

{% tabs %}

{% highlight c# %}
// Turns on Undo/Redo buffer

this.gridControl1.CommandStack.Enabled = true;

// Turns off Undo/Redo buffer
this.gridControl1.CommandStack.Enabled = false;
{% endhighlight %}

{% highlight vb %}
' Turns on Undo/Redo buffer

Me.gridControl1.CommandStack.Enabled = True

' Turns off Undo/Redo buffer
Me.gridControl1.CommandStack.Enabled = False
{% endhighlight %}
{% endtabs %}

### Undo

The undo operation can be done in GridControl by using the [CommandStack.Undo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Undo) method. By default, GridControl also give support for undoing the actions using keyboard shortcuts. Use <kbd>Ctrl</kbd>+<kbd>Z</kbd> combination for Undo operation to happen.

{% tabs %}

{% highlight c# %}
// Makes the undo operation
this.gridControl1.CommandStack.Undo();

// Clears the Undo buffer
this.gridControl1.CommandStack.Undo.Clear();
{% endhighlight %}

{% highlight vb %}
' Makes the undo operation
Me.gridControl1.CommandStack.Undo()

' Clears the Undo buffer
Me.gridControl1.CommandStack.Undo.Clear()
{% endhighlight %}
{% endtabs %}

### Redo

The redo operation can be done by using the [CommandStack.Redo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Redo) method. <kbd>Ctrl</kbd>+<kbd>Y</kbd> combination is the keyboard shortcut for the redoing process.

{% tabs %}

{% highlight c# %}
// Makes the redo operation
this.gridControl1.CommandStack.Redo();

// Clears the Undo buffer
this.gridControl1.CommandStack.Redo.Clear();
{% endhighlight %}

{% highlight vb %}
' Makes the redo operation
Me.gridControl1.CommandStack.Redo()

' Clears the Undo buffer
Me.gridControl1.CommandStack.Redo.Clear()
{% endhighlight %}
{% endtabs %}

## Transactions

A **Transaction** is a series of steps that will be treated as a single action in the Undo/Redo architecture. For example, if a list of operations has been done and undoing these operations in a single click or way is known as Transaction.

Transaction can be done by using the methods [BeginTrans](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_BeginTrans_System_String_), [CommitTrans](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_CommitTrans) and [RollBack](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Rollback) in the `GridModelCommandManager` class.

### BeginTrans

A call to [CommandStack.BeginTrans](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_BeginTrans_System_String_) will mark the start of a series of actions that are to be treated as a single Undo/Redo step. Once `BeginTrans` is called, all the changes are marked as being a member of a single transaction until either `CommitTrans` or `RollBack` is called. 

{% tabs %}

{% highlight c# %}
// Transaction will be started
this.gridControl1.CommandStack.BeginTrans("Transaction started");
{% endhighlight %}

{% highlight vb %}
' Transaction will be started
Me.gridControl1.CommandStack.BeginTrans("Transaction started")
{% endhighlight %}
{% endtabs %}

After starting the transaction using the above method, do the list of changes in grid so that it will stored as one transaction while committing the transaction using `CommitTrans` method.

#### CommitTrans

[CommandStack.CommitTrans](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_CommitTrans) method will denote the GridControl to stop the transaction and to save all the changes in one transaction. Then this single transaction will be stored in stack.

{% tabs %}

{% highlight c# %}
// Current Transaction will be stopped
this.gridControl1.CommandStack.CommitTrans();
{% endhighlight %}

{% highlight vb %}
' Current Transaction will be stopped
Me.gridControl1.CommandStack.CommitTrans()
{% endhighlight %}
{% endtabs %}

#### Rollback

A call to [CommandStack.Rollback](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Rollback) method will cause all the changes in the current transaction to be undone and will end the transaction processing. Rollback call will return the grid to the same state that it was immediately prior to the call to [BeginTrans](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_BeginTrans_System_String_).

{% tabs %}

{% highlight c# %}
// Current Transaction will be stopped and undone
this.gridControl1.CommandStack.Rollback();
{% endhighlight %}

{% highlight vb %}
' Current Transaction will be stopped and undone
Me.gridControl1.CommandStack.Rollback()
{% endhighlight %}
{% endtabs %}

## Custom Commands

Undo/Redo methods can be handled manually and not the standard implementation used in Undo/Redo architecture, by using the derived custom commands from the [GridModelCommand](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommand.html) abstract class. In the derived class, add necessary members to track the Undo/Redo actions.

{% tabs %}
{% highlight c# %}
public class MyCustomCommand : GridModelCommand
{

// Constructor for MyCustomCommand class.
    public MyCustomCommand()
    {
    }

// Overrides the Execute method.
    public override void Execute()
    {
    }
}
{% endhighlight %}

{% highlight vb %}
Public Class MyCustomCommand
Inherits GridModelCommand

'Constructor for MyCustomCommand class.
Public Sub New()
End Sub

'Overrides the Execute method.
Public Overrides Sub Execute()
End Sub
End Class
{% endhighlight %}
{% endtabs %}

After creating the `GridModelCommand` derived class, create a proper instance of your derived `GridModelCommand` class and add it to [CommandStack.UndoStack](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_UndoStack) whenever the action is taken.

### Creating Custom Commands for Covered Cells

To create a custom command on making the undo/redo operations for covered ranges cells, make use of the below code which explains a simple way on achieving it.

The `GridModelCommand` class has an overridden method called Execute. This method will execute the set of codes mentioned in it while the custom undo/redo process goes on.

{% tabs %}
{% highlight c# %}
public class GridModelSetCoveredRangesCommand

: GridModelCommand
{
    GridRangeInfoList ranges;
    bool setOrReset;
    private GridModelCoveredRanges coveredRange;
    public GridModelSetCoveredRangesCommand(GridModelCoveredRanges coveredRange, GridRangeInfoList ranges, bool setOrReset)

    : base(coveredRange.Model)
    {
        if (setOrReset)
        {
            SetDescription("CommandAddCoveredRanges");
        }
        else
        {
            SetDescription("CommandRemoveCoveredRanges");
        }
        this.coveredRange = coveredRange;
        this.ranges = ranges;
        this.setOrReset = setOrReset;
    }

// Executes the command.

public override void Execute()
{
    coveredRange.SetCoveredRanges(ranges, setOrReset);
    Grid.ScrollCellInView(ranges.ActiveRange, GridScrollCurrentCellReason.Command);
}

}
{% endhighlight %}

{% highlight vb %}
Public Class GridModelSetCoveredRangesCommand
Inherits GridModelCommand
Private ranges As GridRangeInfoList
Private setOrReset As Boolean
Private coveredRange As GridModelCoveredRanges
Public Sub New(ByVal coveredRange As GridModelCoveredRanges, ByVal ranges As GridRangeInfoList, ByVal setOrReset As Boolean)
MyBase.New(coveredRange.Model)
If setOrReset Then
SetDescription("CommandAddCoveredRanges")
Else
SetDescription("CommandRemoveCoveredRanges")
End If

Me.coveredRange = coveredRange

Me.ranges = ranges

Me.setOrReset = setOrReset

End Sub

' Executes the command.

Public Overrides Sub Execute()
coveredRange.SetCoveredRanges(ranges, setOrReset)
Grid.ScrollCellInView(ranges.ActiveRange, GridScrollCurrentCellReason.Command)
End Sub
End Class
{% endhighlight %}
{% endtabs %}


After creating the class, add the transaction to the GridControl by using the [CommandStack.Push](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Push_Syncfusion_ComponentModel_SyncfusionCommand_) method. Call this method to necessary places in which the users need to make the Undo/Redo operations.

{% tabs %}

{% highlight c# %}
this.gridControl1.CommandStack.Push(new GridModelSetCoveredRangesCommand(this.gridControl1.Model.CoveredRanges, list, false));
{% endhighlight %}

{% highlight vb %}
Me.gridControl1.CommandStack.Push(New GridModelSetCoveredRangesCommand(Me.gridControl1.Model.CoveredRanges, list, False))
{% endhighlight %}
{% endtabs %}

After pushing the custom command unto the stack, if user make any merge cells using the covered ranges then it can be undone by using the [Undo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCommandManager.html#Syncfusion_Windows_Forms_Grid_GridModelCommandManager_Undo#) method or by keyboard shortcuts.

