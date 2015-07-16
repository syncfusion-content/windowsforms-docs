---
layout: post
title: Export
description: export
platform: WindowsForms
control: PivotChart
documentation: ug
---

# Export

You can export pivot data to excel. The exported pivot data has interaction enabled in excel.

[C#]


ExcelExport excelExport = new ExcelExport(this.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered);

            excelExport.Export(savedialog.FileName);



[VB]


Dim excelExport As New ExcelExport(Me.pivotChart1, Syncfusion.XlsIO.ExcelVersion.Excel2010, Syncfusion.XlsIO.ExcelChartType.Column_Clustered)

excelExport.Export(savedialog.FileName)


Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\&lt;InstalledVersion&gt;\Windows\PivotChart.Windows\Samples\Exporting\PivotChartExport Demo\CS

