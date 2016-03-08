---
layout: post
title: How-to-access-the-current-record | Windows Forms | Syncfusion
description: how to access the current record
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access the current record

To access the current record, use the following code.




{% highlight C# %}


Record rec = this.gridGroupingControl1.Table.CurrentRecord;

Trace.WriteLine(rec.ToString());

{% endhighlight %}



{% highlight vbnet %}


Dim rec As Record = Me.gridGroupingControl1.Table.CurrentRecord

Trace.WriteLine(rec.ToString())

{% endhighlight %}

