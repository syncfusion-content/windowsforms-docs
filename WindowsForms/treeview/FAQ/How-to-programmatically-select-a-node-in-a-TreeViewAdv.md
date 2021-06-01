---
 layout: post
title: How-to-programmatically-select-a-node-in-a-TreeViewAdv-Control | WindowsForms | Syncfusion
description: how to programmatically select a node in a treeviewadv control
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to programmatically select a Node in a TreeViewAdv control
 
In TreeViewAdv, Node can be selected programmatically using SelectedNode property.
 
{% tabs %}
{% highlight C# %}
 
//Here selecting the first node under node 1.
this.treeViewAdv1.SelectedNode = this.treeViewAdv1.Nodes[1];
 
// HideSelection is used to ensure that the node remains selected, even when the TreeViewAdv control does not have focus.
this.treeViewAdv1.HideSelection = false;
 
{% endhighlight %}
 
{% highlight VB %}
 
'SelectedNode indicates the selected node of the TreeViewAdv. Select the first node under node 1.
Me.treeViewAdv1.SelectedNode = Me.treeViewAdv1.Nodes(1)
 
' HideSelection is used to ensure that the node remains selected, even when the TreeViewAdv control loses focus or does not have focus.
Me.treeViewAdv1.HideSelection = false
 
{% endhighlight %}
{% endtabs %}