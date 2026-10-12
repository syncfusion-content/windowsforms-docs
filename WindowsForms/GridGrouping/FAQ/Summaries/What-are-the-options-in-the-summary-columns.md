---
layout: post
title: Summary Column Options in WinForms GridGroupingControl | Syncfusion®
description: The available options in summary columns in Syncfusion® WinForms GridGroupingControl, its summary settings, filtering behavior, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# What Are the Summary Column Options in WinForms GridGroupingControl

The options in the summary columns are illustrated using the code below.

{% tabs %}
{% highlight c# %}

//Disables the change of summary value during the filter criteria.

//summaryDescriptor is GridSummaryColumnDescriptor. 

//This ignores filtering of the grid. So, the summary value does not change.
summaryDescriptor.IgnoreRecordFilterCriteria=true;

{% endhighlight  %}

{% highlight vb %}

'Disables the change of summary value during the filter criteria.

'summaryDescriptor is GridSummaryColumnDescriptor. 

'This ignores filtering of the grid. So, the summary value does not change.
summaryDescriptor.IgnoreRecordFilterCriteria=True

{% endhighlight  %}
{% endtabs %}
