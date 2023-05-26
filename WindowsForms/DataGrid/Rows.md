---
layout: post
title: Rows in WinForms DataGrid Control | Syncfusion
description: This section explains about the rows related customization such as row header, header row, freeze panes in datagrid control for windows forms
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Rows in Windows Forms DataGrid (SfDataGrid)

## Row Header

Row Header is a special column which is placed as first cell of each row. Row header can be shown or hidden by setting [ShowRowHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowRowHeader) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ShowRowHeader = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ShowRowHeader = True
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing rowheader](Rows_images/img1.png)

### Appearance

The appearance of row header can be customized by setting the [SfDataGrid.RowHeaderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_RowHeaderStyle) property. The `RowHeaderStyle` property contains all the settings that are needed for the row header appearance customization.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.RowHeaderStyle.BackColor = Color.CadetBlue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.RowHeaderStyle.BackColor = Color.CadetBlue
{% endhighlight %}
{% endtabs %}

![Row header appearance customization in windows form datagrid](Rows_images/img2.png)

### Selection marker customization
The appearance of the selection marker can be customized using the selection marker properties in `RowHeaderStyle`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.RowHeaderStyle.SelectionMarkerThickness = 4;
this.sfDataGrid1.Style.RowHeaderStyle.SelectionMarkerColor = Color.Red;
this.sfDataGrid1.Style.RowHeaderStyle.SelectionBackColor = Color.White;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.RowHeaderStyle.SelectionMarkerThickness = 4
Me.sfDataGrid1.Style.RowHeaderStyle.SelectionMarkerColor = Color.Red
Me.sfDataGrid1.Style.RowHeaderStyle.SelectionBackColor = Color.White
{% endhighlight %}
{% endtabs %}

![Row header appearance customization in windows form datagrid](Rows_images/img10.png)

### Row Indicators and its Description

<table>
<tr>
<td>
{{'**Row Indicator **'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
<img src= "Rows_images/AddNewRowIcon.png" alt="WinForms DataGrid AddNewRowIcon"/>
</td>
<td>
Denotes row is AddNewRow.
</td>
</tr>
<tr>
<td>
<img src= "Rows_images/rowError.png" alt="WinForms DataGrid rowError"/>
</td>
<td>
Denotes that the current row which has errors.
</td>
</tr>
</table>

### Showing the Numbered Row Header

RowHeader cell can be customized by using [DrawCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event which is raised for each cell. The default column index of the row header cell is zero, the  style settings for a row header can be applied by using column index when it is enabled in SfDataGrid. 
By default, the row header does not have the cell values. The numbers or any text can be set in the row header by setting the [DisplayText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs.html#Syncfusion_WinForms_DataGrid_Events_DrawCellEventArgs_DisplayText) which is available in the [DrawCellEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs.html) of `DrawCell` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.DrawCell += SfDataGrid1_DrawCell;

private void SfDataGrid1_DrawCell(object sender, DrawCellEventArgs e)
{
    if (sfDataGrid1.ShowRowHeader && e.RowIndex != 0)
    {
        if (e.ColumnIndex == 0)
        {
            e.DisplayText = e.RowIndex.ToString();
        }

    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.DrawCell, AddressOf SfDataGrid1_DrawCell

Private Sub SfDataGrid1_DrawCell(ByVal sender As Object, ByVal e As DrawCellEventArgs)
	If sfDataGrid1.ShowRowHeader AndAlso e.RowIndex <> 0 Then
		If e.ColumnIndex = 0 Then
			e.DisplayText = e.RowIndex.ToString()
		End If

	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing numbered row header](Rows_images/img3.png)

### Showing the image in RowHeader

You can display an image in the [RowHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridBaseStylesMap.html#Syncfusion_Windows_Forms_Grid_GridBaseStylesMap_RowHeader) by using the [SfDataGrid.DrawCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event and by customizing the [GridRowHeaderCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridRowHeaderCellRenderer.html).

#### Using DrawCell event 

The [RowHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridBaseStylesMap.html#Syncfusion_Windows_Forms_Grid_GridBaseStylesMap_RowHeader) cell can be customized by using the [DrawCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event raised for each cell. The default column index of the row header cell is zero. The style settings for a row header can be applied using the column index when it is enabled in the SfDataGrid. The image can be drawn in the row header using `DrawImage`.          

{% tabs %}
{% highlight c# %}
sfDataGrid1.DrawCell += OnSfDataGridDrawCell;

private void OnSfDataGridDrawCell(object sender, Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs e)
{
    if (sfDataGrid1.ShowRowHeader && e.RowIndex != 0)
    {
        double value = (e.DataRow.RowData as OrderInfo).UnitPrice;
        if (e.ColumnIndex == 0)
        {
            e.Handled = true;
            Rectangle rect = new Rectangle(e.Bounds.X + 3, e.Bounds.Y + 5, e.Bounds.Width - 3, e.Bounds.Height - 5);
            e.Graphics.FillRectangle(new SolidBrush(sfDataGrid1.Style.RowHeaderStyle.BackColor), new Rectangle(e.Bounds.X + 1, e.Bounds.Y + 1, e.Bounds.Width - 1, e.Bounds.Height - 1));
            //Draw the image on RowHeader
            if (value >= 0 && value < 50)
                e.Graphics.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Yellow.png")), rect);
            else if (value > 51 && value < 100)
                e.Graphics.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Green.png")), rect);
            else if (value > 101 && value < 600)
                e.Graphics.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Red.png")), rect);
            e.Graphics.DrawLine(new Pen(ColorTranslator.FromHtml("#CCCCCC")), e.Bounds.Left, e.Bounds.Bottom, e.Bounds.Right, e.Bounds.Bottom);
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.DrawCell, AddressOf OnSfDataGridDrawCell

Private Sub OnSfDataGridDrawCell(ByVal sender As Object, ByVal e As Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs)
	If sfDataGrid1.ShowRowHeader AndAlso e.RowIndex <> 0 Then
		Dim value As Double = (TryCast(e.DataRow.RowData, OrderInfo)).UnitPrice
		If e.ColumnIndex = 0 Then
			e.Handled = True
			Dim rect As New Rectangle(e.Bounds.X + 3, e.Bounds.Y + 5, e.Bounds.Width - 3, e.Bounds.Height - 5)
			e.Graphics.FillRectangle(New SolidBrush(sfDataGrid1.Style.RowHeaderStyle.BackColor), New Rectangle(e.Bounds.X + 1, e.Bounds.Y + 1, e.Bounds.Width - 1, e.Bounds.Height - 1))
			'Draw the image on RowHeader
			If value >= 0 AndAlso value < 50 Then
				e.Graphics.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Yellow.png")), rect)
			ElseIf value > 51 AndAlso value < 100 Then
				e.Graphics.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Green.png")), rect)
			ElseIf value > 101 AndAlso value < 600 Then
				e.Graphics.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Red.png")), rect)
			End If
			e.Graphics.DrawLine(New Pen(ColorTranslator.FromHtml("#CCCCCC")), e.Bounds.Left, e.Bounds.Bottom, e.Bounds.Right, e.Bounds.Bottom)
		End If
	End If
End Sub
{% endhighlight %}
{% endtabs %}

#### Using custom RowHeaderCellRenderer

The following code shows how to draw an image in the row header by overriding the [OnRender](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridRowHeaderCellRenderer.html#Syncfusion_WinForms_DataGrid_Renderers_GridRowHeaderCellRenderer_OnRender_System_Drawing_Graphics_System_Drawing_Rectangle_System_String_Syncfusion_WinForms_DataGrid_Styles_CellStyleInfo_Syncfusion_WinForms_DataGrid_DataColumnBase_Syncfusion_WinForms_GridCommon_ScrollAxis_RowColumnIndex_) method in [GridRowHeaderCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridRowHeaderCellRenderer.html).

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CellRenderers["RowHeader"] = new CustomRowHeaderCellRenderer(sfDataGrid1);

public class CustomRowHeaderCellRenderer : GridRowHeaderCellRenderer
{
    SfDataGrid DataGrid { get; set; }
    public CustomRowHeaderCellRenderer(SfDataGrid dataGrid)
    {
        DataGrid = dataGrid;
    }
    protected override void OnRender(Graphics paint, Rectangle cellRect, string cellValue, CellStyleInfo style, DataColumnBase column, RowColumnIndex rowColumnIndex)
    {
        var rowData = this.DataGrid.View.Records[rowColumnIndex.RowIndex];
        double value = (rowData.Data as OrderInfo).UnitPrice;
        //Draw the image on RowHeader
        if (rowColumnIndex.RowIndex > 0)
        {
            if (value > 0 && value < 50)
                paint.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Yellow.png")), new Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5));
            else if (value > 51 && value < 100)
                paint.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Green.png")), new Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5));
            else if (value > 101 && value < 600)
                paint.DrawImage(new Bitmap(Image.FromFile(@"..\..\Images\Red.png")), new Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5));
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class CustomRowHeaderCellRenderer
	Inherits GridRowHeaderCellRenderer
	Private Property DataGrid() As SfDataGrid
	Public Sub New(ByVal dataGrid As SfDataGrid)
		Me.DataGrid = dataGrid
	End Sub
	Protected Overrides Sub OnRender(ByVal paint As Graphics, ByVal cellRect As Rectangle, ByVal cellValue As String, ByVal style As CellStyleInfo, ByVal column As DataColumnBase, ByVal rowColumnIndex As RowColumnIndex)
		Dim rowData = Me.DataGrid.View.Records(rowColumnIndex.RowIndex)
		Dim value As Double = (TryCast(rowData.Data, OrderInfo)).UnitPrice
		'Draw the image on RowHeader
		If rowColumnIndex.RowIndex > 0 Then
			If value > 0 AndAlso value < 50 Then
				paint.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Yellow.png")), New Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5))
			ElseIf value > 51 AndAlso value < 100 Then
				paint.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Green.png")), New Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5))
			ElseIf value > 101 AndAlso value < 600 Then
				paint.DrawImage(New Bitmap(Image.FromFile("..\..\Images\Red.png")), New Rectangle(cellRect.X + 3, cellRect.Y + 5, cellRect.Width - 3, cellRect.Height - 5))
			End If
		End If
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing image in rowheader](Rows_images/img9.png)

## Header Row

Header row is present in top of the SfDataGrid which has column headers in it. Column header describes the caption to identify the column content.

![Windows forms datagrid showing header row](Rows_images/img4.png)

### Appearance

The Appearance of the header row can be customized by using [SfDataGrid.Style.HeaderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_HeaderStyle) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.HeaderStyle.BackColor = Color.AliceBlue;
this.sfDataGrid1.Style.HeaderStyle.TextColor = Color.DarkSlateBlue;
this.sfDataGrid1.Style.HeaderStyle.Font.Bold = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.HeaderStyle.BackColor = Color.AliceBlue
Me.sfDataGrid1.Style.HeaderStyle.TextColor = Color.DarkSlateBlue
Me.sfDataGrid1.Style.HeaderStyle.Font.Bold = True
{% endhighlight %}
{% endtabs %}

![Header row appearance customization in windows forms datagrid](Rows_images/img5.png)

The appearance of any particular column header can be customized by using 
[GridColumnBase.HeaderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_HeaderStyle) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.BackColor = Color.LightCoral;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.TextColor = Color.DarkRed;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.Font.Bold = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderID").HeaderStyle.BackColor = Color.LightCoral
Me.sfDataGrid1.Columns("OrderID").HeaderStyle.TextColor = Color.DarkRed
Me.sfDataGrid1.Columns("OrderID").HeaderStyle.Font.Bold = True
{% endhighlight %}
{% endtabs %}

![Specific column header appearance customization in windows forms datagrid](Rows_images/img6.png)

### Font orientation for Header Row

Font orientation of the header row can be set by using the [HeaderStyle.Font.Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_HeaderStyle) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HeaderRowHeight = 80;
this.sfDataGrid1.Style.HeaderStyle.Font.Orientation = 45;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.HeaderRowHeight = 80
Me.sfDataGrid1.Style.HeaderStyle.Font.Orientation = 45
{% endhighlight %}
{% endtabs %}

![Font orientation customization in header row of Windows forms datagrid](Rows_images/img8.png)

### Text alignment for Header Row

The text alignment of the header cells can be changed by using [HeaderStyle.HorizontalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.CellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_CellStyleInfo_HorizontalAlignment) and [HeaderStyle.VerticalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.CellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_CellStyleInfo_VerticalAlignment) properties respectively.

{% tabs %}
{% highlight c# %}
//Change alignment for the header cells.
this.sfDataGrid1.Style.HeaderStyle.HorizontalAlignment = HorizontalAlignment.Center;
this.sfDataGrid1.Style.HeaderStyle.VerticalAlignment = System.Windows.Forms.VisualStyles.VerticalAlignment.Top;

{% endhighlight %}
{% highlight vb %}
'Change alignment for the header cells.
Me.sfDataGrid1.Style.HeaderStyle.HorizontalAlignment = HorizontalAlignment.Center
Me.sfDataGrid1.Style.HeaderStyle.VerticalAlignment = System.Windows.Forms.VisualStyles.VerticalAlignment.Top

{% endhighlight %}
{% endtabs %}

![Text alignment customization of header cell in windows forms datagrid](Rows_images/img11.png)

### Text wrapping for Header Row

The header text of the specific column can be wrapped using the [GridColumnBase.AllowHeaderTextWrapping](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_AllowHeaderTextWrapping) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["CustomerID"].AllowHeaderTextWrapping = true;   

{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("CustomerID").AllowHeaderTextWrapping = True

{% endhighlight %}
{% endtabs %} 

![Text wrapping for header cell in windows forms datagrid](Rows_images/img12.png)

### Hiding Header Row

The header row can be hide by setting [SfDataGrid.HeaderRowHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_HeaderRowHeight) property as `0` (zero).
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HeaderRowHeight = 0;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.HeaderRowHeight = 0
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing hidden headerrow](Rows_images/img7.png)

## Freeze Panes 
The rows and column can freeze in view like excel. The rows and columns can be freeze by setting following properties,

<table>
<tr>
<td>
Property Name
</td>
<td>
Description
</td>
</tr>
<tr>
<td>
{{'[FrozenRowCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_FrozenRowCount)'| markdownify }}
</td>
<td>
Set the frozen rows count at top of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FooterRowCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_FooterRowCount)'| markdownify }}
</td>
<td>
Set the footer rows count at bottom of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FrozenColumnCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_FrozenColumnCount)'| markdownify }}
</td>
<td>
Set the frozen columns count in left side of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FooterColumnCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_FooterColumnCount)'| markdownify }}
</td>
<td>
Set the footer columns in right side of the SfDataGrid.
</td>
</tr>
</table>

### Freezing Rows
The rows can be freeze in view at top and bottom like Excel by setting the `FrozenRowCount` and `FooterRowCount` properties.

{% tabs %}
{% highlight c# %}
// Freeze rows at top
this.sfDataGrid1.FrozenRowCount = 3;

// Freeze rows at bottom
this.sfDataGrid1.FooterRowCount = 2;
{% endhighlight %}
{% highlight vb %}
' Freeze rows at top
Me.sfDataGrid1.FrozenRowCount = 3

' Freeze rows at bottom
Me.sfDataGrid1.FooterRowCount = 2
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing frozen row and footer row](Rows_images/FreezePanes_img1.png)

### Freezing Columns
The columns can be freeze in view at left and right like Excel by setting the `FrozenColumnCount` and `FooterColumnCount` properties.
{% tabs %}
{% highlight c# %}
// Freeze columns at left
this.sfDataGrid1.FooterColumnCount = 2;

// Freeze columns at right
this.sfDataGrid1.FrozenColumnCount = 2;
{% endhighlight %}
{% highlight vb %}
' Freeze columns at left
Me.sfDataGrid1.FooterColumnCount = 2

' Freeze columns at right
Me.sfDataGrid1.FrozenColumnCount = 2
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing frozen column and footer column](Rows_images/FreezePanes_img2.png)

### Appearance

#### Freeze Line Appearance

The appearance of freeze pane line can be customized by setting the [FreezePaneLineStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_FreezePaneLineStyle) property. The `FreezePaneLineStyle` property contains all the settings that are needed for the freeze pane line appearance customization.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.FreezePaneLineStyle.Color = System.Drawing.Color.BlueViolet;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.FreezePaneLineStyle.Color = System.Drawing.Color.BlueViolet
{% endhighlight %}
{% endtabs %}

![Frozen line appearance customization in windows forms datagrid](Rows_images/FreezePanes_img3.png)

#### Freeze Line Weight
Freeze line weight or thickness can be changed by setting the [FreezePaneLineStyle.Weight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.FreezePaneLineStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_FreezePaneLineStyleInfo_Weight) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.FreezePaneLineStyle.Weight = 3;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.FreezePaneLineStyle.Weight = 3
{% endhighlight %}
{% endtabs %}

![Freeze line weight customization in windows forms datagrid](Rows_images/FreezePanes_img4.png)

#### Changing the Freeze Line Style
An appearance of the freeze pane line can be customized by using [DrawFreezePaneLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event. The freeze pane line type can be check by using [LineType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.DrawFreezePaneLineArgs.html#Syncfusion_WinForms_DataGrid_Events_DrawFreezePaneLineArgs__ctor_System_Drawing_Graphics_System_Drawing_Point_System_Drawing_Point_Syncfusion_WinForms_DataGrid_Enums_LineType_System_Boolean_System_Object_) property which indicates freeze pane line type such as `FrozenRow`, `FooterRow`, `FrozenColumn`, `FooterColumn. The `e.Handled` property which is available in the 
[Draw​Freeze​Pane​Line​Args ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.DrawFreezePaneLineArgs.html) should be enabled to draw the custom line.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.DrawFreezePaneLine += SfDataGrid_DrawFreezePaneLine;

private void SfDataGrid_DrawFreezePaneLine(object sender, DrawFreezePaneLineArgs e)
{
    Pen pen=new Pen(Color.Red, 2);
    pen.DashStyle = DashStyle.Dash;
    if (e.LineType == LineType.FrozenRow || e.LineType == LineType.FooterRow || e.LineType == LineType.FooterColumn)
    {
        e.Graphics.DrawLine(pen, e.Point1, e.Point2);
        e.Handled = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.DrawFreezePaneLine, AddressOf SfDataGrid_DrawFreezePaneLine

Private Sub SfDataGrid_DrawFreezePaneLine(ByVal sender As Object, ByVal e As DrawFreezePaneLineArgs)
	Dim pen As New Pen(Color.Red, 2)
	pen.DashStyle = DashStyle.Dash

	If e.LineType = LineType.FrozenRow OrElse e.LineType Is LineType.FooterRow OrElse e.LineType = LineType.FooterColumn Then
		e.Graphics.DrawLine(pen, e.Point1, e.Point2)
		e.Handled = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing freeze line with dotted style](Rows_images/FreezePanes_img5.png)

#### Changing the Back Color of Freeze Line based on Freeze Line LineType
By default, the back color of the freeze pane line cannot be changed based on the freeze pane line type. But it can be customized by drawing the line using the `DrawFreezePaneLine` event based on the freeze pane line type. The `e.Handled` property which is available in the `DrawFreezePane​Line​Args` should be enabled to draw the custom line.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.DrawFreezePaneLine += SfDataGrid_DrawFreezePaneLine;

private void SfDataGrid_DrawFreezePaneLine(object sender, DrawFreezePaneLineArgs e)
{
    if (e.LineType == LineType.FrozenRow)
    {
        e.Graphics.DrawLine(new Pen(Color. DeepSkyBlue, 2), e.Point1, e.Point2);
        e.Handled = true;
    }
    if (e.LineType == LineType.FooterRow)
    {
        e.Graphics.DrawLine(new Pen(Color. BlueViolet, 2), e.Point1, e.Point2);
        e.Handled = true;
    }
    if (e.LineType == LineType.FrozenColumn)
    {
        e.Graphics.DrawLine(new Pen(Color.Magenta, 2), e.Point1, e.Point2);
        e.Handled = true;
    }
    if (e.LineType == LineType.FooterColumn)
    {
        e.Graphics.DrawLine(new Pen(Color.Red, 2), e.Point1, e.Point2);
        e.Handled = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.DrawFreezePaneLine, AddressOf SfDataGrid_DrawFreezePaneLine

Private Sub SfDataGrid_DrawFreezePaneLine(ByVal sender As Object, ByVal e As DrawFreezePaneLineArgs)
	If e.LineType = LineType.FrozenRow Then
		e.Graphics.DrawLine(New Pen(Color.DeepSkyBlue, 2), e.Point1, e.Point2)
		e.Handled = True
	End If
	If e.LineType Is LineType.FooterRow Then
		e.Graphics.DrawLine(New Pen(Color.BlueViolet, 2), e.Point1, e.Point2)
		e.Handled = True
	End If
	If e.LineType = LineType.FrozenColumn Then
		e.Graphics.DrawLine(New Pen(Color.Magenta, 2), e.Point1, e.Point2)
		e.Handled = True
	End If
	If e.LineType = LineType.FooterColumn Then
		e.Graphics.DrawLine(New Pen(Color.Red, 2), e.Point1, e.Point2)
		e.Handled = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid showing conditional freeze line styling](Rows_images/FreezePanes_img6.png)

## Loop through Records

The records in a view can be looped using [SfDataGrid.View.Records](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.CollectionViewAdv.html#Syncfusion_Data_CollectionViewAdv_Records) collection. 

{% tabs %}
{% highlight c# %}
foreach (var record in sfDataGrid1.View.Records) 
{// Do your customizations here. }
{% endhighlight %}
{% highlight vb %}
For Each record In sfDataGrid1.View.Records
 ' Do your customizations here. 
Next record 
{% endhighlight %}
{% endtabs %}

## See also

[How to freeze particular column in WinForms DataGrid (SfDataGrid)](https://support.syncfusion.com/kb/article/8318/how-to-freeze-particular-column-in-winforms-datagrid-sfdatagrid)

[How to disable the scroll bars in the WinForms DataGrid (SfDataGrid)](https://support.syncfusion.com/kb/article/8119/how-to-disable-the-scroll-bars-in-the-winforms-datagrid-sfdatagrid)
