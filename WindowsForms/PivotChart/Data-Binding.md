---
layout: post
title: Data-Binding
description: data binding
platform: WindowsForms
control: PivotChart
documentation: ug
---

# Data Binding

PivotChart control enables you to retrieve multidimensional data either from IEnumerable list or from any Datatable and to present the Pivot information in a meaningful way. For example, IEnumerable data population used in PivotChart. The ItemSource of PivotChart is passed with the IEnumerable list.


[C#]



// Adds ItemSource to the Control.

this.pivotChart1.ItemSource = ProductSales.GetSalesData();



[VB]


‘Adds ItemSource to the Control.

Me.pivotChart1.ItemSource = ProductSales.GetSalesData()



