---
layout: post
title: How-to-Scroll-A-Node-Into-View | WindowsForms | Syncfusion
description: how to scroll a node into view
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Scroll A Node Into View

This section illustrates how a particular node can be scrolled into view if it is hidden because its parent is hidden or because the scrollbar has scrolled it out of view.

Methods Table

<table>
<tr>
<th>
TreeViewAdv Methods</th><th>
Description</th></tr>
<tr>
<td>
BringIntoView</td><td>
To bring a node into view by expanding its parents and also bringing it into the viewable area if scrolled, use the TreeNodeAdv.BringIntoView method. </td></tr>
<tr>
<td>
EnsureVisible</td><td>
To bring an already visible node into the viewable area when scrolled, use the TreeViewAdv.EnsureVisible method. </td></tr>
<tr>
<td>
EnsureVisible</td><td>
To bring an already visible node into viewable area when scrolled, and also make it the top-most visible node, use this overload of the TreeViewAdv.EnsureVisible method. </td></tr>
</table>

{% tabs %}
{% highlight c# %}

treeNodeAdv.BringIntoView();
this.treeViewAdv1.EnsureVisible(treeNodeAdv);
this.treeViewAdv1.EnsureVisible(treeNodeAdv, true);

{% endhighlight %}

{% highlight vb %}

treeNodeAdv.BringIntoView()
Me.TreeViewAdv1.EnsureVisible(treeNodeAdv)
Me.TreeViewAdv1.EnsureVisible(treeNodeAdv, True)

{% endhighlight %}
{% endtabs %}
