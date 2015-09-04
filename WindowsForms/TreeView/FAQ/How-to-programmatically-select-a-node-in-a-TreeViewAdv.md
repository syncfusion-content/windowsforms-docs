---
layout: post
title: How-to-programmatically-select-a-node-in-a-TreeViewAdv-Control
description: how to programmatically select a node in a treeviewadv control
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to programmatically select a node in a TreeViewAdv control

Set the HideSelectionproperty of the TreeViewAdv control to false and use the code snippet shown below.

{% highlight c# %}



//Select the first node under node 1.

this.treeViewAdv1.SelectedNode = this.treeViewAdv1.Nodes[1];

{% endhighlight %}

{% highlight vbnet %}



'Select the first node under node 1.

Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.Nodes(1)

{% endhighlight %}

Setting the HideSelection property to false, ensures that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus. 

