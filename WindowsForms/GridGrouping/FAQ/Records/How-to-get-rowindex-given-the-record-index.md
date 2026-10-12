---
layout: post
title: RowIndex by RecordIndex in WinForms GridGroupingControl | Syncfusion®
description: Get a row index by record index in Syncfusion® WinForms GridGroupingControl, its display elements, record mapping, row retrieval, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Get RowIndex by RecordIndex in WinForms GridGroupingControl

This can be done using the following code snippet.

{% tabs %}
{% highlight c# %}

int position = gridGroupingControl1.Table.DisplayElements.IndexOf(record);

{% endhighlight %}

{% highlight vb %}

Dim position As Integer = gridGroupingControl1.Table.DisplayElements.IndexOf(record)

{% endhighlight %}
{% endtabs %}
