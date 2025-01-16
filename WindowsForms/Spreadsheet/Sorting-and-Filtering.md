---
layout: post
title: Sorting And Filtering in Windows Forms Spreadsheet | Syncfusion
description: Learn about Sorting And Filtering support in Syncfusion® Windows Forms Spreadsheet control and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Sorting And Filtering in Windows Forms Spreadsheet

This section explains the features of sorting and filtering in the Spreadsheet.

## Filtering

By default, the Spreadsheet does not allow filtering support, so if you want to enable filtering in Spreadsheet, set the [AllowFiltering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_AllowFiltering) property to be true.

{% tabs %}
{% highlight c# %}
spreadsheet.AllowFiltering = true;
{% endhighlight %}
{% endtabs %}

N> Please find the [Filtering Demo](https://github.com/SyncfusionExamples/Spreadsheet_Sort_Filter) for your reference.

## Programmatic Sorting and Filtering

### Sorting 

Sort the data programmatically when importing the workbook in the `WorkbookLoaded` event of Spreadsheet .

{% tabs %}
{% highlight c# %}
spreadsheet.AllowFiltering = true;
spreadsheet.WorkbookLoaded += spreadsheet_WorkbookLoaded;

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{
    IRange filterRange = spreadsheet.Workbook.ActiveSheet.Range["A1:D9"];
    spreadsheet.Workbook.ActiveSheet.AutoFilters.FilterRange = filterRange;
    IDataSort sorter = spreadsheet.Workbook.CreateDataSorter();
    sorter.SortRange = spreadsheet.ActiveSheet.Range["A1:D9"];
    ISortField sortField = sorter.SortFields.Add(1, SortOn.Values, OrderBy.Ascending);
    sorter.Sort();
}
{% endhighlight %}
{% endtabs %}

### Filtering 

Filter the data programmatically when importing the workbook in the `WorkbookLoaded` event of Spreadsheet.

{% tabs %}
{% highlight c# %}
spreadsheet.AllowFiltering = true;
spreadsheet.WorkbookLoaded += spreadsheet_WorkbookLoaded;

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{
    IRange filterRange = spreadsheet.Workbook.ActiveSheet.Range["A1:D9"];
    spreadsheet.Workbook.ActiveSheet.AutoFilters.FilterRange = filterRange;
    IAutoFilter filter = spreadsheet.Workbook.ActiveSheet.AutoFilters[0];
    filter.AddTextFilter("1");
} 
{% endhighlight %}
{% endtabs %}

For more details, please go through the documentation of the [XlsIO](https://help.syncfusion.com/file-formats/xlsio/worksheet-cells-manipulation#data-sorting) UG.

N>If you have programmatically applied the sorting or filtering at runtime, [refresh the view](https://help.syncfusion.com/windowsforms/spreadsheet/working-with-spreadsheet#refreshing-the-view) to change it in `SpreadsheetGrid`. But even after refreshing the view, these changes won't be updated in Filter popup.
 
## Unsupported Features

Spreadsheet currently does not support the following features.

* Advanced filtering
* Table filtering
* Multi-column sorting

## Limitations

### Sorting

* Sorting label in Microsoft Excel should be varied in filter popup depending on the value type in a column (for example, "Sort Smallest to Largest" for numerical values, "Sort A to Z" for string values, etc.). But sort label is not varied in Spreadsheet based on values due to improving filter popup loading efficiency.
* If the column is sorted in Microsoft Excel, Sort Ascending or Sort Descending is not checked in the filter popup.Since XlsIO currently has no support when importing the workbook to get the sorted order.

### Filtering

* If the filter is applied in Microsoft Excel, the filter will be cleared from all columns while clearing the filter from any column in Spreadsheet.
