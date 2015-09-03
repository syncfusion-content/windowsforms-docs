---
layout: post
title: How-to-retrieve-a-summary-item
description: how to retrieve a summary item
platform: WindowsForms
control: How To
documentation: ug
---

# How to retrieve a summary item

The following code shows how to retrieve a summary item.

{% highlight c# %}



//sd is GridSummaryColumnDescriptor. 

string item=GridEngine.GetSummaryText(this.gridGroupingControl1.Table.TopLevelGroup,sd)

{% endhighlight  %}

{% highlight vbnet %}



'sd is GridSummaryColumnDescriptor. 

Dim item As String = GridEngine.GetSummaryText(Me.gridGroupingControl1.Table.TopLevelGroup, sd)


{% endhighlight  %}
