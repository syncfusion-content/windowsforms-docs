---
layout: post
title: MultiLine Support
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---

# MultiLine Support


TreeNodeAdv has multiline text option for each node by using the Multiline property. This can be set through NodeCollection Editor. We need to adjust the default Node height value to make it effective.

_Table_ _529__: Property Table_

<table>
<tr>
<td>
TreeNodeAdv Property</td><td>
Description</td></tr>
<tr>
<td>
Multiline</td><td>
Specifies if the node text is drawn as multiple text or single line.</td></tr>
</table>


The node text should be provided through code as shown in the code snippet below.

{% highlight C# %}  



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





