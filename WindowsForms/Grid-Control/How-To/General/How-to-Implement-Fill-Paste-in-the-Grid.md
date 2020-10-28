---
layout: post
title: How-to-Implement-Fill-Paste-in-the-Grid | Windows Forms | Syncfusion
description: how to implement fill paste in the grid
platform: windowsforms
control: Grid
documentation: ug
---

# How to implement Fill Paste in the Grid

Copy a cell value and replicate it by selecting a range. Then paste this value into that range. This is called "Fill Paste". You can try handling this in ClipboardPaste event.

{% tabs %}
{% highlight c# %}

private void gridControl1_ClipboardPaste(object sender, Syncfusion.Windows.Forms.Grid.GridCutPasteEventArgs e)
{
    DataObject data = (DataObject)Clipboard.GetDataObject();
    string[] rows = null;
    int numberOfRows = 0;
    int numberOfCols = 0;

    //Gets the size of the paste.
    if(data.GetDataPresent(DataFormats.Text))
    {
        string s = (string)data.GetData(DataFormats.Text);
        rows = s.Split(new char[]{''\n''});
        numberOfRows = rows.GetLength(0);
        if(numberOfRows > 0 && rows[numberOfRows - 1].Length == 0)

        //Removes extra empty row if present.
        numberOfRows--; 
        
        if(numberOfRows > 0)
        {
            string[] cols = rows[0].Split(new char[]{''\t''});
            numberOfCols = cols.GetLength(0);
        }

      }

    //Pastes one to many.
    if(numberOfRows == 1 && numberOfCols == 1 && !this.gridControl1.Selections.Ranges.ActiveRange.IsEmpty)
    {
        this.gridControl1.ChangeCells(this.gridControl1.Selections.Ranges.ActiveRange,
        rows[0]);
        e.Handled = true;
        e.Result = true;
     }
}

{% endhighlight  %}

{% highlight vb %}

Private Sub gridControl1_ClipboardPaste(ByVal sender As Object, ByVal e As Syncfusion. Grid.GridCutPasteEventArgs) Handles gridControl1.ClipboardPaste
Dim data As DataObject = CType(Clipboard.GetDataObject(), DataObject)
Dim rows As String() = Nothing
Dim numberOfRows As Integer = 0
Dim numberOfCols As Integer = 0

'Gets the size of the paste.
If data.GetDataPresent(DataFormats.Text) Then
Dim s As String = CStr(data.GetData(DataFormats.Text))
rows = s.Split(New Char(){ControlChars.Lf})
numberOfRows = rows.GetLength(0)
If numberOfRows > 0 AndAlso rows(numberOfRows - 1).Length = 0 Then

'Removes extra empty row if present.
numberOfRows -= 1 
End If
If numberOfRows > 0 Then
Dim cols As String() = rows(0).Split(New Char(){ControlChars.Tab})
numberOfCols = cols.GetLength(0)
End If
End If

'Pastes one to many.
If numberOfRows = 1 AndAlso numberOfCols = 1 AndAlso (Not Me.gridControl1.Selections.Ranges.ActiveRange.IsEmpty) Then
Me.gridControl1.ChangeCells(Me.gridControl1.Selections.Ranges.ActiveRange, rows(0))
e.Handled = True
e.Result = True
End If
End Sub
{% endhighlight  %}
{% endtabs %}
