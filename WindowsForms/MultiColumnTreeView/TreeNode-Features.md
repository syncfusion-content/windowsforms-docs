---
layout: post
title: TreeNode-Features | Windows Forms | Syncfusion
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---
# TreeNode Features

This section discusses the following topics.

* [Primitives](/windowsforms/treeview/treenode-features#primitives)- Discusses various primitives available for the tree nodes. 
* [Node Images](/windowsforms/treeview/treenode-features#node-images) - Discusses how to set the left, right and state images and also concepts like overlaying the images on the existing images. 
   * [Left, Right and State Images](/windowsforms/treeview/treenode-features#left-right-and-state-images)
   * [Expand and Collapse Image](/windowsforms/treeview/treenode-features#expand-and-collapse-image)
   * [Line Images](/windowsforms/treeview/treenode-features#line-images)
   * [Image Overlaying](/windowsforms/treeview/treenode-features#image-overlaying) - This feature can be only applicable for the first column or the tree structure. 
   * [Plus Sign On ExpandMode ](/windowsforms/treeview/treenode-features#plus-sign-on-expandmode)

N> The below properties can be applied only to the first column among the multiple columns._ 

  * [Checkbox and Option buttons](/windowsforms/treeview/treenode-features#checkbox-and-option-buttons) - This section illustrates how to set the checkbox and option buttons for the tree nodes. 
  * Multiline Support - This section discusses about the multiline support to the nodes. 
  * [Custom Controls](/windowsforms/treeview/treenode-features#custom-controls) - Illustrates the addition of CustomControls to the nodes in the control. 
  

## MultiLine Support

TreeNodeAdv has multiline text option for each node by using the Multiline property. This can be set through 
NodeCollection Editor. We need to adjust the default Node height value to make it effective.



<table>
<tr>
<th>
TreeNodeAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Multiline</td><td>
Specifies if the node text is drawn as multiple text or single line.</td></tr>
</table>


The node text should be provided through code as shown in the code snippet below.

{% highlight c# %} 

treeNodeAdv1.Multiline = true;

treeNodeAdv1.Height = 100;

treeNodeAdv1.Text = "ICC \n World \n Cup \n 2007";

{% endhighlight %}



{% highlight vbnet %} 

treeNodeAdv1.Multiline = True

treeNodeAdv1.Height = 100

treeNodeAdv1.Text = "ICC \n World \n Cup \n 2007"

{% endhighlight %}



The below image displays a node with multiline property set.

![](TreeNode-Features_images/TreeNode-Features_img2.jpeg) 

