---
layout: post
title: How-to-Print-a-Chart-in-Multiple-Pages | Windows Forms | Syncfusion®
description: how to print a chart in multiple pages 
platform: windowsforms
control: chart
documentation: ug
---

# How to Print a Chart in Multiple Pages 

To print a Chart in multiple page, use the PrintPage event to specify the range of X and Y axis. Specify the minimum and maximum value in the _Range_ property of the axis you want to divide. Set the HasMorePages__property to true in the events before specifying the range values and set this to false after chart default maximum value. The following code illustrates this: 

{% tabs %}

{% highlight c# %}

this.chartControl1.PrintDocument.PrintPage += new System.Drawing.Printing.PrintPageEventHandler(PrintDocument_PrintPage);

//PrintPage Event

void PrintDocument_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)

{

if (textBox1.Text == "")

textBox1.Text = "20";

//Set the HasMorePages property to true for dividing the chart into Multiple pages

e.HasMorePages = true;   

this.chartControl1.PrimaryXAxis.LabelIntersectAction = ChartLabelIntersectAction.Wrap;

if (max == 0.0 && mi == 0.0)

{

max = Convert.ToDouble(textBox1.Text);  //Initializing max and min range

mi = 0;

}

//Get the Color mode

bool grayScale = this.chartControl1.PrintDocument.ColorMode == ChartPrintColorMode.GrayScale;

bool toolBatVisibility = this.chartControl1.ShowToolbar;

if (!this.chartControl1.PrintDocument.PrintToolBar)

{

this.chartControl1.ShowToolbar = false;

}

if (m_currentAction.Value == PrintAction.PrintToPrinter && this.chartControl1.PrintDocument.ColorMode == ChartPrintColorMode.CheckPrinter)

{

grayScale = this.chartControl1.PrintDocument.PrinterSettings.SupportsColor;

}

//Check the color mode of print

if (!grayScale)

{

//Assigning the initial values of max and min to chart control’s maximum and minimum values

this.chartControl1.ChartArea.PrimaryXAxis.Range.Min = mi;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Max = max;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = (this.chartControl1.ChartArea.PrimaryXAxis.Range.Max - this.chartControl1.ChartArea.PrimaryXAxis.Range.Min) / this.chartControl1.ChartArea.PrimaryXAxis.Range.NumberOfIntervals;

//Modifying the maximum and minimum values

mi = max;

max = max + Convert.ToDouble(textBox1.Text);

GraphicsContainer container = BeginTransform(e.Graphics);

e.Graphics.ResetTransform();

//Call the Draw method to draw the chart

this.chartControl1.Draw(e.Graphics, e.MarginBounds);

EndTransform(e.Graphics, container);

}

//For Grayscale mode of print

else if (grayScale)

{

ChartStyleInfo[] tempStyles = new ChartStyleInfo[this.chartControl1.Series.Count];

Array pattern = System.Enum.GetValues(typeof(PatternStyle));

Array dash = System.Enum.GetValues(typeof(DashStyle));

for (int i = 0; i < this.chartControl1.Series.Count; i++)

{

tempStyles[i] = new ChartStyleInfo();               

tempStyles[i].CopyFrom(this.chartControl1.Series[i].StylesImpl.Style);

this.chartControl1.Series[i].Style.Interior = new BrushInfo((PatternStyle)pattern.GetValue(i % pattern.Length), Color.Black, Color.White);                  this.chartControl1.Series[i].Style.Border.MakeCopy(tempStyles[i], this.chartControl1.Series[i].Style.Border.Sip);

this.chartControl1.Series[i].Style.Border.Color = Color.Black;

this.chartControl1.Series[i].Style.Border.DashStyle = (DashStyle)dash.GetValue(i % dash.Length);

//Checking the chart type

if (this.chartControl1.Series[i].Type == ChartSeriesType.Line || this.chartControl1.Series[i].Type == ChartSeriesType.Spline || this.chartControl1.Series[i].Type == ChartSeriesType.StepLine || this.chartControl1.Series[i].Type == ChartSeriesType.RotatedSpline)

{

this.chartControl1.Series[i].Style.Interior = new BrushInfo((PatternStyle)pattern.GetValue(i % pattern.Length), Color.White, Color.Black);

if (this.chartControl1.Series3D || this.chartControl1.ChartInterior.BackColor == Color.Black)

{

this.chartControl1.Series[i].Style.Interior = new BrushInfo((PatternStyle)pattern.GetValue(i % pattern.Length), Color.Black, Color.White);

this.chartControl1.Series[i].Style.Border.Color = Color.Black;

}

}

}

GraphicsContainer container = BeginTransform(e.Graphics);

e.Graphics.ResetTransform();

using (Image image = new Bitmap(e.MarginBounds.Width, e.MarginBounds.Height))

{

using (Graphics g = Graphics.FromImage(image))

{

//Assigning the initial values of max and min to chart control maximum and minimum values

this.chartControl1.ChartArea.PrimaryXAxis.Range.Min = mi;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Max = max;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = (this.chartControl1.ChartArea.PrimaryXAxis.Range.Max - this.chartControl1.ChartArea.PrimaryXAxis.Range.Min) / this.chartControl1.ChartArea.PrimaryXAxis.Range.NumberOfIntervals;

//Modifying the maximum and minimum values

mi = max;

max = max + Convert.ToDouble(textBox1.Text);

IntPtr hdc = g.GetHdc();

Stream stream = new MemoryStream();

Metafile file = new Metafile(stream, hdc);

//Call the Draw method to draw the chart

this.chartControl1.Draw(file, image.Size);

DrawingUtils.DrawGrayedImage(e.Graphics, file, e.MarginBounds, new Rectangle(Point.Empty, image.Size));

g.ReleaseHdc(hdc);

g.Dispose();

file.Dispose();

}

}

EndTransform(e.Graphics, container);

for (int i = 0; i < this.chartControl1.Series.Count; i++)

{                 
    this.chartControl1.Series[i].StylesImpl.Style.ResetInterior(); 

    this.chartControl1.Series[i].StylesImpl.Style.ResetBorder();

    this.chartControl1.Series[i].StylesImpl.Style.CopyFrom(tempStyles[i]);

}

}

//Checking Toolbar functionality of print

if (!this.chartControl1.PrintDocument.PrintToolBar)

{

this.chartControl1.ShowToolbar = toolBatVisibility;

}

// Redraws the chart 

this.chartControl1.Redraw(true);

//Maximum exceeds the default range means reset the HasMorePages property.

if (max > end)

e.HasMorePages = false;

//Finally resets the maximum and minimum value for default chart control

this.chartControl1.ChartArea.PrimaryXAxis.Range.Min = start;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Max = end;

this.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = Interval;

}

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrintDocument.PrintPage += New System.Drawing.Printing.PrintPageEventHandler(PrintDocument_PrintPage)

‘’’/ PrintPage Event

Private Sub PrintDocument_PrintPage(ByVal sender As Object, ByVal e As System.Drawing.Printing.PrintPageEventArgs)

If textBox1.Text = "" Then

textBox1.Text = "20"

End If

‘’’/ Set the HasMorePages property to true for dividing the chart into Multiple pages

e.HasMorePages = True  

Me.chartControl1.PrimaryXAxis.LabelIntersectAction = ChartLabelIntersectAction.Wrap

If max = 0.0 AndAlso mi = 0.0 Then

‘’’/Initializing max and min range values

max = Convert.ToDouble(textBox1.Text)

mi = 0

End If

‘’’/Get the Color mode

Dim grayScale As Boolean = Me.chartControl1.PrintDocument.ColorMode = ChartPrintColorMode.GrayScale

Dim toolBatVisibility As Boolean = Me.chartControl1.ShowToolbar

If Not Me.chartControl1.PrintDocument.PrintToolBar Then

Me.chartControl1.ShowToolbar = False

End If

If m_currentAction.Value = PrintAction.PrintToPrinter AndAlso Me.chartControl1.PrintDocument.ColorMode = ChartPrintColorMode.CheckPrinter Then

grayScale = Me.chartControl1.PrintDocument.PrinterSettings.SupportsColor

End If


‘’’/Check the color mode of print

If Not grayScale Then

‘’’/Assigning the initial values of max and min to chart control maximum and ‘’’/minimum values

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Min = mi

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Max = max

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = (Me.chartControl1.ChartArea.PrimaryXAxis.Range.Max - Me.chartControl1.ChartArea.PrimaryXAxis.Range.Min) / Me.chartControl1.ChartArea.PrimaryXAxis.Range.NumberOfIntervals

‘’’/Modifying the maximum and minimum values

mi = max

max = max + Convert.ToDouble(textBox1.Text)

Dim container As GraphicsContainer = BeginTransform(e.Graphics)

e.Graphics.ResetTransform()

‘’’/Call the Draw method to draw the chart

Me.chartControl1.Draw(e.Graphics, e.MarginBounds)

EndTransform(e.Graphics, container)

‘’/For Grayscale mode of print

ElseIf grayScale Then

Dim tempStyles As ChartStyleInfo() = New ChartStyleInfo(Me.chartControl1.Series.Count - 1) {}

Dim pattern As Array = System.[Enum].GetValues(GetType(PatternStyle))

Dim dash As Array = System.[Enum].GetValues(GetType(DashStyle))

For i As Integer = 0 To Me.chartControl1.Series.Count - 1

tempStyles(i) = New ChartStyleInfo()              

tempStyles(i).CopyFrom(Me.chartControl1.Series(i).StylesImpl.Style)

Me.chartControl1.Series(i).Style.Interior = New BrushInfo(DirectCast(pattern.GetValue(i Mod pattern.Length), PatternStyle), Color.Black, Color.White)

Me.chartControl1.Series(i).Style.Border.MakeCopy(tempStyles(i), Me.chartControl1.Series(i).Style.Border.Sip)

Me.chartControl1.Series(i).Style.Border.Color = Color.Black

Me.chartControl1.Series(i).Style.Border.DashStyle = DirectCast(dash.GetValue(i Mod dash.Length), DashStyle)

‘’’/Checking the chart type

If Me.chartControl1.Series(i).Type = ChartSeriesType.Line OrElse Me.chartControl1.Series(i).Type = ChartSeriesType.Spline OrElse Me.chartControl1.Series(i).Type = ChartSeriesType.StepLine OrElse Me.chartControl1.Series(i).Type = ChartSeriesType.RotatedSpline Then

Me.chartControl1.Series(i).Style.Interior = New BrushInfo(DirectCast(pattern.GetValue(i Mod pattern.Length), PatternStyle), Color.White, Color.Black)

If Me.chartControl1.Series3D OrElse Me.chartControl1.ChartInterior.BackColor = Color.Black Then

Me.chartControl1.Series(i).Style.Interior = New BrushInfo(DirectCast(pattern.GetValue(i Mod pattern.Length), PatternStyle), Color.Black, Color.White)

Me.chartControl1.Series(i).Style.Border.Color = Color.Black

End If

End If

Next

Dim container As GraphicsContainer = BeginTransform(e.Graphics)

e.Graphics.ResetTransform()

Using image As Image = New Bitmap(e.MarginBounds.Width, e.MarginBounds.Height)

Using g As Graphics = Graphics.FromImage(image)

‘’’/Assigning the initial values of max and min to chart control maximum and ‘’’/minimum values

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Min = mi

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Max = max

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = (Me.chartControl1.ChartArea.PrimaryXAxis.Range.Max - Me.chartControl1.ChartArea.PrimaryXAxis.Range.Min) / Me.chartControl1.ChartArea.PrimaryXAxis.Range.NumberOfIntervals

‘’’/Modifying the maximum and minimum values

mi = max

max = max + Convert.ToDouble(textBox1.Text)

Dim hdc As IntPtr = g.GetHdc()

Dim stream As Stream = New MemoryStream()

Dim file As New Metafile(stream, hdc)

‘’’/Call the Draw method to draw the chart

Me.chartControl1.Draw(file, image.Size)

DrawingUtils.DrawGrayedImage(e.Graphics, file, e.MarginBounds, New Rectangle(Point.Empty, image.Size))

g.ReleaseHdc(hdc)

g.Dispose()

file.Dispose()

End Using

End Using

EndTransform(e.Graphics, container)

For i As Integer = 0 To Me.chartControl1.Series.Count - 1

Me.chartControl1.Series(i).StylesImpl.Style.ResetInterior()

Me.chartControl1.Series(i).StylesImpl.Style.ResetBorder()

Me.chartControl1.Series(i).StylesImpl.Style.CopyFrom(tempStyles(i))

Next

End If

‘’’/Checking Toolbar functionality of print

If Not Me.chartControl1.PrintDocument.PrintToolBar Then

Me.chartControl1.ShowToolbar = toolBatVisibility

End If

‘’’/Redraws the chart 

Me.chartControl1.Redraw(True)

/Reset the HasMorePages property to false when it exceeds the charts default maximum.

If max > [end] Then

e.HasMorePages = False

End If

//Finally resets the maximum and minimum value for default chart control

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Min = start

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Max = [end]

Me.chartControl1.ChartArea.PrimaryXAxis.Range.Interval = Interval

End Sub

{% endhighlight %}

{% endtabs %}

N> Note: The initial page will be printed based on the specified minimum and maximum value. In further pages minimum value will be the maximum value of previous page and maximum will be the sum of current page minimum value and the specified maximum value in the Range.

Events

<table>
<tr>
<th>
Event </th><th>
Description </th><th>
Arguments </th><th>
Type </th><th>
Reference links </th></tr>
<tr>
<th>
PrintPage </th><th>
This event will be triggered when the chart is printed.  </th><th>
PrintPageEventArgs</th><th>
Server side </th><th>
NA</th></tr>
</table>

Sample Link

#### To view a sample:

1. Open the Syncfusion® Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Chart Samples -->Print -->Multiple Page Printing. 





