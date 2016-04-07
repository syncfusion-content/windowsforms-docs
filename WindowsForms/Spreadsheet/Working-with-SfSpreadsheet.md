---
layout: post
title: Working with Spreadsheet
description: How to access the worksheet and grid in Spreadsheet.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Working with Spreadsheet
 This section explains about accessing the Worksheet, Grid and the events associated with it.
<br/>
<br/>

## Working with Worksheet

A __workbook__ is an excel document in the Spreadsheet. It is an object that exposes the `IWorkbook` interface. Currently loaded workbook in the Spreadsheet can be accessed by using the `Workbook` property of Spreadsheet.

A workbook consists of one or more worksheets stored within the worksheet collection. Accessing the worksheets in the collection, can be done by the following ways,

{% tabs %}
{% highlight c# %}

//By Specifying the index as,

spreadsheet.Workbook.Worksheets[0]

//By Specifying the sheet name as,

spreadsheet.Workbook.Worksheets["sheet1"]

//Access the Active worksheet as,

spreadsheet.ActiveSheet
      
{% endhighlight %}
{% endtabs %}

For more information regarding working with worksheets, you can refer the [XlsIO UG](http://help.syncfusion.com/file-formats/xlsio/overview) link
<br/>
<br/>

## Working with Grid

Each worksheet in the workbook is loaded into the view as `SpreadsheetGrid` in the Spreadsheet.

{% tabs %}
{% highlight c# %}

//Access the Active SpreadsheetGrid as,

spreadsheet.ActiveGrid

{% endhighlight %}
{% endtabs %}

When the workbook is loaded in the Spreadsheet, the `WorkbookLoaded` Event is invoked and when the workbook is removed from Spreadsheet, the `WorkbookUnloaded` Event is invoked.

You can also access the each `SpreadsheetGrid` in the Spreadsheet either by passing the particular sheet name in the `GridCollection` or by invoking WorkbookLoaded Event of Spreadsheet. 

**By using Sheet Name**

For your reference, setting the row and column count dynamically for the second sheet in the Workbook

{% tabs %}
{% highlight c# %}

var sheet = spreadsheetControl.Workbook.Worksheets[1];
spreadsheet.GridCollection[sheet.Name].RowCount = 50;
spreadsheet.GridCollection[sheet.Name].ColumnCount = 12;

{% endhighlight %}
{% endtabs %} 

**By using Event**

{% tabs %}
{% highlight c# %}

spreadsheet.WorkbookLoaded += spreadsheet_WorkbookLoaded;

spreadsheet.WorkbookUnloaded += spreadsheet_WorkbookUnloaded;

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{
  //Hook the events here
   foreach (var grid in args.GridCollection)
   {
    grid.QueryRange += grid_QueryRange; 
   }      
}

void spreadsheet_WorkbookUnloaded(object sender, WorkbookUnloadedEventArgs args)
{
  //Unhook the events here
   foreach (var grid in args.GridCollection)
   {
    grid.QueryRange -= grid_QueryRange; 
   }
}

{% endhighlight %}
{% endtabs %}

Spreadsheet supports virtual mode, which lets you dynamically provide data to the grid by handling an event, `QueryRange`, for example. In virtual mode, data will be dynamically loaded into the SpreadsheetGrid on demand or when users need to view the data.

When the worksheet is added into the Spreadsheet, the `WorksheetAdded` Event is invoked and when the worksheet is removed in the Spreadsheet, `WorksheetRemoved` Event is invoked.

You can hook the events in `WorksheetAdded` Event and unhook or remove the objects, in `WorksheetRemoved` Event in Spreadsheet.

{% tabs %}
{% highlight c# %}

spreadsheet.WorksheetAdded += spreadsheet_WorksheetAdded;

spreadsheet.WorksheetRemoved += spreadsheet_WorksheetRemoved;

void spreadsheet_WorksheetRemoved(object sender, WorksheetRemovedEventArgs args)
{
   //Unhook the events
    var grid = spreadsheet.ActiveGrid;
    grid.CurrentCellActivated -= grid_CurrentCellActivated;
}

void spreadsheet_WorksheetAdded(object sender, WorksheetAddedEventArgs args)
{
   //hook the events
    var grid = spreadsheet.ActiveGrid;
    grid.CurrentCellActivated += grid_CurrentCellActivated;
}

{% endhighlight %}
{% endtabs %}
<br/>

## Setting the CellValue at Runtime

In Spreadsheet, to update the cell value and formula programmatically, `SetCellValue` method of `SpreadsheetGrid` should be invoked and then invalidate that cell to update the view.

{% tabs %}
{% highlight c# %}

var range = spreadsheet.ActiveSheet.Range[2,2];

spreadsheet.ActiveGrid.SetCellValue(range, "cellvalue");

spreadsheet.ActiveGrid.InvalidateCell(2,2);

{% endhighlight %}
{% endtabs %}