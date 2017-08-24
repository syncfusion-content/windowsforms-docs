---
layout: post
title: How-to-Paste-Clipboard-Contents-Bigger-than-GridDataBoundGrid-row-and-column-count | Windows Forms | Syncfusion
description: how to paste clipboard contents bigger than griddataboundgrid row and column count
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Paste Clipboard Contents Bigger than GridDataBoundGrid Row and Column Count

### Introduction

GridDataBoundGrid does not increment row and column count as GridControl. The reason for this is that GridDataBoundGrid does not have its own DataSource, and it has to store these in the relevant DataTable. To add rows and columns in the DataTable, Model.ClipboardPaste handler must be used.

In this handler, the clipboard contents that are stored in text format of DataObject will be single string. This has to be split with '\n' and '\t' to refer the rows and columns fashion and this count is compared with the existing row and column count. The necessary extra rows are added then and makes pasting possible.

#### Example

{% highlight c# %}



this.gridDataBoundGrid1.UseListChangedEvent = false;



DataObject data = (DataObject) Clipboard.GetDataObject();



//Gets the size of the data object in rows.

string s = (string)data.GetData(DataFormats.Text);

string[] rows = s.Split(new char[]{'\n'});

int numberOfRows = rows.GetLength(0);

if(numberOfRows > 0 && rows[numberOfRows - 1].Length == 0)



//Removes extra empty row if present.

numberOfRows--; 



//Gets the size of data object in Columns.

string[] cols = rows[0].Split(new char[]{'\t'});

int numberOfCols = cols.GetLength(0);

if(numberOfCols > 0 && cols[numberOfCols - 1].Length == 0)



//Removes extra empty column if present.

numberOfCols--; 





int extraRowIfStartAtAddNewRow = this.gridDataBoundGrid1.Binder.IsAddNew ? 1 : 0;

while(currentCell.RowIndex + numberOfRows + extraRowIfStartAtAddNewRow > grid.Model.RowCount)

{

      DataRow dataRow = dataTable.NewRow();

      dataTable.Rows.Add(dataRow);

      row--;

}

while(currentCell.ColIndex + numberOfCols > grid.Model.ColCount+1)

{

      dataTable.Columns.Add();

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

numberOfRows As Integer = rows.GetLength(0)

If numberOfRows > 0 AndAlso rows(numberOfRows - 1).Length = 0 Then



'Removes extra empty row if present.

        numberOfRows -= 1 

End If



'Gets the size of data object in Columns.

Dim cols As String() = rows(0).Split(New Char(){ControlChars.Tab})

Dim numberOfCols As Integer = cols.GetLength(0)

If numberOfCols > 0 AndAlso cols(numberOfCols - 1).Length = 0 Then



'Removes extra empty column if present.

     numberOfCols -= 1 

End If



Dim extraRowIfStartAtAddNewRow As Integer = If(Me.gridDataBoundGrid1.Binder.IsAddNew, 1, 0)

Do While currentCell.RowIndex + numberOfRows + extraRowIfStartAtAddNewRow > grid.Model.RowCount

Dim dataRow As DataRow = dataTable.NewRow()

dataTable.Rows.Add(dataRow)

row -= 1

Loop

Do While currentCell.ColIndex + numberOfCols> grid.Model.ColCount+1

dataTable.Columns.Add()

col -= 1

Loop

Me.gridDataBoundGrid1.Binder.ResumeBinding()

Me.gridDataBoundGrid1.EndUpdate()

{% endhighlight %}

