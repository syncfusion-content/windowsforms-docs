---
layout: post
title: Events
description: events
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Events

The important events in Grid control and DataBound Grid are as follows.

### Current Cell Related Events

* CurrentCellAcceptedChanges - Occurs when the grid accepts changes made to active current cell.
* CurrentCellMoved - Occurs when current cell is moved to new position.
* CurrentCellMoving - Occurs when current cell is about to be moved to a new position.
* CurrentCellMoveFailed - Occurs when current cell movement to a new position fails.
* CurrentCellActivating - Occurs before the grid activates the specified cell as current cell.
* CurrentCellActivated - Occurs after the grid activates the specified cell as current cell.
* CurrentCellActivateFailed - Occurs after the grid fails to activate a specific cell as current cell.
* CurrentCellDeleting - Occurs when the user presses Delete key on an active current cell.
* CurrentCellStartEditing - Occurs before the current cell switches into editing mode.
* CurrentCellChanging - Occurs when the user wants to modify contents of the current cell.
* CurrentCellChanged - Occurs when the user changes contents of the current cell.
* CurrentCellDeactivating - Occurs before the grid deactivates the current cell.
* CurrentCellShowedDropDown - Occurs after the drop-down is displayed.
* CurrentCellCloseDropDown - Occurs when the drop-down in the current cell is closed.
* CurrentCellShowingDropDown - Occurs when the drop-down is about to be shown.
* CurrentCellValidating - Occurs when the grid validates content of the active current cell.
* CurrentCellValidated - Occurs when the grid has successfully validated the content of the active current cell.
* CurrentCellAcceptedChanges - Occurs when the grid accepts changes made to the active current cell.
* CurrentCellConfirmChangesFaileds - Occurs when the grid could not save changes made to the active current cell.
* CurrentCellRejectedChanges - Occurs when the grid rejects changes made to the active current cell.
* CurrentCellEditingComplete - Occurs when the grid completes editing mode, i.e., when the active current cell exits the editing mode.
* CurrentCellDeactivated - Occurs after the grid deactivates current cell.
* CurrentCellDeactivateFailed - Occurs after the grid fails to deactivate the current cell.
* CurrentCellControlGotFocus - Occurs when the current cell has switched to in-place editing and the control associated with the current cell has received the focus.
* CurrentCellControlLostFocus - Occurs when the current cell has switched to in-place editing and the control associated with the current cell has lost the focus.
* CurrentCellKeyPress - Occurs before GridCellRendererBase.OnKeyPress is called.
* CurrentCellKeyDown - Occurs before GridCellRendererBase.OnKeyDown is called.
* CurrentCellKeyUp - Occurs before GridCellRendererBase.OnKeyUp is called.

### Mouse Related Events

* CellButtonClicked - Occurs when the user has clicked on a button element inside a cell renderer.
* CellClick - Occurs when user clicks inside a cell.
* CellDoubleClick - Occurs when the user double-clicks inside a cell.
* CellMouseDown - Occurs before OnMouseDown method of a cell's renderer is called.
* CellMouseUp - Occurs before OnMouseUp method of a cell's renderer is called.
* CellMouseHoverEnter - Occurs before OnMouseHoverEnter method of a cell's renderer is called.
* CellMouseHoverLeave - Occurs before OnMouseHoverLeave method of a cell's renderer is called.
* CheckBoxClick - Occurs when the user selects a check box in a cell.
* PushButtonClick - Occurs when the user clicks a push button of the PushButton cell.

### Other Events

* Click - Occurs when control is clicked once.
* DoubleClick - Occurs when control is double clicked.
* DragDrp - Occurs when drag-drop operation is completed.
* DragEnter - Occurs when an object is dragged into the control's bounds.
* DragLeave - Occurs when an object is dragged out of control's bound.
* DragOver - Occurs when the object is dragged over the control.
* GotFocus - Occurs when control receives focus.
* LostFocus - Occurs when control loses focus.
* MouseDown - Occurs when the mouse pointer is over the control and a mouse button is pressed.
* MouseUp - Occurs when the mouse pointer is over the control and a mouse button is released.
* MouseEnter - Occurs when mouse pointer enters the control.
* MouseLeave - Occurs when mouse pointer leaves the control.
* QueryCanOleDragRange - Occurs when the user hovers the mouse over the edge of a selected range. 
* ResizingColumns - Occurs when user is resizing a selected range of columns.
* ResizingRows - Occurs when user is resizing a selected range of rows.



