---
layout: post
title: Resize Row Height Based on the Font in GridControl | Syncfusion
description: How to resize row height based on the font of grid cell content in Syncfusion Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to resize row height based on the font of Grid cell content

You can resize the row height based on the cell content height using ResizingRows event. Calculate the content height using MeasuringString() method. This considers the text, font style and font size to calculate the content size. Assign the calculated value to RowHeights property.

You can resize the rows individually using AllowResizingIndividualRows() method of GridHelperClasses. This method will be effective only when used before InitializeComponent().

{% tabs %}
{% highlight c# %}
public Form1()
{
    //Used to Customizes the row height for individual row 
    GridEngineFactory.Factory = new Syncfusion.GridHelperClasses.AllowResizingIndividualRows();
    InitializeComponent();
}

Size stringSize;

void TableControl_ResizingRows(object sender, GridResizingRowsEventArgs e)
{

    //Resize the row on double click on the row header resizing cursor
    if (e.Reason == GridResizeCellsReason.DoubleClick)
    {
        Graphics graphics = CreateGraphics();
        long maxHeight = 0;

        // Get the style info of the particular cell value
        GridStyleInfo style = this.gridGroupingControl1.TableControl.GetViewStyleInfo(e.Rows.Bottom, 2);
        stringSize = graphics.MeasureString(style.Text, style.GdipFont, this.gridGroupingControl1.TableModel.ColWidths[2]).ToSize();
     
        if (maxHeight < stringSize.Height)
        {
            maxHeight = (long)stringSize.Height;
        }
        this.gridGroupingControl1.TableModel.RowHeights[e.Rows.Bottom] = (int)maxHeight;
        e.Cancel = true;
    }            
}
{% endhighlight %}

{% highlight vb %}
Public Sub New()
  'Used to Customizes the row height for individual row 
  GridEngineFactory.Factory = New Syncfusion.GridHelperClasses.AllowResizingIndividualRows()
  InitializeComponent()
End Sub

Private stringSize As Size

Private Sub TableControl_ResizingRows(ByVal sender As Object, ByVal e As GridResizingRowsEventArgs)
  'Resize the row on double click on the row header resizing cursor
  If e.Reason = GridResizeCellsReason.DoubleClick Then
	Dim graphics As Graphics = CreateGraphics()
	Dim maxHeight As Long = 0
    
	' Get the style info of the particular cell value
	Dim style As GridStyleInfo = Me.gridGroupingControl1.TableControl.GetViewStyleInfo(e.Rows.Bottom, 2)
	stringSize = graphics.MeasureString(style.Text, style.GdipFont, Me.gridGroupingControl1.TableModel.ColWidths(2)).ToSize()
	If maxHeight < stringSize.Height Then
		maxHeight = CLng(Fix(stringSize.Height))
	End If
	Me.gridGroupingControl1.TableModel.RowHeights(e.Rows.Bottom) = CInt(Fix(maxHeight))
	e.Cancel = True
  End If
End Sub
{% endhighlight %}
{% endtabs %}
