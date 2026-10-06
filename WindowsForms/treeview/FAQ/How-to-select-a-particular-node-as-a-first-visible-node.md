---
layout: post
title: How to Select the First Visible Node in WinForms | Syncfusion
description: Learn how to select a first visible node in Syncfusion® Windows Forms TreeViewAdv control and keep a particular node visible by scrolling it into view.
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to Select a First Visible Node in Windows Forms TreeViewAdv

This can be done by using the code snippet given below. This will allow the user to make a particular node as the first visible node. The EnsureVisibleSelectedNode property will help the user to bring the invisible node into a visible state by scrolling the ScrollBar to the SelectedNode, if necessary.

Property Table

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
EnsureVisibleSelectedNode</td><td>
Indicates if the selected node will be brought to view by scrolling if necessary.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e) 
{ 
    this.treeViewAdv1.SelectedNode=this.treeViewAdv1.LastVisibleNode; 
    this.treeViewAdv1.SelectedNode=this.treeViewAdv1.Nodes[3]; 

// Setting EnsureVisibleSelectedNode property to true, makes a particular selected node as the first visible node. 
    this.treeViewAdv1.EnsureVisibleSelectedNode=true; 
} 

{% endhighlight %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) 
Me.treeViewAdv1.SelectedNode=Me.treeViewAdv1.LastVisibleNode 
Me.treeViewAdv1.SelectedNode=Me.treeViewAdv1.Nodes(3) 

' Setting EnsureVisibleSelectedNode property to true, makes a particular selected node as the first visible node. 
Me.treeViewAdv1.EnsureVisibleSelectedNode=True 
End Sub 

{% endhighlight %}
{% endtabs %}
