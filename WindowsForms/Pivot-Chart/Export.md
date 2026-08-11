---
layout: post
title: Exporting in Windows Forms Pivot Chart | Syncfusion®
description: Exporting in the Windows Forms Pivot Chart enables chart data and visuals to be saved in supported formats for sharing, reporting, and analysis.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Exporting in Windows Forms Pivot Chart

You can export pivot data to Microsoft Excel. The exported data interaction is enabled in Excel.

{% tabs %}

{% highlight c# %}

ExcelExport excelExport = new ExcelExport(this.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered);
excelExport.Export(saveDialog.FileName);

{% endhighlight %}

{% highlight vb %}

Dim excelExport As New ExcelExport(Me.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered)
excelExport.Export(saveDialog.FileName)

{% endhighlight %}

{% endtabs %}

Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\&lt;InstalledVersion&gt;\Windows\PivotChart.Windows\Samples\Exporting\PivotChartExport Demo\CS
