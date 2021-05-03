---
layout: post
title: How to Sort all the Nodes in the TreeViewAdv | Syncfusion
description: how to sort all the nodes in Syncfusion Windows Forms treeviewadv control, its elements and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Sort all the Nodes in the TreeViewAdv Control

This can be done by setting the SortWithChildNodes property to true.

Property Table

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
SortWithChildNodes</td><td>
This indicates the sorting of all nodes including child nodes.</td></tr>
</table>


If the SortWithChildNodes property is set to true, the user can sort all the nodes including the child nodes in the TreeViewAdv. The SortOrder should be specified for the sorting of all the nodes.

{% tabs %}
{% highlight c# %}

private void button1_Click(object sender, System.EventArgs e)
{

// Sorts only the root nodes.
   this.treeViewAdv1.Nodes.Sort();
}
private void button2_Click_1(object sender, System.EventArgs e)
{

// Sorts all the nodes in the tree.
   this.treeViewAdv1.Root.SortOrder=SortOrder.Ascending;
   this.treeViewAdv1.SortWithChildNodes=true;
   this.treeViewAdv1.Root.Sort();
}

{% endhighlight %}

{% highlight vb %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

' Sorts only the root nodes.
Me.treeViewAdv1.Nodes.Sort()
End Sub
Private Sub button2_Click_1(ByVal sender As Object, ByVal e As System.EventArgs)

' Sorts all the nodes in the tree.
Me.treeViewAdv1.Root.SortOrder=SortOrder.Ascending
Me.treeViewAdv1.SortWithChildNodes=True
Me.treeViewAdv1.Root.Sort()
End Sub

{% endhighlight %}
{% endtabs %}

Given below is a screen shot of sorting the nodes in ascending order.

![How-to-Sort-all-the-nodes-in-the-TreeViewAdv-contr_img1](How-to-Sort-all-the-nodes-in-the-TreeViewAdv-contr_images/How-to-Sort-all-the-nodes-in-the-TreeViewAdv-contr_img1.jpeg)

{% seealso %}
Sorting
{% endseealso %}

