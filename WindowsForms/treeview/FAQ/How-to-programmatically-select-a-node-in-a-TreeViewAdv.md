---
layout: post
title: How to Programmatically Select a Node in Windows Forms TreeViewAdv | Syncfusion
description: Learn how to programmatically select a node in Syncfusion® Windows Forms TreeViewAdv control by setting the SelectedNode property.
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to Programmatically Select a Node in Windows Forms TreeViewAdv
 
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