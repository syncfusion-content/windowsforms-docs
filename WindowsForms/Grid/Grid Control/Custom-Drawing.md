---
layout: post
title: Custom-Drawing
description: custom drawing
platform: windowsform
control: Grid
documentation: ug
---

# Custom Drawing

Essential Grid enables custom drawing on its cells. Custom Drawing denotes adding text and drawings such as lines, polygons, etc., to the cell. It has custom draw events such as CellDrawn event and DrawCell event. By using these events, you can provide the exact appearance that you desire for your applications. 

* DrawCell - This event is handled for every cell before the grid draws a specified cell. This event is generally used to add custom drawing to a cell. It can also be used to draw shapes like lines, polygons, etc.
* CellDrawnevent - This event is handled for every cell when the grid has drawn the specified cell. You can handle the CellDrawn event and use its Graphics argument to do custom drawing after the grid has finished drawing the cell.

Following code example illustrates handling the Draw Cell event.

 {% highlight c# %}



//DrawCell event is used to apply styles to the grid.

private void gridControl1_DrawCell(object sender, GridDrawCellEventArgs e)

{

    if (e.RowIndex == 0)

    {

        e.Style.Interior = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(255, 229, 201), Color.FromArgb(255, 153, 52));

    }

    else if (e.ColIndex == 0)

    {

        e.Style.Interior = new BrushInfo(GradientStyle.Horizontal, Color.White, Color.FromArgb(102, 110, 152));

    }

    else if (e.RowIndex % 2 == 0)

    {

        e.Style.Interior = new BrushInfo(GradientStyle.BackwardDiagonal, Color.FromArgb(51, 51, 101), Color.White);

    }

}
{% endhighlight %}


{% highlight vbnet %}



'DrawCell event is used to apply styles to the grid.

Private Sub gridControl1_DrawCell(ByVal sender As Object, ByVal e As GridDrawCellEventArgs)

If e.RowIndex = 0 Then

e.Style.Interior = New BrushInfo(GradientStyle.Vertical, Color.FromArgb(255, 229, 201), Color.FromArgb(255, 153, 52))

ElseIf e.ColIndex = 0 Then

e.Style.Interior = New BrushInfo(GradientStyle.Horizontal, Color.White, Color.FromArgb(102, 110, 152))

ElseIf e.RowIndex Mod 2 = 0 Then

e.Style.Interior = New BrushInfo(GradientStyle.BackwardDiagonal, Color.FromArgb(51, 51, 101), Color.White)

End If

End Sub

{% endhighlight %}

The above code identifies the first row, first column and the even rows using their index values and paints them with unique interior styles.

Following code example illustrates handling the CellDrawn Event.

 {% highlight c# %}



//Handles CellDrawn Event to customize the appearance of grid cells.

private void gridControl1_CellDrawn(object sender, GridDrawCellEventArgs e)

{

    if(e.ColIndex==6 &&e.RowIndex>0)

    {

        Rectangle rec = e.Bounds,rect=e.Bounds;

        rec.X=(e.Bounds.Left+e.Bounds.Right)/2;

        if(e.Style.CellValue.ToString()=="1")

        {

            e.Graphics.FillEllipse(Brushes.Gray,rect);

            GridImageCellRenderer.DrawImage(e.Graphics,this.imageList1,1,rec,false);

        }

        else

        {

            e.Graphics.FillEllipse(Brushes.LightGray,rect);

            GridImageCellRenderer.DrawImage(e.Graphics,this.imageList1,0,rec,false);

        }

    }

}
{% endhighlight %}


{% highlight vbnet %}



'Handles CellDrawn Event to customize the appearance of grid cells.

Private Sub gridControl1_CellDrawn(ByVal sender As Object, ByVal e As GridDrawCellEventArgs)

If e.ColIndex = 6 AndAlso e.RowIndex > 0 Then

Dim rec As Rectangle = e.Bounds, rect As Rectangle = e.Bounds

rec.X = (e.Bounds.Left + e.Bounds.Right) / 2

If e.Style.CellValue.ToString() = "1" Then

e.Graphics.FillEllipse(Brushes.Gray, rect)

GridImageCellRenderer.DrawImage(e.Graphics, Me.imageList1, 1, rec, False)

Else

e.Graphics.FillEllipse(Brushes.LightGray, rect)

GridImageCellRenderer.DrawImage(e.Graphics, Me.imageList1, 0, rec, False)

End If

End If

End Sub

{% endhighlight %}

The above code identifies the cells of the sixth column except the cell corresponding to the column header, using their index values, and customizes their appearance.

