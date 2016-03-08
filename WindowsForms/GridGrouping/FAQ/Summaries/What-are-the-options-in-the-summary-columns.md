---
layout: post
title: What-are-the-options-in-the-summary-columns | WindowsForms | Syncfusion
description: what are the options in the summary columns
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# What are the options in the summary columns

The options in the summary columns are illustrated using the code below.

{% highlight c# %}



//Disables the change of summary value during the filter criteria.

//sd is GridSummaryColumnDescriptor. 

//This ignores filtering of the grid. So, the summary value does not change.

sd.IgnoreRecordFilterCriteria=true;


{% endhighlight  %}
{% highlight vbnet %}



'Disables the change of summary value during the filter criteria.

'sd is GridSummaryColumnDescriptor. 

'This ignores filtering of the grid. So, the summary value does not change.

sd.IgnoreRecordFilterCriteria=True

{% endhighlight  %}

