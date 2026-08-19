---
layout: post
title: Access Current Record in WinForms GridGroupingControl | Syncfusion®
description: Access the current record in Syncfusion® Windows Forms GridGroupingControl, its record objects, current row data, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access the Current Record in Windows Forms GridGroupingControl

To access the current record, use the following code.

{% tabs %}
{% highlight C# %}

Record rec = this.gridGroupingControl1.Table.CurrentRecord;
Trace.WriteLine(rec.ToString());

{% endhighlight %}

{% highlight vb %}

Dim rec As Record = Me.gridGroupingControl1.Table.CurrentRecord
Trace.WriteLine(rec.ToString())

{% endhighlight %}
{% endtabs %}
