---
layout: post
title: How-to-prevent-drawing-highlight-for-some-nodes | WindowsForms | Syncfusion
description: how to prevent drawing highlight for some nodes
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Prevent Drawing Highlight for Some Nodes

QueryAllowedPositionForNode - An event which will be executed to prevent drawing highlight for some nodes.

{% tabs %}
{% highlight c# %}

//Declaration 
private TreeViewAdvDragHighlightTracker treeViewDragHighlightTracker = null;

//Initialization
this.treeViewDragHighlightTracker = new TreeViewAdvDragHighlightTracker(this.treeViewAdv1);

// This event will let you disable certain drop-positions for certain nodes while dragging.

// Specify the allowed drop positions for the specified highlight node.
private void TreeDragDrop_QueryAllowedPositionsForNode(object sender, QueryAllowedPositionsEventArgs e)
{
    if(!this.IsContinentNode(e.HighlightNode))
    {

// If this a country node, only allow drop above or below it.
    if(e.HighlightNode != this.currentSourceNode)
    e.AllowedPositions = TreeViewDropPositions.AboveNode | TreeViewDropPositions.BelowNode;
    else

// Cannot drop beside itself
    e.AllowedPositions = TreeViewDropPositions.None;
    this.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 2;
    e.ShowSelectionHighlight = false;
    }
    else
    {

// If this is a continent node allow all drop positions (default behavior).
        this.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 4;
        e.ShowSelectionHighlight = 

// Only if the source node is droppable
        this.CanDrop(this.currentSourceNode, e.HighlightNode)

// and droppable ON the node (not beside it)
        && e.NewDropPosition == TreeViewDropPositions.OnNode;
    }
}

{% endhighlight %}

{% highlight vb %}

'Declaration
Private treeViewDragHighlightTracker As TreeViewAdvDragHighlightTracker = Nothing

' Initialization
Me.treeViewDragHighlightTracker = New TreeViewAdvDragHighlightTracker(Me.treeViewAdv1)

'QueryAllowedPositionsForNode
AddHandler treeViewDragHighlightTracker.QueryAllowedPositionsForNode, AddressOf TreeDragDrop_QueryAllowedPositionsForNode

' Specify the allowed drop positions for the specified highlight node.
Private Sub TreeDragDrop_QueryAllowedPositionsForNode(ByVal sender As Object, ByVal e As QueryAllowedPositionsEventArgs)
If (Not Me.IsContinentNode(e.HighlightNode)) Then

' If this a country node, only allow drop above or below it.
If Not e.HighlightNode Is Me.currentSourceNode Then
e.AllowedPositions = TreeViewDropPositions.AboveNode Or TreeViewDropPositions.BelowNode
Else

' Cannot drop beside itself
e.AllowedPositions = TreeViewDropPositions.None
End If
Me.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 2
e.ShowSelectionHighlight = False
Else

' If this is a continent node allow all drop positions (default behavior).
Me.treeViewDragHighlightTracker.EdgeSensitivity = e.HighlightNode.Bounds.Height / 4

' Only if the source node is droppable

' and droppable ON the node (not beside it)
e.ShowSelectionHighlight = Me.CanDrop(Me.currentSourceNode, e.HighlightNode) AndAlso e.NewDropPosition = TreeViewDropPositions.OnNode
End If
End Sub

{% endhighlight %}
{% endtabs %}
