---
layout: post
title: Performance in Windows Forms MultiColumn TreeView control | Syncfusion
description: Learn about Performance support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Performance in Windows Forms MultiColumn TreeView

The performance of the MultiColumnTreeView can be improved by using the following properties and methods.

##  SuspendExpandRecalculate

When the `SuspendExpandRecalculate` property is set to true, the populating time nearly reduces to half of its original time by recalculating the nodes maximum height while expanding and collapsing.
The unnecessary calling of Recalculate dimensions for the child nodes when the Root nodes are collapsed is also reduced.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.SuspendExpandRecalculate = true;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.SuspendExpandRecalculate = True

{% endhighlight %}

{% endtabs %}

The below methods can be used to temporarily stop painting of nodes and new nodes can be added to the control in between these methods 

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

