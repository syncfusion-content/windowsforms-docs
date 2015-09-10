---
layout: post
title: How-to-Retrieve-DataRow-from-GridDataBoundGrid-with-rowindex | WindowsForms | Syncfusion
description: how to retrieve datarow from griddataboundgrid with rowindex
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to Retrieve DataRow from GridDataBoundGrid with RowIndex

### Introduction

GridDataBoundGrid has to be bound to the datasource using CurrencyManager. Using CurrencyManager, the record corresponding to the row index can be retrieved. 

#### Example

{% highlight c# %}



CurrencyManager cm=(CurrencyManager)BindingContext[gridDataBoundGrid1.DataSource, gridDataBoundGrid1.DataMember]; 

DataRow row;

DataView dv=(DataView)cm.List;



//The 2 is the rowindex.

int position = this.gridDataBoundGrid1.Binder.RowIndexToPosition(2);

row=dv[position].Row;


{% endhighlight %}

{% highlight vbnet %}



Dim cm As CurrencyManager= CType(BindingContext(gridDataBoundGrid1.DataSource, gridDataBoundGrid1.DataMember), CurrencyManager)

Dim row As DataRow

Dim dv As DataView= CType(cm.List, DataView)



'The 2 is the rowindex.

Dim position As Integer = Me.gridDataBoundGrid1.Binder.RowIndexToPosition(2)

row=dv(position).Row


{% endhighlight %}

