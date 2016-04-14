---
layout: post
title: Enables-Migration-of-Net-Grid-to-Esssential-Grid | Windows Forms | Syncfusion
description: enables migration of .net grid to esssential grid
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Enables Migration of .NET Grid to Esssential Grid

Look-up table that Enables Migration of .NET Grid to Esssential Grid

The following section contains document that enables users to migrate .NET Grid to Esssential Grid. Most of the properties, events, methods have common names in both grids. So it is not included in the following table. Since the API of both the grids is different, following document contains only common features that can be implemented with single line of code.

## Equivalent Properties available



<table>
<tr>
<th>
.NET GRID</th><th>
ESSSENTIAL GRID</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
AllowDrop</td><td>
AllowDrop</td><td>
Gets or sets a value indicating whether the control can accept data that the user drags into it.</td></tr>
<tr>
<td>
AllowUserToAddRows</td><td>
EnableAddNew</td><td>
Gets or sets a value indicating whether the option to add rows is displayed.</td></tr>
<tr>
<td>
AllowUserToDeleteRows</td><td>
EnableRemove</td><td>
Gets or sets a value indicating whether it allows deletion of rows.</td></tr>
<tr>
<td>
AllowUserToResizeColumns</td><td>
ResizeRowsBehavior</td><td>
Gets or sets a value indicating whether it allows dragging of selected columns for rearranging.</td></tr>
<tr>
<td>
AllowUserToResizeRows</td><td>
ResizeRowsBehavior</td><td>
Gets or sets a value indicating wheather row is resizable.</td></tr>
<tr>
<td>
ColumnCount</td><td>
 Model.ColCount  </td><td>
Gets or sets the number of columns displayed</td></tr>
<tr>
<td>
ColumnHeadersHeight</td><td>
Model.RowHeights[0]</td><td>
Gets or sets the width of the row.</td></tr>
<tr>
<td>
ColumnHeadersVisible</td><td>
Properties.ColHeaders  </td><td>
Gets or sets a value indicating whether the column header row is displayed.</td></tr>
<tr>
<td>
HorizontalScrollingOffset</td><td>
HScrollIncrement</td><td>
Gets or sets the number of pixels by which the control is scrolled horizontally.</td></tr>
<tr>
<td>
GridColor</td><td>
Properties.GridLineColor</td><td>
Gets or sets the color of the grid lines separating the cells.</td></tr>
<tr>
<td>
MultiSelect</td><td>
AllowSelection</td><td>
Gets or sets a value indicating whether more than one cell, row, or column can be selected.</td></tr>
<tr>
<td>
RowCount</td><td>
Model.RowCount</td><td>
Gets or sets the number of rows displayed.</td></tr>
<tr>
<td>
RowHeadersVisible</td><td>
Properties.RowHeaders  </td><td>
Gets or sets a value indicating whether the column that contains row headers is displayed.</td></tr>
<tr>
<td>
RowHeadersWidth</td><td>
Model.ColWidths[0]</td><td>
Gets or sets the width of the column.</td></tr>
<tr>
<td>
VerticalScrollingOffset</td><td>
VScrollIncrement</td><td>
Gets the number of pixels by which the control is scrolled vertically.</td></tr>
<tr>
<td>
IsCurrentCellInEditMode</td><td>
CurrentCell.IsEditing  </td><td>
Gets a value indicating whether the currently active cell is being edited.</td></tr>
<tr>
<td>
RightToLeft</td><td>
RightToLeft</td><td>
Gets or sets a value indicating whether control's elements are aligned to support locales using right-to-left fonts.</td></tr>
</table>

## Equivalent Events available



<table>
<tr>
<th>
.NET GRID</th><th>
ESSSENTIAL GRID</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
BackgroundColorChanged</td><td>
BackColorChanged</td><td>
Occurs when the value of the System.Windows.Forms.Control.BackColor property changes.</td></tr>
<tr>
<td>
CellMouseEnter</td><td>
CellMouseHoverEnter</td><td>
Occurs when the mouse pointer hovers over a cell.</td></tr>
<tr>
<td>
CellMouseLeave</td><td>
CellMouseHoverLeave</td><td>
Occurs when the mouse pointer leaves a cell.</td></tr>
<tr>
<td>
CellPainting</td><td>
CellDrawn</td><td>
Occurs when a cell needs to be drawn.</td></tr>
<tr>
<td>
ColumnWidthChanged</td><td>
Model.ColWidthsChanged</td><td>
Occurs when column width changes.</td></tr>
<tr>
<td>
DataSourceChanged</td><td>
Binder.DataSourceChanged</td><td>
Occurs when DataSource property is changed.</td></tr>
<tr>
<td>
RowsRemoved</td><td>
Model.RowsRemoved</td><td>
Occurs when a row or rows are deleted.</td></tr>
<tr>
<td>
SelectionChanged</td><td>
Model.SelectionChanged</td><td>
Occurs when current selection changes.</td></tr>
<tr>
<td>
SelectionChanged</td><td>
Model.RowHeightsChanged</td><td>
Occurs when row height changes.</td></tr>
</table>

## Methods


<table>
<tr>
<th>
.NET GRID</th><th>
ESSSENTIAL GRID</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ClearSelection()</td><td>
Selections.Clear()</td><td>
Clears the current selection by unselecting all selected cells.</td></tr>
<tr>
<td>
InvalidateCell()</td><td>
Model.InvalidateRange()</td><td>
Invalidates the specified cell forcing it to be repainted.</td></tr>
<tr>
<td>
InvalidateColumn()</td><td>
Model.InvalidateRange()</td><td>
Invalidates the specified column forcing it to be repainted.</td></tr>
<tr>
<td>
InvalidateRow</td><td>
Model.InvalidateRange()</td><td>
Invalidates the specified row forcing it to be repainted.</td></tr>
<tr>
<td>
RefreshEdit</td><td>
CurrentCell.Refresh()</td><td>
Refreshes the value of the current cell. </td></tr>
</table>


