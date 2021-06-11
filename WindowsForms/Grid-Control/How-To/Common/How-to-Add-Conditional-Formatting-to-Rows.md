---
layout: post
title: How-to-Add-Conditional-Formatting-to-Rows in GridControl | Syncfusion
description: Learn here all about how to add conditional formatting to rows of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Add Conditional Formatting to Rows in Windows Forms GridControl

### Introduction

Say you want to color a row if the value in column 2 is larger than 10 (or any logical condition that you can evaluate). You can do something like this by using PrepareViewStyleInfo event. This event is raised immediately prior to the cell being drawn and gives you a chance to modify GridStyleInfo object that determines the appearance of the cell. Since you want to affect a visual change on the whole row when a single cell value is modified, you will need to tell the grid to redraw the whole row when the current cell moves instead of just redrawing affected cells. You can use the same technique to conditionally format columns or cells.



{% tabs %}

{% highlight c# %}

//Tells the grid to redraw the whole row as current cell moves (say in Form.Load).
this.grid.Model.Options.RefreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshRow;

//The event handler.
private void grid_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{
    if(e.RowIndex > 0  && e.ColIndex > 0)
    {
         double d;
         string val = (e.ColIndex == 2) ? e.Style.Text : this.gridDataBoundGrid1[e.RowIndex, 2].Text;
         if(double.TryParse(val, System.Globalization.NumberStyles.Any, null, out d)
                          && d > 10)
         {
              e.Style.BackColor = Color.LightGoldenrodYellow;
         }
     }
}

{% endhighlight %}

{% highlight vb %}

'Tells the grid to redraw the whole row as current cell moves (say in Form.Load).
Me.grid.Model.Options.RefreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshRow

'The event handler.
Private Sub grid_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)
    If e.RowIndex > 0 And e.ColIndex > 0 Then
        Dim d As Double
        Dim val As String
        If e.ColIndex = 2 Then 
            val = e.Style.Text 
        Else 
            val = Me.gridDataBoundGrid1(e.RowIndex, 2).Text) 
        End If

        If Double.TryParse(val, System.Globalization.NumberStyles.Any, Nothing, d) And d > 10 Then
            e.Style.BackColor = Color.LightGoldenrodYellow
        End If
    End If

'Grid_PrepareViewStyleInfo.
End Sub 

{% endhighlight %}
{% endtabs %}