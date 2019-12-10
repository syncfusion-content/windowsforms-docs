---
layout: post
title: How-to-Retrieve-DataRow-from-GridDataBoundGrid-with-rowindex | Windows Forms | Syncfusion
description: how to retrieve datarow from griddataboundgrid with rowindex
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Retrieve DataRow from GridDataBoundGrid with RowIndex

{% tabs %}
{% highlight c# %}

CurrencyManager cm=(CurrencyManager)BindingContext[gridDataBoundGrid1.DataSource, gridDataBoundGrid1.DataMember]; 
DataRow row;
DataView dataView=(DataView)cm.List;

//The 2 is the row index.
int position = this.gridDataBoundGrid1.Binder.RowIndexToPosition(2);
row=dataView[position].Row;

{% endhighlight %}

{% highlight vb %}
Dim cm As CurrencyManager= CType(BindingContext(gridDataBoundGrid1.DataSource, gridDataBoundGrid1.DataMember), CurrencyManager)
Dim row As DataRow
Dim dataView As DataView= CType(cm.List, DataView)

'The 2 is the row index.
Dim position As Integer = Me.gridDataBoundGrid1.Binder.RowIndexToPosition(2)
row=dataView(position).Row

{% endhighlight %}
{% endtabs %}
