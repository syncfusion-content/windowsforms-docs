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

## ResolveToRecordIndex(int rowIndex)

To obtain the record index of a specific row in a SfDataGrid control, use the [ResolveToRecordIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToRecordIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Int32_) method of the `DataGridIndexResolver` class. This method takes an integer parameter representing the row index and returns the corresponding record index.

Here is an example of how you can use this method to get the record index of a row:

{% tabs %}
{% highlight C# %}

int rowIndex = 5;
int recordIndex = this.sfDataGrid1.TableControl.ResolveToRecordIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

You can also achieve this by directly accessing the method from [DataGridIndexResolver](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html) as shown below :

{% tabs %}
{% highlight C# %}

int rowIndex = 5;
int recordIndex = DataGridIndexResolver.ResolveToRecordIndex(this.sfDataGrid1.TableControl, rowIndex);

{% endhighlight %}
{% endtabs %}

If the record with the specified row index is unavailable, it will return a value of -1. Otherwise, it will return the record index of the specified `rowIndex.`

## ResolveToRowIndex(int recordIndex)

To obtain the row index of a record in a SfDataGrid control, use the [ResolveToRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToRowIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Int32_) method of the `DataGridIndexResolver` class. This method takes an integer parameter representing the record index and returns the corresponding row index.

Here is an example of how you can use this method to get the row index of a record:

{% tabs %}
{% highlight C# %}

int recordIndex = 2;
int rowIndex = this.sfDataGrid1.TableControl.ResolveToRowIndex(recordIndex);

{% endhighlight %}
{% endtabs %}

If the specified record index is less than 0, it will return a value of -1. Otherwise, it will return the row index of the specified `recordIndex.`

## ResolveToRowIndex(object recordItem)

To obtain the row index of a specific record in a SfDataGrid control, use the [ResolveToRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToRowIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Object_) method of the `DataGridIndexResolver` class. This method takes the record object as a parameter and returns the corresponding row index.

Here is an example of how you can use this method to get the row index of a specific record:

{% tabs %}
{% highlight C# %}

int rowIndex = this.sfDataGrid1.TableControl.ResolveToRowIndex(record);

{% endhighlight %}
{% endtabs %}

If the specified record is unavailable, it will return a value of -1. Otherwise, it will return the row index of the specified `record.` 

## ResolveStartIndexOfGroup(Group group)

To obtain the start index of a specific group in a SfDataGrid control, use the [ResolveStartIndexOfGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveStartIndexOfGroup_Syncfusion_WinForms_DataGrid_TableControl_Syncfusion_Data_Group_) method of the `DataGridIndexResolver` class. This method takes a group object as a parameter and returns the corresponding group start index.

Here is an example of how you can use this method to get the start index of a specific group:

{% tabs %}
{% highlight C# %}

var group = this.sfDataGrid1.View.TopLevelGroup.Groups[4];
int groupIndex = this.sfDataGrid1.TableControl.ResolveStartIndexOfGroup(group);
	
{% endhighlight %}
{% endtabs %}

If the specified group is unavailable in the SfDataGrid, it will return a value of -1. Otherwise, it will return the start index of the specified `group.`

## ResolveToGridVisibleColumnIndex(int visibleColumnIndex)

To obtain the GridColumn index for the specified visible column index in a SfDataGrid control, use the [ResolveToGridVisibleColumnIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToGridVisibleColumnIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Int32_) method of the `DataGridIndexResolver` class. This method takes the visible column index as a parameter and returns the corresponding GridColumn index.

Here is an example of how you can use this method to get the GridColumn index of a visible column:

{% tabs %}
{% highlight C# %}

int columnIndex = this.sfDataGrid1.TableControl.ResolveToGridVisibleColumnIndex(visibleColumnIndex);
   
{% endhighlight %}
{% endtabs %}

This method excludes the row header and indent column when determining the GridColumn index. It will return the GridColumn index based on the specified `visibleColumnIndex.`

## ResolveStartIndexBasedOnPosition()

To obtain the starting index of a data row based on the positions of other rows such as the `AddNewRow,` `FilterRow,` and `UnBoundRow,` use the [ResolveStartIndexBasedOnPosition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveStartIndexBasedOnPosition_Syncfusion_WinForms_DataGrid_TableControl_) method of the `DataGridIndexResolver` class.

Here is an example of how you can use this method to get the data row starting index:

{% tabs %}
{% highlight C# %}

int startColumnIndex = this.sfDataGrid1.TableControl.ResolveStartIndexBasedOnPosition();
	
{% endhighlight %}
{% endtabs %}

The method will return an index of the first data row in the SfDataGrid and includes the stacked header row if present when determining the data row starting index. By default, the method returns 0.

## ResolveToScrollColumnIndex(int gridColumnIndex)

To obtain the visible column index for the specified GridColumn index in a SfDataGrid control, use the [ResolveToScrollColumnIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToScrollColumnIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Int32_) method of the `DataGridIndexResolver class`. This method takes the GridColumn index as a parameter and returns the corresponding visible column index.

Here is an example of how you can use this method to get the visible column index based on the specific GridColumn index:

{% tabs %}
{% highlight C# %}

int columnIndex = this.sfDataGrid1.TableControl.ResolveToScrollColumnIndex(gridColumnIndex);
   
{% endhighlight %}
{% endtabs %}

This method includes the row header and indent column when determining the visible column index. It will return the visible column index based on the `gridColumnIndex.`

## ResolveToStartColumnIndex()

To obtain the start column index in a SfDataGrid control, use the [ResolveToStartColumnIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_ResolveToStartColumnIndex_Syncfusion_WinForms_DataGrid_TableControl_) method of the `DataGridIndexResolver` class.

Here is an example of how you can use this method to get the start column index:

{% tabs %}
{% highlight C# %}

int startColumnIndex = this.sfDataGrid1.TableControl.ResolveToStartColumnIndex();
   
{% endhighlight %}
{% endtabs %}

This method will return an index of the start column index in the SfDataGrid.

## GetDetailsViewDataGridRowIndex(DetailsViewDataGrid detailsViewDataGrid)

To obtain the row index of a DetailsViewDataGrid in a SfDataGrid control, use the [GetDetailsViewDataGridRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_GetDetailsViewDataGridRowIndex_Syncfusion_WinForms_DataGrid_SfDataGrid_Syncfusion_WinForms_DataGrid_DetailsViewDataGrid_) method of the `DataGridIndexResolver` class. This method takes the DetailsViewDataGrid as a parameter and returns the corresponding details view row index.

Here is an example of how you can use this method to get the details view row index of a DetailsViewDataGrid:

{% tabs %}
{% highlight C# %}

int detailsViewRowIndex = this.sfDataGrid1.GetDetailsViewDataGridRowIndex(detailsViewDataGrid);

{% endhighlight %}
{% endtabs %}

If the specified DetailsViewDataGrid is unavailable in the SfDataGrid, it will return a value of -1. Otherwise, it will return the row index of the `DetailsViewDataGrid.`

## GetTableSummaryCount(VerticalPosition position)

To obtain the total number of table summary rows in a specific position, for example, top or bottom in a SfDataGrid, use the [GetTableSummaryCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_GetTableSummaryCount_Syncfusion_WinForms_DataGrid_TableControl_Syncfusion_WinForms_DataGrid_Enums_VerticalPosition_) method of the `DataGridIndexResolver` class. This method takes a `VerticalPosition` enum value as a parameter and returns the number of table summary rows in the specified position.

Here is an example of how you can use this method to get the total number of table summary rows in the SfDataGrid in the top position:

{% tabs %}
{% highlight C# %}

int tableSummaryCount = this.sfDataGrid1.TableControl.GetTableSummaryCount(VerticalPosition.Top);

{% endhighlight %}
{% endtabs %}

This will return the total number of table summary rows in the SfDataGrid. By default, the method returns 0 if the SfDataGrid does not have any table summary row.

## GetHeaderIndex()

To obtain the header row index of a SfDataGrid control, use the [GetHeaderIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_GetHeaderIndex_Syncfusion_WinForms_DataGrid_TableControl_) method of the `DataGridIndexResolver` class. This method returns the index of the header row in the SfDataGrid.

Here is an example of how you can use this method to get the header row index in the SfDataGrid:

{% tabs %}
{% highlight C# %}

int headerRowIndex = this.sfDataGrid1.TableControl.GetHeaderIndex();
	
{% endhighlight %}
{% endtabs %}

This will return the index of the header row in the SfDataGrid.

## IsAddNewIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid is associated with the `AddNewRow,` use the [IsAddNewIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_IsAddNewRowIndex_Syncfusion_WinForms_DataGrid_SfDataGrid_System_Int32_) method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is the `AddNewRow.`

Here is an example of how you can use this method to determine if a row is the `AddNewRow:`

{% tabs %}
{% highlight C# %}

bool isAddNewRow = this.sfDataGrid1.IsAddNewRowIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is associated with the `AddNewRow,` and `false` otherwise.

## IsTableSummaryIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid is associated with the `TableSummaryRow,` use the [IsTableSummaryIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_IsTableSummaryIndex_Syncfusion_WinForms_DataGrid_TableControl_System_Int32_) method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is a `TableSummaryRow.`

Here is an example of how you can use this method to determine if a row is a `TableSummaryRow:`

{% tabs %}
{% highlight C# %}

bool isTableSummaryRow = this.sfDataGrid1.TableControl.IsTableSummaryIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is associated with the `TableSummaryRow,` and `false` otherwise.

## IsFilterRowIndex(int rowIndex)

To determine if a specific row index in a SfDataGrid is associated with the `FilterRow,` use the [IsFilterRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.DataGridIndexResolver.html#Syncfusion_WinForms_DataGrid_DataGridIndexResolver_IsFilterRowIndex_Syncfusion_WinForms_DataGrid_SfDataGrid_System_Int32_) method of the `DataGridIndexResolver` class. This method takes the row index as a parameter and returns a boolean value indicating whether the specified row is the `FilterRow.`

Here is an example of how you can use this method to determine if a row is a `FilterRow:`

{% tabs %}
{% highlight C# %}

bool isFilterRow = this.sfDataGrid1.IsFilterRowIndex(rowIndex);

{% endhighlight %}
{% endtabs %}

This will return `true` if the specified rowIndex is associated with the `FilterRow,` and `false` otherwise.

## Dispose

The method is associated with relinquishes memory and clears all references associated with SfDataGrid. When you call this method, it releases all the reference for SfDataGrid. So the memory it is occupying using the DataGrid is reclaimed. You have to call `SfDataGrid.Dispose` method to release the memory.

