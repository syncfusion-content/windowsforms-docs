---
layout: post
title: History Manager in Windows Forms TreeView control | Syncfusion
description: Learn about History Manager support in Syncfusion Windows Forms TreeView control, its elements and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# History Manager in Windows Forms TreeView

## Undo and Redo

The actions can be recorded into the history manager such that the undo and redo operations can be performed. The recording can be controlled, and the undo and redo actions can be performed using the following tools.

<b>Property Table</b>
<table>
<tr>
<th>
TreeViewAdv Property</th><th>
Description</th></tr><tr><td>
HistoryManager</td><td>
To record the actions performed</td></tr>
</table>

<b>HistoryManager Method Table</b>

<table>
<tr>
<th>
HistoryManager Tool</th><th>
Description</th></tr><tr><td>
Undo</td><td>
Undo the previous action.</td></tr><tr><td>
Redo</td><td>
Redo the previous action. Redo action can be performed only after an undo action.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.HistoryManager.Undo();
this.treeViewAdv1.HistoryManager.Redo();

{% endhighlight %}
{% highlight vb %}
		
Me.treeViewAdv1.HistoryManager.Undo()
Me.treeViewAdv1.HistoryManager.Redo()	

{% endhighlight %}
{% endtabs %}
