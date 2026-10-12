---
layout: post
title: Retrieve a Summary Item in WinForms GridGroupingControl | Syncfusion®
description: Retrieve a summary item in Syncfusion® WinForms GridGroupingControl, its summary text, summary descriptors, aggregate values, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Retrieve a Summary Item in WinForms GridGroupingControl

The following code shows how to retrieve a summary item.

{% tabs %}
{% highlight c# %}

//summaryColumnDescriptor is GridSummaryColumnDescriptor. 
string item=GridEngine.GetSummaryText(this.gridGroupingControl1.Table.TopLevelGroup,summaryColumnDescriptor)

{% endhighlight  %}

{% highlight vb %}

'summaryColumnDescriptor is GridSummaryColumnDescriptor. 
Dim item As String = GridEngine.GetSummaryText(Me.gridGroupingControl1.Table.TopLevelGroup, summaryColumnDescriptor)

{% endhighlight  %}
{% endtabs %}