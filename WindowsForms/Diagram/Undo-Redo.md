---
layout: post
title: Undo / Redo in Windows Forms Diagram | Syncfusion®
description: Manage undo and redo operations in the Syncfusion® Windows Forms Diagram control using the History Manager and atomic actions.
platform: windowsforms
control: Diagram
documentation: ug
---

# Undo / Redo in Windows Forms Diagram

The Diagram control records user actions (such as adding, moving, resizing, or deleting nodes) into the [HistoryManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.HistoryManager.html). The active history manager exposes methods to undo and redo those recorded actions. Recording is enabled by default when a model is created; you can pause and resume recording with `Suspend` and `Resume`.

Before running the samples below, add a Diagram control named `diagram1` to a Windows Form.

## History Manager Methods

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
Undo</td><td>
Undoes the most recent recorded action from the undo stack.</td></tr>
<tr>
<td>
Redo</td><td>
Redoes the most recent undone action. Redo is only available after Undo has been called.</td></tr>
<tr>
<td>
StartAtomicAction(string actionName)</td><td>
Begins an atomic (composite) action. All recorded actions between Start and End are merged into a single undo entry titled <em>actionName</em>.</td></tr>
<tr>
<td>
EndAtomicAction()</td><td>
Ends the atomic action started by `StartAtomicAction` and resumes normal recording of new actions.</td></tr>
</table>

## Undo and Redo

Calling **Undo** reverses the most recent recorded action. The action is then pushed onto the redo stack, allowing **Redo** to restore it on the next call.

{% tabs %}
{% highlight c# %}

// Reverse the most recent recorded action.
this.diagram1.Model.HistoryManager.Undo();

// Reapply the action that was just undone.
this.diagram1.Model.HistoryManager.Redo();

{% endhighlight %}
{% highlight vb %}

' Reverse the most recent recorded action.
Me.diagram1.Model.HistoryManager.Undo()

' Reapply the action that was just undone.
Me.diagram1.Model.HistoryManager.Redo()

{% endhighlight %}
{% endtabs %}

> If `Redo()` is called when the redo stack is empty, the call is a no-op. **Redo** only works after at least one **Undo** has been performed.

## Atomic Actions

Use `StartAtomicAction` and `EndAtomicAction` to group several actions into a single undoable unit. This is useful when a custom command performs multiple changes (for example, while swapping two nodes) and the user expects Undo to restore them together rather than step-by-step.

The atomic action sequence must call `StartAtomicAction` first to begin recording the composite action and then `EndAtomicAction` to commit the unit to the history.

{% tabs %}
{% highlight c# %}

this.diagram1.Model.HistoryManager.StartAtomicAction("Custom Action");

// Perform the operations you want to group into a single undo entry here.
Syncfusion.Windows.Forms.Diagram.Rectangle rect =
    new Syncfusion.Windows.Forms.Diagram.Rectangle(100, 100, 100, 50);
this.diagram1.Model.AppendChild(rect);

this.diagram1.Model.HistoryManager.EndAtomicAction();

{% endhighlight %}
{% highlight vb %}

Me.diagram1.Model.HistoryManager.StartAtomicAction("Custom Action")

' Perform the operations you want to group into a single undo entry here.
Dim rect As New Syncfusion.Windows.Forms.Diagram.Rectangle(100, 100, 100, 50)
Me.diagram1.Model.AppendChild(rect)

Me.diagram1.Model.HistoryManager.EndAtomicAction()

{% endhighlight %}
{% endtabs %}

Calling **Undo** after the sample above removes the appended rectangle in a single step labeled "Custom Action".
