---
layout: post
title: Selection | DataGrid Control for Windows Forms | Syncfusion
description: This section explains about the selection feature and it's customization in datagrid control for windows forms
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Selection

SfDataGrid allows you to select one or more rows or cells. For selecting a specific row or group of rows, set the [SelectionUnit](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionUnit.html) as row. For selecting a specific cell or group of cells, set the SelectionUnit as cell or Any.In SelectionUnit.Any option. A row can be selected by clicking its row header.

### Current cell navigation

Keyboard navigation through the cells and rows is determined based on the [NavigationMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~NavigationMode.html) property. The NavigationMode.Cell allows you to navigate between the cells in a row and between the rows. The NavigationMode.Row allows you to navigate between the rows. It is not possible to set the NavigationMode.Row when the cell selection is enabled (SelectionUnit is cell or any).

## Selection modes

The [SelectionUnit](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionUnit.html) and [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) properties defines the behavior of selection in SfDataGrid. If the SelectionMode is single, a single row or cell can be selected. If the SelectionMode is extended or multiple, multiple rows or cells can be selected. The selection can be disabled by changing the SelectionMode as none.

### Single row or cell selection

If the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is `Single`, a single row or cell can be selected. SfDataGrid allows you to select or deselect a single row or cell, when the `SelectionMode` is `SingleDeselect`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionMode = GridSelectionMode.Single;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectionMode = GridSelectionMode.Single
{% endhighlight %}
{% endtabs %}

The following image shows for a single mode row selection.

![Windows form datagrid showing single mode row selection](Selection_images/selection1.png)

The following image shows for a single mode cell selection.

![Windows form datagrid showing single mode cell selection](Selection_images/selection14.png)

N> When the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is `SingleDeselect`, a single row or cell can be selected or deselected by clicking the respective row and cell or by pressing Space key.

### Multiple row or cell selection

SfDataGrid allows you to select multiple rows or cells by setting the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) property as `Extended` or `Multiple` by dragging the mouse on SfDataGrid and using key modifiers.

When using extended and multiple modes, the rows or cells can be selected by pressing the key modifiers: Ctrl and Shift.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionMode = GridSelectionMode.Extended;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectionMode = GridSelectionMode.Extended
{% endhighlight %}
{% endtabs %}

The following image shows for extended mode row selection.

![Windows form datagrid showing extended mode row selection](Selection_images/selection2.png)

The following image shows for extended mode cell selection.

![Windows form datagrid showing extended mode cell selection](Selection_images/selection15.png)

N>  When the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is `Multiple`, multiple rows or cells can be selected or deselected by clicking the respective rows or cells. In multiple selection, pressing navigation keys will move the current cell alone. The rows or cells can be selected or deselected by pressing the Space key.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionMode = GridSelectionMode.Multiple;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectionMode = GridSelectionMode.Multiple
{% endhighlight %}
{% endtabs %}

The following image shows for multiple mode row selection.
![Windows form datagrid showing multiple mode row selection](Selection_images/selection3.png)

The following image shows for multiple mode cell selection.

![Windows form datagrid showing multiple mode cell selection](Selection_images/selection16.png)

### Disable the selection

The selection can be disabled by setting the `SelectionMode` property as `None`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionMode = GridSelectionMode.None;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectionMode = GridSelectionMode.None
{% endhighlight %}
{% endtabs %}

Selection on a particular row can be disabled by handling the [CurrentCellActivating](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellActivating_EV.html) event.

The column selection and navigation can be disabled by setting the [AllowFocus](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~AllowFocus.html) property to `false`.

{% tabs %}
{% highlight c# %}
// Disable the focus for the column.
sfDataGrid.Columns[2].AllowFocus = false;
{% endhighlight %}
{% highlight vb %}
' Disable the focus for the particular column.
sfDataGrid.Columns(2).AllowFocus = False
{% endhighlight %}
{% endtabs %}

N> You can edit and select the FilterRow and AddNewRow cells though the `AllowFocus` property is set to `false`.

N> It is not possible to select header rows, table summary rows, unbound rows which are above the table summary row when it’s placed in top and the unbound rows which are below table summary rows when it’s placed in bottom of SfDataGrid.

{% tabs %}
{% highlight c# %}
// Disable the focus for the column.
sfDataGrid.Columns[2].AllowFocus = false;
{% endhighlight %}
{% highlight vb %}
' Disable the focus for the particular column.
sfDataGrid.Columns(2).AllowFocus = False
{% endhighlight %}
{% endtabs %}

N> You cannot select the header rows and table summary rows of SfDataGrid. You cannot also select the unbound rows which are above and below the table summary row.

## Get selected rows and cells

The [SelectedItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItem.html) property returns the data object of the selected row and the [SelectedIndex](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedIndex.html) property returns the index of the `SelectedItem` in SfDataGrid. `SelectedItem` denotes the first selected row in multiple selection.

### Row selection
 
Get all the selected records using the [SelectedItems](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItems.html) property.
 
### Cell selection

Get the selected cells using the [GetSelectedCells](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~GetSelectedCells.html) method of `CellSelectionController` collection.

### CurrentItem vs SelectedItem
Both [SelectedItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItem.html) and [CurrentItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentItem.html) returns the same data object when there is single row is selected in SfDataGrid. When more than one rows are selected, the record that had been selected initially is maintained in `SelectedItem` and the record that currently have focus is maintained in `CurrentItem`.

## Programmatic selection

### Process selection using properties

A single row can be selected by setting the [SelectedItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItem.html) or [SelectedIndex](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedIndex.html) property.

{% tabs %}
{% highlight c# %}
var record = SelectionHelper.GetRecordAtRowIndex(this.sfDataGrid, 3);
this.sfDataGrid1.SelectedItem = record;
{% endhighlight %}
{% highlight vb %}
Dim record = SelectionHelper.GetRecordAtRowIndex(Me.sfDataGrid, 3)
Me.sfDataGrid1.SelectedItem = record
{% endhighlight %}
{% endtabs %}

{% tabs %}
{% highlight c# %}
var recordIndex = this.sfDataGrid.TableControl.ResolveToRecordIndex(5);
this.sfDataGrid1.SelectedIndex = recordIndex;
{% endhighlight %}
{% highlight vb %}
Dim recordIndex = Me.sfDataGrid.TableControl.ResolveToRecordIndex(5)
Me.sfDataGrid1.SelectedIndex = recordIndex
{% endhighlight %}
{% endtabs %}

A single cell can be selected by using the [SelectCell](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectCell.html) method.

{% tabs %}
{% highlight c# %}
var record = this.sfDataGrid.View.Records[5];
var column = this.sfDataGrid.Columns[2];
this.sfDataGrid.SelectCell(record, column);
{% endhighlight %}
{% highlight vb %}
Dim record = Me.sfDataGrid.View.Records(5)
Dim column = Me.sfDataGrid.Columns(2)
Me.sfDataGrid.SelectCell(record, column)
{% endhighlight %}
{% endtabs %}

Multiple rows can be selected by adding data objects to [SelectedItems](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItems.html) property.

{% tabs %}
{% highlight c# %}
var records = this.sfDataGrid.View.Records;

foreach(var record in records)
{
    var obj = record.Data as OrderInfo;
    if (obj.ProductName == "Raclette Courdavault")
      this.sfDataGrid1.SelectedItems.Add(obj);
}
{% endhighlight %}
{% highlight vb %}
Dim records = Me.sfDataGrid.View.Records

For Each record In records
	Dim obj = TryCast(record.Data, OrderInfo)
	If obj.ProductName = "Raclette Courdavault" Then
	  Me.sfDataGrid1.SelectedItems.Add(obj)
	End If
Next record
{% endhighlight %}
{% endtabs %}
![Windows form datagrid showing selected multiple rows by adding data](Selection_images/selection4.png)

### Process Selection using Methods
SfDataGrid Allows to select a range of rows through [SelectRows](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectRows.html) method.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectRows(3, 6);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectRows(3, 6)
{% endhighlight %}
{% endtabs %}
![Windows form datagrid showing select range of rows](Selection_images/selection5.png)

SfDataGrid allows you to select a range of cells through the [SelectCells](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectCells.html) method.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.SelectCells(sfDataGrid.View.Records[5], sfDataGrid.Columns["ProductName"], sfDataGrid.View.Records[10], sfDataGrid.Columns["Quantity"]);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.SelectCells(sfDataGrid.View.Records(5), sfDataGrid.Columns("ProductName"), sfDataGrid.View.Records(10), sfDataGrid.Columns("Quantity"))
{% endhighlight %}
{% endtabs %}
![Windows form datagrid showing select range of cells](Selection_images/selection17.png)

All the rows or cells can be selected by using [SelectAll](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectAll.html) method in SfDataGrid.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectAll();
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SelectAll()
{% endhighlight %}
{% endtabs %}

### Process Current Cell
When a particular record is assigned to the [CurrentItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentItem.html) property, the [CurrentCell](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCell.html) will be moved to corresponding record when the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is `Multiple` or `Extended` and the selection will added to the particular record item when the SelectionMode is `Single`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CurrentItem = SelectionHelper.GetRecordAtRowIndex(this.sfDataGrid, 2);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.CurrentItem = SelectionHelper.GetRecordAtRowIndex(Me.sfDataGrid, 2)
{% endhighlight %}
{% endtabs %}

The `CurrentCell` can be moved to a particular RowColumnIndex by using the  [MoveToCurrentCell](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~MoveToCurrentCell.html) method.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.MoveToCurrentCell(new RowColumnIndex(3, 3));
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.MoveToCurrentCell(New RowColumnIndex(3, 3))
{% endhighlight %}
{% endtabs %}

### Get the current cell

The current cell information such as row index, column index, and column name can be retrieved using the [SfDataGrid.CurrentCell](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCell.html) property. 

{% tabs %}
{% highlight c# %}
if (this.sfDataGrid.CurrentCell != null)
{
    var currentCellRowIndex = this.sfDataGrid.CurrentCell.RowIndex;
    var currentCellColumnIndex = this.sfDataGrid.CurrentCell.ColumnIndex;
    var currentCellColumn = this.sfDataGrid.CurrentCell.Column;
}
{% endhighlight %}
{% highlight vb %}
If Me.sfDataGrid.CurrentCell IsNot Nothing Then
	Dim currentCellRowIndex = Me.sfDataGrid.CurrentCell.RowIndex
	Dim currentCellColumnIndex = Me.sfDataGrid.CurrentCell.ColumnIndex
	Dim currentCellColumn = Me.sfDataGrid.CurrentCell.Column
End If
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing get the cell information](Selection_images/selection13.png)

### Clear Selection
The Selection can be cleared by using the [ClearSelection](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ClearSelection.html) Method. Selection can also be removed by setting null to[SelectionItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItem.html) or by clearing the [SelectedItems](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectedItems.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ClearSelection();
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ClearSelection()
{% endhighlight %}
{% endtabs %}

SfDataGrid can clear the selection of a particular cell by using the [UnSelectCell](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~UnselectCell.html) method.

{% tabs %}
{% highlight c# %}
var removeRecord = this.sfDataGrid.View.Records[7];
var removeColumn = this.sfDataGrid.Columns[3];
this.sfDataGrid.UnselectCell(removeRecord, removeColumn);
{% endhighlight %}
{% highlight vb %}
Dim removeRecord = Me.sfDataGrid.View.Records(7)
Dim removeColumn = Me.sfDataGrid.Columns(3)
Me.sfDataGrid.UnselectCell(removeRecord, removeColumn)
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing clear the selection of particular cell](Selection_images/selection18.png)

SfDataGrid can clear the selection of a group of cells by using the [UnSelectCells](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~UnselectCells.html) method.

{% tabs %}
{% highlight c# %}
var firstRecord = this.sfDataGrid.View.Records[7];
var lastRecord = this.sfDataGrid.View.Records[8];
var firstColumn = this.sfDataGrid.Columns[2];
var lastColumn = this.sfDataGrid.Columns[3];
this.sfDataGrid.UnselectCells(firstRecord, firstColumn, lastRecord, lastColumn);
{% endhighlight %}
{% highlight vb %}
Dim firstRecord = Me.sfDataGrid.View.Records(7)
Dim lastRecord = Me.sfDataGrid.View.Records(8)
Dim firstColumn = Me.sfDataGrid.Columns(2)
Dim lastColumn = Me.sfDataGrid.Columns(3)
Me.sfDataGrid.UnselectCells(firstRecord, firstColumn, lastRecord, lastColumn)
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing clear the selection of grouping cells](Selection_images/selection19.png)

## Get the  Cell Value

### Get the current cell value
The current cell value can be retrieved by using the [GridCellRendererBase.GetControlValue](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridCellRendererBase~GetControlValue.html) method when the `CurrentCell` value is not null.

{% tabs %}
{% highlight c# %}
if (sfDataGrid1.CurrentCell != null)
{
    // Get the CurrentCellValue
    var currentCellValue = sfDataGrid1.CurrentCell.CellRenderer.GetControlValue();
    MessageBox.Show(currentCellValue.ToString(), "Current Cell Value");
}
{% endhighlight %}
{% highlight vb %}
If sfDataGrid1.CurrentCell IsNot Nothing Then
	' Get the CurrentCellValue
	Dim currentCellValue = sfDataGrid1.CurrentCell.CellRenderer.GetControlValue()
	MessageBox.Show(currentCellValue.ToString(), "Current Cell Value")
End If
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing current cell value](Selection_images/selection9.png)

### Get the value of a cell

A particular cell value can be retrieved from records in the [SfDataGrid.View](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~View.html) by using the row column index of the cell.

{% tabs %}
{% highlight c# %}
// Get the cell value for RowIndex = 5 and ColumnIndex = 2
string cellValue;
int rowIndex = 5;
int columnIndex = sfDataGrid1.TableControl.ResolveToGridVisibleColumnIndex(2);
if (columnIndex < 0)
    return;
var mappingName = sfDataGrid1.Columns[columnIndex].MappingName;
var recordIndex = sfDataGrid1.TableControl.ResolveToRecordIndex(rowIndex);
if (recordIndex < 0)
    return;
if (sfDataGrid1.View.TopLevelGroup != null)
{
    var record = sfDataGrid1.View.TopLevelGroup.DisplayElements[recordIndex];
    if (!record.IsRecords)
        return;
    var data = (record as RecordEntry).Data;
    cellValue = (data.GetType().GetProperty(mappingName).GetValue(data, null).ToString());
}
else
{
    var record1 = sfDataGrid1.View.Records.GetItemAt(recordIndex);
    cellValue = (record1.GetType().GetProperty(mappingName).GetValue(record1, null).ToString());
}

MessageBox.Show(cellValue, "Value in cell (" + rowIndex + ", " + columnIndex + ")");
{% endhighlight %}
{% highlight vb %}
Dim cellValue As String
Dim rowIndex As Integer = 5
Dim columnIndex As Integer = sfDataGrid1.TableControl.ResolveToGridVisibleColumnIndex(2)
If columnIndex < 0 Then
	Return
End If
Dim mappingName = sfDataGrid1.Columns(columnIndex).MappingName
Dim recordIndex = sfDataGrid1.TableControl.ResolveToRecordIndex(rowIndex)
If recordIndex < 0 Then
	Return
End If
If sfDataGrid1.View.TopLevelGroup IsNot Nothing Then
	Dim record = sfDataGrid1.View.TopLevelGroup.DisplayElements(recordIndex)
	If Not record.IsRecords Then
		Return
	End If
	Dim data = (TryCast(record, RecordEntry)).Data
	cellValue = (data.GetType().GetProperty(mappingName).GetValue(data, Nothing).ToString())
Else
	Dim record1 = sfDataGrid1.View.Records.GetItemAt(recordIndex)
	cellValue = (record1.GetType().GetProperty(mappingName).GetValue(record1, Nothing).ToString())
End If

MessageBox.Show(cellValue, "Value in cell (" & rowIndex & ", " & columnIndex & ")")
& ")")
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing get values from records](Selection_images/selection10.png)

### Getting the cell value by using cell click event

The cell value can also be retrieved by using the [SfDataGrid.CellClick](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CellClick_EV.html) event when clicking the cell.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CellClick += OnSfDataGridCellClick;   

private void OnSfDataGridCellClick(object sender, CellClickEventArgs e)
{
    // Get the row index value        
    var rowIndex = e.DataRow.RowIndex;
    //Get the column index value
    var columnIndex = e.DataColumn.ColumnIndex;
    //Get the cell value            
    var cellValue = this.sfDataGrid.View.GetPropertyAccessProvider().GetValue(e.DataRow.RowData, e.DataColumn.GridColumn.MappingName);
    MessageBox.Show("Cell Value \t:    " + cellValue + "\n" + "Row Index \t:    " + rowIndex + "\n" + "Column Index \t:    " + columnIndex, "Cell Value");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.CellClick, AddressOf OnSfDataGridCellClick 

Private Sub OnSfDataGridCellClick(ByVal sender As Object, ByVal e As CellClickEventArgs)
		 ' Get the row index value        
		 Dim rowIndex = e.DataRow.RowIndex
		 'Get the column index value
		 Dim columnIndex = e.DataColumn.ColumnIndex
		 'Get the cell value            
		 Dim cellValue = Me.sfDataGrid.View.GetPropertyAccessProvider().GetValue(e.DataRow.RowData, e.DataColumn.GridColumn.MappingName)
		 MessageBox.Show("Cell Value " & Constants.vbTab & ":    " & cellValue + Constants.vbLf & "Row Index " & Constants.vbTab & ":    " & rowIndex + Constants.vbLf & "Column Index " & Constants.vbTab & ":    " & columnIndex, "Cell Value")
End Sub
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing retrieved by clicking the cell](Selection_images/selection11.png)

## Scrolling Rows

### Automatic Scrolling on Drag Selection

SfDataGrid will scrolls rows and columns automatically while performing the drag selection like excel. 


## Mouse and Keyboard Behaviors


### Keyboard Behavior

<table>
<tr>
<td>
{{'**Key or KeyCombinations**        '| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
<kbd>DownArrow</kbd>
</td>
<td>
Moves CurrentCell directly below the active current cell. If the CurrentCell is in last row, pressing Down arrow does nothing.
</td>
</tr>
<tr>
<td>
<kbd>UpArrow</kbd>        
</td>
<td>
Moves the CurrentCell directly above the active current cell. If the CurrentCell is in first row, pressing Up arrow does nothing.
</td>
</tr>
<tr>
<td>
<kbd>LeftArrow</kbd>        
</td>
<td>
Moves the current cell previous to the active current cell. If the CurrentCell is in first cell, pressing Left arrow does nothing. If the focused row is group header, the group will be collapsed when it is in expanded state.
</td>
</tr>
<tr>
<td>
<kbd>RightArrow</kbd>
</td>
<td>
Moves the current cell to next to the active current cell. If the CurrentCell is in last cell, pressing Right arrow does nothing. If the focused row is group header, the group will be expanded when it is in collapsed state.
</td>
</tr>
<tr>
<td>
<kbd>Home</kbd> / <kbd>Ctrl</kbd> + <kbd>LeftArrow</kbd>        
</td>
<td>
Moves the current cell to the first cell of the current row.
</td>
</tr>
<tr>
<td>
<kbd>End</kbd> / <kbd>Ctrl</kbd> + <kbd>RightArrow</kbd>
</td>
<td>
Moves the current cell to the last cell of the current row.
</td>
</tr>
<tr>
<td>
<kbd>PageDown</kbd>        
</td>
<td>
The SfDataGrid will be scrolled to next set of rows that are not displayed in view, including the row that are partially displayed and the current cell is set to last row.
</td>
</tr>
<tr>
<td>
<kbd>PageUp</kbd>        
</td>
<td>
The SfDataGrid will be scrolled to previous set of rows that are not displayed in view, including the row that are partially displayed and the current cell is set to the first row.
</td>
</tr>
<tr>
<td>
<kbd>Tab</kbd>
</td>
<td>
Moves the current cell to next to the active current cell. If the active current cell is the last cell of the current row, the focus will moved to first cell of the row next to the current row.If the active current cell is the last cell of the last row, the focus will be moved to next control in the tab order of the parent container.
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Tab</kbd>
</td>
<td>
Moves the current cell previous to the active current cell. If the active current cell is the first cell of the current row, the current cell will moved to last cell of the row previous to the current row.If the active current cell is the first cell of the first row, the focus will be moved to previous control in the tab order of the parent container.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>DownArrow</kbd>
</td>
<td>
Moves the current cell to the current column of the last row.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>UpArrow</kbd>
</td>
<td>
Moves the current cell to the current column of the first row.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>Home</kbd>
</td>
<td>
Moves the current cell to the first cell of the first row.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>End</kbd>
</td>
<td>
Moves the current cell to the last cell of the last row.
</td>
</tr>
<tr>
<td>
<kbd>Enter</kbd>
</td>
<td>
If the active current cell is in edit mode, the changes will committed and moves the current cell to below the active current cell. If the active current cell is in last row, commits changes only and retains in the same cell.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>Enter</kbd>
</td>
<td>
Commits only the changes when the current cell in edit mode and retains the focus in same cell.
</td>
</tr>
<tr>
<td>
<kbd>F2</kbd>
</td>
<td>
If the DataGrid.AllowEditing property is true and the GridColumn.AllowEditing property is true for the current column, the current cell enters into edit mode.
</td>
</tr>
<tr>
<td>
<kbd>Esc</kbd>
</td>
<td>
If the current cell is in edit mode, reverts the changes that had been done in the current cell. If the underlying source implements the IEditableObject.
</td>
</tr>
<tr>
<td>
<kbd>Delete</kbd>        
</td>
<td>
If the current cell is not in edit mode, the current row will be deleted.
</td>
</tr>
<tr>
<td>
<kbd>Ctrl</kbd> + <kbd>A</kbd>        
</td>
<td>
All rows or cells will be selected.
</td>
</tr>
</table>

### Shift Key Combinations

When the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is set to Extended, multiple rows can be selected by using the navigation keys along with the Shift key. Before navigation starts, the current cell will be marked as a pressed cell and the selection will be done in all rows between the pressed cell and current cell.

<table>
<tr>
<td>
{{'**Key Combinations**'| markdownify }}
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>DownArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>UpArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>RightArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>LeftArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Home</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>End</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>PageDown</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>PageUp</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>DownArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>UpArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>RightArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>LeftArrow</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>Home</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>End</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>PageDown</kbd>
</td>
</tr>
<tr>
<td>
<kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>PageUp</kbd>
</td>
</tr>
</table>

### Mouse Behavior

The selection can be enabled/disabled when the mouse button is in pressed state by setting the [AllowSelectionOnMouseDown](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowSelectionOnMouseDown.html) property.
When a row is clicked along with Shift key, all the rows between the pressed cell to the current cell will be selected, if the [SelectionMode](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionMode.html) is set to `Extended`.

## Customization Using Events

### Cancel CurrentCell Moving 

The current cell moving process can be canceled within [CurrentCellActivating](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellActivating_EV.html#) event by setting [CurrentCellActivatingEventArgs.Cancel](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.CurrentCellActivatingEventArgs_members.html) as true. 
{% tabs %}
{% highlight c# %}
void SfDataGrid1_CurrentCellActivating(object sender, CurrentCellActivatingEventArgs e)
{
  if((e.DataRow.RowData as OrderInfo).CustomerID == "FRANS")
  {
     e.Cancel = true;
  }
}
{% endhighlight %}
{% highlight vb %}
Private Sub SfDataGrid1_CurrentCellActivating(ByVal sender As Object, ByVal e As CurrentCellActivatingEventArgs)
  If (TryCast(e.DataRow.RowData, OrderInfo)).CustomerID = "FRANS" Then
	 e.Cancel = True
  End If
End Sub
{% endhighlight %}
{% endtabs %}

## Customizing Selection Behavior

### Select all the default rows

By default, [SelectAll](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectAll.html) method is select all the rows (CaptionSummary, GroupSummary, UnboundRows, FilterRow, AddNewRow and DefaultRow) in SfDataGrid. The following code shows how to select all the default row except other rows by using SelectAll method.
{% tabs %}
{% highlight c# %}
//Using SelectAll method.
private void SelectAll(object sender, EventArgs e)
{
    this.sfDataGrid.SelectAll();
    this.sfDataGrid.SelectedNodeEntries.Clear();
}
{% endhighlight %}
{% highlight vb %}
' Using SelectAll event.
private void SelectAll(Object sender, EventArgs e)
	Me.sfDataGrid.SelectAll()
	Me.sfDataGrid.SelectedNodeEntries.Clear()
{% endhighlight %}
{% endtabs %}

By default, select all the rows (CaptionSummary, GroupSummary, UnboundRows, FilterRow, AddNewRow and DefaultRow) when press the <kbd>Ctrl+A</kbd> key in SfDataGrid. The following code shows how to select all the default row except other rows by overriding the [HandleKeyOperations](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.RowSelectionController~HandleKeyOperations.html) method in [RowSelectionController](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.RowSelectionController.html).
{% tabs %}
{% highlight c# %}
//Using the Custom SelectionController.
sfDataGrid.SelectionController = new CustomSelectionController(this.sfDataGrid);

public class CustomSelectionController : RowSelectionController
{
    SfDataGrid sfDataGrid;

    public CustomSelectionController(SfDataGrid sfDataGrid)
        : base(sfDataGrid)
    {
        this.sfDataGrid = sfDataGrid;
    }

    protected override void HandleKeyOperations(KeyEventArgs args)
    {
        base.HandleKeyOperations(args);
        if ((Control.ModifierKeys == Keys.Control || Control.ModifierKeys == Keys.ControlKey
            || Control.ModifierKeys == Keys.LControlKey || Control.ModifierKeys == Keys.RControlKey) && args.KeyCode == Keys.A)
            this.sfDataGrid.SelectedNodeEntries.Clear();
    }
}
{% endhighlight %}
{% highlight vb %}
'Using the Custom SelectionController.
sfDataGrid.SelectionController = New CustomSelectionController(Me.sfDataGrid)
public class CustomSelectionController : RowSelectionController
	Dim sfDataGrid As SfDataGrid

	public CustomSelectionController(SfDataGrid sfDataGrid)
		MyBase.New(sfDataGrid)
		Me.sfDataGrid = sfDataGrid

	protected override void HandleKeyOperations(KeyEventArgs args)
		MyBase.HandleKeyOperations(args)
		If (Control.ModifierKeys = Keys.Control OrElse Control.ModifierKeys = Keys.ControlKey OrElse Control.ModifierKeys = Keys.LControlKey OrElse Control.ModifierKeys = Keys.RControlKey) AndAlso args.KeyCode = Keys.A Then
			Me.sfDataGrid.SelectedNodeEntries.Clear()
		End If
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing selected all rows](Selection_images/selection12.png)

Samples Link: [SelectAllRows ](http://www.syncfusion.com/downloads/support/directtrac/general/ze/Select_all_the_default_rows1173780600.zip)

### Change Enter key behavior

When pressing the <kbd>Enter</kbd> key, the current cell will be moved to the next focused row of the same column, by default. The following code shows how to change the <kbd>Enter</kbd> key behavior by overriding the [HandleKeyOperations](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.RowSelectionController~HandleKeyOperations.html) method in [RowSelectionController](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.RowSelectionController.html).

{% tabs %}
{% highlight c# %}
sfDataGrid.SelectionController = new CustomSelectionController(this.sfDataGrid);

public class CustomSelectionController : RowSelectionController
{
    public CustomSelectionController(SfDataGrid dataGrid)
        : base(dataGrid)
    {
    }

    protected override void HandleKeyOperations(KeyEventArgs args)
    {
        if (args.KeyCode == Keys.Enter)
            return;

        base.HandleKeyOperations(args);
    }
}
{% endhighlight %}
{% highlight vb %}
sfDataGrid.SelectionController = New CustomSelectionController(Me.sfDataGrid)

public class CustomSelectionController : RowSelectionController
	public CustomSelectionController(SfDataGrid dataGrid)
		MyBase.New(dataGrid)

	protected override void HandleKeyOperations(KeyEventArgs args)
		If args.KeyCode = Keys.Enter Then
			Return
		End If

		MyBase.HandleKeyOperations(args)
{% endhighlight %}
{% endtabs %}

### Displaying Message Box on Current Cell Activated

The [CurrentCellActivated](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellActivated_EV.html) event provides notification when the current cell is moved from one cell to another.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CurrentCellActivated += SfDataGrid1_CurrentCellActivated;

void SfDataGrid1_CurrentCellActivated(object sender, CurrentCellActivatedEventArgs e)
{
    MessageBox.Show("The current cell is moved to the (" + e.DataRow.RowIndex + "," + e.DataColumn.ColumnIndex + ")");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.CurrentCellActivated, AddressOf SfDataGrid1_CurrentCellActivated

Private Sub SfDataGrid1_CurrentCellActivated(ByVal sender As Object, ByVal e As CurrentCellActivatedEventArgs)
	MessageBox.Show("The current cell is moved to the (" & e.DataRow.RowIndex & "," & e.DataColumn.ColumnIndex & ")")
End Sub
{% endhighlight %}
{% endtabs %}

### Cancel Selection 

The selection process can be canceled within [SelectionChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionChanging_EV.html) event by setting the [SelectionChangingEventArgs.Cancel](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.SelectionChangingEventArgs_members.html) property as true.

{% tabs %}
{% highlight c# %}
void SfDataGrid1_SelectionChanging(object sender, SelectionChangingEventArgs e)
{
   if (e.RemovedItems.Count != 0)
       e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private Sub SfDataGrid1_SelectionChanging(ByVal sender As Object, ByVal e As SelectionChangingEventArgs)
   If e.RemovedItems.Count <> 0 Then
	   e.Cancel = True
   End If
End Sub
{% endhighlight %}
{% endtabs %}

### Displaying Message Box on Selection Changed

The [SelectionChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionChanged_EV.html) event provides notification when the selection is changed from one row to another.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionChanged += SfDataGrid1_SelectionChanged;
void SfDataGrid1_SelectionChanged(object sender, SelectionChangedEventArgs e)
{
    MessageBox.Show("Selection has been changed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.SelectionChanged, AddressOf SfDataGrid1_SelectionChanged
Private Sub SfDataGrid1_SelectionChanged(ByVal sender As Object, ByVal e As SelectionChangedEventArgs)
	MessageBox.Show("Selection has been changed")
End Sub
{% endhighlight %}
{% endtabs %}

### Retrieving the Current Item and Display in Message Box

The current item can be displayed in a message box by using the [CurrentItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentItem.html) property in the [SfDataGrid.SelectionChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SelectionChanged_EV.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SelectionChanged += sfDataGrid1_SelectionChanged;

void sfDataGrid1_SelectionChanged(object sender, Syncfusion.WinForms.DataGrid.Events.SelectionChangedEventArgs e)
{
    var orderInfo = this.sfDataGrid.CurrentItem as OrderInfo;
    MessageBox.Show("\n Order ID \t-  " + orderInfo.OrderID.ToString() +
                    "\n Customer ID \t-  " + orderInfo.CustomerID +
                    "\n Product Name \t-  " + orderInfo.ProductName +
                    "\n Order Date \t-  " + orderInfo.OrderDate +
                    "\n Quantity \t-  " + orderInfo.Quantity +
                    "\n Unit Price \t-  " + orderInfo.UnitPrice, "Order Details");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.SelectionChanged, AddressOf SfDataGrid1_SelectionChanged

Private Sub sfDataGrid1_SelectionChanged(ByVal sender As Object, ByVal e As Syncfusion.WinForms.DataGrid.Events.SelectionChangedEventArgs)
	Dim orderInfo = TryCast(Me.sfDataGrid.CurrentItem, OrderInfo)
    MessageBox.Show(Constants.vbLf & " Order ID " & Constants.vbTab & "-  " & orderInfo.OrderID.ToString() &
                    Constants.vbLf & " Customer ID " & Constants.vbTab & "-  " & orderInfo.CustomerID +
                    Constants.vbLf & " Product Name " & Constants.vbTab & "-  " & orderInfo.ProductName +
                    Constants.vbLf & " Order Date " & Constants.vbTab & "-  " & orderInfo.OrderDate.ToString() &
                    Constants.vbLf & " Quantity " & Constants.vbTab & "-  " & orderInfo.Quantity.ToString() &
                    Constants.vbLf & " Unit Price " & Constants.vbTab & "-  " & orderInfo.UnitPrice.ToString(), "Order Details")
End Sub
{% endhighlight %}
{% endtabs %}

![Windows form datagrid showing get the data in message box](Selection_images/selection8.png)

## Appearance

SfDataGrid allows to customize the appearance of the selected rows and current cell through [SfDatagrid.Style](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~Style.html) property.

### Selection

#### Change the Background and Foreground Color for Selection

The selection background and foreground color can be changed  of by [SfDataGrid.Style.SelectionStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~SelectionStyle.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.SelectionStyle.BackColor = Color.LightSeaGreen;
this.sfDataGrid1.Style.SelectionStyle.TextColor = Color.DarkBlue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.SelectionStyle.BackColor = Color.LightSeaGreen
Me.sfDataGrid1.Style.SelectionStyle.TextColor = Color.DarkBlue
{% endhighlight %}
{% endtabs %}
![Windows form datagrid showing changed color in selected rows](Selection_images/selection6.png)

### CurrentCell

#### Change the Background, Foreground, BorderColor, and BorderThickness of CurrentCell

The Background, Foreground, BorderColor, and BorderThickness of the current cell can be changed by [SfDataGrid.Style.CurrentCellStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~CurrentCellStyle.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.CurrentCellStyle.BackColor = SystemColors.Highlight;
this.sfDataGrid1.Style.CurrentCellStyle.TextColor = Color.White;
this.sfDataGrid1.Style.CurrentCellStyle.BorderColor = Color.Red;
this.sfDataGrid1.Style.CurrentCellStyle.BorderThickness = GridBorderWeight.Thick;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.CurrentCellStyle.BackColor = SystemColors.Highlight
Me.sfDataGrid1.Style.CurrentCellStyle.TextColor = Color.White
Me.sfDataGrid1.Style.CurrentCellStyle.BorderColor = Color.Red
Me.sfDataGrid1.Style.CurrentCellStyle.BorderThickness = GridBorderWeight.Thick
{% endhighlight %}
{% endtabs %}
![Windows form datagrid showing change color in selected cell](Selection_images/selection7.png)

