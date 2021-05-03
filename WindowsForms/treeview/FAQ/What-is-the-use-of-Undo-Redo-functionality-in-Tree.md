---
layout: post
title: Use of Undo/ Redo functionality in TreeViewAdv | Syncfusion
description: Learn about What is the use of Undo/ Redo functionality using HistoryManager property in Syncfusion Windows Forms TreeView and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# Use of Undo/ Redo functionality in Windows Forms TreeViewAdv 

This page explains Use of Undo/ Redo functionality in TreeViewAdv in Windows Forms and more details.

## What is the use of Undo/ Redo functionality in TreeViewAdv using HistoryManager property in Windows Forms TreeView

The undo / redo functionality of a tree node lets you delete a node, add a node, edit a node's text and drag / drop a node using the HistoryManager.

{% tabs %}
{% highlight c# %}

/*The user should get the HistoryManager to use and then the HistoryEnabled property 

should be set to true. The HistoryManager plays the role in the Undo/Redo actions.

1. Deleting a node

2. Adding a node

3. Editing node's Text

4. Drag/drop of a node*/

private void barItem1_Click(object sender, System.EventArgs e)
{
    if (this.treeViewAdv1.HistoryManager.CanUndo == true)
    {
        this.treeViewAdv1.HistoryManager.Undo();
    }
}
private void barItem2_Click(object sender, System.EventArgs e)
{
    if (this.treeViewAdv1.HistoryManager.CanRedo == true)
    {
        this.treeViewAdv1.HistoryManager.Redo();
    }
} 

{% endhighlight %}

{% highlight vb %}

'The user should get the HistoryManager to use and then the HistoryEnabled property 

'should be set to true. The HistoryManager plays the role in the Undo/Redo actions .

'1. Deleting a node

'2. Adding a node

'3. Editing node's Text

'4. Drag/drop of a node

Private Sub barItem1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
If Me.treeViewAdv1.HistoryManager.CanUndo = True Then
Me.treeViewAdv1.HistoryManager.Undo()
End If
End Sub
Private Sub barItem2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
If Me.treeViewAdv1.HistoryManager.CanRedo = True Then
Me.treeViewAdv1.HistoryManager.Redo()
End If
End Sub

{% endhighlight %}
{% endtabs %}
