---
layout: post
title: QTP/UFT for Syncfusion Essential WindowsForms
description: This section explains about the Supported Controls and Methods for QTP/UFT.
platform: WindowsForms
control: Testing
documentation: ug
---

# Supported Controls and Methods

The following controls are supported by Essential QuickTest Professional,

* Essential Grid
* Essential Tools
* Essential Chart
* Essential Schedule
* Essential Diagram

Supported methods denote those methods that are recorded in QTP/UFT.

## Essential Grid
Essential Grid supports the following controls,

* GridControl
* GridDataBoundGrid
* GridGroupingControl
* GridListControl
* TabBarSplitterControl

The following are the recorded methods and their corresponding descriptions for Essential Grid,

### Grid Control

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void CellButtonClick(int row, int col)
</td>
<td>
Raises the click on the cell button.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CellDoubleClick(int row, int col)
</td>
<td>
Raises the cell double-click.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetDescription(int row, int col)
</td>
<td>
Gets the description of grid cells.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
void MouseDown(int row, int col, string button)
</td>
<td>
Raises a click in the grid.
</td>
<td>
int row, int col, string button
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveColumn(int fromColumn, int count, int target)
</td>
<td>
Moves a range of columns.
</td>
<td>
int count, int target
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveRow(int from, int count, int target)
</td>
<td>
Moves a range of rows from the specified location to a target location.
</td>
<td>
int from, int count, int target
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeColumn(int fromColumn, int to, int width)
</td>
<td>
Resizes the specified columns.
</td>
<td>
int fromColumn, int to, int width
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeRow(int fromRow, int to, int height)
</td>
<td>
Resizes the specified rows.
</td>
<td>
int fromRow, int to, int height
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRange(string range, int top, int left, int bottom, int right)
</td>
<td>
Selects the range.
</td>
<td>
string range, int top, int left, int bottom, int right
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellData(int row, int col, string value)
</td>
<td>
Sets the cell value of the cell.
</td>
<td>
int row, int col, string value
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellCheckBox(int row, int col, string text)
</td>
<td>
Sets the cell value of the check box cell.
</td>
<td>
int row, int col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellRadioButton(int row, int col, string text)
</td>
<td>
Sets the cell value of the radio button cell.
</td>
<td>
int row, int col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCurrentCell(int row, int col)
</td>
<td>
Sets the location of the current cell.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetScrollPosition(int vScrollPosition, int hScrollPosition)
</td>
<td>
Sets the scroll position.
</td>
<td>
int vScrollPosition, int hScrollPosition
</td>
<td>
void
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">
Helper Functions
</td>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>
void BeginEdit(int row, int col)
</td>
<td>
Brings the editing cursor in the specified grid cell.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void EndEdit(int row, int col)
</td>
<td>
Finishes the editing mode of the cell specified.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetCellType(int row, int col)
</td>
<td>
Retrieves the CellType for the given cell coordinates.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetColumnCount()
</td>
<td>
Retrieves the number of columns used.
</td>
<td>

</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetColumnIndex(string name)
</td>
<td>
Finds the column index for the given column name, returns 0 when the search fails.
</td>
<td>
string name
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetFormattedText(int row, int col)
</td>
<td>
Retrieves the formatted cell format.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
bool IsFormulaCell(int row, int col, out string formula, out string computedValue)
</td>
<td>
For a given row and column index, IsFormulaCell points to the formula used in that cell and the result of the formula. This also returns 'false' when this cell is not a formula cell.
</td>
<td>
int row, int col, out string formula, out string computedValue
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
object GetCellData(int row, int col)
</td>
<td>
For the given Row and Column objects, the cell value of that cell can be obtained.
</td>
<td>
int row, int col
</td>
<td>
object
</td>
</tr>
<tr>
<td>
int GetRowCount()
</td>
<td>
Retrieves the number of rows used.
</td>
<td>

</td>
<td>
int
</td>
</tr>
<tr>
<td>
void InsertColumn(int insertAt, int count)
</td>
<td>
Inserts a range of columns from the specified location.
</td>
<td>
int insertAt, int count
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void InsertRow(int insertAt, int count)
</td>
<td>
Inserts a range of rows from the specified location.
</td>
<td>
int insertAt, int count
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RemoveColumn(int from, int to)
</td>
<td>
Removes a range of columns specified for the Grid control.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RemoveRow(int from, int to)
</td>
<td>
Removes a range of rows specified for the Grid control.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ScrollToCell(int rowIndex, int colIndex)
</td>
<td>
Scrolls the grid so that the cell will be visible for replay.
</td>
<td>
int rowIndex, int colIndex
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void HideRow(int from, int to)
</td>
<td>
Hides a range of rows specified for the Grid control.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ShowHiddenRow(int from, int to)
</td>
<td>
Shows a range of rows specified for the Grid control, that are hiding.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void HideCol(int from, int to)
</td>
<td>
Hides a range of columns specified for the Grid control.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ShowHiddenCol(int from, int to)
</td>
<td>
Shows a range of columns specified for the Grid control.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
int GetSelectedRowIndex()
</td>
<td>
Returns the top row index of the selected row.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetSelectedColIndex()
</td>
<td>
Returns the column index of the selected column.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
Color GetCellBackColor(int row, int col)
</td>
<td>
Gets the back color of the cell.
</td>
<td>
int row, int col
</td>
<td>
Color
</td>
</tr>
<tr>
<td>
string GetName()
</td>
<td>
Gets the name of the Grid control object.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
</table>

### GridDataBoundGrid

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void CellButtonClick(int row, int col)
</td>
<td>
Raises the click on the cell button.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CellDoubleClick(int row, int col)
</td>
<td>
Raises the cell double-click.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CollapseRow(int rowIndex)
</td>
<td>
Collapses the row for the specified row index.
</td>
<td>
int rowIndex)
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DeleteRow(int from, int to)
</td>
<td>
Deletes the specified rows.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ExpandRow(int rowIndex)
</td>
<td>
Expands the Row for the specified row index.
</td>
<td>
int rowIndex
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MouseDown(int row, int col, string button)
</td>
<td>
Raises a click in the grid.
</td>
<td>
int row, int col, string button
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveColumn(int fromColumn, int count, int target)
</td>
<td>
Moves a range of columns.
</td>
<td>
int fromColumn, int count, int target
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeColumn(int fromColumn, int to, int width)
</td>
<td>
Resizes the specified columns.
</td>
<td>
int fromColumn, int to, int width
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeRow(int fromRow, int to, int height)
</td>
<td>
Resizes the specified rows.
</td>
<td>
int fromRow, int to, int height
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRange(string range, int top, int left, int bottom, int right)
</td>
<td>
Selects the range.
</td>
<td>
string range, int top, int left, int bottom, int right
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellData(int row, int col, string value)
</td>
<td>
Sets the cell value of the cell.
</td>
<td>
int row, int col, string value
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellCheckBox(int row, int col, string text)
</td>
<td>
Sets the cell value of the check box cell.
</td>
<td>
int row, int col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellRadioButton(int row, int col, string text)
</td>
<td>
Sets the cell value of the radio button cell.
</td>
<td>
int row, int col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCurrentCell(int row, int col)
</td>
<td>
Sets the location of current cell.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetScrollPosition(int vScrollPosition, int hScrollPosition)
</td>
<td>
Sets the scroll position.
</td>
<td>
int vScrollPosition, int hScrollPosition
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SortColumn(int col, string sortBehavior)
</td>
<td>
Sorts the column.
</td>
<td>
int col, string sortBehavior
</td>
<td>
void
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">
Helper Functions
</td>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>
void BeginEdit(int row, int col)
</td>
<td>
Brings the editing cursor in the specified grid cell.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetCellType(int row, int col)
</td>
<td>
Retrieves the CellType for the given cell co-ordinates.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetCellBackColor(int row, int col)
</td>
<td>
Retrieves the Back color for the given cell co-ordinates.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetColumnCount()
</td>
<td>
Retrieves the number of columns used.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetVisibleColumnCount()
</td>
<td>
Retrieves the number of visible columns.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetColumnIndex(string name)
</td>
<td>
Finds the column index for the given column name, returns 0 if search fails.
</td>
<td>
string name
</td>
<td>
int
</td>
</tr>
<tr>
<td>
Int GetCurrentCellImageIndex(int row, int col)
</td>
<td>
Gets the image index of the current cell.
</td>
<td>
int row, int col
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetFormattedText(int row, int col)
</td>
<td>
Retrieves the formatted cell value.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
bool IsColumnVisible(int col)
</td>
<td>
Checks if the column is visible.
</td>
<td>
int col
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
bool IsFormulaCell(int row, int col, out string formula, out string computedValue)
</td>
<td>
For a given row and column index, IsFormulaCell points to the formula used in that cell and the result of the formula. This also returns 'false' when this cell is not a formula cell.
</td>
<td>
int row, int col, out string formula, out string computedValue
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
object GetCellData(int row, object col)
</td>
<td>
For the given Row and Column objects, the cell value of that cell can be obtained.
</td>
<td>
int row, object col
</td>
<td>
object
</td>
</tr>
<tr>
<td>
int GetRowCount()
</td>
<td>
Retrieves the number of rows used.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
void ScrollToCell(int rowIndex, int colIndex)
</td>
<td>
Scrolls the grid so as the cell to be visible for replay.
</td>
<td>
int rowIndex, int colIndex
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void HideRow(int from, int to)
</td>
<td>
Hides a range of rows specified for the GridControl.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void HideCol(int from, int to)
</td>
<td>
Hides a range of columns specified for the GridControl.
</td>
<td>
int from, int to
</td>
<td>
void
</td>
</tr>
<tr>
<td>
int GetSelectedRowIndex()
</td>
<td>
Returns the top row index of the selected row.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetSelectedColIndex()
</td>
<td>
Returns the column index of the selected column.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetSelectedRowCount()
</td>
<td>
Returns the number of selected rows.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetSelectedColCount()
</td>
<td>
Returns the number of selected columns.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetSelectedRowRange()
</td>
<td>
Returns the Top and Bottom row of the selected row range.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetSelectedColRange()
</td>
<td>
Returns the left and right column of the selected column range.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
bool IsColSorted(int col)
</td>
<td>
Determines whether the column is sorted.
</td>
<td>
int col
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
string GetColSortOrder(int col)
</td>
<td>
Returns the sort order of the sorted column (Ascending or Descending).
</td>
<td>
int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetName()
</td>
<td>
Gets the name of the Grid DataBoundGrid object
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
</table>

### GridGroupingControl

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameter**'| markdownify }}
</td>
<td>
{{'**Return Type **'| markdownify }}
</td>
</tr>
<tr>
<td>
void CellButtonClick(object row, object col)
</td>
<td>
Raises the cell button click.
</td>
<td>
object row, object col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CellDoubleClick(object row,object col)
</td>
<td>
Raises the cell double-click.
</td>
<td>
object row,object col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CollapseRecord(object record)
</td>
<td>
Collapses the record.
</td>
<td>
object record
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CollapseGroup(object row)
</td>
<td>
Collapses the group.
</td>
<td>
object row
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ExpandGroup(object row)
</td>
<td>
Expands the group.
</td>
<td>
object row
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ExpandRecord(object record)
</td>
<td>
Expands the record.
</td>
<td>
object record
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void FindRecordInGrid(string tableObject, string columnName, string data)
</td>
<td>
Returns the first index of the searched data for the given column of the table, as located in the NestedDisplayElements.
</td>
<td>
string tableObject, string columnName, string data
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void FindRecordInTable(string tableObject, string columnName, string data)
</td>
<td>
Returns the first index of the searched data for the given column.
</td>
<td>
string tableObject, string columnName, string data
</td>
<td>
void
</td>
</tr>
<tr>
<td>
int GetAbsoluteRowIndex(int RowIndex)
</td>
<td>
Retrieves the absolute RowIndex.
</td>
<td>
int RowIndex
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetBackColor(int row)
</td>
<td>
Gets the BackColor of the record.
</td>
<td>
int row
</td>
<td>
string
</td>
</tr>
<tr>
<td>
object GetCellBackColor(object row, object col)
</td>
<td>
Gets the BackColor of the Cell.
</td>
<td>
object row, object col
</td>
<td>
object
</td>
</tr>
<tr>
<td>
object GetCellData(object row, object col)
</td>
<td>
For the given Row and Column objects, the cell value of that cell can be obtained.
</td>
<td>
object row, object col
</td>
<td>
object
</td>
</tr>
<tr>
<td>
int GetChildCount(object row)
</td>
<td>
Gets the child count for the given caption row and a record row.
</td>
<td>
object row
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetDescription(object row, object col)
</td>
<td>
Gets the description of grid cells.
</td>
<td>
object row, object col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetColumnCount()
</td>
<td>
Returns the sort order of the sorted column (Ascending or Descending).
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetColSortOrder(int col)
</td>
<td>
Returns the sort order of the sorted column (Ascending or Descending).
</td>
<td>
int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetColumnName(string table name, int ColIndex)
</td>
<td>
For a given table name and column index, the column name in which an element resides can be obtained.
</td>
<td>
string table name, int ColIndex
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetDetails()
</td>
<td>
Gets details like table, record, and table descriptor.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetLevelByTableName(string name)
</td>
<td>
Gets the level of table for the given table name.
</td>
<td>
string name
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetRowCount()
</td>
<td>
Retrieves the number of rows used.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetRowElement(object row)
</td>
<td>
Gets the row element.
</td>
<td>
object row
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetSelectedColIndex()
</td>
<td>
Returns the Left column index of the selected columns.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetSelectedRowIndex()
</td>
<td>
Returns the top row index of the selected row.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
string GetSelectedRowRange()
</td>
<td>
Returns the Top and Bottom row of the selected row range.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetTableName(object row)
</td>
<td>
Obtains the table name for a given Row.
</td>
<td>
object row
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetTableNameByLevel(int level)
</td>
<td>
Gets the level of the table for the given table name.
</td>
<td>
int level
</td>
<td>
string
</td>
</tr>
<tr>
<td>
void GroupBy(string table name,string column, string status)
</td>
<td>
Defines grouping and ungrouping of specified columns.
</td>
<td>
string table name,string column, string status
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MouseDown(object row, object col, string button)
</td>
<td>
Raises the MouseDown.
</td>
<td>
object row, object col, string button
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MouseDownOnRowHeader(int row, int col, string button)
</td>
<td>
Raises the MouseDown on the RowHeader.
</td>
<td>
int row, int col, string button
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveColumn(string table name, object fromColumn, object count, object target)
</td>
<td>
Moves a range of columns.
</td>
<td>
string table name, object fromColumn, object count, object target
</td>
<td>
void
</td>
</tr>
<tr>
<td>
bool IsColSorted(int col)
</td>
<td>
Determines whether the column is sorted.
</td>
<td>
int col
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
bool IsGroupExpanded(object row)
</td>
<td>
Determines whether the specified group is expanded.
</td>
<td>
object row
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
bool IsGroupRow(object row)
</td>
<td>
Determines whether the specified row is a caption row or caption section.
</td>
<td>
object row
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
bool IsRecord(object record)
</td>
<td>
Determines whether the specified row is a record.
</td>
<td>
object record
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
bool IsRecordExpanded(object record)
</td>
<td>
Determines whether the specified record is expanded.
</td>
<td>
object record
</td>
<td>
bool
</td>
</tr>
<tr>
<td>
void ResizeColumn(string table name, int fromColumn, int to, int width)
</td>
<td>
Resizes the specified column.
</td>
<td>
string table name, int fromColumn, int to, int width
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeRow(string table name, int fromRow, int to, int height)
</td>
<td>
Resizes the specified rows.
</td>
<td>
string table name, int fromRow, int to, int height
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRange(string range, int top, int left, int bottom, int right)
</td>
<td>
Selects the range.
</td>
<td>
string range, int top, int left, int bottom, int right
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRecord(object row, string status)
</td>
<td>
Selects a record for the GridGroupingControl.
</td>
<td>
object row, string status
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellData(object row, object col, string value)
</td>
<td>
Sets the cell value of the cell.
</td>
<td>
object row, object col, string value
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellCheckBox(object row, object col, string text)
</td>
<td>
Sets the cell value of the check box cell.
</td>
<td>
object row, object col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCellRadioButton(object row, object col, string text)
</td>
<td>
Sets the cell value of the radio button cell.
</td>
<td>
object row, object col, string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCurrentCell(object row, object col)
</td>
<td>
Sets the location of current cell.
</td>
<td>
object row, object col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetScrollPosition(int vScrollPosition, int hScrollPosition)
</td>
<td>
Sets the scroll position.
</td>
<td>
int vScrollPosition, int hScrollPosition
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SortColumn(string table name,object col, string sortBehavior, bool control)
</td>
<td>
Sorts the column.
</td>
<td>
string table name,object col, string sortBehavior, bool control
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRecords(object row, object count)
</td>
<td>
Selects multiple records for the GridGroupingControl.
</td>
<td>
object row, object count
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ScrollToColumn(string table name, object col)
</td>
<td>
The grid will scroll to the given column.
</td>
<td>
string table name, object col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ScrollToRow(int row)
</td>
<td>
The grid will scroll to the given row.
</td>
<td>
int row
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void AddNewRow(string obj)
</td>
<td>
A new row will be added.
</td>
<td>
string obj
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetFormattedText(int row, int col)
</td>
<td>
Retrieves the formatted cell value.
</td>
<td>
int row, int col
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetName()
</td>
<td>
Gets the name of the Grid control object.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
</table>

### GridListControl

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void ResizeColumn(object fromColumn, int to, int width)
</td>
<td>
Resizes the specified columns.
</td>
<td>
object fromColumn, int to, int width
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeRow(int fromRow, int to, int height)
</td>
<td>
Resizes the specified rows.
</td>
<td>
int fromRow, int to, int height
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRow(int top,int bottom)
</td>
<td>
Selects the range.
</td>
<td>
int top,int bottom
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetName()
</td>
<td>
Gets the name of the GridListControl object
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
</table>

### TabBarSplitterControl

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Paramenters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
string GetName()
</td>
<td>
Gets the name of the TabBarControl.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetTabName(int index)
</td>
<td>
The label in the tab page can be known by passing the index.
</td>
<td>
int index
</td>
<td>
string
</td>
</tr>
<tr>
<td>
void Select(string tab)
</td>
<td>
The name of the selected tab.
</td>
<td>
string tab
</td>
<td>

</td>
</tr>
<tr>
<td>
void SetSplitterPosition(string tab, int vSplit, int hSplit)
</td>
<td>
The splitter position in the tab bar page.
</td>
<td>
string tab, int vSplit, int hSplit
</td>
<td>
void
</td>
</tr>
</table>

## Essential Tools

The following controls are supported by Essential Tools.

* ButtonAdv
* CalculatorControl
* CheckBoxAdv
* ColorPickerUIAdv
* ComboBoxAutoComplete
* ComboDropDown
* CommandBar
* DataListView
* DateTimePickerAdv
* DockingManager
* GroupBar
* GroupView
* MultiColumnComboBox
* Popup menu
* ProgressBarAdv
* RadioButtonAdv
* RibbonControlAdv
* ScrollerFrame
* TabbedMDI
* TabControlAdv
* XPTaskBar
* TextBoxExt
* ThemedCheckedButton
* TreeViewAdv
* XPMenus
* XPToolBar
* SplitContainerAdv
* TabSplitterContainer
* TrackBarEx
* RangeSlider
* NavigationView
* TabBarSplitterControl
The following are the recorded methods and their corresponding descriptions for Essential Tools,

### ButtonAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Click(string text)
</td>
<td>
Performs click action on the ButtonAdv control.
</td>
<td>
string text
</td>
<td>
void
</td>
</tr>
</table>

### CalculatorControl

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SetValue(int value)
</td>
<td>
The value is appended to the calculated value.
</td>
<td>
int value
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetAction(string action)
</td>
<td>
The action is paused at the calculated value.
</td>
<td>
string action
</td>
<td>
void
</td>
</tr>
<tr>
<td>
double GetCalculatedValue()
</td>
<td>
Helps to get the current value from the text area.
</td>
<td>
-
</td>
<td>
double
</td>
</tr>
<tr>
<td>
void SetCalculatedValue(double value)
</td>
<td>
Sets the value in the text area as specified in the argument.
</td>
<td>
double value
</td>
<td>
void
</td>
</tr>
</table>

### CheckBoxAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Set(string checkState)
</td>
<td>
The CheckState of the CheckBoxAdv.
</td>
<td>
string checkState
</td>
<td>
void
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">
Helper Function
</td>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>
string GetCheckState()
</td>
<td>
Gets the CheckState of the CheckBoxAdv.
</td>
<td>
</td>
<td>
string
</td>
</tr>
</table>

### ColorPickerUIAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SelectColor(object color)
</td>
<td>
The color that has to be selected.
</td>
<td>
object color
</td>
<td>
void
</td>
</tr>
</table>

### ComboBoxAutoComplete

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DropDown()
</td>
<td>
Shows the drop-down list.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
</table>

### ComboDropDown

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DropDown()
</td>
<td>
Shows the drop-down list.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Select(object item)
</td>
<td>
Selects the item in the list.
</td>
<td>
object item
</td>
<td>
void
</td>
</tr>
</table>

### CommandBar

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DropDown()
</td>
<td>
Shows the drop-down list.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetDockState(string dockState)
</td>
<td>
Changes the dock state.
</td>
<td>
string dockState
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetFloatState(int x, int y)
</td>
<td>
Sets the CommandBar to float.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
</table>

### DataListView

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(string item)
</td>
<td>
Selects the specified item.
</td>
<td>
string item
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Return()
</td>
<td>
Performs click on the focused item.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
</table>

### DateTimePickerAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void CheckEnabled(object on, string checkState);
</td>
<td>
Interface to check the enabled state of the DateTimePickerAdv.
</td>
<td>
object on, string checkState
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ChangeValue(object on, string dateTime);
</td>
<td>
Interface to change the value of the DateTimePickerAdv.
</td>
<td>
object on, string dateTime
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ShowPopupWindow(object visible, object x, object y);
</td>
<td>
Interface to show the calendar popup.
</td>
<td>
object visible, object x, object y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ShowCalendar(object visible);
</td>
<td>
Interface to show the calendar in the popup window.
</td>
<td>
object visible
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCalendarValue(object visible, string calValue);
</td>
<td>
Interface to set the Calendar value of the DateTimePickerAdv control.
</td>
<td>
object visible, string calValue
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void PopupClose(object visible);
</td>
<td>
Interface to close the popup window.
</td>
<td>
object visible
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetTodayValue(string date);
</td>
<td>
Interface to set the today value when the today button is clicked.
</td>
<td>
string date
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetNoValue();
</td>
<td>
Interface to set the null value when the None button is clicked.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
System.DateTime GetCalendarValue();
</td>
<td>
Returns the current value in the DateTimePickerAdv control.
</td>
<td>
</td>
<td>
System.DateTime
</td>
</tr>
</table>

### DockingManager

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DockStateChange(string dock,string prevState, string ctrl,string hostForm,string dockingStyle)
</td>
<td>
Changes the docking window according to the specified current and previous state, like Pinned, Unpinned, Tabbed, and MDIChild.
</td>
<td>
string dock,string prevState, string ctrl,string hostForm,string dockingStyle
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void VisibilityChange(string ctrlName,string visibility)
</td>
<td>
Changes the visibility of the docked control according to the specified state.
</td>
<td>
string ctrlName,string visibility
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ActivateControl(string ctrlName)
</td>
<td>
Activates the specified control.
</td>
<td>
string ctrlName
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void FloatStateChange(string ctrlName, string x, string y, string width, string height)
</td>
<td>
Changes the state of the docking window into a floating state with the specified location and size.
</td>
<td>
string ctrlName, string x, string y, string width, string height
</td>
<td>
void
</td>
</tr>
</table>

### GroupBar

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SelectGroup(object index, string itemText)
</td>
<td>
Selects the GroupBar item.
</td>
<td>
object index, string itemText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DropDownButtonClick()
</td>
<td>
Simulates click in the Navigation pane drop-down button.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
</table>

### GroupView

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SelectItem(object item)
</td>
<td>
Selects the GroupView item.
</td>
<td>
object item
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DropItem(int index, object source)
</td>
<td>
Drag and drop the GroupView item.
</td>
<td>
int index, object source
</td>
<td>
void
</td>
</tr>
</table>

### MultiColumnComboBox

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DropDown()
</td>
<td>
Shows the hidden grid in the MultiColumnComboBox.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectIndex(int index)
</td>
<td>
Selects the given index.
</td>
<td>
int index
</td>
<td>
void
</td>
</tr>
</table>

### PopupMenu

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(string barText)
</td>
<td>
Selects the item from the pop-up menu.
</td>
<td>
string barText
</td>
<td>
void
</td>
</tr>
</table>

### ProgressBarAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SetValue(int value)
</td>
<td>
Assigns the Progress bar value.
</td>
<td>
int value
</td>
<td>
void
</td>
</tr>
<tr>
<td>
int GetValue()
</td>
<td>
Gets the current value of the ProgressBar.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
</table>

### RadioButtonAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Set()
</td>
<td>
Changes Checked property to true.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
bool IsSet()
</td>
<td>
Shows whether the RadioButtonAdv is set.
</td>
<td>
-
</td>
<td>
bool
</td>
</tr>
</table>

### RibbonControlAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void RibbonMenuButtonClick()
</td>
<td>
Clicks the Ribbon menu button.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectRibbonMenuItem(object item)
</td>
<td>
Selects the ribbon menu item.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Close()
</td>
<td>
Closes the parent form of RibbonControlAdv.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Activate()
</td>
<td>
Activates the parent form of RibbonControlAdv.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Maximize()
</td>
<td>
Maximizes the parent form of RibbonControlAdv.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Minimize()
</td>
<td>
Minimizes the parent form of RibbonControlAdv.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Restore()
</td>
<td>
Restores the parent form of RibbonControlAdv.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectTab(object tabItem)
</td>
<td>
Selects the Ribbon Tab item.
</td>
<td>
object tabItem
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MinimizingPanel()
</td>
<td>
Minimizes the Ribbon Tab panel.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MaximizingPanel()
</td>
<td>
Maximizes the Ribbon Tab panel.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
</table>

### ScrollerFrame

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void ScrollValue(int value)
</td>
<td>
The position of the scroll to be specified.
</td>
<td>
int value
</td>
<td>
void
</td>
</tr>
</table>

### TabbedMDIManager

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void ClosePage(object tabPage)
</td>
<td>
Closes the specified tab page.
</td>
<td>
object tabPage
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectPage(object tab)
</td>
<td>
Selects the specified tab page.
</td>
<td>
object tab
</td>
<td>
void
</td>
</tr>
</table>

### TabControlAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SelectPage(object tab)
</td>
<td>
Selects the tab page in the TabPageAdv control.
</td>
<td>
object tab
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RightClick(object tab)
</td>
<td>
Performs a right click on the tab page in the TabPageAdv control.
</td>
<td>
object tab
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ClosePage(object tab)
</td>
<td>
Closes the tab page in the TabPageAdv control.
</td>
<td>
object tab
</td>
<td>
void
</td>
</tr>
</table>

### XPTaskBar

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Expand(string headerText)
</td>
<td>
Expands the content area of the task bar box.
</td>
<td>
string headerText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Collapse(string headerText)
</td>
<td>
Collapses the content area of the task bar box.
</td>
<td>
string headerText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ItemClick(string headerText, string itemText)
</td>
<td>
Performs click on the item described in the tag.
</td>
<td>
string headerText, string itemText
</td>
<td>
void
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">
Helper Functions
</td>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>
string GetTag(int itemIndex)
</td>
<td>
Retrieves the tag information for the given item index.
</td>
<td>
int itemIndex
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetHeaderText()
</td>
<td>
Retrieves the group or header text of the task bar box being called.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetItemText(int itemIndex)
</td>
<td>
Retrieves the item text for the given item index from the task bar box called
</td>
<td>
int itemIndex
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetTaskBarBoxCount()
</td>
<td>
Gets the number of task bar boxes in the XPTaskBar.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetExpandedTaskBarBoxCount()
</td>
<td>
Gets the number of expanded task bar boxes.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetCollapsedTaskBarBoxCount()
</td>
<td>
Gets the number of collapsed task bar boxes.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
bool FindItem(string itemText, out string headerText, out int itemIndex);
</td>
<td>
Helps to find an item’s existence.
</td>
<td>
string itemText, out string headerText, out int itemIndex
</td>
<td>
bool
</td>
</tr>
</table>

### TextBoxExt

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Set(string text)
</td>
<td>
Sets the text in the TextBoxExt.
</td>
<td>
-
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectText(string text, object start, object length);
</td>
<td>
Select the text in the TextBoxExt.
</td>
<td>
string text, object start, object length
</td>
<td>
void
</td>
</tr>
</table>

### ThemedCheckButton

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Set(string checkState)
</td>
<td>
Sets the CheckState of the CheckBox in the DateTimeAdv.
</td>
<td>
string checkState
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetCheckState()
</td>
<td>
Gets the CheckState of the CheckBox in the DateTimeAdv
</td>
<td></td>
<td>
string
</td>
</tr>
</table>

### TreeViewAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void CollapseNode(string fullPath)
</td>
<td>
Collapses the specified node.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ExpandNode(string fullPath)
</td>
<td>
Expands the specified node.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetCheckState(string fullPath, string checkState)
</td>
<td>
Sets the specified state of the CheckBox or OptionButton for the specified node.
</td>
<td>
string fullPath, string checkState
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectNodeWithModifierKeys(string fullPath,string ctrl, string shift)
</td>
<td>
Selects the specified node according to the selection mode.
</td>
<td>
string fullPath,string ctrl, string shift
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void BackupNodeDetails(string fullPath)
</td>
<td>
Backs up the node details before editing.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void EditNode(string nodeText)
</td>
<td>
Edits the specified node.
</td>
<td>
string nodeText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DragDrop(string fullPath)
</td>
<td>
Perform the drag and drop operation for the nodes in the SelectedNodes list, that is added during drag over event.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void AddToSelectedNodeList(string fullPath)
</td>
<td>
Adds the specified node into selected node list during Drag over event.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DoubleClick(string fullPath)
</td>
<td>
Handles the double-click event of TreeViewAdv.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectNode(string fullPath)
</td>
<td>
Selects the node in SingleSelect mode.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RMouseDown(int x, int y)
</td>
<td>
Performs a right mouse click.
</td>
<td>
int x, int y
</td>
<td>

</td>
</tr>
<tr>
<td>
void TreeNodeAdv GetNodeFromPath(string fullPath)
</td>
<td>
Gets the tree node from the path.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
<tr>
<td>
Point GetPointFromNode(TreeNodeAdv node)
</td>
<td>
Returns the TextBounds point of the specified node.
</td>
<td>
TreeNodeAdv node
</td>
<td>
Point
</td>
</tr>
<tr>
<td>
void RightClickNode(string fullPath)
</td>
<td>
Right-clicks the specified node.
</td>
<td>
string fullPath
</td>
<td>
void
</td>
</tr>
</table>

### XPMenus

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(string text)
</td>
<td>
Performs click on a bar item.
</td>
<td>
string text
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string TraceParentRoot(string barItemText)
</td>
<td>
For the given text of the required menu, TraceParentRoot retrieves the full path as recoded.
</td>
<td>
string barItemText
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int MenuItemPos(string ParentText, string barItemText)
</td>
<td>
For the given text of the required menu, MenuItemPos returns the position of the menu item.
</td>
<td>
string ParentText, string barItemText
</td>
<td>
int
</td>
</tr>
</table>

### XPToolBar

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(string ID)
</td>
<td>
Performs click in the barItem.
</td>
<td>
string ID
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Popup(string ID)
</td>
<td>
Shows the popup of the parent bar item.
</td>
<td>
string ID
</td>
<td>
void
</td>
</tr>
</table>

### XPTaskBar

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Expand(string headerText)
</td>
<td>
Expands the content area of the task bar box.
</td>
<td>
string headerText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Collapse(string headerText)
</td>
<td>
Collapses the content area of the task bar box.
</td>
<td>
string headerText
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ItemClick(string headerText, string itemTag)
</td>
<td>
Performs a click in the item described in the tag.
</td>
<td>
string headerText, string itemTag
</td>
<td>
void
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">
Helper Functions
</td>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td>
string GetTag(int itemIndex)
</td>
<td>
Retrieves the tag information for the given itemIndex.
</td>
<td>
int itemIndex
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetHeaderText()
</td>
<td>
Retrieves the group/header text of the task bar box called from.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetItemText(int itemIndex)
</td>
<td>
Retrieves the item text for the given item index from the task bar box called.
</td>
<td>
int itemIndex
</td>
<td>
string
</td>
</tr>
<tr>
<td>
int GetTaskBarBoxCount()
</td>
<td>
Number of task bar boxes.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetExpandedTaskBarBoxCount()
</td>
<td>
Number of expanded task bar boxes.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetCollapsedTaskBarBoxCount()
</td>
<td>
Number of collapsed task bar boxes.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
bool FindItem(string itemText, out string headerText, out int itemIndex)
</td>
<td>
Helps to find if an item exists.
</td>
<td>
string itemText, out string headerText, out int itemIndex
</td>
<td>
bool
</td>
</tr>
</table>

### SplitContainerAdv

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void MoveSplitter(int distance)
</td>
<td>
Adjusts the distance of the splitter.
</td>
<td>
int distance
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void CollapsePanel(string collapse)
</td>
<td>
Collapses the panel.
</td>
<td>
string collapse
</td>
<td>
void
</td>
</tr>
</table>

### TabSplitterContainer

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Collapse(string collapse)
</td>
<td>
Collapses the pane to the bottom.
</td>
<td>
string collapse
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ChangeOrientation(string orientation)
</td>
<td>
Changes the orientation.
</td>
<td>
string orientation
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveSplitter(int position)
</td>
<td>
Adjusts the position of the splitter.
</td>
<td>
int position
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SwapPanes(string swap)
</td>
<td>
Swaps primary and secondary panes.
</td>
<td>
string swap
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectPrimaryTab(int index)
</td>
<td>
Selects the primary tab page based on the given index.
</td>
<td>
int index
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectSecondaryTab(int index)
</td>
<td>
Selects the secondary tab page based on the given index.
</td>
<td>
int index
</td>
<td>
void
</td>
</tr>
</table>

### TrackBarEx

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SetValue(int value)
</td>
<td>
Sets the value.
</td>
<td>
int value
</td>
<td>
void
</td>
</tr>
</table>

### RangeSlider

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void SetValue(int min, int max)
</td>
<td>
Sets the values.
</td>
<td>
int min, int max
</td>
<td>
void
</td>
</tr>
</table>

### NavigationView

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(int x, int y)
</td>
<td>
Clicks the specified x and y value.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ActivateBar(string barName)
</td>
<td>
Selects the bar based on the given name.
</td>
<td>
string barName
</td>
<td>
void
</td>
</tr>
</table>

### TabBarSplitterControl

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void Select(string tab)
</td>
<td>
The name of the selected tab.
</td>
<td>
string tab
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetSplitterPosition(string tab, int vSplit, int hSplit)
</td>
<td>
The splitter position in the tab bar page.
</td>
<td>
string tab, int vSplit, int hSplit
</td>
<td>
void
</td>
</tr>
<tr>
<td>
string GetTabName(int index)
</td>
<td>
The label in the tab page can be found by passing the index.
</td>
<td>
int index
</td>
<td>
string
</td>
</tr>
</table>

## Essential Chart
The following are the recorded methods and their corresponding descriptions for 

### ChartControl
<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void RegionClick(double x, double y)
</td>
<td>
The point on the chart region to be clicked.
</td>
<td>
double x, double y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RegionRightClick(double x, double y)
</td>
<td>
The point on the chart region to be right-clicked.
</td>
<td>
double x, double y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RegionDoubleClick(double x, double y)
</td>
<td>
The point on the chart region to be double-clicked.
</td>
<td>
double x, double y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void TitleClick(int x, int y)
</td>
<td>
The region on the title to be clicked.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void LegendClick(int x, int y)
</td>
<td>
The region on the legend to be clicked.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetItemCheckState(string item text, string check state)
</td>
<td>
Setting the legend item check box.
</td>
<td>
string item text, string check state
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetLegendFloatingLocation(int x, int y)
</td>
<td>
The location of the legend if it is floating.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetLegendNonFloatingLocation(object pos, object align);
</td>
<td>
The location of the fixed position in or on the QTP.
</td>
<td>
object pos, object align
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetTitleFloatingLocation(int x, int y)
</td>
<td>
The location of the legend if it is floating.
</td>
<td>
int x, int y
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SetTitleNonFloatingLocation(object pos, object align)
</td>
<td>
The location of the fixed position in or on the QTP.
</td>
<td>
object pos, object align
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ZoomXAxis(object min, object max)
</td>
<td>
The values of X-coordinates to zoom the chart.
</td>
<td>
object min, object max
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ZoomYAxis(object min, object max)
</td>
<td>
The values of Y-coordinates to zoom the chart.
</td>
<td>
object min, object max
</td>
<td>
void
</td>
</tr>
<tr>
<td>
int GetSeriesCount();
</td>
<td>
Gets the count of series within the chart.
</td>
<td>
-
</td>
<td>
int
</td>
</tr>
<tr>
<td>
int GetPointsCount(int series);
</td>
<td>
The point count on the specified series.
</td>
<td>
int series
</td>
<td>
int
</td>
</tr>
<tr>
<td>
double GetMaxYValue(int series, int point);
</td>
<td>
The maximum Y-value of the specified point.
</td>
<td>
int series, int point
</td>
<td>
double
</td>
</tr>
<tr>
<td>
double GetXvalue(int series, int point);
</td>
<td>
The X-value of the specified point.
</td>
<td>
int series, int point
</td>
<td>
double
</td>
</tr>
<tr>
<td>
string GetChartType(int series);
</td>
<td>
Gets the type of the chart.
</td>
<td>
int series
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetXAxisText();
</td>
<td>
Gets the text that appeared on the X-axis.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
<tr>
<td>
string GetYAxisText();
</td>
<td>
Gets the text that appeared on the Y-axis.
</td>
<td>
-
</td>
<td>
string
</td>
</tr>
</table>

## Essential Schedule
The following are the recorded methods and their corresponding descriptions for Essential Schedule,

### Schedule Control

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void DblClick(int row, int col)
</td>
<td>
Double-click a schedule row.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RightClick(int row, int col)
</td>
<td>
Right-click a schedule row.
</td>
<td>
int row, int col
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void TimeDrag (int row, int col, object newStartTime, object newEndTime)
</td>
<td>
Adjust the timeline for an appointment.
</td>
<td>
int row, int col, object newStartTime, object newEndTime
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ItemDrag (int row, int col, object newStartTime, object newEndTime)
</td>
<td>
Move appointment to some other timeline.
</td>
<td>
int row, int col, object newStartTime, object newEndTime
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Scroll(int value)
</td>
<td>
Scroll the schedule control.
</td>
<td>
int value
</td>
<td>
void
</td>
</tr>
</table>

## Essential Diagram
The following are the recorded methods and their corresponding descriptions for Essential Diagram,

### Diagram Control

<table>
<tr>
<td>
{{'**Method**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
<td>
{{'**Parameters**'| markdownify }}
</td>
<td>
{{'**Return Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
void ConnectNodes(string startNode, string endNode, string connector)
</td>
<td>
Connects the specified nodes using the connector.
</td>
<td>
string startNode, string endNode, string connector
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void SelectNode(string name)
</td>
<td>
Selects a diagram node.
</td>
<td>
string name
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void DblClick(string name)
</td>
<td>
Double-clicks a diagram node.
</td>
<td>
string name
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void RotateNode(string node, float offset)
</td>
<td>
Rotates a diagram node to the given offset.
</td>
<td>
string node, float offset
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void ResizeNode(string node, float offsetX, float OffsetY)
</td>
<td>
Resizes a diagram node to the given offset.
</td>
<td>
string node, float offsetX, float OffsetY
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void MoveNode(string node, float offsetX, float OffsetY)
</td>
<td>
Moves a diagram node to a new location.
</td>
<td>
string node, float offsetX, float OffsetY
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Zoom(float magnification)
</td>
<td>
Zoom the diagram view.
</td>
<td>
float magnification
</td>
<td>
void
</td>
</tr>
<tr>
<td>
void Scroll(double x, double y)
</td>
<td>
Scroll the diagram view.
</td>
<td>
double x, double y
</td>
<td>
void
</td>
</tr>
</table>