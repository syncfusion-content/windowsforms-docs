---
layout: post
title: How-to-select-all-the-nodes-in-a-TreeViewAdv-Control | Windows Forms | Syncfusion
description: how to select all the nodes in a treeviewadv control
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to select all the nodes in a TreeViewAdv Control

You could select all the nodes in the TreeViewAdv control by recursively traversing through all the child nodes under each of the parent nodes at the top level as shown in the code below.

{% highlight c# %}



// Checking for all the root nodes in the tree.

foreach (TreeNodeAdv node in this.treeViewAdv1.Root.Nodes)

{

this.treeViewAdv1.SelectedNodes.Add(node);

TreeNodeAdv lastNode = node.LastNode;

while (lastNode != null)

{

  // The selection is extended to the last node of the tree.

this.treeViewAdv1.ExtendSelectionTo(lastNode);

lastNode = lastNode.LastNode;

}                        

}

{% endhighlight %}

{% highlight vbnet %}



Dim node As TreeNodeAdv

' Checking for all the root nodes in the tree.

For Each node In  Me.treeViewAdv1.Root.Nodes

    Me.treeViewAdv1.SelectedNodes.Add(node)

    Dim lastNode As TreeNodeAdv = node.LastNode

    While Not (lastNode Is Nothing)

        ' The selection is extended to the last node of the tree.

        Me.treeViewAdv1.ExtendSelectionTo(lastNode)

        lastNode = lastNode.LastNode

    End While

Next node

{% endhighlight %}

![](How-to-select-all-the-nodes-in-a-TreeViewAdv-Contr_images/How-to-select-all-the-nodes-in-a-TreeViewAdv-Contr_img1.jpeg)



