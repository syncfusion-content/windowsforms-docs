---
layout: post
title: How-to-prevent-the-expansion-of-the-collapsed-nodes-when-it-is-been-double-clicked | WindowsForms | Syncfusion
description: how to prevent the expansion of the collapsed nodes when it is been double clicked
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Prevent the Expansion of the Collapsed Nodes when it is been Double Clicked

BeforeExpand event should be handled to prevent the expansion of the collapsed nodes when it is double-clicked.

{% tabs %}
{% highlight c# %}

//The following code will ensure that the node will expand only when clicked on the Node's Expandable 

//button ( that is, the "+" box on the left of the node) and not when clicked on the TreeNodeAdv's text.
private void treeViewAdv1_BeforeExpand(object sender, Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs e)
{
    Point p = this.treeViewAdv1.PointToClient(Control.MousePosition);
    TreeNodeAdv node = this.treeViewAdv1.GetNodeAtPoint(p, true);
    if (node != null)
    {
        if (node.TextBounds.Contains(p))
        {
            e.Cancel = true;
        }
    }
}

{% endhighlight %}

{% highlight vb %}

'The following code will ensure that the node will expand only when clicked on the Node's Expandable 

'button ( that is, the "+" box on the left of the node) and not when clicked on the TreeNodeAdv's text.
Private Sub treeViewAdv1_BeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TreeViewAdvCancelableNodeEventArgs)
Dim p As Point = Me.treeViewAdv1.PointToClient(Control.MousePosition)
Dim node As TreeNodeAdv = Me.treeViewAdv1.GetNodeAtPoint(p, True)
If Not node Is Nothing Then
If node.TextBounds.Contains(p) Then
e.Cancel = True
End If
End If

{% endhighlight %}
{% endtabs %}
