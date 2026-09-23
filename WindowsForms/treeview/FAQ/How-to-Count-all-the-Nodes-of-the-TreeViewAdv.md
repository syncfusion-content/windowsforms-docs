---
layout: post
title: How-to-Count-all-the-Nodes-of-the-TreeViewAdv | WindowsForms
description: Learn how to count all nodes in a TreeViewAdv control using the GetNodeCount method, including child nodes and subtrees.
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to Count all the Nodes of the TreeViewAdv

The user can get the total number of nodes by calling the GetNodeCount method with the bool argument, which indicates whether the count includes the sub trees or not. If the value passed is true, then it will count the nodes with the sub trees also.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, System.EventArgs e) 
{ 
// Call the tree controls "GetNodeCount" method with true to 

// get the total number of nodes in the tree. 
   int TotalNodesInTree = this.treeViewAdv1.GetNodeCount( true ); 
   MessageBox.Show( "Total nodes in tree = " + TotalNodesInTree.ToString()); 
} 

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

' Call the tree controls "GetNodeCount" method with true to 

' get the total number of nodes in the tree. 
Dim TotalNodesInTree As Integer = Me.treeViewAdv1.GetNodeCount(True) 
MessageBox.Show("Total nodes in tree = " & TotalNodesInTree.ToString()) 
End Sub 

{% endhighlight %}
{% endtabs %}