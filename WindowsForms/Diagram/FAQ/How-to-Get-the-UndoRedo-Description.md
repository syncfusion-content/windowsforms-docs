---
layout: post
title: How to Get the UndoRedo Description | Syncfusion®
description: Learn how to retrieve descriptions for undo and redo actions using the HistoryManager class's GetUndoDescriptions and GetRedoDescriptions methods.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Get the Undo/Redo Description?

The HistoryManager class has an option to get undo or redo description. You can use the GetUndoDescriptions or RedoDescriptions method to get the desired depth of descriptions available in the history of undo or redo list, respectively. The following code example illustrates this.

{% tabs %}

{% highlight c# %}

string[] strDescriptions;

int nDescWanted = 1;

//Gets an undo description from the undo list.

int nDescReturned = diagram1.Model.HistoryManager.GetUndoDescriptions(nDescWanted, out strDescriptions);

//Gets a redo description from the redo list.

nDescReturned = diagram1.Model.HistoryManager.GetRedoDescriptions(nDescWanted, out strDescriptions);

{% endhighlight %}

{% highlight vbnet %}

Dim strDescriptions() As String

Dim nDescWanted As Integer = 1

'Gets an undo description from the undo list.

Dim nDescReturned As Integer = diagram1.Model.HistoryManager.GetUndoDescriptions(nDescWanted, strDescriptions)

'Gets a redo description from the redo list.

nDescReturned = diagram1.Model.HistoryManager.GetRedoDescriptions(nDescWanted, strDescriptions)

{% endhighlight %}

{% endtabs %}