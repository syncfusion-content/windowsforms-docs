---
layout: post
title: Data Management in Spreadsheet
description: How to import and export the data in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Data Management

Spreadsheet provides support to import data into a SpreadSheet and export data from a SpreadSheet. The following list of data can be imported into the worksheet

* Data Table
* Data Column
* Data View
* Business Objects
* Array

For your reference, To import the data from a data table, you can use [ImportDataTable](http://help.syncfusion.com/file-formats/xlsio/working-with-data#importing-data-to-worksheets) 
method

{% tabs %}
{% highlight c# %}

spreadsheet.ActiveSheet.ImportDataTable(datatable, true, 1, 1);

spreadsheet.ActiveGrid.InvalidateCells();

{% endhighlight %}
{% endtabs %}

To Export the data from a data table, you can use [ExportDataTable](http://help.syncfusion.com/file-formats/xlsio/working-with-data#exporting-from-worksheet-to-data-table)
method

{% tabs %}
{% highlight c# %}

IWorksheet sheet = spreadsheet.Workbook.Worksheets[0];

IRange range = sheet.Range["A1:K50"];

DataTable Dt = sheet.ExportDataTable(range, ExcelExportDataTableOptions.ColumnNames);

{% endhighlight %}
{% endtabs %}

For more details regarding importing and exporting data, please refer the [XlsIO UG](http://help.syncfusion.com/file-formats/xlsio/working-with-data)

