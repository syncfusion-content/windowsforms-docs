---
layout: post
title: How-to-programmatically-select-a-node-in-a-TreeViewAdv-Control | WindowsForms | Syncfusion
description: how to programmatically select a node in a treeviewadv control
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to programmatically select a Node in a TreeViewAdv control

The particular node of a TreeViewAdv can be selected programmatically by setting the `SelectedNode` property. Also it is used to retrieve the selected node. The following code snippet illustrates the same. 

{% tabs %}
{% highlight C# %}

//SelectedNode indicates the selected node of the TreeViewAdv. Select the first node under node 1. 
this.treeViewAdv1.SelectedNode = this.treeViewAdv1.Nodes[1];

// HideSelection is used to ensure that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus.
this.treeViewAdv1.HideSelection = false;

{% endhighlight %}

{% highlight VB %}

'SelectedNode indicates the selected node of the TreeViewAdv. Select the first node under node 1. 
Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.Nodes(1)

' HideSelection is used to ensure that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus.
Me.treeViewAdv1.HideSelection = false

{% endhighlight %}
{% endtabs %}

N> Set the `HideSelection` property of the TreeViewAdv control to false, ensures that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus. 