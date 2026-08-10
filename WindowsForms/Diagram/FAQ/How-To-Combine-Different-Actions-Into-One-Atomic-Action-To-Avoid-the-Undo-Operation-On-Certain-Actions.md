---
layout: post
title: How to combine actions in Windows Forms Diagram | Syncfusion®
description: Learn how to combine multiple actions into a single atomic action in the Syncfusion® Windows Forms Diagram control to manage undo operations.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to combine actions into an atomic action in Windows Forms Diagram

This is done by calling the Model.HistoryManger.StartAtomicAction(string description) / EndAtomicAction() methods. 

The actions can be recorded into the history manager such that the undo and redo operations can be performed. The recording can be controlled and the undo and redo actions can be performed using the following tools.

* StartAtomicAction-This tool, when called, stops recording the actions and hence will not be added to the undo history manager.
* EndAtomicAction-This tool cancels the StartAtomicAction process and turns on the recording of actions in the history manager.

{% tabs %}

{% highlight c# %}

this.diagram1.Model.HistoryManager.StartAtomicAction("Custom Action");

this.diagram1.Model.HistoryManager.EndAtomicAction();

{% endhighlight %}

{% highlight vbnet %}

Me.diagram1.Model.HistoryManager.StartAtomicAction("Custom Action")

Me.diagram1.Model.HistoryManager.EndAtomicAction()

{% endhighlight %}

{% endtabs %}
