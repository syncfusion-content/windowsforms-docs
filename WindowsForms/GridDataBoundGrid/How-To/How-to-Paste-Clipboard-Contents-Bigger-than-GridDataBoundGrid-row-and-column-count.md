---
layout: post
title: How-to-Paste-Clipboard-Contents-Bigger-than-GridDataBoundGrid-row-and-column-count
description: how to paste clipboard contents bigger than griddataboundgrid row and column count
platform: windowsforms
control: Tools
documentation: ug
---

# How to Paste Clipboard Contents Bigger than GridDataBoundGrid Row and Column Count

### Introduction

GridDataBoundGrid does not increment row and column count as GridControl. The reason for this is that GridDataBoundGrid does not have its own datastore, and it has to store these in the relevant datatable. To add rows and columns in the datatable, Model.ClipboardPaste handler must be used.

In this handler, the clipboard contents that are stored in text format of DataObject will be single string. This has to be split with '\n' and '\t' to refer the rows and columns fashion and this count is compared with the existing row and column count. The necessary extra rows are added then and makes pasting possible.

#### Example

{% highlight c# %}



this.gridDataBoundGrid1.UseListChangedEvent = false;



DataObject data = (DataObject) Clipboard.GetDataObject();



//Gets the size of the data object in rows.

string s = (string)data.GetData(DataFormats.Text);

string[] rows = s.Split(new char[]{'\n'});

int numRows = rows.GetLength(0);

if(numRows > 0 && rows[numRows - 1].Length == 0)



//Removes extra empty row if present.

numRows--; 



//Gets the size of data object in Columns.

string[] cols = rows[0].Split(new char[]{'\t'});

int numCols = cols.GetLength(0);

if(numCols > 0 && cols[numCols - 1].Length == 0)



//Removes extra empty column if present.

numCols--; 





int extraRowIfStartAtAddNewRow = this.gridDataBoundGrid1.Binder.IsAddNew ? 1 : 0;

while(currentCell.RowIndex + numRows + extraRowIfStartAtAddNewRow > grid.Model.RowCount)

{

      DataRow dr = dt.NewRow();

      dt.Rows.Add(dr);

      row--;

}

while(currentCell.COlIndex + numCols > grid.Model.ColCount+1)

{

      dt.Columns.Add();

      col--;

}

this.gridDataBoundGrid1.Binder.ResumeBinding();

this.gridDataBoundGrid1.EndUpdate();

{% endhighlight %}

{% highlight vbnet %}



Me.gridDataBoundGrid1.UseListChangedEvent = False



data As DataObject = CType(Clipboard.GetDataObject(), DataObject)



'Gets the size of the data object in rows.

s As String = CStr(data.GetData(DataFormats.Text))

rows As String() = s.Split(New Char(){ControlChars.Lf})

numRows As Integer = rows.GetLength(0)

If numRows > 0 AndAlso rows(numRows - 1).Length = 0 Then



'Removes extra empty row if present.

        numRows -= 1 

End If



'Gets the size of data object in Columns.

Dim cols As String() = rows(0).Split(New Char(){ControlChars.Tab})

Dim numCols As Integer = cols.GetLength(0)

If numCols > 0 AndAlso cols(numCols - 1).Length = 0 Then



'Removes extra empty column if present.

     numCols -= 1 

End If



Dim extraRowIfStartAtAddNewRow As Integer = If(Me.gridDataBoundGrid1.Binder.IsAddNew, 1, 0)

Do While currentCell.RowIndex + numRows + extraRowIfStartAtAddNewRow > grid.Model.RowCount

Dim dr As DataRow = dt.NewRow()

dt.Rows.Add(dr)

row -= 1

Loop

Do While currentCell.COlIndex + numCols> grid.Model.ColCount+1

dt.Columns.Add()

col -= 1

Loop

Me.gridDataBoundGrid1.Binder.ResumeBinding()

Me.gridDataBoundGrid1.EndUpdate()

{% endhighlight %}

