---
layout: post
title: Show Context Menu in Windows Forms GridControl | Syncfusion®
description: Show a context menu at the center of the current or selected cells in Syncfusion® Windows Forms GridControl using mouse events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Show Context Menu in Windows Forms GridControl

This can be achieved by handling Grid's MouseDown event. In the event handler, the center location of the current cell or the selected range is calculated and the context menu is shown after moving the cursor to the center point. Below is the code snippet.

{% tabs %}
{% highlight c# %}

private void gridControl1_MouseDown(object sender, MouseEventArgs e)
{
    if(e.Button == MouseButtons.Right)
    {
        GridCurrentCell cc = this.gridControl1.CurrentCell;
        Point pt = new Point(e.X, e.Y); //Retrieves mouse position
     
        if(this.gridControl1.Selections.Ranges.Count > 0) //Selects more than one Cell.
        {
              pt = GridUtil.CenterPoint(this.gridControl1.RangeInfoToRectangle(this.gridControl1.Selections.Ranges.ActiveRange));
              Cursor.Position = this.gridControl1.PointToScreen(pt);
        }
   
        else if(cc.HasCurrentCell) //Single Cell.
        {
             pt = GridUtil.CenterPoint(this.gridControl1.RangeInfoToRectangle(cc.RangeInfo));
             Cursor.Position = this.gridControl1.PointToScreen(pt);
        }
        this.contextMenu1.Show(this.gridControl1, pt); //Shows ContextMenu.
    }
}

{% endhighlight  %}

{% highlight vb %}

Private Sub gridControl1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
If e.Button = MouseButtons.Right Then
Dim cc As GridCurrentCell = Me.gridControl1.CurrentCell
Dim pt As Point = New Point(e.X, e.Y) 'Gets the mouse position.
If Me.gridControl1.Selections.Ranges.Count > 0 Then
pt = GridUtil.CenterPoint(Me.gridControl1.RangeInfoToRectangle(Me.gridControl1.Selections.Ranges.ActiveRange))
Cursor.Position = Me.gridControl1.PointToScreen(pt)
ElseIf cc.HasCurrentCell Then 'Single Cell.
pt = GridUtil.CenterPoint(Me.gridControl1.RangeInfoToRectangle(cc.RangeInfo))
Cursor.Position = Me.gridControl1.PointToScreen(pt)
End If
Me.contextMenu1.Show(Me.gridControl1, pt) 'Shows ContextMenu.
End If
End Sub

{% endhighlight  %}
{% endtabs %}