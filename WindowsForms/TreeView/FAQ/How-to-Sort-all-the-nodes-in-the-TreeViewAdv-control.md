---
layout: post
title: How-to-Sort-all-the-nodes-in-the-TreeViewAdv-control
description: how to sort all the nodes in the treeviewadv control
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Sort all the nodes in the TreeViewAdv control

This can be done by setting the SortWithChildNodes property to true.

_Table_ _947_: _Property Table_

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

{% highlight vbnet %}



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

Given below is a screen shot of sorting the nodes in ascending order.

![](How-to-Sort-all-the-nodes-in-the-TreeViewAdv-contr_images/How-to-Sort-all-the-nodes-in-the-TreeViewAdv-contr_img1.jpeg)


{% seealso %}
Sorting
{% endseealso %}



