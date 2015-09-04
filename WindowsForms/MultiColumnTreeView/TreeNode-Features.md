---
layout: post
title: TreeNode-Features
description: Concepts and Features
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---
# TreeNode Features

This section discusses the following topics.

* Primitives- Discusses various primitives available for the tree nodes. 
* Node Images - Discusses how to set the left, right and state images and also concepts like overlaying the images on the existing images. 
   * Left, Right and State Images
   * Expand and Collapse Image
   * Line Images
   * Image Overlaying - This feature can be only applicable for the first column or the tree structure. 
   * Plus Sign On ExpandMode 

N> The below properties can be applied only to the first column among the multiple columns._ 

  * Checkbox and Option buttons - This section illustrates how to set the checkbox and option buttons for the tree nodes. 
  * Multiline Support - This section discusses about the multiline support to the nodes. 
  * Custom Controls - Illustrates the addition of CustomControls to the nodes in the control. 
  

## MultiLine Support

TreeNodeAdv has multiline text option for each node by using the Multiline property. This can be set through 
NodeCollection Editor. We need to adjust the default Node height value to make it effective.

_Table 529: Property Table_

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

Figure : MultiLine Support Illustrated