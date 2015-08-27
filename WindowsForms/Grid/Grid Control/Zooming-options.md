---
layout: post
title: Zooming-options
description: zooming options
platform: windowsform
control: Grid
documentation: ug
---

# Zooming options

This section discusses the following zooming options:

## Cell-level and grid-level

We can implement zooming functionality in Essential Grid to show a magnified image of the Grid for better visualization. A method named ZoomGrid is used for this purpose. It accepts the percentage of zoom as the parameter and then uses this value to set the font size and cell size for the grid. Zooming can be implemented at cell-level and at grid-level.

The following screen shot shows a grid that is zoomed to the grid-level.

![](Grid-Control_images/Grid-Control_img238.jpeg)





The following screen shot shows a grid that is zoomed to the cell-level.

![](Grid-Control_images/Grid-Control_img239.jpeg)





####Example

This example implements zooming functionality for Essential Grid at cell-level. Follow the steps listed below:

1. Call the ZoomGrid method by passing the percentage of zoom as the parameter. The below code illustrates this.

{% highlight c# %}



private void zoomGrid(float percent)

{

    this.gridControl1.BeginUpdate();

    currentPercent = percent;

    for (int i = 0; i <= gridControl1.ColCount; i++)

    {

        for (int j = 0; j <= gridControl1.RowCount; j++)

        this.gridControl1[j, i].Font.Size = fontSize * currentPercent;

        this.gridControl1.Model.ColWidths[i] = (int)(percent * defColWidth);

    }



    this.gridControl1.ColWidths[0] = (int)(percent * headerColWd);

    this.gridControl1.DefaultColWidth = (int)(percent * defColWidth);

    this.gridControl1.DefaultRowHeight = (int)(percent * defRowHeight);

    this.gridControl1.RowHeights[0] = (int)(percent * headerRowHt);

    this.gridControl1.EndUpdate();

    this.gridControl1.Refresh();

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub zoomGrid(ByVal percent As Single)

    Me.label1.Text = Me.trackBar1.Value.ToString() & "%"

    Me.label1.Refresh()



    Me.gridControl1.BeginUpdate()

    currentPercent = percent

    For i As Integer = 0 To gridControl1.ColCount

        For j As Integer = 0 To gridControl1.RowCount

            Me.gridControl1(j, i).Font.Size = fontSize * currentPercent

        Next j

        Me.gridControl1.Model.ColWidths(i) = CInt(Fix(percent * defColWidth))

    Next i



    Me.gridControl1.ColWidths(0) = CInt(Fix(percent * headerColWd))

    Me.gridControl1.DefaultColWidth = CInt(Fix(percent * defColWidth))

    Me.gridControl1.DefaultRowHeight = CInt(Fix(percent * defRowHeight))

    Me.gridControl1.RowHeights(0) = CInt(Fix(percent * headerRowHt))

    Me.gridControl1.EndUpdate()

    Me.gridControl1.Refresh()

End Sub

{% endhighlight %}

The preceding code sets the font and cell size using the percent parameter.



2. When the cell to be zoomed is clicked, handle CellClick event to display it as a zoomed cell. Here we use a PictureBox to show the magnified view of the cell content. 


> Note: A PictureBox is a Microsoft’s .NET Control used to display an image.

{% highlight c# %}



//Code to show zoomed window.

private System.Windows.Forms.PictureBox zoomWindow;

private void gridControl1_CellClick(object sender, GridCellClickEventArgs e)

{

    if (e.RowIndex > 0 && e.ColIndex > 0)

    {

        if (checkBox1.Checked)

        {

            if (!zoomWindow.Visible)

            this.zoomWindow.Visible = true;

            Point p1 = new Point(0, 0);

            Size s = new Size(this.gridControl1.ColWidths[e.ColIndex] + 10, this.gridControl1.RowHeights[e.RowIndex] + 5);

            s.Width += 50;

            s.Height += 30;

            Rectangle rect = new Rectangle(p1, s);

            zoomWindow.Size = s;



            Bitmap bmp = new Bitmap(s.Width, s.Height);

            Graphics g = Graphics.FromImage(bmp);

            GridStyleInfo style = gridControl1[e.RowIndex, e.ColIndex];

            float size = style.Font.Size;

            style.Font.Size = 15.5f;

            gridControl1.DrawSingleCell(g, e.RowIndex, e.ColIndex, rect, style, true, true);

            g.Dispose();



            this.zoomWindow.Image = bmp;

            this.zoomWindow.BorderStyle = BorderStyle.FixedSingle;

            this.zoomWindow.Visible = true;

            Point pt = this.gridControl1.ViewLayout.RowColToPoint(e.RowIndex, e.ColIndex, GridCellSizeKind.VisibleSize);

            pt.Y += 60;

            zoomWindow.Location = pt;



            style.Font.Size = size;

        }

    }

    else

    {

        this.zoomWindow.Visible = false;

        MessageBox.Show("Not a record cell");

    }

}
{% endhighlight %}


{% highlight vbnet %}



Private zoomWindow As System.Windows.Forms.PictureBox



'Code to show zoomed window.

Private Sub gridControl1_CellClick(ByVal sender As Object, ByVal e As GridCellClickEventArgs)

    If e.RowIndex > 0 AndAlso e.ColIndex > 0 Then

        If checkBox1.Checked Then

            If (Not zoomWindow.Visible) Then

                Me.zoomWindow.Visible = True

            End If

            Dim p1 As Point = New Point(0, 0)

            Dim s As Size = New Size(Me.gridControl1.ColWidths(e.ColIndex) + 10, Me.gridControl1.RowHeights(e.RowIndex) + 5)

            s.Width += 50

            s.Height += 30

            Dim rect As Rectangle = New Rectangle(p1, s)

            zoomWindow.Size = s



            Dim bmp As Bitmap = New Bitmap(s.Width, s.Height)

            Dim g As Graphics = Graphics.FromImage(bmp)

            Dim style As GridStyleInfo = gridControl1(e.RowIndex, e.ColIndex)

            Dim size As Single = style.Font.Size

            style.Font.Size = 15.5F

            gridControl1.DrawSingleCell(g, e.RowIndex, e.ColIndex, rect, style, True, True)

            g.Dispose()



            Me.zoomWindow.Image = bmp

            Me.zoomWindow.BorderStyle = BorderStyle.FixedSingle

            Me.zoomWindow.Visible = True

            Dim pt As Point = Me.gridControl1.ViewLayout.RowColToPoint(e.RowIndex, e.ColIndex, GridCellSizeKind.VisibleSize)

            pt.Y += 60

            zoomWindow.Location = pt



            style.Font.Size = size

        End If

    Else

        Me.zoomWindow.Visible = False

        MessageBox.Show("Not a record cell")

    End If

End Sub

{% endhighlight %}

Now when you click any cell, it displays a picture box over the cell showing cell content in a magnified manner.



> Note: For more details on this feature, refer the following browser sample:

         <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Zoom and Scroll\Zooming Demo

