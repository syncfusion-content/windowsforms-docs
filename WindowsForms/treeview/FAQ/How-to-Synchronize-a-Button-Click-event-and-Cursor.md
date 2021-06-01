---
 layout: post
title: How-to-Synchronize-a-Button-Click-event-and-Cursor-Position-on-a-Node-in-TreeViewAdv | WindowsForms | Syncfusion
description: how to synchronize a button click event and cursor position on a node in treeviewadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Synchronize a Button Click Event and Cursor Position on a Node in TreeViewAdv

When the button is clicked, the mouse cursor can be positioned appropriately on the respective node by getting the coordinates of the TreeNodeAdv and using the PointToScreen method of TreeViewAdv.

{% tabs %}
{% highlight c# %}

private Point MousePointer(TreeNodeAdv node)
{

// Provides the coordinates of the top-left corner of a TreeNodeAdv in terms of screen coordinates.
    Point point = this.treeViewAdv1.PointToScreen(this.treeViewAdv1.NodeToPoint(node));
    point = new Point (point.X+node.NodeX, point.Y);
    return point;
}
private void button1_Click(object sender, System.EventArgs e)
{  

// Coding for the cursor position when a button is clicked.
    Cursor.Position = this.MousePointer (this.treeViewAdv1.Nodes[0]);
}

{% endhighlight %}

{% highlight vb %}

Private Function MousePointer(ByVal node As TreeNodeAdv) As Point

' Provides the coordinates of the top-left corner of a TreeNodeAdv in terms of screen coordinates.
Dim point As Point = Me.treeViewAdv1.PointToScreen(Me.treeViewAdv1.NodeToPoint(node))
point = New Point (point.X+node.NodeX, point.Y)
Return point
End Function
Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click

' Coding for the cursor position when a button is clicked.
Cursor.Position = Me.MousePointer (Me.treeViewAdv1.Nodes(0))
End Sub

{% endhighlight %}
{% endtabs %}
