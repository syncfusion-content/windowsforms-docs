---
layout: post
title: How-to-access-a-record-given-the-row-index
description: how to access a record given the row index
platform: windowsforms
control: How To
documentation: ug
---

# How to access a record given the row index



This can be done using the following code snippet.

{% highlight c# %}



//Uses the DisplayElements property of the grid to find the corresponding record.

Record r = gridGroupingControl1.Table.DisplayElements[rowindex].ParentRecord;

{% endhighlight %}

{% highlight vbnet %}



'Uses the DisplayElements property of the grid to find the corresponding record.

Dim r As Record = gridGroupingControl1.Table.DisplayElements(rowindex).ParentRecord


{% endhighlight %}
