---
layout: post
title: How-to-retrieve-a-summary-item | Windows Forms | Syncfusion
description: how to retrieve a summary item
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to retrieve a summary item

The following code shows how to retrieve a summary item.

{% highlight c# %}



//summaryColumnDescriptor is GridSummaryColumnDescriptor. 

string item=GridEngine.GetSummaryText(this.gridGroupingControl1.Table.TopLevelGroup,summaryColumnDescriptor)

{% endhighlight  %}

{% highlight vbnet %}



'summaryColumnDescriptor is GridSummaryColumnDescriptor. 

Dim item As String = GridEngine.GetSummaryText(Me.gridGroupingControl1.Table.TopLevelGroup, summaryColumnDescriptor)


{% endhighlight  %}
