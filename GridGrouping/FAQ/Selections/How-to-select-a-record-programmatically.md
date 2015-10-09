---
layout: post
title: How-to-select-a-record-programmatically | WindowsForms | Syncfusion
description: how to select a record programmatically
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to select a record programmatically

The following code illustrates how to select a record programmatically.

{% highlight c# %}



//Selects the 3rd record.

this.gridGroupingControl1.Table.SelectedRecords.Add(this.gridGroupingControl1.Table.Records[3]);

{% endhighlight %}

{% highlight vbnet %}



'Selects the 3rd record.

Me.gridGroupingControl1.Table.SelectedRecords.Add(Me.gridGroupingControl1.Table.Records(3))


{% endhighlight %}
