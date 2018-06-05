---
layout: post
title: Rows
description: This section explains about the Rows in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Rows

## Row Header

Row Header is a special column which is placed as first cell of each row. Row header can be shown or hidden by setting [ShowRowHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ShowRowHeader.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.ShowRowHeader = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.ShowRowHeader = True
{% endhighlight %}
{% endtabs %}

![](Rows_images/img1.png)

### Appearance

The appearance of row header can be customized by setting the [SfDataGrid.RowHeaderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~RowHeaderStyle.html) property. The `RowHeaderStyle` property contains all the settings that are needed for the row header appearance customization.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.RowHeaderStyle.BackColor = Color.CadetBlue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.RowHeaderStyle.BackColor = Color.CadetBlue
{% endhighlight %}
{% endtabs %}

![](Rows_images/img2.png)

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
<img src= "Rows_images/AddNewRowIcon.png"/>
</td>
<td>
Denotes row is AddNewRow.
</td>
</tr>
<tr>
<td>
<img src= "Rows_images/rowError.png"/>
</td>
<td>
Denotes that the current row which has errors.
</td>
</tr>
</table>

### Showing the Numbered Row Header

RowHeader cell can be customized by using [DrawCell](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DrawCell_EV.html) event which is raised for each cell. The default column index of the row header cell is zero, the  style settings for a row header can be applied by using column index when it is enabled in SfDataGrid. 
By default, the row header does not have the cell values. The numbers or any text can be set in the row header by setting the [DisplayText](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs~DisplayText.html) which is available in the [DrawCellEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs.html) of `DrawCell` event.

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

![](Rows_images/img3.png)

## Header Row

Header row is present in top of the SfDataGrid which has column headers in it. Column header describes the caption to identify the column content.

![](Rows_images/img4.png)

### Appearance

The Appearance of the header row can be customized by using [SfDataGrid.Style.HeaderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~HeaderStyle.html) property.

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

![](Rows_images/img5.png)

The appearance of any particular column header can be customized by using 
[GridColumnBase.HeaderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~HeaderStyle.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.BackColor = Color.LightCoral;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.TextColor = Color.DarkRed;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.Font.Bold = true;
{% endhighlight %}
{% highlight vb %}
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.BackColor = Color.LightCoral;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.TextColor = Color.DarkRed;
this.sfDataGrid1.Columns["OrderID"].HeaderStyle.Font.Bold = true;
{% endhighlight %}
{% endtabs %}

![](Rows_images/img6.png)

### Font orientation for Header Row

Font orientation of the header row can be set by using the [HeaderStyle.Font.Oreintation](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~HeaderStyle.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HeaderRowHeight = 80;
this.sfDataGrid1.Style.HeaderStyle.Font.Orientation = 45;
{% endhighlight %}
{% highlight vb %}
this.sfDataGrid1.HeaderRowHeight = 80;
this.sfDataGrid1.Style.HeaderStyle.Font.Orientation = 45;
{% endhighlight %}
{% endtabs %}

![](Rows_images/img8.png)

### Hiding Header Row

The header row can be hide by setting [SfDataGrid.HeaderRowHeight](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~HeaderRowHeight.html) property as `0` (zero).
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HeaderRowHeight = 0;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.HeaderRowHeight = 0
{% endhighlight %}
{% endtabs %}

![](Rows_images/img7.png)

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
{{'[FrozenRowCount](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FrozenRowCount.html)'| markdownify }}
</td>
<td>
Set the frozen rows count at top of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FooterRowCount](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FooterRowCount.html)'| markdownify }}
</td>
<td>
Set the footer rows count at bottom of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FrozenColumnCount](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FrozenColumnCount.html)'| markdownify }}
</td>
<td>
Set the frozen columns count in left side of the SfDataGrid.
</td>
</tr>
<tr>
<td>
{{'[FooterColumnCount](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FooterColumnCount.html)'| markdownify }}
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
this.sfDataGrid.FrozenRowCount = 3;

// Freeze rows at bottom
this.sfDataGrid.FooterRowCount = 2;
{% endhighlight %}
{% highlight vb %}
' Freeze rows at top
Me.sfDataGrid.FrozenRowCount = 3

' Freeze rows at bottom
Me.sfDataGrid.FooterRowCount = 2
{% endhighlight %}
{% endtabs %}

![](Rows_images/FreezePanes_img1.png)

### Freezing Columns
The columns can be freeze in view at left and right like Excel by setting the `FrozenColumnCount` and `FooterColumnCount` properties.
{% tabs %}
{% highlight c# %}
// Freeze columns at left
this.sfDataGrid.FooterColumnCount = 2;

// Freeze columns at right
this.sfDataGrid.FrozenColumnCount = 2;
{% endhighlight %}
{% highlight vb %}
' Freeze columns at left
Me.sfDataGrid.FooterColumnCount = 2

' Freeze columns at right
Me.sfDataGrid.FrozenColumnCount = 2
{% endhighlight %}
{% endtabs %}

![](Rows_images/FreezePanes_img2.png)

### Appearance

#### Freeze Line Appearance

The appearance of freeze pane line can be customized by setting the [FreezePaneLineStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~FreezePaneLineStyle.html) property. The `FreezePaneLineStyle` property contains all the settings that are needed for the freeze pane line appearance customization.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.FreezePaneLineStyle.Color = System.Drawing.Color.BlueViolet;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.FreezePaneLineStyle.Color = System.Drawing.Color.BlueViolet
{% endhighlight %}
{% endtabs %}

![](Rows_images/FreezePanes_img3.png)

#### Freeze Line Weight
Freeze line weight or thickness can be changed by setting the [FreezePaneLineStyle.Weight](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.FreezePaneLineStyleInfo~Weight.html) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.FreezePaneLineStyle.Weight = 3;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.FreezePaneLineStyle.Weight = 3
{% endhighlight %}
{% endtabs %}

![](Rows_images/FreezePanes_img4.png)

#### Changing the Freeze Line Style
An appearance of the freeze pane line can be customized by using [DrawFreezePaneLine](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DrawFreezePaneLine_EV.html) event. The freeze pane line type can be check by using [LineType](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DrawFreezePaneLineArgs~LineType.html) property which indicates freeze pane line type such as `FrozenRow`, `FooterRow`, `FrozenColumn`, `FooterColumn. The `e.Handled` property which is available in the 
[Draw​Freeze​Pane​Line​Args ](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DrawFreezePaneLineArgs.html) should be enabled to draw the custom line.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.DrawFreezePaneLine += SfDataGrid_DrawFreezePaneLine;

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
AddHandler sfDataGrid.DrawFreezePaneLine, AddressOf SfDataGrid_DrawFreezePaneLine

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

![](Rows_images/FreezePanes_img5.png)

#### Changing the Back Color of Freeze Line based on Freeze Line LineType
By default, the back color of the freeze pane line cannot be changed based on the freeze pane line type. But it can be customized by drawing the line using the `DrawFreezePaneLine` event based on the freeze pane line type. The `e.Handled` property which is available in the `DrawFreezePane​Line​Args` should be enabled to draw the custom line.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.DrawFreezePaneLine += SfDataGrid_DrawFreezePaneLine;

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
AddHandler sfDataGrid.DrawFreezePaneLine, AddressOf SfDataGrid_DrawFreezePaneLine

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

![](Rows_images/FreezePanes_img6.png)

