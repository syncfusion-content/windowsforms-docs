---
layout: post
title: How-to-get-rowindex-given-the-record-index
description: how to get rowindex given the record index
platform: windowsform
control: GridGroupingControl
documentation: ug
---

# How to get rowindex given the record index

This can be done using the following code snippet.

{% highlight c# %}



int position = gridGroupingControl1.Table.DisplayElements.IndexOf(record);

{% endhighlight %}

{% highlight vbnet %}



Dim position As Integer = gridGroupingControl1.Table.DisplayElements.IndexOf(record)


{% endhighlight %}