---
layout: post
title: How to Print the PivotChart | Windows Forms | Syncfusion
description: Learn how to print a PivotChart in WinForms using the Print method in the PrintDocument extension for efficient chart printing.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to Print the PivotChart

The PivotChart has in-built support to print the pivotal data. This can be achieved by using the Print method available in the PrintDocument extension of PivotChart component.

{% highlight C# %}




 

PrintDialog printDialog1 = new System.Windows.Forms.PrintDialog();

 

printDialog1.Document = this.pivotChart1.PrintDocument;

if (printDialog1.ShowDialog() == DialogResult.OK)

{

  this.pivotChart1.PrintDocument.Print();

}
{% endhighlight %}
 