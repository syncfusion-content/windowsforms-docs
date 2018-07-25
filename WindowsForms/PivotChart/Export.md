---
layout: post
title: Export | Windows Forms | Syncfusion
description: export
platform: windowsforms
control: PivotChart
documentation: ug
---

# Export

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