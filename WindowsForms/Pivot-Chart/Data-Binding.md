---
layout: post
title: Data-Binding | Windows Forms | Syncfusion
description: This section explains about the DataBinding support in PivotChart
platform: windowsforms
control: PivotChart
documentation: ug
---

# Data Binding

The pivot chart control allows you to retrieve multidimensional data from either IEnumerable list or any data table to present the pivot information in an appropriate way. For example, IEnumerable data population is used in the pivot chart. The ItemSource of pivot chart is passed with the IEnumerable list.


{% highlight c# %}

// Adds ItemSource to the Control.

this.pivotChart1.ItemSource = ProductSales.GetSalesData();

{% endhighlight %}

{% highlight vbnet %}

‘Adds ItemSource to the Control.

Me.pivotChart1.ItemSource = ProductSales.GetSalesData()

{% endhighlight %}