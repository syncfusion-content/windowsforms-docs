---
layout: post
title: How to Print the PivotChart | Windows Forms | Syncfusion
description: Learn how to print a PivotChart in WinForms using the Print method in the PrintDocument extension for efficient chart printing.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to Print the PivotChart

The PivotChart has built-in support to print the pivotal data. This can be achieved by using the [PrintDocument](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_PrintDocument) method available in the PrintDocument extension of the PivotChart component.

{% tabs %}

{% highlight c# %}

PrintDialog printDialog1 = new System.Windows.Forms.PrintDialog();
printDialog1.Document = this.pivotChart1.PrintDocument;
if (printDialog1.ShowDialog() == DialogResult.OK)
{
    this.pivotChart1.PrintDocument.Print();
}

{% endhighlight %}

{% highlight vb %}

Dim printDialog1 As New System.Windows.Forms.PrintDialog()
printDialog1.Document = Me.pivotChart1.PrintDocument
If printDialog1.ShowDialog() = DialogResult.OK Then
    Me.pivotChart1.PrintDocument.Print()
End If

{% endhighlight %}

{% endtabs %}
 