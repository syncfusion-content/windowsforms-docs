---
layout: post
title: How to Print the PivotChart | Windows Forms | Syncfusion
description: How to Print the PivotChart
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to Print the PivotChart

The pivot chart control includes built-in functionality for printing pivotal data, making it easy to create hard copies of charts. This is achieved using the Print method provided by the PrintDocument extension of the pivot chart component.

To print the pivot chart, you can follow these steps using a print dialog:

{% highlight C# %}


PrintDialog printDialog1 = new System.Windows.Forms.PrintDialog();

 

printDialog1.Document = this.pivotChart1.PrintDocument;

if (printDialog1.ShowDialog() == DialogResult.OK)

{

  this.pivotChart1.PrintDocument.Print();

}
{% endhighlight %}
 