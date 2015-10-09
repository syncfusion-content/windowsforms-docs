---
layout: post
title: How-to-Implement-Fill-Paste-in-the-Grid | WindowsForms | Syncfusion
description: how to implement fill paste in the grid
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Implement Fill Paste in the Grid

## Introduction

Copy a cell value and replicate it by selecting a range. Then paste this value into that range. This is called "Fill Paste". You can try handling this in ClipboardPaste event.

### Example

{% highlight c# %}



private void gridControl1_ClipboardPaste(object sender, Syncfusion.Windows.Forms.Grid.GridCutPasteEventArgs e)
{
      DataObject data = (DataObject)Clipboard.GetDataObject();
      string[] rows = null;
      int numRows = 0;
      int numCols = 0;


//Gets the size of the paste.
      if(data.GetDataPresent(DataFormats.Text))
      {
          string s = (string)data.GetData(DataFormats.Text);
          rows = s.Split(new char[]{''\n''});
          numRows = rows.GetLength(0);
          if(numRows > 0 && rows[numRows - 1].Length == 0)



//Removes extra empty row if present.
          numRows--; 
          if(numRows > 0)
          {
                   string[] cols = rows[0].Split(new char[]{''\t''});
                   numCols = cols.GetLength(0);
          }

      }


//Pastes one to many.
     if(numRows == 1 && numCols == 1 && !this.gridControl1.Selections.Ranges.ActiveRange.IsEmpty)
     {
          this.gridControl1.ChangeCells(this.gridControl1.Selections.Ranges.ActiveRange,
          rows[0]);
          e.Handled = true;
          e.Result = true;
     }
}

{% endhighlight  %}

{% highlight vbnet %}



Private Sub gridControl1_ClipboardPaste(ByVal sender As Object, ByVal e As Syncfusion. Grid.GridCutPasteEventArgs) Handles gridControl1.ClipboardPaste

           Dim data As DataObject = CType(Clipboard.GetDataObject(), DataObject)
           Dim rows As String() = Nothing
           Dim numRows As Integer = 0
           Dim numCols As Integer = 0


'Gets the size of the paste.
           If data.GetDataPresent(DataFormats.Text) Then
           Dim s As String = CStr(data.GetData(DataFormats.Text))
           rows = s.Split(New Char(){ControlChars.Lf})
           numRows = rows.GetLength(0)
           If numRows > 0 AndAlso rows(numRows - 1).Length = 0 Then



'Removes extra empty row if present.
                numRows -= 1 
           End If

      If numRows > 0 Then
          Dim cols As String() = rows(0).Split(New Char(){ControlChars.Tab})
          numCols = cols.GetLength(0)
     End If

   End If


'Pastes one to many.
  If numRows = 1 AndAlso numCols = 1 AndAlso (Not Me.gridControl1.Selections.Ranges.ActiveRange.IsEmpty) Then
      Me.gridControl1.ChangeCells(Me.gridControl1.Selections.Ranges.ActiveRange, rows(0))
      e.Handled = True
      e.Result = True
    End If

End Sub


{% endhighlight  %}
