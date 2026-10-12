---
layout: post
title: Access a Record in WinForms GridGroupingControl | Syncfusion®
description: Access a record by row index in Syncfusion® WinForms GridGroupingControl, its display elements, parent records, row mapping, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access a Record by Row Index in WinForms GridGroupingControl

This can be done using the following code snippet.

{% tabs %}
{% highlight c# %}

//Uses the DisplayElements property of the grid to find the corresponding record.
Record r = gridGroupingControl1.Table.DisplayElements[rowIndex].ParentRecord;

{% endhighlight %}

{% highlight vb %}

'Uses the DisplayElements property of the grid to find the corresponding record.
Dim r As Record = gridGroupingControl1.Table.DisplayElements(rowIndex).ParentRecord
{% endhighlight %}
{% endtabs %}