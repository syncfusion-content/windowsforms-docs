---
layout: post
title: Rows and Columns Operations in Spreadsheet
description: Operations involved with rows and columns in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Rows and Columns
This section explains about the operations related with rows and columns in Spreadsheet

## Insert Rows and Columns

Spreadsheet provides support for dynamically inserting rows and columns into a worksheet. 

{% tabs %}
{% highlight c# %}

//For Inserting Rows

 spreadsheet.ActiveSheet.InsertRow(2, 3);

 spreadsheet.ActiveGrid.Model.InsertRows(2, 3);

//For Inserting Cols

 spreadsheet.ActiveSheet.InsertColumn(3, 2);

 spreadsheet.ActiveGrid.Model.InsertColumns(3, 2);

{% endhighlight %}
{% endtabs %}

## Delete Rows and Columns

Spreadsheet provides support for deleting rows and columns from a worksheet,

{% tabs %}
{% highlight c# %}

//For Deleting Rows

 spreadsheet.ActiveSheet.DeleteRow(5, 2);

 spreadsheet.ActiveGrid.Model.RemoveRows(5, 2);

//For Deleting Cols

 spreadsheet.ActiveSheet.DeleteColumn(3, 2);

 spreadsheet.ActiveGrid.Model.RemoveColumns(3, 2);

{% endhighlight %}
{% endtabs %}

## Hide Rows and Columns

Spreadsheet provides support to hide rows/columns and this can be done by [HideRow](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.IWorksheet~HideRow.html) and [HideColumn](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.IWorksheet~HideColumn.html) method

{% tabs %}
{% highlight c# %}

//For Hiding Rows,

 spreadsheet.ActiveSheet.HideRow(5);

 spreadsheet.ActiveGrid.RowHeights.SetHidden(5, 5, true);

//For Hiding Cols,

 spreadsheet.ActiveSheet.HideColumn(4);

 spreadsheet.ActiveGrid.ColumnWidths.SetHidden(4, 4, true);

{% endhighlight %}
{% endtabs %}

## Unhide Rows and Columns

Unhide the rows/columns in Spreadsheet can be done by [ShowRow](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.IWorksheet~ShowRow.html) and [ShowColumn](http://help.syncfusion.com/cr/cref_files/windowsforms/xlsio/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.IWorksheet~ShowColumn.html) methods.

{% tabs %}
{% highlight c# %}

//For Unhiding Rows,

 spreadsheet.ActiveSheet.ShowRow(5, true);

 spreadsheet.ActiveGrid.RowHeights.SetHidden(5, 5, false);

//For Unhiding Cols,

 spreadsheet.ActiveSheet.ShowColumn(4,true);

 spreadsheet.ActiveGrid.ColumnWidths.SetHidden(4, 4, false);

{% endhighlight %}
{% endtabs %}

## Row Height and Column Width

Spreadsheet provides support to adjust the row height and column width. And also can import the adjusted row height and column width from Excel. Spreadsheet provides support to fit the row and column based on its contents.

{% tabs %}
{% highlight c# %}

//For setting RowHeight for 4th Row

 spreadsheet.ActiveGrid.SetRowHeight(4, 4, 30);

 spreadsheet.ActiveGrid.InvalidateCell(GridRangeInfo.Row(4), true);

//For setting ColumnWidth for 5th Column

 spreadsheet.ActiveGrid.SetColumnWidth(5, 5, 22);

 spreadsheet.ActiveGrid.InvalidateCell(GridRangeInfo.Col(5), true);

{% endhighlight %}
{% endtabs %}

N> In case if you insert/delete and hide/unhide the rows/columns inside the Grouping, [RefreshOutlines](http://help.syncfusion.com/cr/cref_files/windowsforms/spreadsheet/Syncfusion.Spreadsheet.Windows~Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet~RefreshOutlines.html) method must be invoked to refresh/update the Outlines of the Group.	

## Freeze Rows and Columns

Spreadsheet provides support for Freeze panes to keep an area of a worksheet visible while you scroll to another area of the worksheet.

{% tabs %}
{% highlight c# %}

//Freezepanes

//To Freeze 4 rows and 4 columns

 spreadsheet.Workbook.ActiveSheet.Range[4, 4].FreezePanes();

 spreadsheet.ActiveGrid.FrozenRows = 5;

 spreadsheet.ActiveGrid.FrozenColumns = 5;

{% endhighlight %}
{% endtabs %}

## Unfreeze Rows and Columns

Spreadsheet provides support to unfreeze the freeze panes in the worksheet of Spreadsheet.

{% tabs %}
{% highlight c# %}

//Unfreezepanes

//To Unfreeze 4 rows and 4 columns

 spreadsheet.Workbook.ActiveSheet.RemovePanes();

 spreadsheet.ActiveGrid.FrozenRows = 1;

 spreadsheet.ActiveGrid.FrozenColumns = 1;

{% endhighlight %}
{% endtabs %}