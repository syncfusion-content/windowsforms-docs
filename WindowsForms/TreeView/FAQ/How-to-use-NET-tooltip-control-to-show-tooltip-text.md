---
layout: post
title: How-to-use-NET-tooltip-control-to-show-tooltip-text | WindowsForms | Syncfusion
description: how to use .net tooltip control to show tooltip text for nodes in treeviewadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Use .NET Tooltip Control to Show Tooltip Text for Nodes in TreeViewAdv

This can be achieved by using SetToolTip method in MouseHover event of the TreeViewAdv. 

Here is the code snippet that illustrates this.

{% tabs %}
{% highlight c# %}

private void treeViewAdv1_MouseHover(object sender, EventArgs e)
{
    Point ptInTree = this.treeViewAdv1.PointToClient(new Point(MousePosition.X, MousePosition.Y));

// Get the node at the point where mouse pointer is located
    TreeNodeAdv node = this.treeViewAdv1.GetNodeAtPoint(ptInTree);
    if (node.TextBounds.Contains(treeViewAdv1.PointToClient(Control.MousePosition)))
    {
        this.toolTip1.SetToolTip(this.treeViewAdv1, node.Text);
    }
    else
    {
        this.toolTip1.SetToolTip(this.treeViewAdv1, "");
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub treeViewAdv1_MouseHover(ByVal sender As Object, ByVal e As EventArgs)
Dim ptInTree As Point = Me.treeViewAdv1.PointToClient(New Point(MousePosition.X, MousePosition.Y))

' Get the node at the point where mouse pointer is located
Dim node As TreeNodeAdv = Me.treeViewAdv1.GetNodeAtPoint(ptInTree)
If node.TextBounds.Contains(treeViewAdv1.PointToClient(Control.MousePosition)) Then
Me.toolTip1.SetToolTip(Me.treeViewAdv1, node.Text)
Else
Me.toolTip1.SetToolTip(Me.treeViewAdv1, "")
End If
End Sub

{% endhighlight %}
{% endtabs %}
