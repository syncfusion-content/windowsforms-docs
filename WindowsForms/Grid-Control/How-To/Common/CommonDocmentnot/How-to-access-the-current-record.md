---
layout: post
title: How to access the current record in GridGroupingControl | Syncfusion
description: Learn here all about how to access the current record of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access the current record in Windows Forms GridGroupingControl

To access the current record, use the following code.


 
{% highlight c# %}

Record rec = this.gridGroupingControl1.Table.CurrentRecord;
Trace.WriteLine(rec.ToString());
{% endhighlight  %}

{% highlight vb %}

Dim rec As Record = Me.gridGroupingControl1.Table.CurrentRecord
Trace.WriteLine(rec.ToString())
{% endhighlight  %}