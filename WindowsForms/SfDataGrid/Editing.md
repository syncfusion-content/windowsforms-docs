---
layout: post
title: Editing
description: This section explains about the editing support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Editing
SfDataGrid provides support for editing and it can be enabled or disabled by setting [SfDataGrid.AllowEditing](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowEditing.html) property.

{% tabs %}
{% highlight c# %}
//Enable Editing for the whole grid. 
this.sfDataGrid.AllowEditing = true;
{% endhighlight %}
{% highlight vb %}
'Enable Editing for the whole grid. 
Me.sfDataGrid.AllowEditing = True
{% endhighlight %}
{% endtabs %}

The editing can be enabled only for the particular columns by setting the [GridColumn.AllowEditing](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~AllowEditing.html) property to `true`. 

{% tabs %}
{% highlight c# %}
// Enable editing for particular column.
this.sfDataGrid.Columns[0].AllowEditing = true;
{% endhighlight %}
{% highlight vb %}
' Enable editing for particular column.
Me.sfDataGrid.Columns(0).AllowEditing = True
{% endhighlight %}
{% endtabs %}

**Note:**The `GridColumn.AllowEditing` has the high priority than the `SfDataGrid.AllowEditing`.
![](Editing_images/Editing_Image1.png)

### Entering into Edit Mode
The current cell can be enter into edit mode by pressing &lt;kbd&gt;F2&lt;/kbd&gt; key or clicking (touch also supported) the cell. The edit mode of the cell can be changed to the single click or double click by setting the [EditMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~EditMode.html) property.

{%tabs%}
{% highlight c# %}
// Enters to the edit mode of the cell using double click
this.sfDataGrid.EditMode = EditMode.DoubleClick;
{% endhighlight %}
{% highlight vb %}
' Enters to the edit mode of the cell using double click
Me.sfDataGrid.EditMode = EditMode.DoubleClick
{% endhighlight %}
{%endtabs%}

### Cursor Placement
When the cell enters into edit mode, cursor is placed based on [EditorSelectionBehavior](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~EditorSelectionBehavior.html) property.
The following types of [EditorSelectionBehavior](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Enums.EditorSelectionBehavior.html) is available,

* `Default` – Moves the cursor to the clicked position on the text.
* `SelectAll`– selects the text of edit element loaded inside cell.
* `MoveLast` – places the cursor at the last of edit element loaded inside cell.

{% tabs %}
{% highlight  c# %}
// Select all the text while entering to the edit mode.
this.sfDataGrid.EditorSelectionBehavior = EditorSelectionBehavior.SelectAll;
{% endhighlight %}
{% highlight  vb %}
' Select all the text while entering to the edit mode.
Me.sfDataGrid.EditorSelectionBehavior = EditorSelectionBehavior.SelectAll
{% endhighlight %}
{% endtabs %}

![](Editing_images/Editing_Image2.png)

## Customization Using Events

### Cancel the Editing of the current cell
The current cell editing can be canceled by using the [CurrentCellBeginEdit](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellBeginEdit_EV.html) event. This event will be raised when the current cell enters to the edit mode.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CurrentCellBeginEdit += sfDataGrid_CurrentCellBeginEdit;

void sfDataGrid_CurrentCellBeginEdit(object sender, CurrentCellBeginEditEventArgs e)
{
    //Cancel the editing of the particular column.
    if (e.DataColumn.GridColumn.MappingName == "ProductName")
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private Me.sfDataGrid.CurrentCellBeginEdit += AddressOf sfDataGrid_CurrentCellBeginEdit

Private Sub sfDataGrid_CurrentCellBeginEdit(ByVal sender As Object, ByVal e As CurrentCellBeginEditEventArgs)
	'Cancel the editing of the particular column.
	If e.DataColumn.GridColumn.MappingName = "ProductName" Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

### Display Message Box on current cell Editing Complete
The editing completion of the current cell can be notified by using the [CurrentCellEndEdit](CurrentCellEndEdit) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CurrentCellEndEdit += sfDataGrid_CurrentCellEndEdit;

void sfDataGrid_CurrentCellEndEdit(object sender, CurrentCellEndEditEventArgs e)
{
    MessageBox.Show("The editing is completed for the cell (" + e.DataRow.RowIndex + "," + e.DataColumn.ColumnIndex + ")");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.CurrentCellEndEdit, AddressOf sfDataGrid_CurrentCellEndEdit

Private Sub sfDataGrid_CurrentCellEndEdit(ByVal sender As Object, ByVal e As CurrentCellEndEditEventArgs)
	MessageBox.Show("The editing is completed for the cell (" & e.DataRow.RowIndex & "," & e.DataColumn.ColumnIndex & ")")
End Sub
{% endhighlight %}
{% endtabs %}

![](Editing_images/Editing_Image3.png)

## Programmatic Editing 
The editing can be handled programmatically by using the [CurrentCellManager](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.CurrentCellManager.html) which has the helper methods for handling the editing.

### Begin Editing 
The editing of the cell can be achieved by using the [CurrentCellManager.BeginEdit](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.CurrentCellManager~BeginEdit.html) method. Initially the `CurrentCell` need to set before calling the `BeginEdit` method

{% tabs %}
{% highlight c# %}
private void button1_Click(object sender, System.EventArgs e)
{
    RowColumnIndex rowColumnIndex = new RowColumnIndex(3, 2);
    this.sfDataGrid.MoveToCurrentCell(rowColumnIndex);
    this.sfDataGrid.CurrentCell.BeginEdit();
}
{% endhighlight %}
{% highlight vb %}
Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
	Dim rowColumnIndex As New RowColumnIndex(3, 2)
	Me.sfDataGrid.MoveToCurrentCell(rowColumnIndex)
	Me.sfDataGrid.CurrentCell.BeginEdit()
End Sub
{% endhighlight %}
{% endtabs %}

### End Editing
The editing can be end programmatically by using the [EndEdit](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.CurrentCellManager~EndEdit.html) method.

{% tabs %}
{% highlight c# %}
// End the editing of the current cell
this.sfDataGrid.CurrentCell.EndEdit();
{% endhighlight %}
{% highlight vb %}
' End the editing of the current cell
Me.sfDataGrid.CurrentCell.EndEdit()
{% endhighlight %}
{% endtabs %}

### Cancel Editing
The editing can be canceled by calling the [CancelEdit](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Interactivity.CurrentCellManager~CancelEdit.html) method. This will end the editing of the current cell by replacing the old value before entering to the edit mode.

{% tabs %}
{% highlight c# %}
// Cancel the editing of the current cell.
this.sfDataGrid.CurrentCell.CancelEdit();
{% endhighlight %}
{% highlight vb %}
' Cancel the editing of the current cell.
Me.sfDataGrid.CurrentCell.CancelEdit()
{% endhighlight %}
{% endtabs %}