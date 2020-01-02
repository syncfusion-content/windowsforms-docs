---
layout: post
title: How-to-access-a-record-given-the-row-index | Windows Forms | Syncfusion
description: how to access a record given the row index
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access a Record Given the Row Index

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