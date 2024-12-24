---
layout: post
title: Data Binding in Windows Forms Pivot Chart control | Syncfusion®
description: Learn about Data Binding support in Syncfusion® Windows Forms Pivot Chart control, its elements and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Data Binding in Windows Forms Pivot Chart

The pivot chart control allows you to retrieve multidimensional data from either IEnumerable list or any data table to present the pivot information in an appropriate way. For example, IEnumerable data population is used in the pivot chart. The ItemSource of pivot chart is passed with the IEnumerable list.


{% highlight c# %}

// Adds ItemSource to the Control.

this.pivotChart1.ItemSource = ProductSales.GetSalesData();

{% endhighlight %}

{% highlight vbnet %}

‘Adds ItemSource to the Control.

Me.pivotChart1.ItemSource = ProductSales.GetSalesData()

{% endhighlight %}
