---
layout: post
title: Programmatic Selection in WinForms GridGroupingControl | Syncfusion®
description: Select a record programmatically in Syncfusion® WinForms GridGroupingControl, its selected records collection, record selection, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Select Record Programmatically in WinForms GridGroupingControl

The following code illustrates how to select a record programmatically.

{% tabs %}
{% highlight c# %}

//Selects the 3rd record.
this.gridGroupingControl1.Table.SelectedRecords.Add(this.gridGroupingControl1.Table.Records[3]);

{% endhighlight %}

{% highlight vb %}

'Selects the 3rd record.
Me.gridGroupingControl1.Table.SelectedRecords.Add(Me.gridGroupingControl1.Table.Records(3))

{% endhighlight %}
{% endtabs %}