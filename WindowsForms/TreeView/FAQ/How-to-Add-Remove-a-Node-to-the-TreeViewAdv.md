---
layout: post
title: How-to-Add--Remove-a-Node-to-the-TreeViewAdv | WindowsForms | Syncfusion
description: how to add / remove a node to the treeviewadv
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Add / Remove a Node to the TreeViewAdv

Nodes in the TreeViewAdv can be added by specifying the index and also they can be added using the Keyboard. The following section briefs both the scenario.

Adding nodes into the TreeViewAdv at a specific index

By declaring the new node object outside the control and by using the Insert method, a node can be added to the TreeViewAdv at the specific index.

{% highlight c# %}



// Declare the new node object. 

Syncfusion.Windows.Forms.Tools.TreeNodeAdv NewNode=new Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node"); 

private void button1_Click(object sender, System.EventArgs e) 

{ 

    TreeNodeAdv NewNode=new TreeNodeAdv(); 



    // Use Insert method to add nodes at particular index.

    this.treeViewAdv1.Nodes.Insert(2, NewNode); 

}

{% endhighlight %}

{% highlight vbnet %}



'Declare the new node object. 

Private NewNode As Syncfusion.Windows.Forms.Tools.TreeNodeAdv = New Syncfusion.Windows.Forms.Tools.TreeNodeAdv("Inserted Node") 

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

    Dim NewNode As TreeNodeAdv = New TreeNodeAdv() 



    ' Use Insert method to add nodes at particular index.

    Me.treeViewAdv1.Nodes.Insert(2, NewNode) 

End Sub
 
{% endhighlight %}

N> Nodes can also be added using Nodes.Add method.

Removing a node from the TreeView

Specific nodes can be removed using Nodes.Remove method as follows.

{% highlight c# %}



//Remove the selected node

private void button3_Click(object sender, System.EventArgs e)

{

    this.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(this.treeViewAdv1.SelectedNode);

}

{% endhighlight %}

{% highlight vbnet %}



'Remove the selected node

Private Sub button3_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    Me.treeViewAdv1.SelectedNode.Parent.Nodes.Remove(Me.treeViewAdv1.SelectedNode)

End Sub

{% endhighlight %}

{% seealso %}

KeyDownEvent

{% endseealso %}



