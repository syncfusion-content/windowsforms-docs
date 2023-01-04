---
layout: post
title: Helpers in WinForms DataGrid control | Syncfusion
description: Learn about helpers such as get the actual row index irrespective of grouping and so on in Syncfusion WinForms DataGrid (SfDataGrid) control and more details.
platform: WindowsForms
control: SfDataGrid 
documentation: ug
---

# Helpers in Windows Forms DataGrid (SfDataGrid) 

## IndexResolver

SfDataGrid has [DataGridIndexResolver](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html) static class present in [Syncfusion.WinForms.DataGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.html) namespace that has some extension methods used to Resolve from row or column index to record or visible column index and `vice versa`. 

## Example: You can find the record index from row index using ResolveToRecordIndex method.

`Prototype Table`

<table>
<tr>
<th>
ProtoType</th><th>
Description</th></tr>
<tr>
<td>
ResolveToRecordIndex(int rowIndex)</td><td>
Resolves Record index from the RowIndex. When RowIndex does not find any records it returns -1. RecordIndex denotes the index of Record in <code>SfDataGrid.View.Records</code></td></tr>
<tr>
<td>
ResolveToRowIndex(int recordIndex)</td><td>
Resolves RowIndex from the record index associated with <code>SfDataGrid.View.Records</code>. When record index is lesser than 0 it returns the -1.</td></tr>
<tr>
<td>
ResolveToRowIndex(object recordItem)</td><td>
Resolves row index from the record associated with <code>SfDataGrid.View.Records</code>. When the given record is not available in the collection it returns -1.</td></tr>
<tr>
<td>
ResolveStartIndexOfGroup(Group group)</td><td>
Resolves the start index of group in DataGrid associated with <code>SfDataGrid.View.TopLevelGroup</code>. When there is no group in DataGrid it returns -1.</td></tr>
<tr>
<td>
ResolveToGridVisibleColumnIndex(int visibleColumnIndex)</td><td>
Resolves the GridColumn index from the visible column index. It excludes the <code>RowHeader</code> and <code>IndentColumn</code>.</td></tr>
<tr>
<td>
ResolveStartIndexBasedOnPosition()</td><td>
Resolves the start index based on position. It includes the <code>stacked header</code> also. By default it returns 0.</td></tr>
<tr>
<td>
ResolveToScrollColumnIndex(int gridColumnIndex)</td><td>
Resolves column index from the Grid column index associated with <code>SfDataGrid.Columns</code>. It includes the <code>IndentColumn</code> and <code>RowHeader</code> also.</td></tr>
<tr>
<td>
ResolveToStartColumnIndex()</td><td>
Returns start column index of the VisibleColumn. </td></tr>
<tr>
<td>
GetDetailsViewDataGridRowIndex(DetailsViewDataGrid detailsViewDataGrid)</td><td>
Returns the RowIndex of DetailsViewGrid. You can pass the <code>DetailsViewDataGrid</code> as argument. When the DetailsView is not found it returns the -1.</td></tr>
<tr>
<td>
GetTableSummaryCount(VerticalPosition position)</td><td>
Returns the TableSummary count from <code>VerticalPosition.Position</code>. </td></tr>
<tr>
<td>
GetHeaderIndex()</td><td>
Returns the header row index.</td></tr>
<tr>
<td>
IsAddNewIndex(int rowIndex)</td><td>
Decides whether the given row index is <code>AddNewRow</code> index or not.</td></tr>
<tr>
<td>
IsTableSummaryIndex(int rowIndex)</td><td>
Decides whether the given row index is <code>TableSummary</code> index or not.</td></tr>
<tr>
<td>
IsFilterRowIndex(int rowIndex)</td><td>
Decides whether the given row index is <code>FilterRow</code> index or not.</td></tr>
</table>

ResolveToRecordIndex(int rowIndex)

To get the record index of a row in a SfDataGrid, you can use the `ResolveToRecordIndex` method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns the corresponding record index.

Here is an example of how you can use this method to get the record index of a row:

{% tabs %}
{% highlight C# %}

int recordIndex = this.sfDataGrid1.TableControl.ResolveToRecordIndex(rowIndex)

{% endhighlight %}
{% endtabs %}

If this method does not find any record with the specified rowIndex, it will return a value of -1. Otherwise it will return the record index of the specified `rowIndex`.

ResolveToRowIndex(int recordIndex)

To get the row index of a record in a SfDataGrid, you can use the `ResolveToRowIndex` method of the `DataGridIndexResolver` class. This method takes the record index as a parameter and returns the corresponding row index.

Here is an example of how you can use this method to get the row index of a record:

{% tabs %}
{% highlight C# %}

int rowIndex = this.sfDataGrid1.TableControl.ResolveToRowIndex(recordIndex)

{% endhighlight %}
{% endtabs %}

If you pass a negative record index to this method, it will return a value of -1. Otherwise it will return the row index of the specified `recordIndex`.

ResolveToRowIndex(object recordItem)

To get the row index of a specific record in a SfDataGrid, you can use the `ResolveToRowIndex` method of the `DataGridIndexResolver` class. This method takes the record as a parameter and returns the corresponding row index.

Here is an example of how you can use this method to get the row index of a specific record:

{% tabs %}
{% highlight C# %}

int rowIndex = this.sfDataGrid1.TableControl.ResolveToRowIndex(record)

{% endhighlight %}
{% endtabs %}

If this method is unable to find the specified record in the grid's data source, it will return a value of -1.Otherwise it will return the row index of the specified `record`.

ResolveStartIndexOfGroup(Group group)

To get the group index of a specific group in a SfDataGrid, you can use the `ResolveStartIndexOfGroup` method of the `DataGridIndexResolver` class. This method takes the group as a parameter and returns the corresponding group index.

Here is an example of how you can use this method to get the group index of a specific group:

{% tabs %}
{% highlight C# %}

var group = this.sfDataGrid1.View.TopLevelGroup.Groups[4];
int groupIndex = this.sfDataGrid1.TableControl.ResolveStartIndexOfGroup(group);
	
{% endhighlight %}
{% endtabs %}

If this method is unable to find the specified group in the list of groups in the grid, it will return a value of -1.Otherwise it will return the group index of the specified `group`.

ResolveToGridVisibleColumnIndex(int visibleColumnIndex)

To get the GridColumn index based on the visible column index in a SfDataGrid, you can use the `ResolveToGridVisibleColumnIndex` method of the `DataGridIndexResolver` class. This method takes the visible column index as a parameter and returns the corresponding GridColumn index.

Here is an example of how you can use this method to get the GridColumn index of a visible column:

{% tabs %}
{% highlight C# %}

int columnIndex = this.sfDataGrid1.TableControl.ResolveToGridVisibleColumnIndex(visibleColumnIndex);
   
{% endhighlight %}
{% endtabs %}

This method excludes the row header and indent column when determining the GridColumn index.And it will return the GridColumn index based on the specified `visibleColumnIndex`.

ResolveStartIndexBasedOnPosition()

To get the data row starting index based on the positions of other rows such as the `AddNewRow`, `FilterRow`, and `UnBoundRow` in a SfDataGrid, you can use the `ResolveStartIndexBasedOnPosition` method of the `DataGridIndexResolver` class.

Here is an example of how you can use this method to get the data row starting index:
{% tabs %}
{% highlight C# %}

int startColumnIndex = this.sfDataGrid1.TableControl.ResolveStartIndexBasedOnPosition();
	
{% endhighlight %}
{% endtabs %}

This method returns the index of the first data row in the grid ans it includes the stacked header row (if present) when determining the data row starting index. By default, this method returns 0 if the grid does not have any other rows such as such as the `AddNewRow`, `FilterRow`, and `UnBoundRow`.

ResolveToScrollColumnIndex(int gridColumnIndex)

To get the visible column index based on the GridColumn index in a SfDataGrid, you can use the `ResolveToGridVisibleColumnIndex` method of the `DataGridIndexResolver` class. This method takes the GridColumn index as a parameter and returns the corresponding visible column index.

Here is an example of how you can use this method to get the visible column index based on the GridColumn index:

{% tabs %}
{% highlight C# %}

int columnIndex = this.sfDataGrid1.TableControl.ResolveToScrollColumnIndex(gridColumnIndex);
   
{% endhighlight %}
{% endtabs %}

This method includes the row header and indent column when determining the VisibleColumn index. And it will return the VisibleColumn index based on the `gridColumnIndex`.

GetDetailsViewDataGridRowIndex(DetailsViewDataGrid detailsViewDataGrid)

To get the details view row index of a DetailsViewDataGrid in a SfDataGrid, you can use the `GetDetailsViewDataGridRowIndex` method of the `SDataGrid` class. This method takes the DetailsViewDataGrid as a parameter and returns the corresponding details view row index.

Here is an example of how you can use this method to get the details view row index of a DetailsViewDataGrid:

{% tabs %}
{% highlight C# %}

int detailsViewRowIndex = this.sfDataGrid1.GetDetailsViewDataGridRowIndex(detailsViewDataGrid);

{% endhighlight %}
{% endtabs %}

If the specified DetailsViewDataGrid does not match with in the DetailsViewDataRow.DetailsViewDataGrid then it will return a value of -1. Otherwise will return the details view row index of the `detailsViewDataGrid`.

GetTableSummaryCount(VerticalPosition position)

To get the total number of table summary rows in a specific position (e.g. top or bottom) in a SfDataGrid, you can use the `GetTableSummaryCount` method of the `DataGridIndexResolver` class. This method takes a VerticalPosition enum value as a parameter and returns the number of table summary rows in the specified position.

Here is an example of how you can use this method to get the total number of top table summary rows in the grid:

{% tabs %}
{% highlight C# %}

int tableSummaryCount = this.sfDataGrid1.TableControl.GetTableSummaryCount(VerticalPosition.Top);

{% endhighlight %}
{% endtabs %}

This will return the total number of top table summary rows in the grid.

GetHeaderIndex()

To get the header row index of a SfDataGrid control, you can use the `GetHeaderIndex` method of the `DataGridIndexResolver` class. This method returns the index of the header row in the grid.

Here is an example of how you can use this method to get the header row index in the grid:

{% tabs %}
{% highlight C# %}

int headerRowIndex = this.sfDataGrid1.TableControl.GetHeaderIndex();
	
{% endhighlight %}
{% endtabs %}

This will return the index of the header row in the grid.

IsAddNewIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid represents the `AddNewRow`, you can use the `IsAddNewIndex` method of the `SfDataGrid` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is the `AddNewRow`.

Here is an example of how you can use this method to determine if a row is the `AddNewRow` :

{% tabs %}
{% highlight C# %}

bool isAddNewRow = this.sfDataGrid1.IsAddNewRowIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is the `AddNewRow`, and `false` otherwise.

IsTableSummaryIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid represents the `TableSummaryRow` you can use the `IsTableSummaryIndex` method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is a `TableSummaryRow`.

Here is an example of how you can use this method to determine if a row is a `TableSummaryRow` :

{% tabs %}
{% highlight C# %}

bool isTableSummaryRow = this.sfDataGrid1.TableControl.IsTableSummaryIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is the `TableSummaryRow`, and `false` otherwise.

IsFilterRowIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid represents the `FilterRow`, you can use the `IsFilterRowIndex` method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is the `FilterRow`.

Here is an example of how you can use this method to determine if a row is the filter row:

{% tabs %}
{% highlight C# %}

bool isFilterRow = this.sfDataGrid1.IsFilterRowIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is the `FilterRow`, and `false` otherwise.

## Dispose

The method is associated with relinquishes memory and clears all references associated with SfDataGrid. When you call this method, it releases all the reference for SfDataGrid. So the memory it is occupying using the DataGrid is reclaimed. You have to call `SfDataGrid.Dispose` method to release the memory.

