---
layout: post
title: Clipboard Support in Windows Forms Grid Control | Syncfusion
description: Learn about Clipboard Support support in Syncfusion Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: GridControl
documentation: ug
---
# Clipboard Support in Windows Forms Grid Control
All the clipboard operations such as cut, copy and paste are supported in GridControl. The [GridModelCutPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html) class manages the cut, copy and paste operations of the GridControl. This class can be accessed from a grid with the [Model.CutPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_CutPaste) property. It will provide the list of properties and methods for performing the clipboard operation.

## Copy 
The selected range of cells or data can be copied to the Clipboard by using the [Copy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_Copy) method. The keyboard keys <kbd>Ctrl</kbd> +<kbd> C</kbd> combination is used to perform the Copy operation.

{% tabs %}
{% highlight c# %}
//Copy the selection to the Clipboard.
this.gridControl1.CutPaste.Copy();
{% endhighlight %}
{% highlight vb %}
'Copy the selection to the Clipboard.
Me.gridControl1.CutPaste.Copy()
{% endhighlight %}
{% endtabs %}

The [CanCopy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CanCopy) method checks whether there are selected ranges of cells that can be copied to clipboard or if the current cell's contents can be copied. The return type of this method is `Boolean`. If it returns `true`, it indicates that the selected range of cells or the current cell's contents can be copied to the clipboard. If it is false, it indicates that the selected range of cells or the current cell's contents cannot be copied to the clipboard.

### Copying the range of cells to the clipboard
The range of cells can be programmatically copied to the clipboard by using the [CopyRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CopyRange_Syncfusion_Windows_Forms_Grid_GridRangeInfo_) method.
{% tabs %}
{% highlight c# %}
GridRangeInfo range = GridRangeInfo.Cells(3, 3, 4, 4);

//Copy the range of cells to the Clipboard.
this.gridControl1.CutPaste.CopyRange(range);
{% endhighlight %}
{% highlight vb %}
Dim range As GridRangeInfo = GridRangeInfo.Cells(3, 3, 4, 4)

'Copy the range of cells to the Clipboard.
Me.gridControl1.CutPaste.CopyRange(range)
{% endhighlight %}
{% endtabs %}

### Copying the formatted text of the cell
The formatted text of a cell or a range of cells can be copied to the clipboard by using the [CopyTextToClipboard](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CopyTextToClipboard_Syncfusion_Windows_Forms_Grid_GridRangeInfoList_) method.
{% tabs %}
{% highlight c# %}
GridCurrentCell cc = this.gridControl1.CurrentCell;
GridRangeInfoList rangeList = new GridRangeInfoList();
rangeList.Add(GridRangeInfo.Cells(3, 3, 4, 4));
rangeList.Add(GridRangeInfo.Cell(cc.RowIndex, cc.ColIndex));

//Copies the formatted text of a specified range of cells to clipboard.
this.gridControl1.CutPaste.CopyTextToClipboard(rangeList);
{% endhighlight %}
{% highlight vb %}
Dim cc As GridCurrentCell = Me.gridControl1.CurrentCell
Dim rangeList As New GridRangeInfoList()
rangeList.Add(GridRangeInfo.Cells(3, 3, 4, 4))
rangeList.Add(GridRangeInfo.Cell(cc.RowIndex, cc.ColIndex))

'Copies the formatted text of a specified range of cells to clipboard.
Me.gridControl1.CutPaste.CopyTextToClipboard(rangeList)
{% endhighlight %}
{% endtabs %}

### Copying the cells with styles to the clipboard
The style information of a specified range of cells can be copied to the clipboard by using the [CopyCellsToClipboard](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CopyCellsToClipboard_Syncfusion_Windows_Forms_Grid_GridRangeInfoList_System_Boolean_) method.
{% tabs %}
{% highlight c# %}
GridRangeInfoList list = new GridRangeInfoList();
list.Add(GridRangeInfo.Cell(2, 2));
this.gridControl1.Model.CutPaste.CopyCellsToClipboard(list, true);
{% endhighlight %}
{% highlight vb %}
Dim list As New GridRangeInfoList()
list.Add(GridRangeInfo.Cell(2, 2))
Me.gridControl1.Model.CutPaste.CopyCellsToClipboard(list, True)
{% endhighlight %}
{% endtabs %}
The copy operation can be restricted by handling the [ClipboardCopy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) event. This event will raise when the `Copy` method is called.
{% tabs %}
{% highlight c# %}
this.gridControl1.ClipboardCopy += gridControl1_ClipboardCopy;
void gridControl1_ClipboardCopy(object sender, GridCutPasteEventArgs e)
{
    //To restrict the Clipboard copy.
    e.Handled = true;           
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.ClipboardCopy += AddressOf gridControl1_ClipboardCopy
Private Sub gridControl1_ClipboardCopy(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
	'To restrict the Clipboard copy.
	e.Handled = True
End Sub
{% endhighlight %}
{% endtabs %}

## Paste 
The [Paste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_Paste) method is used to insert the entire content of the clipboard to the selected range of cells. The <kbd>Ctrl</kbd>+<kbd>V</kbd> keyboard combination is used to perform the paste operation.  

{% tabs %}
{% highlight c# %}
//Paste the contents of the clipboard to the specific selected range.
this.gridControl1.CutPaste.Paste();
{% endhighlight %}
{% highlight vb %}
'Paste the contents of the clipboard to the specific selected range.
Me.gridControl1.CutPaste.Paste()
{% endhighlight %}
{% endtabs %}
The pasting operation can be notified by the [ClipboardPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) event. It will be triggered while pasting the clipboard contents. This event can be used to restrict the clipboard paste operation.
{% tabs %}
{% highlight c# %}
this.gridControl1.ClipboardPaste += gridControl1_ClipboardPaste;
void gridControl1_ClipboardPaste(object sender, GridCutPasteEventArgs e)
{
//To restrict the paste operation.
    e.Handled = true;
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.ClipboardPaste += AddressOf gridControl1_ClipboardPaste
Private Sub gridControl1_ClipboardPaste(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
'To restrict the paste operation.
	e.Handled = True
End Sub
{% endhighlight %}
{% endtabs %}

N> **ClipboardPasted** - This event is to be handled after a paste operation.

### Clipboard flags
When the number of rows/columns copied is greater than the number of rows/columns count of the grid, then the grid will automatically add the additional columns/rows according to the copied content. To avoid the unwanted rows/columns to be appended to the GridControl, set the [ClipboardFlags](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCutPasteEventArgs.html#Syncfusion_Windows_Forms_Grid_GridCutPasteEventArgs_ClipboardFlags) as follows,
{% tabs %}
{% highlight c# %}
// To Do not append additional rows/columns while pasting .
this.gridControl1.CutPaste.ClipboardFlags |= GridDragDropFlags.NoAppendRows | GridDragDropFlags.NoAppendCols;
{% endhighlight %}
{% highlight vb %}
' To Do not append additional rows/columns while pasting.
Me.gridControl1.CutPaste.ClipboardFlags = Me.gridControl1.CutPaste.ClipboardFlags Or GridDragDropFlags.NoAppendRows Or GridDragDropFlags.NoAppendCols
{% endhighlight %}
{% endtabs %}

### Copy or Paste only cell Text in GridControl
When the Copy/Paste is done with in the GridControl, it copies the style of the selected range of cells and pastes it to the targeted cells. This can be restricted to copy only the text of the grid cells by setting the `ClipboardFlags` as of follows,
{% tabs %}
{% highlight c# %}
//Copy only the text of the cell without the styles.
this.gridControl1.CutPaste.ClipboardFlags &= ~GridDragDropFlags.Styles;
{% endhighlight %}
{% highlight vb %}
'Copy only the text of the cell without the styles.
Me.gridControl1.CutPaste.ClipboardFlags = Me.gridControl1.CutPaste.ClipboardFlags And Not GridDragDropFlags.Styles
{% endhighlight %}
{% endtabs %}

### Fill Paste
This technique is used to fill the clipboard content to the selected range of cells. It can be done by using the [ClipboardPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) event.
{% tabs %}
{% highlight c# %}
this.gridControl1.ClipboardPaste += gridControl1_ClipboardPaste;

void gridControl1_ClipboardPaste(object sender, GridCutPasteEventArgs e)
{
    DataObject data = (DataObject)Clipboard.GetDataObject();
    string[] rows = null;
    int numberOfRows = 0;
    int numberOfCols = 0;

//Get the size of the paste.

    if (data.GetDataPresent(DataFormats.Text))
    {
        string s = (string)data.GetData(DataFormats.Text);
        rows = s.Split(new char[] { '\n' });
        numberOfRows = rows.GetLength(0);

        if (numberOfRows > 0 && rows[numberOfRows - 1].Length == 0)
            numberOfRows--; //remove extra empty row if present

        if (numberOfRows > 0)
        {
            string[] cols = rows[0].Split(new char[] { '\t' });
            numberOfCols = cols.GetLength(0);
        }
    }

//Paste one to many.

    if (numberOfRows == 1 && numberOfCols == 1 && !this.gridControl1.Selections.Ranges.ActiveRange.IsEmpty)
    {
        this.gridControl1.ChangeCells(this.gridControl1.Selections.Ranges.ActiveRange,
        rows[0]);
        e.Handled = true;
        e.Result = true;
    }
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.ClipboardPaste += AddressOf gridControl1_ClipboardPaste

Private Sub gridControl1_ClipboardPaste(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
	Dim data As DataObject = CType(Clipboard.GetDataObject(), DataObject)
	Dim rows() As String = Nothing
	Dim numberOfRows As Integer = 0
	Dim numberOfCols As Integer = 0

'Get the size of the paste.

	If data.GetDataPresent(DataFormats.Text) Then
		Dim s As String = CStr(data.GetData(DataFormats.Text))
		rows = s.Split(New Char() { ControlChars.Lf })
		numberOfRows = rows.GetLength(0)

		If numberOfRows > 0 AndAlso rows(numberOfRows - 1).Length = 0 Then
			numberOfRows -= 1 'remove extra empty row if present
		End If

		If numberOfRows > 0 Then
			Dim cols() As String = rows(0).Split(New Char() { ControlChars.Tab })
			numberOfCols = cols.GetLength(0)
		End If
	End If
'Paste one to many.

	If numberOfRows = 1 AndAlso numberOfCols = 1 AndAlso (Not Me.gridControl1.Selections.Ranges.ActiveRange.IsEmpty) Then
		Me.gridControl1.ChangeCells(Me.gridControl1.Selections.Ranges.ActiveRange, rows(0))
		e.Handled = True
		e.Result = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CopyPaste_img1](CopyPaste_images/CopyPaste_img1.png)

## Cut
The <kbd>Ctrl</kbd>+<kbd>X</kbd> keyboard combination is used to cut the data from the grid. It is used to remove the selected data from the source and add it to the Clipboard. 
{% tabs %}
{% highlight c# %}
// Cuts and copies the contents of selected cells to clipboard. 
this.gridControl1.CutPaste.Cut();
{% endhighlight %}
{% highlight vb %}
' Cuts and copies the contents of selected cells to clipboard.
Me.gridControl1.CutPaste.Cut()
{% endhighlight %}
{% endtabs %}

### Cutting a range of cells into the clipboard
A range of cells can be programmatically cut to the clipboard by using the [CutRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CutRange_Syncfusion_Windows_Forms_Grid_GridRangeInfo_System_Boolean_) method.
{% tabs %}
{% highlight c# %}
GridRangeInfo range = GridRangeInfo.Cells(2, 2, 4, 4);

//Cuts and copies the contents of a specified range of cells to clipboard.
this.gridControl1.CutPaste.CutRange(range, false);
{% endhighlight %}
{% highlight vb %}
Dim range As GridRangeInfo = GridRangeInfo.Cells(2, 2, 4, 4)

'Cuts and copies the contents of a specified range of cells to clipboard.
Me.gridControl1.CutPaste.CutRange(range, False)
{% endhighlight %}
{% endtabs %}

![CopyPaste_img2](CopyPaste_images/CopyPaste_img2.jpeg)

N> If the cell have integer data type, it will became null during the cut operation. The integer data type does not accept the null values therefore it will throws the “InvalidOperationException was unhandled, Rollback without BeginTrans” exception. This exception can be avoided by setting the nullable data type to the cells. For example, The `int` data type is need to be changed to `int?`.
N> [https://www.syncfusion.com/kb/5198/why-does-cut-operation-throw-an-exception-on-the-number-datatype-such-as-integer-cells](https://www.syncfusion.com/kb/5198/why-does-cut-operation-throw-an-exception-on-the-number-datatype-such-as-integer-cells) 

## Disabling Cut, Copy, and Paste
The Clipboard Cut, Copy and Paste operations of the grid can be disabled by setting the [ClipboardFlags](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCutPasteEventArgs.html#Syncfusion_Windows_Forms_Grid_GridCutPasteEventArgs_ClipboardFlags) value as `GridDragDropFlags.Disabled`.
{% tabs %}
{% highlight c# %}
//Completely turns off the Clipboard cut, copy, or paste.
this.gridControl1.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled;
{% endhighlight %}
{% highlight vb %}
'Completely turns off the Clipboard cut, copy, or paste.
Me.gridControl1.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled
{% endhighlight %}
{% endtabs %}

### Prevent Cut or Copy or Paste operations using Events
To get the clipboard operations can be performed or not for the given range of cells, use the [CanCut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CanCut), [CanCopy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CanCopy) and [CanPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModelCutPaste.html#Syncfusion_Windows_Forms_Grid_GridModelCutPaste_CanPaste) methods.
{% tabs %}
{% highlight c# %}
//Get the content can be copied to the Clipboard or not.
bool allowCopy = this.gridControl1.Model.CutPaste.CanCopy();

//Get the content can be cut to the Clipboard or not.
bool allowCut = this.gridControl1.Model.CutPaste.CanCut();

// Get the content can be pasted to the Clipboard or not.
bool allowPaste = this.gridControl1.Model.CutPaste.CanPaste();
{% endhighlight %}
{% highlight vb %}
'Get the content can be copied to the Clipboard or not.
Dim allowCopy As Boolean = Me.gridControl1.Model.CutPaste.CanCopy()

'Get the content can be cut to the Clipboard or not.
Dim allowCut As Boolean = Me.gridControl1.Model.CutPaste.CanCut()

' Get the content can be pasted to the Clipboard or not.
Dim allowPaste As Boolean = Me.gridControl1.Model.CutPaste.CanPaste()
{% endhighlight %}
{% endtabs %}
To cancel the cut, copy and paste operation of the grid, handle the [ClipboardCanPaste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html), [ClipboardCanCopy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) and [ClipboardCanCut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) events and set the `e.Result` as `false`. 
{% tabs %}
{% highlight c# %}
//Clipboard Events
this.gridControl1.ClipboardCanPaste += gridControl1_ClipboardCanPaste;
this.gridControl1.ClipboardCanCopy +=gridControl1_ClipboardCanCopy;
this.gridControl1.ClipboardCanCut += gridControl1_ClipboardCanCut;

void gridControl1_ClipboardCanCut(object sender, GridCutPasteEventArgs e)
{         
//Disables the cut to the clipboard.
    e.Handled = true;
    e.Result = false;
}

void gridControl1_ClipboardCanPaste(object sender, GridCutPasteEventArgs e)
{

//Cancel the pasting of clipboard content to grid.
    e.Handled = true;
    e.Result = false;
}

void gridControl1_ClipboardCanCopy(object sender, GridCutPasteEventArgs e)
{
//Disables the copy to the clipboard.
    e.Handled = true;
    e.Result = false;
}
{% endhighlight %}
{% highlight vb %}
'Clipboard Events
AddHandler gridControl1.ClipboardCanPaste, AddressOf gridControl1_ClipboardCanPaste
AddHandler gridControl1.ClipboardCanCopy, AddressOf gridControl1_ClipboardCanCopy
AddHandler gridControl1.ClipboardCanCut, AddressOf gridControl1_ClipboardCanCut

Private Sub gridControl1_ClipboardCanCut(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
'Disables the cut to the clipboard.
	e.Handled = True
	e.Result = False
End Sub

Private Sub gridControl1_ClipboardCanPaste(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
' Cancel the pasting of clipboard content to grid.
	e.Handled = True
	e.Result = False
End Sub

Private Sub gridControl1_ClipboardCanCopy(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)
'disables the copy to the clipboard.
	e.Handled = True
	e.Result = False
End Sub
{% endhighlight %}
{% endtabs %}

## Events 
GridControl has provide various events to manage the clipboard content while performing cut, paste and copy operations. This section explains on how to customize the clipboard operations using events.

### Validating the cell value while Pasting
The cell value can be validated at the time of pasting by using the [PasteCellText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html) event. When the content is invalid, set `e.Cancel` to `true`.
{% tabs %}
{% highlight c# %}
this.gridControl1.Model.PasteCellText += new GridPasteCellTextEventHandler(Model_PasteCellText);

void Model_PasteCellText(object sender, GridPasteCellTextEventArgs e)
{

    if (e.ColIndex == 2)
    {

        foreach (char c in e.Text)
        {

            if (!Char.IsDigit(c))
            {
                MessageBox.Show("The Column will only allow the digits");
                e.Cancel = true;
                break;
            }
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.Model.PasteCellText, AddressOf Model_PasteCellText

Private Sub Model_PasteCellText(ByVal sender As Object, ByVal e As GridPasteCellTextEventArgs)

	If e.ColIndex = 2 Then

		For Each c As Char In e.Text

			If Not Char.IsDigit(c) Then
				MessageBox.Show("The Column will only allow the digits")
				e.Cancel = True
				Exit For
			End If
		Next c
	End If
End Sub

{% endhighlight %}
{% endtabs %}

### Preventing Paste for a particular Cell
The pasting operation can be prevented for particular cells by handling the [PasteCellText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html) event. This event will fire when the cell is not in edit mode at the time of pasting. This can be achieved by setting the [ActivateCurrentCellBehavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ActivateCurrentCellBehavior) property to `DoubleClickOnCell`.
{% tabs %}
{% highlight c# %}
this.gridControl1.PasteCellText += new GridPasteCellTextEventHandler(gridControl1_PasteCellText);

void gridControl1_PasteCellText(object sender, GridPasteCellTextEventArgs e)
{

//Prevent pasting the clipboard data in row. 

    if (e.RowIndex == 3)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl1.PasteCellText += New GridPasteCellTextEventHandler(AddressOf gridControl1_PasteCellText)

Private Sub gridControl1_PasteCellText(ByVal sender As Object, ByVal e As GridPasteCellTextEventArgs)

'Prevent pasting the clipboard data in row. 

	If e.RowIndex = 3 Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

### Handling the clipboard Paste using Keyboard shortcut
The pasting using keys <kbd>Ctrl</kbd>+<kbd>V</kbd> can be handled by [CurrentCellControlKeyMessage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html) event. Using this event, the pasting can be restricted even though the cell is in edit mode.
{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellControlKeyMessage += new GridCurrentCellControlKeyMessageEventHandler(gridControl1_CurrentCellControlKeyMessage);

void gridControl1_CurrentCellControlKeyMessage(object sender, GridCurrentCellControlKeyMessageEventArgs e)
{
    Keys keyCode = (Keys)((int)e.Msg.WParam) & Keys.KeyCode;

//Condition for Ctr+V keys.

    if ((Control.ModifierKeys & Keys.Control) != 0 && keyCode == Keys.V)
    {
        GridCurrentCell cc = this.gridControl1.CurrentCell;

//Set the row 3 as prevent from  paste.

    if (cc.RowIndex == 3)
            e.Handled = true;
        e.Result = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.CurrentCellControlKeyMessage, AddressOf gridControl1_CurrentCellControlKeyMessage

Private Sub gridControl1_CurrentCellControlKeyMessage(ByVal sender As Object, ByVal e As GridCurrentCellControlKeyMessageEventArgs)
	Dim keyCode As Keys = CType(CInt(Fix(e.Msg.WParam)), Keys) And Keys.KeyCode

'Condition for Ctr+V keys.

	If (Control.ModifierKeys And Keys.Control) <> 0 AndAlso keyCode = Keys.V Then
		Dim cc As GridCurrentCell = Me.gridControl1.CurrentCell

		'set the row 3 as prevent from  paste

		If cc.RowIndex = 3 Then
			e.Handled = True
		End If
		e.Result = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}
