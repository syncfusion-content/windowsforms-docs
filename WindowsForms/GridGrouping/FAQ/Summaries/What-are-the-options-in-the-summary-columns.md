---
layout: post
title: What-are-the-options-in-the-summary-columns | Windows Forms | Syncfusion
description: what are the options in the summary columns
platform: windowsforms
control: GridGrouping
documentation: ug
---

# What are the options in the summary columns

The options in the summary columns are illustrated using the code below.

{% highlight c# %}



//Disables the change of summary value during the filter criteria.

//sdc is GridSummaryColumnDescriptor. 

//This ignores filtering of the grid. So, the summary value does not change.

sdc.IgnoreRecordFilterCriteria=true;


{% endhighlight  %}
{% highlight vbnet %}



'Disables the change of summary value during the filter criteria.

'sdc is GridSummaryColumnDescriptor. 

'This ignores filtering of the grid. So, the summary value does not change.

sdc.IgnoreRecordFilterCriteria=True

{% endhighlight  %}

