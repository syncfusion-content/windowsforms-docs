---
layout: post
title: Export | Windows Forms | Syncfusion
description: export
platform: windowsforms
control: PivotChart
documentation: ug
---

# Export

You can export pivot data to excel. The exported pivot data has interaction enabled in excel.

{% highlight c# %}

ExcelExport excelExport = new ExcelExport(this.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered);

            excelExport.Export(savedialog.FileName);

{% endhighlight %}

{% highlight vbnet %}

Dim excelExport As New ExcelExport(Me.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered)

excelExport.Export(savedialog.FileName)

{% endhighlight %}

Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\<InstalledVersion>\Windows\PivotChart.Windows\Samples\Exporting\PivotChartExport Demo\CS