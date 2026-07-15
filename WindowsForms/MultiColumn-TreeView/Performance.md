---
layout: post
title: Performance in Windows Forms MultiColumn TreeView control | Syncfusion®
description: Learn about Performance support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Performance in Windows Forms MultiColumn TreeView

The performance of the MultiColumnTreeView can be improved by using the following properties and methods.

##  SuspendExpandRecalculate

When the `SuspendExpandRecalculate` property is set to `true`, the populating time is nearly halved by recalculating the maximum height of the nodes only while expanding and collapsing.
This also reduces the unnecessary recalculation of dimensions for child nodes when the root nodes are collapsed.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.SuspendExpandRecalculate = true;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.SuspendExpandRecalculate = True

{% endhighlight %}

{% endtabs %}

The following methods can be used to temporarily stop painting of nodes so that new nodes can be added to the control in between these calls.

<table>
<tr>
<th>
MultiColumnTreeView Methods</th><th>
Description</th></tr>
<tr>
<td>
BeginUpdate</td><td>
Calling this method will stop the redraws of the control and makes the node addition faster than normal.</td></tr>
<tr>
<td>
EndUpdate</td><td>
Resumes the painting of the control suspended by BeginUpdate method.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeginUpdate();

//Add more node here

this.multiColumnTreeView1.EndUpdate();

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.BeginUpdate()

' Add more node here

Me.multiColumnTreeView1.EndUpdate()

{% endhighlight %}

{% endtabs %}

