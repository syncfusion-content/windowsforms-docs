---
layout: post
title: How-to-expand-or-collapse-all-the-child-nodes-of-a-particular-node | WindowsForms | Syncfusion
description: how to expand or collapse all the child nodes of a particular node
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Expand or Collapse all the Child Nodes of a Particular Node

All the treeview nodes can be collapsed by calling the TreeViewAdv.CollapseAll method. For individual nodes, call Node.Collapse method.

{% tabs %}
{% highlight c# %}

//Collapse all nodes in the TreeViewAdv
private void button1_Click(object sender, System.EventArgs e)
{
    this.treeViewAdv1.CollapseAll();
}

// Expand all nodes in the TreeViewAdv
private void button2_Click(object sender, System.EventArgs e)
{
    this.treeViewAdv1.ExpandAll();
}

// Collapse all child nodes under a Node0
private void button3_Click(object sender, System.EventArgs e)
{
    TreeNodeAdv node = this.treeViewAdv1.Nodes[0];
    node.CollapseAll();
}

// Expand all child nodes under a Node0
private void button4_Click(object sender, System.EventArgs e)
{
    TreeNodeAdv node = this.treeViewAdv1.Nodes[0];
    node.ExpandAll();
}

{% endhighlight %}

{% highlight vb %}

'Collapse all nodes in the TreeViewAdv
Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
Me.treeViewAdv1.CollapseAll()
End Sub

' Expand all nodes in the TreeViewAdv
Private Sub button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
Me.treeViewAdv1.ExpandAll()
End Sub

' Collapse all child nodes under a Node0
Private Sub button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
Dim node As TreeNodeAdv = Me.treeViewAdv1.Nodes(0)
node.CollapseAll()
End Sub

' Expand all child nodes under a Node0
Private Sub button4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
Dim node As TreeNodeAdv = Me.treeViewAdv1.Nodes(0)
node.ExpandAll()
End Sub

{% endhighlight %}
{% endtabs %}
