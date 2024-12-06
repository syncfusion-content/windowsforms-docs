---
layout: post
title: Exporting in Windows Forms Pivot Chart control | Syncfusion
description: Learn about Exporting support in Syncfusion Windows Forms Pivot Chart control, its elements and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Exporting in Windows Forms Pivot Chart

The Windows Forms Pivot Chart offers the capability to export pivot data to Microsoft Excel, facilitating an interactive data exploration experience within Excel.

To export the data, you can use the `ExcelExport` class, as demonstrated in the example below. By configuring export settings such as the Excel version and the desired chart type, the export operation can be executed seamlessly.

Below is a guide to performing the export:

{% highlight c# %}

ExcelExport excelExport = new ExcelExport(this.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered);

            excelExport.Export(saveDialog.FileName);

{% endhighlight %}

{% highlight vbnet %}

Dim excelExport As New ExcelExport(Me.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered)

excelExport.Export(saveDialog.FileName)

{% endhighlight %}
