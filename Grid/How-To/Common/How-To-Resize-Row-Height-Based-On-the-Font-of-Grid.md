---
layout: post
title: How-To-Resize-Row-Height-Based-On-the-Font-of-Grid | WindowsForms | Syncfusion
description: how to resize row height based on the font of grid cell content
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Resize Row Height Based On the Font of Grid Cell Content

You can resize the row height based on the cell content height using ResizingRows event. Calculate the content height using MeasuringString() method. This considers the text, font style and font size to calculate the content size. Assign the calculated value to RowHeights property.

You can resize the rows individually using AllowResizingIndividualRows() method of GridHelperclasses. This method will be effective only when used before InitializeComponent().

The following code illustrates resizing rows based on the grid cell content: 

{% highlight c# %}

public Form1()

     {

//Customizes the row height for individual row 

 GridEngineFactory.Factory = new Syncfusion.GridHelperClasses.AllowResizingIndividualRows();

      InitializeComponent();     

     }

Size stringSize;

        void grid_ResizingRows(object sender, Syncfusion.Windows.Forms.Grid.GridResizingRowsEventArgs e)

        {



            if (e.Reason == GridResizeCellsReason.DoubleClick)

            {

                Graphics grapics = CreateGraphics();

                long maxHeight = 0;

                GridStyleInfo style = this.grid.GetViewStyleInfo(e.Rows.Bottom, 1);

                stringSize = grapics.MeasureString(style.Text, style.GdipFont,this.grid.Model.ColWidths[1]).ToSize();  

                if (maxHeight < stringSize.Height)

                {

                    maxHeight = (long)stringSize.Height;

                }

                this.grid.Model.RowHeights[e.Rows.Bottom] = (int)maxHeight;

                e.Cancel = true;           

          }            

        }


{% endhighlight %}

{% highlight vbnet %}

Public Sub New()

            GridEngineFactory.Factory = New Syncfusion.GridHelperClasses.AllowResizingIndividualRows()

            InitializeComponent()           

End Sub





Private Sub grid_ResizingRows(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridResizingRowsEventArgs)

            If e.Reason = GridResizeCellsReason.DoubleClick Then

                Dim grapics As Graphics = CreateGraphics()

                Dim maxHeight As Long = 0

                Dim style As GridStyleInfo = Me.grid.GetViewStyleInfo(e.Rows.Bottom, 1)

                stringSize = grapics.MeasureString(style.Text, style.GdipFont, Me.grid.Model.ColWidths(1)).ToSize()

                If maxHeight < stringSize.Height Then

                    maxHeight = CLng(stringSize.Height)

                End If

                Me.grid.Model.RowHeights(e.Rows.Bottom) = CInt(maxHeight)

                e.Cancel = True

            End If

        End Sub




{% endhighlight %}

