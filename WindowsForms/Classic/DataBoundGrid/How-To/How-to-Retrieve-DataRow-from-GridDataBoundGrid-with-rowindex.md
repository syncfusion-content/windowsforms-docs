---
layout: post
title: Retrieve GridDataBoundGrid in DataBoundGrid | Syncfusion
description: Learn about How to Retrieve Datarow From Rowindex in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Retrieve GridDataBoundGrid in DataBoundGrid

## How to Retrieve DataRow from GridDataBoundGrid with RowIndex

This page explains about How to Retrieve DataRow from GridDataBoundGrid with RowIndex and more details.

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
