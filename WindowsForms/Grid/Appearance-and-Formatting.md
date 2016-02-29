---
layout: post
title: Appearance and Formatting of GridControl for Syncfusion Essential WindowsForms
description: This section explains the Appearance and Formatting of the GridControl.
platform: WindowsForms
control: GridControl
documentation: ug
---

# Appearance and Formatting
GridControl provides lot of properties and events for customizing the appearance of the grid. This section explains the appearance and formatting available in GridControl. GridControl provides different kinds visual styles, which changes the appearance of the whole grid. To know more about the Visual Styles check the link over [here](http://help.syncfusion.com/windowsforms/grid/enhanced-visual-styles-for-syncfusion-windows-grids).

## Grid Control Designer
GridControl has an excellent user friendly design-time support. A GridControl’s edit designer is added to the grid to ease the process of designing GridControl on a cell level. Using the editor, Grid can be modified, saved, and loaded to XML formatted files or to SOAP formatted templates. 

Following is the step-by-step procedure to save the GridControl into an XML format

1. Right click the Grid control. A context menu is displayed.
2. Select `Edit` from the context menu drop-down. 

   ![](Appearance-and-Formatting_images/Appearance-and-Formatting_img1.jpeg)

3. GridControl Designer window will be opened. In that select the File -> Save to Xml option.
   
   ![](Appearance-and-Formatting_images/Appearance-and-Formatting_img2.jpeg)

   N> Editor opens up on the right hand side of the page and Grid Properties tab is highlighted by default. The cell content, styles and general grid properties can be modified under Grid Properties tab. 

4. A dialog box will be opened. Save the xml file in the desired location.

The cell styles of the Grid can be changed by using the Grid Properties tab and Selected Range tab in the designer which is located at the right side of the GridControl designer. For more information on how to customize the cells using the GridControl designer, check the link over [here](http://help.syncfusion.com/windowsforms/grid/populating-data#modifying-cell-styles-through-designer).

N>  The system prompts you to save the changes to the Grid control in the designer if exited without saving.

## Grid Properties
This section would explain the list of properties that changes the Appearance, Print Styles, and Scroll Bar settings of GridControl.

### Appearance Properties
The properties that majorly affect the appearance of cells in GridControl are listed below.

#### Hiding VerticalLines
To display the grid without the vertical lines, set the [DisplayVerticalLines](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~DisplayVerticalLines.html) property to `false`.

{% tabs %}
{% highlight c# %}
//Remove the Vertical Lines
this.gridControl.DisplayVerticalLines = false;
{% endhighlight %}
{% highlight vb %}
'Remove the Vertical Lines
Me.gridControl.DisplayVerticalLines = False
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img3.jpeg)

#### Hiding HorizontalLines
To display the grid without the horizontal lines, set the [DisplayHorizontalLines](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~DisplayVerticalLines.html) property to `false`.

{% tabs %}
{% highlight c# %}
//Remove the Horizontal Lines
this.gridControl. DisplayHorizontalLines = false;
{% endhighlight %}
{% highlight vb %}
'Remove the Horizontal Lines
Me.gridControl.DisplayHorizontalLines = False
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img4.jpeg)

#### Border Line Color
The color of vertical and horizontal lines can be set for GridControl by using the [GridLineColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~GridLineColor.html) property.

{% tabs %}
{% highlight c# %}
//Set the orange color for Horizontal and Vertical lines
this.gridControl.GridLineColor = Color.Orange;
{% endhighlight %}
{% highlight vb %}
'Set the orange color for Horizontal and Vertical lines
Me.gridControl.GridLineColor = Color.Orange
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img5.jpeg)

#### Border Styles
The `BorderStyle` for the GridControl can be set by using [DefaultGridBorderStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~DefaultGridBorderStyle.html) property.[GridBorderStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridBorderStyle.html) enumeration has provide the following options to set the border style,

* DashDot
* DashDotDot
* Dashed
* Dotted
* None
* NotSet
* Solid
* Standard

{% tabs %}
{% highlight c# %}
//To set the border style.
this.gridControl.DefaultGridBorderStyle = GridBorderStyle.DashDotDot;
{% endhighlight %}
{% highlight vb %}
' To set the border style.
Me.gridControl.DefaultGridBorderStyle = GridBorderStyle.DashDotDot
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img6.jpeg)

#### Setting Background Image
The background of the GridControl can be filled with an image by using [BackgroundImage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~BackgroundImage.html) property.

{% tabs %}
{% highlight c# %}
//To change the background image of gridcontrol
this.gridControl.BackgroundImage = Image.FromFile(@"sync.jpg");
{% endhighlight %}
{% highlight vb %}
' To change the background image of gridcontrol
Me.gridControl.BackgroundImage = Image.FromFile("sync.jpg")
{% endhighlight %}
{% endtabs %}
[TransparentBackground](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~TransparentBackground.html) specifies whether to display grid with background image. When this property is set to false, the background image will not be displayed even if it is set by using `BackgroundImage` property
{% tabs %}
{% highlight c# %}
//Background image or color was displayed.
this.gridControl.TransparentBackground = true;
{% endhighlight %}
{% highlight vb %}
‘Background image or color was displayed.
Me.gridControl.TransparentBackground = True
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img7.jpeg)

While changing the Background image of GridControl, the [BackgroundImageChanged](https://msdn.microsoft.com/en-us/library/system.windows.forms.control.backgroundimagechanged%28v=vs.110%29.aspx) event will be fired.

{% tabs %}
{% highlight c# %}
this.gridControl.BackgroundImageChanged += gridControl_BackgroundImageChanged;

void gridControl_BackgroundImageChanged(object sender, EventArgs e)
{
// Add the required code over here.
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridControl.BackgroundImageChanged += AddressOf gridControl_BackgroundImageChanged

Private Sub gridControl_BackgroundImageChanged(ByVal sender As Object, ByVal e As EventArgs)
 ‘Add the required code over here.
End Sub
{% endhighlight %}
{% endtabs %}

#### Changing Background Color
To set the color of the area below the last row and right of the last column (client area) inside the grid, use the [BackgroundColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~BackgroundColor.html) property.

{% tabs %}
{% highlight c# %}
//Set the background color for area below the grid.
this.gridControl.Properties.BackgroundColor = Color.PaleGreen;
{% endhighlight %}
{% highlight vb %}
'Set the background color for area below the grid.
Me.gridControl.Properties.BackgroundColor = Color.PaleGreen
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img8.jpeg)

To recover the background color to its default value, use the [ResetBackgroundcolor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~ResetBackgroundColor.html) method.

{% tabs %}
{% highlight c# %}
//To recover the background color,
this.gridControl.Properties.ResetBackgroundColor();
{% endhighlight %}
{% highlight vb %}
' To recover the background color,
Me.gridControl.Properties.ResetBackgroundColor()
{% endhighlight %}
{% endtabs %}

#### Hiding Column Headers
The [ColHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~ColHeaders.html) property used to indicate whether the GridControl should display column headers or not. 

{% tabs %}
{% highlight c# %}
// To remove Column header,
this.gridControl.Properties.ColHeaders = false;
{% endhighlight %}
{% highlight vb %}
' To remove column header,
Me.gridControl.Properties.ColHeaders = False
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img9.jpeg)

#### Hiding Row Headers
The visibility of the row headers in the grid can be set by using the [RowHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~RowHeaders.html) property.

{% tabs %}
{% highlight c# %}
'//To remove Row header,
this.gridControl.Properties.RowHeaders = false;
{% endhighlight %}
{% highlight vb %}
' To remove Row header,
Me.gridControl.Properties.RowHeaders = False
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img10.jpeg)

#### Hiding Numbered Column Headers
The [NumberedColHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~NumberedColHeaders.html) property is used to indicate whether to display the default column names (A, B, C) in column headers. 

{% tabs %}
{% highlight c# %}
//Remove the Column header name
this.gridControl.Model.Options.NumberedColHeaders = false;
{% endhighlight %}
{% highlight vb %}
' Remove the Column header name
Me.gridControl.Model.Options.NumberedColHeaders = False
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img11.jpeg)

#### Hiding Numbered Row Headers
The [NumberedRowHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModelOptions~NumberedRowHeaders.html)  property is used to indicate whether to display the row numbers of row headers. 

{% tabs %}
{% highlight c# %}
//Remove the Row header numbers
this.gridControl.Model.Options.NumberedRowHeaders = false;
{% endhighlight %}
{% highlight vb %}
' Remove the Row header numbers
Me.gridControl.Model.Options.NumberedRowHeaders = False
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img12.jpeg)

#### Changing Frozen Line Color
The color of the frozen grid lines can be set by using [FixedLinescolor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~FixedLinesColor.html) property. This property is applicable for both frozen column and frozen rows grid lines.

{% tabs %}
{% highlight c# %}
//Apply color for frozen gridlines
this.gridControl.Properties.FixedLinesColor = Color.Red;
{% endhighlight %}
{% highlight vb %}
'Apply color for frozen gridlines
Me.gridControl.Properties.FixedLinesColor = Color.Red
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img13.jpeg)

To recover the `FixedLinesColor` to its default value, you can use [ResetFixedLinesColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~ResetFixedLinesColor.html) method.

{% tabs %}
{% highlight c# %}
//To recover the FixedLinesColor,
this.gridControl.Properties.ResetFixedLinesColor();
{% endhighlight %}
{% highlight vb %}
' To recover the FixedLinesColor,
Me.gridControl.Properties.ResetFixedLinesColor()
{% endhighlight %}
{% endtabs %}

#### Highlighting Column Headers
The column header for the current cell can be highlighted by using [MarkColHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~MarkColHeader.html) property. Set this to true for highlight the column header, otherwise false.

{% tabs %}
{% highlight c# %}
//To highlight the Column header for the current cell,
this.gridControl.Properties.MarkColHeader = true;
{% endhighlight %}
{% highlight vb %}
'To highlight the Column header for the current cell,
Me.gridControl.Properties.MarkColHeader = True
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img14.jpeg)

#### Highlighting Row Headers
The row header of the current cell can be highlighted by using [MarkRowHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~MarkRowHeader.html) property.

{% tabs %}
{% highlight c# %}
//To highlight the Column header for the current cell,
this.gridControl.Properties.MarkRowHeader = true;
{% endhighlight %}
{% highlight vb %}
'To highlight the Column header for the current cell,
Me.gridControl.Properties.MarkRowHeader = True
{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img15.jpeg)

#### Changing Resize Line Color
While resizing the columns or rows in grid at run time, a virtual marker will be visible on resizing. This virtual line marker color can be changed by using the [ResizingCellsLinesColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~ResizingCellsLinesColor.html) property. By default the color is red.

{% tabs %}
{% highlight c# %}
//to set color for grid line marker
this.gridControl.Properties.ResizingCellsLinesColor = Color.Red;
{% endhighlight %}
{% highlight vb %}
'to set color for grid line marker
Me.gridControl.Properties.ResizingCellsLinesColor = Color.Red
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img16.jpeg)

### Print Properties
GridControl provides lot properties which specifically relates to printing functionality. For enabling the GridControl to the printing mode make use of the Printing property. 

{% tabs %}
{% highlight c# %}
// Switches to printing mode of the GridControl.
this.gridControl1.Properties.Printing = true;
{% endhighlight %}
{% highlight vb %}
'Switches to printing mode of the GridControl.
Me.gridControl1.Properties.Printing = True
{% endhighlight %}
{% endtabs %}

The list of print properties available in GridControl can be viewed in the separate topic named Printing. Refer that topic for more detailed explanation on Printing functionality.

### Scroll Bar Properties
GridControl provides support to control functionalities and appearance of grid scroll bars. To enable or disable the scrolling make use of the [HScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~HScrollBehavior.html) and [VScrollBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDropArea~VScrollBehavior.html) properties. It specifies the behavior of the horizontal and vertical scroll bar respectively.[GridScrollbarMode](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridScrollbarMode.html) enumeration provides list of options to control the scroll bar behavior.

{% tabs %}
{% highlight c# %}

//Sets the behavior of the horizontal scroll bar.
this.gridControl1.HScrollBehavior = GridScrollbarMode.Disabled;

//Sets the behavior of the vertical scroll bar.
this.gridControl1.VScrollBehavior = GridScrollbarMode.Disabled;
{% endhighlight %}
{% highlight vb %}

'Sets the behavior of the horizontal scroll bar.
Me.gridControl1.HScrollBehavior = GridScrollbarMode.Disabled

'Sets the behavior of the vertical scroll bar.
Me.gridControl1.VScrollBehavior = GridScrollbarMode.Disabled
{% endhighlight %}
{% endtabs %}

The list of properties related to scroll bar in GridControl can be viewed in the separate topic which comes under Scrolling. 

## GridFormatCellDialog
[GridFormatCellDialog](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridFormatCellDialog.html) simulates **Format Cells dialog** feature of MS Excel. It provides numerous formatting options such as Font, Alignment, Background, and Number format, which aid in formatting grid cells dynamically. It is now available as an add-on feature for GridControl. `GridFormatCellDialog` class accepts an instance of the GridControl to be formatted, and exposes the above mentioned formatting options to operate on grid cells that are selected. The `GridFormatCellDialog` class comes under the [Syncfusion.GridHelperClasses](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses_namespace.html) library.
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img17.jpeg)

This `GridFormatCellDialog` can be enabled by instantiating `GridFormatCellDialog` class and invoking its **ShowDialog** method.

{% tabs %}
{% highlight c# %}
GridFormatCellDialog formatDialog = new GridFormatCellDialog(this.gridControl1);
formatDialog.ShowDialog();
{% endhighlight %}
{% highlight vb %}
Dim formatDialog As GridFormatCellDialog = New GridFormatCellDialog(Me.gridControl1)
formatDialog.ShowDialog()
{% endhighlight %}
{% endtabs %}

N> The grid cells which needs to be formatted needs to be selected before actiavting this dialog.

### Formatting Options
`GridFormatCellDialog` contains four kinds of formatting option in it.

1. [Font Tab](#_Font_Tab)
2. [Number Tab](#_Number_Tab)
3. [Background Tab](#_Background_Tab)
4. [Alignment Tab](#_Alignment_Tab)

#### Font Tab
This provides options to set the font, font style, font size, font effects, and font color for the desired grid cells.

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img18.jpeg)

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img19.jpeg)

#### Number Tab
This allows you to specify text format for grid cells. The possible options are Number, Currency, Percentage, Date, Time, Scientific and Text.

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img20.jpeg)

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img21.jpeg)

#### Background Tab
This allows you to set background color for grid cells. You can set gradient shades and pattern styles as well.

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img22.jpeg)

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img23.jpeg)

#### Alignment Tab
This provides various cell alignment options such as Horizontal Alignment, Vertical Alignment, Merge Cells, Wrap Text, and so on.

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img24.jpeg)

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img25.jpeg)

N> A sample demonstrating the `GridFormatCellDialog` is available under the following sample installation path. 

**&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Dynamic Formatting\Format Cells Demo**

## Custom Drawing
Custom Drawing denotes adding text and drawings such as lines, polygon etc., to the cell. It has the custom drawn event such as [CellDrawn](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~DrawCell_EV.html)  and [DrawCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~DrawCell_EV.html)  events.

### DrawCell
[DrawCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~DrawCell_EV.html) event was handled for every cell before the grid draws a specified cell. It is used to add custom drawing to a cell.

{% tabs %}
{% highlight c# %}

//DrawCell event is used to apply styles to the grid.
this.gridControl1.CellDrawn += new GridDrawCellEventHandler(gridControl1_CellDrawn);

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
{% highlight vb %}
'DrawCell event is used to apply styles to the grid.
AddHandler gridControl1.DrawCell, AddressOf gridControl1_DrawCell

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
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img26.jpeg)

### CellDrawn
[CellDrawn](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~DrawCell_EV.html) event will be handled for every cell when the grid draws the specified cell. User can do custom drawing after the grid completes the drawing of cell by using [e.Graphics](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs~Graphics.html) property.

{% tabs %}
{% highlight c# %}
//Handles CellDrawn Event to customize the appearance of grid cells.
this.gridControl1.CellDrawn += new GridDrawCellEventHandler(gridControl1_CellDrawn);

void gridControl1_CellDrawn(object sender, GridDrawCellEventArgs e)
{
    if (e.ColIndex == 6 && e.RowIndex > 0)
    {
        Rectangle rec = e.Bounds, rect = e.Bounds;
        rec.X = (e.Bounds.Left + e.Bounds.Right) / 2;
        if (e.Style.CellValue.ToString() == "1")
        {
            e.Graphics.FillEllipse(Brushes.Gray, rect);
        }
        else
        {
            e.Graphics.FillEllipse(Brushes.LightGray, rect);
        }
    }
}
{% endhighlight %}
{% highlight vb %}
'Handles CellDrawn Event to customize the appearance of grid cells.
AddHandler gridControl1.CellDrawn, AddressOf gridControl1_CellDrawn

Private Sub gridControl1_CellDrawn(ByVal sender As Object, ByVal e As GridDrawCellEventArgs)
    If e.ColIndex = 6 AndAlso e.RowIndex > 0 Then
        Dim rec As Rectangle = e.Bounds, rect As Rectangle = e.Bounds
        rec.X = (e.Bounds.Left + e.Bounds.Right) / 2
        If e.Style.CellValue.ToString() = "1" Then
            e.Graphics.FillEllipse(Brushes.Gray, rect)
        Else
            e.Graphics.FillEllipse(Brushes.LightGray, rect)
        End If
    End If
End Sub

{% endhighlight %}
{% endtabs %}

The below screenshot shows the grid with ellipse. We can also insert images in cell by using this event.

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img27.jpeg)

## Custom Borders
The custom borders around cells can be drawn by using [DrawCellFrameAppearance](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~DrawCellFrameAppearance_EV.html) event of the Grid. `DrawCellFrameAppearance` event is triggered for every cell before the grid draws the frame of a specified cell and also after the cell's background is drawn. This event can be used with any cell type such as Textbox, Checkbox, and so on. You can draw texture-brush border and gradient borders.

{% tabs %}
{% highlight c# %}
//Draw Custom Borders
this.gridControl1.DrawCellFrameAppearance += gridControl1_DrawCellFrameAppearance;

void gridControl1_DrawCellFrameAppearance(object sender, Syncfusion.Windows.Forms.Grid.GridDrawCellBackgroundEventArgs e)
{
    int rowIndex = e.Style.CellIdentity.RowIndex;
    int colIndex = e.Style.CellIdentity.ColIndex;
    if (rowIndex > 0 && colIndex > 0)
    {
        Brush brush;
        Graphics g = e.Graphics;

        //Otherwise uses a gradient brush.
        brush = new System.Drawing.Drawing2D.LinearGradientBrush(e.TargetBounds, Color.Red, Color.Orange, 45f);

        //Draws custom border for the cell.
        //Space has been reserved for this area with the TableStyle.BorderMargins property.
        Rectangle rect = e.TargetBounds;
        rect.Inflate(-2, -2);
        Rectangle[] rects = new Rectangle[] 
        {
            new Rectangle(rect.X, rect.Y, rect.Width, 4),
            new Rectangle(rect.X, rect.Y, 4, rect.Height),
            new Rectangle(rect.Right-4, rect.Y, 4, rect.Height),
            new Rectangle(rect.X, rect.Bottom-4, rect.Width, 4),
        };
        g.FillRectangles(brush, rects);

        //Disallows grid's default drawing of cell frame for this cell.
        e.Cancel = true;
    }

}
{% endhighlight %}
{% highlight vb %}
Private Custom As Draw

Private Sub gridControl1_DrawCellFrameAppearance(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridDrawCellBackgroundEventArgs)
    Dim rowIndex As Integer = e.Style.CellIdentity.RowIndex
    Dim colIndex As Integer = e.Style.CellIdentity.ColIndex
    If rowIndex > 0 AndAlso colIndex > 0 Then
        Dim brush As Brush
        Dim g As Graphics = e.Graphics

        'Otherwise uses a gradient brush.
        brush = New System.Drawing.Drawing2D.LinearGradientBrush(e.TargetBounds, Color.Red, Color.Orange, 45f)

        'Draws custom border for the cell.
        'Space has been reserved for this area with the TableStyle.BorderMargins property.
        Dim rect As Rectangle = e.TargetBounds
        rect.Inflate(-2, -2)
        Dim rects() As Rectangle = { New Rectangle(rect.X, rect.Y, rect.Width, 4), New Rectangle(rect.X, rect.Y, 4, rect.Height), New Rectangle(rect.Right-4, rect.Y, 4, rect.Height), New Rectangle(rect.X, rect.Bottom-4, rect.Width, 4) }
        g.FillRectangles(brush, rects)

        'Disallows grid's default drawing of cell frame for this cell.
        e.Cancel = True
    End If

End Sub

{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img28.jpeg)

## Banner Cells
Banner cells are multiple cells spanning a single background image. An image to be displayed in the cell can be loaded on disk, by changing the [BackgroundImage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~BackgroundImage.html) property for a cell. Now apply the Banner cells for the required range of cells around the image by using [BanneredRanges](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~BanneredRanges.html) property.

{% tabs %}
{% highlight c# %}
//Create Banner cells
GridStyleInfo style;
style = this.gridControl1[1, 7];
gridControl1.BanneredRanges.Add(GridRangeInfo.FromTlhw(1, 7, 8, 3));
style.BackgroundImage = Image.FromFile(@"F:\OTHERSS\Others\plan.jpg");
style.Text = "Plan.jpg";
style.TextColor = Color.Red;
{% endhighlight %}
{% highlight vb %}
'Create Banner cells
Dim style As GridStyleInfo
style = Me.gridControl1(1, 7)
gridControl1.BanneredRanges.Add(GridRangeInfo.FromTlhw(1, 7, 8, 3))
style.BackgroundImage = Image.FromFile("F:\OTHERSS\Others\plan.jpg")
style.Text = "Plan.jpg"
style.TextColor = Color.Red
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img29.jpeg)

## PrepareViewStyleInfo Event
[PrepareViewStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~PrepareViewStyleInfo_EV.html) event is raised to allow custom formatting of a cell by changing its style object just before it is drawn. This allows formatting based on the current view state, e.g. current cell context, focused control, and so on. For example, it is possible to draw the current row with a bold text by using this event. Likewise it is also possible to change the style properties for the required range of cells. This event will be fired for each cells and hence the styles for each cells can be changed individually. 

{% tabs %}
{% highlight c# %}

this.gridControl1.PrepareViewStyleInfo += new GridPrepareViewStyleInfoEventHandler(gridControl1_PrepareViewStyleInfo);

void gridControl1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{
    if ((e.RowIndex > 1 && e.RowIndex < 7) && (e.ColIndex > 1 && e.ColIndex < 5))
    {
        e.Style.Font.Bold = true;
        e.Style.Font.Italic = true;
    }

}

{% endhighlight %}
{% highlight vb %}

AddHandler gridControl1.PrepareViewStyleInfo, AddressOf gridControl1_PrepareViewStyleInfo

Private Sub gridControl1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)
    If (e.RowIndex > 1 AndAlso e.RowIndex < 7) AndAlso (e.ColIndex > 1 AndAlso e.ColIndex < 5) Then
        e.Style.Font.Bold = True
        e.Style.Font.Italic = True
    End If
End Sub

{% endhighlight %}
{% endtabs %}
![](Appearance-and-Formatting_images/Appearance-and-Formatting_img30.jpeg)

## QueryCellInfo Event
[QueryCellInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~QueryCellInfo_EV.html) event also will be called whenever cells are in need of the style properties. This event will be fired before the cell is been drawn. This event also is same as that of the `PrepareViewStyleInfo` event. All the style properties will be stored in the [GridStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo.html) class. This event will be fired for each cells and hence the styles for each cells can be changed individually. It is possible to change the color or any style properties for the required range of cells.
{% tabs %}
{% highlight c# %}

this.gridControl1.QueryCellInfo += new GridQueryCellInfoEventHandler(gridControl1_QueryCellInfo);

void gridControl1_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{
    if ((e.RowIndex > 1 && e.RowIndex < 7) && (e.ColIndex > 1 && e.ColIndex < 5))
    {
        e.Style.BackColor = Color.Aquamarine;
        e.Style.TextColor = Color.HotPink;
        e.Style.Font.Bold = true;
    }
}

{% endhighlight %}
{% highlight vb %}

AddHandler gridControl1.QueryCellInfo, AddressOf gridControl1_QueryCellInfo

Private Sub gridControl1_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)
    If (e.RowIndex > 1 AndAlso e.RowIndex < 7) AndAlso (e.ColIndex > 1 AndAlso e.ColIndex < 5) Then
        e.Style.BackColor = Color.Aquamarine
        e.Style.TextColor = Color.HotPink
        e.Style.Font.Bold = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

![](Appearance-and-Formatting_images/Appearance-and-Formatting_img31.jpeg)

