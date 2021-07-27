---
layout: post
title: Overview | DataGrid Control for Windows Forms | Syncfusion
description: This section explains about the datagrid control for windows forms and it's important key features such as data binding, selection and etc
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Overview of Windows Forms DataGrid(SfDataGrid)

The SfDataGrid control is used to display collection of data in rows and columns. The SfDataGrid control includes editing and data shaping features (Sorting, grouping, filtering and etc) that allows the end users to easily manage the data.
Following are the key features of SfDataGrid control

* Data binding – Supports to bind different types of data sources.
* Selection – Support for row selection.
* Editing – Interactive support to edit with different column types.
* Columns – Support for various column types including unbound columns.
* Sorting – Interactive support to sort the data in SfDataGrid.
* Grouping – Interactive support to group the data in SfDataGrid.
* Summaries – Extensive support to show brief information about the individual data columns or groups of rows.
* Filtering – Interactive support for filtering data as like in Excel.
* Validation – Support to validate the data on errors.
* Master-Detail View – Support to display relational data using hierarchies.
* Exporting – Support to export the data to Excel and PDF.
* Styling – Extensive support for customizing styles of cells and rows in SfDataGrid.
* Stacked Headers – Extensive support to show multiple headers called stacked headers.
* Unbound rows – Support to display unbound rows.
* Touch support – Complete support for resizing, drag-drop column, sorting, filtering, grouping and etc in touch devices


## Choose between different grid controls

Syncfusion WinForms suite comes up with following different grid namely,

* [SfDataGrid](https://www.syncfusion.com/winforms-ui-controls/datagrid)
* [GridGroupingControl](https://help.syncfusion.com/windowsforms/gridgrouping/overview)
* [GridControl](https://www.syncfusion.com/winforms-ui-controls/excel-like-grid)

### SfDataGrid

[SfDataGrid](https://help.syncfusion.com/windowsforms/datagrid/overview) is designed based on column-oriented architecture that provides support to customize the grid easily. It is used to display collection of data in rows and columns. The SfDataGrid control includes editing and data shaping features (sorting, grouping, filtering, etc.,) that allows the end users to easily manage the data. It also supports printing and exporting to Excel and PDF file formats.

### GridGroupingControl

[GridGroupingControl](https://help.syncfusion.com/windowsforms/gridgrouping/overview) is designed based on cell-oriented architecture that provides more control over cells and supports like Excel-like features. It supports expressions fields, filters, multi-column sorting, grouping, nested tables/hierarchies, and custom summaries. It is an unique UI and data virtualization architecture that provides instant scrolling capabilities, display millions of records, and handle real-time data updates with less CPU usage.

### GridControl

[GridControl](https://help.syncfusion.com/windowsforms/grid-control/overview) is a cell-oriented grid that contains own data and does not need to be bound to the data source. It can be easily customized down to the cell level. It supports frozen rows, columns, Excel-like formulas and covered cells. It can also be used in a virtual manner such that it can bind to any type of data source.

### SfDataGrid vs GridGroupingControl

Both SfDataGrid and GridGroupingControl used for same purpose. But SfDataGrid control offers rich set of features over GridGroupingControl. When you want the support for filtering, sorting, grouping, summary calculation and hierarchical data sources with the blazing performance, you can use SfDataGrid. Comparatively, the performance of SfDataGrid control is better than the GridGroupingControl.

You can see the list of some of the specific API difference between SfDataGrid and GridGroupingControl as follows:
<table>
<tr>
<td>
{{'**SfDataGrid**'| markdownify }}
</td>
<td>
{{'**GridGroupingControl**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
AllowEditing
</td>
<td>
TableDescriptor.AllowEdit
</td>
<td>
To allow edit the cells.

</td>
</tr>
<tr>
<td>
AllowGrouping
</td>
<td>
GridColumnDescriptor.AllowGroupByColumn
</td>
<td>
To allow group the columns.

</td>
</tr>
<tr>
<td>
AllowSorting
</td>
<td>
GridColumnDescriptor.AllowSort
</td>
<td>
To allow sort the columns.

</td>
</tr>
<tr>
<td>
AllowFiltering
</td>
<td>
GridColumnDescriptor.AllowFilter
</td>
<td>
To enable filter in columns.

</td>
</tr>
<tr>
<td>
AllowDraggingColumns
</td>
<td>
TableOptions.AllowDragColumns
</td>
<td>
To enable dragging the columns.

</td>
</tr>
<tr>
<td>
AllowResizingColumns
</td>
<td>
TableControl.AllowColumnResizeUsingCellBoundaries
</td>
<td>
To enable resizing the columns.

</td>
</tr>
<tr>
<td>
ShowRowHeader
</td>
<td>
ShowRowHeaders
</td>
<td>
To show row header.

</td>
</tr>
<tr>
<td>
AutoGenerateRelations
</td>
<td>
AutoPopulateRelations
</td>
<td>
To generate the child relations for the grid.

</td>
</tr>
<tr>
<td>
RowHeaderWidth
</td>
<td>
TableOptions.RowHeaderWidth
</td>
<td>
To change row header width.

</td>
</tr>
<tr>
<td>
SelectionMode
</td>
<td>
TableOptions.ListBoxSelectionMode
</td>
<td>
To specify the mode of selection.

</td>
</tr>
<tr>
<td>
HeaderRowHeight
</td>
<td>
TableOptions.ColumnHeaderRowHeight
</td>
<td>
To change the row height of column header.

</td>
</tr>
</table>
Below are the list of features in SfDataGrid over GridGroupingControl,
<table>
<tr>
<td>
{{'**Feature**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Column auto sizing
</td>
<td>
SfDataGrid enables fitting the width of the cell based on its content on demand for all columns or certain columns by using {{'[AutoSizeColumnsMode](https://help.syncfusion.com/windowsforms/datagrid/columns)'| markdownify }}.

</td>
</tr>
<tr>
<td>
IEditableObjectSupport
</td>
<td>
SfDataGrid supports to roll back the changes when you press Esc Key by implementing IEditableObject interface. For more information about IEditableObject, refer {{'[IEditableObject](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.ieditableobject?view=netframework-4.7.2)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Style customization
</td>
<td>
SfDataGrid control provides extensive support to customize the styles of cells and rows. To know more about styling in SfDataGrid, refer {{'[here](https://help.syncfusion.com/windowsforms/datagrid/styling)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Exporting to Excel
</td>
<td>
SfDataGrid control provides support to Export data to Excel and returns an ExcelEngine that contains the exported workbook. SfDataGrid Exporting is faster than GridGroupingControl. It takes very less time to export the huge amounts of data. To know more about exporting SfDataGrid to Excel, refer {{'[here](https://help.syncfusion.com/windowsforms/datagrid/exporttoexcel)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Exporting to PDF
</td>
<td>
SfDataGrid control provides support for exporting the data into a PDF file. You can export Grouping, Filtering, Summaries and DetailsView, StackedHeaders in to PDF file. To know more about exporting SfDataGrid to PDF, refer {{'[here](https://help.syncfusion.com/windowsforms/datagrid/exporttopdf)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Data Virtualization
</td>
<td>
Large amount of data can be loaded in less time by setting {{'[EnableDataVirtualization](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_EnableDataVirtualization)'| markdownify }} property to true.

</td>
</tr>
</table>

## Additional Help Resources

The [`Windows Forms SfDataGrid`](https://www.syncfusion.com/kb/windowsforms/sfdatagrid) Knowledge Base section contains responses to some of the most common questions that other customers have asked us before. So this will be a good place to search for topics that are not covered in the user guide.

Similar to the [`Knowledge Base`](https://www.syncfusion.com/kb/windowsforms/sfdatagrid), the [`forum`](https://www.syncfusion.com/forums/windowsforms) section also contains responses to questions that other customers have asked us in the past.