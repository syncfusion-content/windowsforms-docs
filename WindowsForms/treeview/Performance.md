---
layout: post
title: Performance in Windows Forms TreeView control | Syncfusion®
description: Learn about Performance support in Syncfusion® Windows Forms TreeView control, its elements and more details.
platform: WindowsForms
control: TreeView 
documentation: ug
---
# Performance in Windows Forms TreeView

WinForms TreeViewAdv performance can be improved by the following properties and methods.

## EnableVirtualization

In TreeViewAdv, loading 20,000 nodes can take nearly 60 seconds. Since this is a considerable delay, the `EnableVirtualization` property can be used to mitigate it. When `EnableVirtualization` is set to `true`, the parent nodes are added by scrolling the vertical scrollbar, and the child nodes are added when the corresponding parent node is expanded.

## SuspendExpandRecalculate

Improves the performance of the TreeViewAdv when it contains a large number of nodes. Generally, populating 5,000 child nodes under a root node takes about 10 milliseconds. After setting the `SuspendExpandRecalculate` property to `true`, the time required is roughly halved to 5 milliseconds. The unnecessary calling of Recalculate dimensions for child nodes when the root nodes are collapsed is also reduced.

## RecalculateExpansion

By default, this property is `true`. When set to `false`, it greatly improves the performance of the tree nodes on load.


<b>Property Table</b>

<table>
<tr>
<th>
TreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
EnableVirtualization</td><td>
Indicate whether virtualization support is enabled or not</td></tr>
<tr>
<td>
SuspendExpandRecalculate</td><td>
Indicate whether the Recalculation of the Nodes maximum height should be done while expanding or collapsing</td></tr>
<tr>
<td>
RecalculateExpansion</td><td>
Indicates if node dimension calculation should be done on load.</td></tr>
</table>

Methods Table

<table>
<tr>
<th>
TreeViewAdv Methods</th><th>
Description</th></tr>
<tr>
<td>
BeginUpdate</td><td>
Calling this method stops the redraws of the control and makes node addition faster than normal.</td></tr>
<tr>
<td>
EndUpdate</td><td>
Resumes the painting of the control suspended by the BeginUpdate method.</td></tr>
</table>

> Note
> 
> While adding more than one node to the treeViewAdv control, calling the `BeginUpdate` and `EndUpdate` method will improve performance of the control.

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.SuspendExpandRecalculate=true; this.treeViewAdv1.EnableVirtualization = true;
this.treeViewAdv1.BeginUpdate();
for (int i = 1; i <= 20000; i++)
	{
        TreeNodeAdv treeNode = new TreeNodeAdv("Parent " + i);
        treeViewAdv1.Nodes.Add(treeNode);
    }
this.treeViewAdv1.EndUpdate();


{% endhighlight %}

{% highlight vb %}

Me.treeViewAdv1.SuspendExpandRecalculate=True
Me.treeViewAdv1.EnableVirtualization = True
Me.treeViewAdv1.BeginUpdate()

'add more number of nodes

'...
Me.treeViewAdv1.EndUpdate()

{% endhighlight %}
{% endtabs %}
