---
layout: post
title: Exporting in Windows Forms Pivot Chart control | Syncfusion
description: Learn about Exporting support in Syncfusion® Windows Forms Pivot Chart control, its elements and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Exporting in Windows Forms Pivot Chart

You can export pivot data to Microsoft Excel. The exported data interaction is enabled in the Excel.

{% highlight c# %}

ExcelExport excelExport = new ExcelExport(this.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered);

            excelExport.Export(saveDialog.FileName);

{% endhighlight %}

{% highlight vbnet %}

Dim excelExport As New ExcelExport(Me.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered)

excelExport.Export(saveDialog.FileName)

{% endhighlight %}

Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\<InstalledVersion>\Windows\PivotChart.Windows\Samples\Exporting\PivotChartExport Demo\CS
