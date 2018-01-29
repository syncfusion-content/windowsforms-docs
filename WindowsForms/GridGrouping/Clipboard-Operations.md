---
layout: post
title: Clipboard Operations for Syncfusion Essential WindowsForms
description: This section explains on how to perform the clipboard operations such as cut, copy and paste in GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Clipboard Operations 
The GridGroupingControls provides the default support for clipboard operations such as Cut, Copy and Paste. The [TableModel.CutPaste](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~CutPaste.html) property is used to handle the programmatic clipboard operations of the grid. 

## Copy 
The selected records can be copied to the clipboard by using <kbd>Ctrl</kbd>+<kbd>C</kbd> keyboard combination. It will paste the selected records into the clipboard.

The [CutPaste.Copy](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~Copy.html) method is used to programmatically copy the selected range of records into the clipboard.

{% tabs %}
{% highlight c# %}
//Copy the selection to the clipboard
this.gridGroupingControl1.TableModel.CutPaste.Copy();
{% endhighlight %}
{% highlight vb %}
'Copy the selection to the clipboard
Me.gridGroupingControl1.TableModel.CutPaste.Copy()
{% endhighlight %}
{% endtabs %}

N> When the current cell is in edit mode, it will copy only the text of the current cell.

### Copy Range of Cells to Clipboard
The range of cells can be copied to the clipboard by using the [CutPaste.CopyRange](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~CopyRange.html) method. It will copy the given range of cells to the clipboard.

{% tabs %}
{% highlight c# %}
GridRangeInfo range = GridRangeInfo.Cells(3, 3, 4, 4);

//Copy the range of cells to the clipboard
this.gridGroupingControl1.TableModel.CutPaste.CopyRange(range);
{% endhighlight %}
{% highlight vb %}
Dim range As GridRangeInfo = GridRangeInfo.Cells(3, 3, 4, 4)

'Copy the range of cells to the clipboard
Me.gridGroupingControl1.TableModel.CutPaste.CopyRange(range)
{% endhighlight %}
{% endtabs %}

### Copy the Formatted Text of the Cell
The formatted text of the cells can be copied to the clipboard by using the [CopyTextToClipboard](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~CopyTextToClipboard.html) method.

{% tabs %}
{% highlight c# %}
GridCurrentCell cc = this.gridGroupingControl1.TableControl.CurrentCell;
GridRangeInfoList rangeList = new GridRangeInfoList();
rangeList.Add(GridRangeInfo.Cells(3, 3, 4, 4));
rangeList.Add(GridRangeInfo.Cell(cc.RowIndex, cc.ColIndex));   

//Copy the formatted text of the given range
this.gridGroupingControl1.TableModel.CutPaste.CopyTextToClipboard(rangeList);
{% endhighlight %}
{% highlight vb %}
Dim cc As GridCurrentCell = Me.gridGroupingControl1.TableControl.CurrentCell
Dim rangeList As New GridRangeInfoList()
rangeList.Add(GridRangeInfo.Cells(3, 3, 4, 4))
rangeList.Add(GridRangeInfo.Cell(cc.RowIndex, cc.ColIndex))

'Copy the formatted text of the given range
Me.gridGroupingControl1.TableModel.CutPaste.CopyTextToClipboard(rangeList)
{% endhighlight %}
{% endtabs %}

### Copy the Records of a Given Group
The records of the given group can be copied to the clipboard by using the [Clipboard.SetText](https://msdn.microsoft.com/en-us/library/system.windows.forms.clipboard.settext.aspx) method. It will paste the given text to the clipboard data. The following code snippet is used to copy the current group of the GridGroupingControl to the clipboard.

{% tabs %}
{% highlight c# %}
//Get the Current Cell of the GridGroupingControl
GridCurrentCell cc =  this.gridGroupingControl1.TableControl.CurrentCell;
GridTableCellStyleInfo style = this.gridGroupingControl1.TableControl.GetTableViewStyleInfo(cc.RowIndex, cc.ColIndex);
Element el = style.TableCellIdentity.DisplayElement;
//Copy the records of the given group into the clipboard
Clipboard.SetText(this.CopyGroup(el.ParentGroup));

String str;
public String CopyGroup(Group g)
{

    if (g.Records != null && g.Records.Count > 0)
    {

        //Iterate through the each records in the given group

        foreach (Record r in g.Records)
        {

            foreach (FieldDescriptor descriptor in this.gridGroupingControl1.TableDescriptor.Fields)
                str += r.GetValue(descriptor).ToString() + "\t";
            str += "\n";                    
        }
    }
    return str;
}
{% endhighlight %}
{% highlight vb %}
'Get the Current Cell of the GridGroupingControl
Dim cc As GridCurrentCell = Me.gridGroupingControl1.TableControl.CurrentCell
Dim style As GridTableCellStyleInfo = Me.gridGroupingControl1.TableControl.GetTableViewStyleInfo(cc.RowIndex, cc.ColIndex)
Dim el As Element = style.TableCellIdentity.DisplayElement

'Copy the records of the given group into the clipboard
Clipboard.SetText(Me.CopyGroup(el.ParentGroup))

Private str As String

Public Function CopyGroup(ByVal g As Group) As String

    If g.Records IsNot Nothing AndAlso g.Records.Count > 0 Then

        'Iterate through the each records in the given group

        For Each r As Record In g.Records

            For Each descriptor As FieldDescriptor In Me.gridGroupingControl1.TableDescriptor.Fields
                str &= r.GetValue(descriptor).ToString() & Constants.vbTab
            Next descriptor
            str &= Constants.vbLf
        Next r
    End If
    Return str
End Function
{% endhighlight %}
{% endtabs %}

## Paste
The clipboard content can be pasted into the grid cells by using the <kbd>Ctrl</kbd>+<kbd>V</kbd> keyboard combination. 

The [CutPaste.Paste](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~Paste.html) method is used to programmatically paste the clipboard contents into the grid cells.

{% tabs %}
{% highlight c# %}
//Paste the contents of clipboard to the specific location.
this.gridGroupingControl1.TableModel.CutPaste.Paste();
{% endhighlight %}
{% highlight vb %}
'Paste the contents of clipboard to the specific location.
Me.gridGroupingControl1.TableModel.CutPaste.Paste()
{% endhighlight %}
{% endtabs %}

### Pasting a Record
A record can be copied to from the grid and pasted to the particular record index. The following code snippet is used to copy and paste the records in GridGroupingControl.

{% tabs %}
{% highlight c# %}
int index = 3;
string str = null;

foreach (FieldDescriptor descriptor in this.gridGroupingControl1.TableDescriptor.Fields)
{

    //Add the record value to the string
    str += this.gridGroupingControl1.Table.Records[index].GetValue(descriptor).ToString() + "\t";
}

//Set the record value as the clipboard data
Clipboard.SetText(str);         

//Get the current row index of the grid
int rowIndex = this.gridGroupingControl1.Table.CurrentRecord.GetRowIndex();
int colIndex = this.gridGroupingControl1.TableDescriptor.FieldToColIndex(0);

//Move the current cell to the first column of the current record
this.gridGroupingControl1.TableControl.CurrentCell.MoveTo(rowIndex, colIndex);     

//Paste the clipboard content to the current record
this.gridGroupingControl1.TableModel.CutPaste.Paste();
{% endhighlight %}
{% highlight vb %}
Dim index As Integer = 3
Dim str As String = Nothing
For Each descriptor As FieldDescriptor In Me.gridGroupingControl1.TableDescriptor.Fields

    'Add the record value to the string
    str &= Me.gridGroupingControl1.Table.Records(index).GetValue(descriptor).ToString() & Constants.vbTab
Next descriptor

'Set the record value as the clipboard data
Clipboard.SetText(str)

'Get the current row index of the grid
Dim rowIndex As Integer = Me.gridGroupingControl1.Table.CurrentRecord.GetRowIndex()
Dim colIndex As Integer = Me.gridGroupingControl1.TableDescriptor.FieldToColIndex(0)

'Move the current cell to the first column of the current record
Me.gridGroupingControl1.TableControl.CurrentCell.MoveTo(rowIndex, colIndex)

'Paste the clipboard content to the current record
Me.gridGroupingControl1.TableModel.CutPaste.Paste()
{% endhighlight %}
{% endtabs %}

## Cut 
The selected cell contents can be cut and buffered into the clipboard by using the [CutPaste.Cut](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~Cut.html) method.

{% tabs %}
{% highlight c# %}
//Cut the selected range of cells to the clipboard
this.gridGroupingControl1.TableModel.CutPaste.Cut();
{% endhighlight %}
{% highlight vb %}
'Cut the selected range of cells to the clipboard
Me.gridGroupingControl1.TableModel.CutPaste.Cut()
{% endhighlight %}
{% endtabs %}

### Cut a Range of Cells to Clipboard
The range of cells can be cut and stored into the clipboard by using the [Clipboard.CutRange](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelCutPaste~CutRange.html) method.

{% tabs %}
{% highlight c# %}
//Cut the range of cells to the Clipboard
this.gridGroupingControl1.TableModel.CutPaste.CutRange(GridRangeInfo.Cells(3, 3, 4, 4), true);
{% endhighlight %}
{% highlight vb %}
'Cut the range of cells to the Clipboard
Me.gridGroupingControl1.TableModel.CutPaste.CutRange(GridRangeInfo.Cells(3, 3, 4, 4), True)
{% endhighlight %}
{% endtabs %}
## Events
The clipboard operations can be handled by using the following events,

* [ClipboardCanCopy](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCanCopy_EV.html) - This event is to be handled when the `CanCopy` method of grid is called.
* [ClipboardCanPaste](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCanPaste_EV.html) - This event is to be handled when the `CanPaste` method of grid is called.
* [ClipboardCanCut](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCanCut_EV.html) - This event is to be handled when the `CanCut` method of grid is called.
* [ClipboardCopy](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCopy_EV.html) - This event is to be handled when the `Copy` method of grid is called.
* [ClipboardCut](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCut_EV.html) - This event is to be handled when the `Cut` method of grid is called.
* [ClipboardPaste](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardPaste_EV.html) - This event is to be handled when the `Paste` method of grid is called.
* [ClipboardPasted](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardPasted_EV.html) - This event is to be handled after a paste operation.

### Restrict the Copy of Current Cell 
The cell value of the current cell can be restricted from the copying to the clipboard by handling the [ClipboardCanCopy](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClipboardCanCopy_EV.html)  event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableModel.ClipboardCanCopy += new GridCutPasteEventHandler(TableModel_ClipboardCanCopy);

void TableModel_ClipboardCanCopy(object sender, GridCutPasteEventArgs e)
{

    // Ignore the current cell from copy to clipboard
    e.IgnoreCurrentCell = true;            
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableModel.ClipboardCanCopy, AddressOf TableModel_ClipboardCanCopy

Private Sub TableModel_ClipboardCanCopy(ByVal sender As Object, ByVal e As GridCutPasteEventArgs)

    ' Ignore the current cell from copy to clipboard
    e.IgnoreCurrentCell = True
End Sub
{% endhighlight %}
{% endtabs %}