---
layout: post
title: How-to-Add--Remove-a-Node-to-the-TreeViewAdv | WindowsForms | Syncfusion
description: how to add / remove a node to the treeviewadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Add/Remove a Node to the TreeViewAdv

Nodes in the TreeViewAdv can be added by specifying the index and also they can be added using the Keyboard. The following section briefs both the scenario.

Adding nodes into the TreeViewAdv at a specific index

By declaring the new node object outside the control and by using the Insert method, a parent node and child can be added to the TreeViewAdv at the specific index.

## Adding a Parent node to the TreeViewAdv

A new object for parent node can be created to insert it at the specific index in the TreeViewAdv using the Insert method.

{% tabs %}
{% highlight c# %}

// Declare the new node object. 
Syncfusion.Windows.Forms.Tools.TreeNodeAdv NewParentNode=new Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node"); 
private void button1_Click(object sender, System.EventArgs e) 
{ 
    TreeNodeAdv NewParentNode=new TreeNodeAdv(); 

// Use Insert method to add nodes at particular index.
    this.treeViewAdv1.Nodes.Insert(2, NewParentNode); 
}

{% endhighlight %}

{% highlight vb %}

'Declare the new node object. 
Private NewNode As Syncfusion.Windows.Forms.Tools.NewParentNode = New Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node") 
Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 
    Dim NewParentNode As TreeNodeAdv = New TreeNodeAdv() 

' Use Insert method to add nodes at particular index.
    Me.treeViewAdv1.Nodes.Insert(2, NewParentNode) 
End Sub
 
{% endhighlight %}
{% endtabs %}

![Adding a parent node from the TreeViewAdv](Frequenty-Asked-Questions_images/TreeView-Add-ParentNode.gif)

## Adding a Child node to the TreeViewAdv

A new object for child node can be created to insert it at the specific index in the TreeViewAdv using the Insert method.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, EventArgs e)
{
TreeNodeAdv NewChildNode = new TreeNodeAdv();

// Use Insert method to add nodes at particular index.
this.treeView1.Nodes[0].Nodes.Insert(0, NewChildNode);
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim NewChildNode As TreeNodeAdv = New TreeNodeAdv()
    Me.treeView1.Nodes(0).Nodes.Insert(0, NewChildNode)
End Sub

{% endhighlight %}
{% endtabs %}

![Adding a child node from the TreeViewAdv](Frequenty-Asked-Questions_images/TreeView-Add-ChildNode.gif)

N> Nodes can also be added using Nodes.Add method.

## Removing a node from the TreeViewAdv

A selected node can be removed irrespective of parent or child node using Nodes. Remove method as follow

{% tabs %}
{% highlight c# %}

//Remove the selected node
private void button3_Click(object sender, System.EventArgs e)
{
    this.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(this.treeViewAdv1.SelectedNode);
}

{% endhighlight %}

{% highlight vb %}

'Remove the selected node
Private Sub button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    Me.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(Me.treeViewAdv1.SelectedNode)
End Sub

{% endhighlight %}
{% endtabs %}

![Removing a node from the TreeViewAdv](Frequenty-Asked-Questions_images/TreeView_Remove.gif)

{% seealso %}

KeyDownEvent

{% endseealso %}
