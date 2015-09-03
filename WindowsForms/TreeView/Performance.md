---
layout: post
title: Performance
description: performance 
platform: WindowsForms
control: TreeView 
documentation: ug
---
# Performance

The TreeViewAdv performance can be improved by the following properties and methods.

_Table_ _918_: Property Table_

<table>
<tr>
<th>
Foreground SettingsTreeViewAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
SuspendExpandRecalculate</td><td>
Improves performance of the TreeViewAdv with large number of nodes. Generally the time taken to populate 5000 child nodes to a root node takes 10 ms. But after setting the SuspendExpandRecalculate property to true, the time taken for populating is decreased to half of its original time i.e, 5 ms. The unnecessary calling of Recalculate dimensions for the child nodes when the Root nodes are collapsed is also reduced.</td></tr>
<tr>
<td>
RecalculateExpansion</td><td>
Indicates if node dimension calculation should be done on load. By default it is true. This property when set to false, greatly improves the performance of the tree nodes on load.</td></tr>
</table>
_Table_ _919_: Methods Table_

<table>
<tr>
<th>
TreeViewAdv Methods</th><th>
Description</th></tr>
<tr>
<td>
BeginUpdate</td><td>
Calling this method will stop the redraws of the control and makes the node addition more faster than normal.</td></tr>
<tr>
<td>
EndUpdate</td><td>
Resumes the painting of the control suspended by BeginUpdate method.</td></tr>
</table>

N> While adding more than one node to the treeViewAdv control, calling the BeginUpdate and EndUpdate method will improve performance of the control.

{% highlight c# %}



this.treeViewAdv1.SuspendExpandRecalculate=true; 



this.treeViewAdv1.BeginUpdate();

//add more number of nodes

'...

this.treeViewAdv1.EndUpdate();

{% endhighlight %}

{% highlight vbnet %}



Me.treeViewAdv1.SuspendExpandRecalculate=True



Me.treeViewAdv1.BeginUpdate()

'add more number of nodes

'...

Me.treeViewAdv1.EndUpdate()

{% endhighlight %}
