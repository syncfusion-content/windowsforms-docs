---
layout: post
title: Exporting for Syncfusion Essential WindowsForms
description: This section explains about the types of exporting available for GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Exporting
The GridGroupingControl provides the built in support for exporting the data to the Excel, Word, PDF and CSV format. This section will explain about these exporting methods with various converter options.

## Excel Export
The GridGroupingControl can be exported to the Excel by using the [GroupingGridExcelConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl_members.html) class which provides the [GroupingGridToExcel](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl~GroupingGridToExcel.html) method for exporting the grid to Excel. 

{% tabs %}
{% highlight c# %}
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
// Export the contents of the Grid to Excel
converter.GroupingGridToExcel(this.gridGroupingControl1, "Grid.xls", ConverterOptions.Visible);
{% endhighlight %}
{% highlight vb %}
Dim converter As New GroupingGridExcelConverterControl()
' Export the contents of the Grid to Excel
converter.GroupingGridToExcel(Me.gridGroupingControl1, "Grid.xls", ConverterOptions.Visible)
{% endhighlight %}
{% endtabs %}

The following image shows the grid exporting to the Excel Sheet,

![](Exporting_images/Exporting_img1.png)

Exported grid in the excel sheet is given below,

![](Exporting_images/Exporting_img2.png)

### Exporting options 
The [ConverterOptions](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.ConverterOptions.html) is used to set the exporting options for the grid. It has the following options to export the grid, 

* **ColumnHeaders** – Export the grid with the column headers
* **RowHeaders** – Export the grid with the Row Header
* **Default** – Exports the entire elements of the grid.
* **Visible** – Export only the visible rows and columns to the Excel. (eg: It will export only the caption rows of the groups to excel when the group is collapsed)

### Exporting With Row and Column Headers
The row and column headers of the GridGroupingControl can be exported to excel by using the following `ConverterOptions`,

{% tabs %}
{% highlight c# %}
//Creating the converter control for Exporting the grid
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
// Export the contents of the Grid to Excel
converter.GroupingGridToExcel(this.gridGroupingControl1, "FileName.xls", ConverterOptions.RowHeaders | ConverterOptions.ColumnHeaders);
{% endhighlight %}
{% highlight vb %}
'Creating the converter control for Exporting the grid
Dim converter As New GroupingGridExcelConverterControl()
' Export the contents of the Grid to Excel
converter.GroupingGridToExcel(Me.gridGroupingControl1, "FileName.xls", ConverterOptions.RowHeaders Or ConverterOptions.ColumnHeaders)
{% endhighlight %}
{% endtabs %}

### Exporting Borders and Images
The borders and images of the grid cells can be exported to excel by using the [ExportBorders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridGroupingExcelConverterBase~ExportBorders.html) and `ExportImage` properties of the converter.

{% tabs %}
{% highlight c# %}
//Creating the converter control for Exporting the grid
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
//Enable exporting of borders and Images
converter.ExportBorders = true;
converter.ExportImage = true;
// Export the contents of the Grid to Excel
converter.GroupingGridToExcel(this.gridGroupingControl1, "FileName.xls", ConverterOptions.Default);
{% endhighlight %}
{% highlight vb %}
'Creating the converter control for Exporting the grid
Dim converter As New GroupingGridExcelConverterControl()
'Enable exporting of borders and Images
converter.ExportBorders = True
converter.ExportImage = True
' Export the contents of the Grid to Excel
converter.GroupingGridToExcel(Me.gridGroupingControl1, "FileName.xls", ConverterOptions.Default)
{% endhighlight %}
{% endtabs %}

### AutoFit Rows and Columns
By default, the rows and columns are exported with its corresponding row height and column width in the [GroupingGridExcelConverterControl](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl.html).  This can be changed to export the default row height and column width by using the [CanExportColumnWidth](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridExcelConverterControl~CanExportColumnWidth.html) and [CanExportRowHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridExcelConverterControl~CanExportRowHeight.html) properties of the [GridGroupingExcelConverterControl](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl_members.html) which is newly implemented converter control for exporting the grid to excel. 

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl ggec = new GridGroupingExcelConverterControl();
//Auto fit rows and columns
ggec.CanExportColumnWidth = true;
ggec.CanExportRowHeight = true;
//Exporting Options
ExcelExportingOptions options = new ExcelExportingOptions();            
//Export the contents of the grid to excel
ggec.ExportToExcel(this.gridGroupingControl1, "FileName.xls", options);
{% endhighlight %}
{% highlight vb %}
Dim ggec As New GridGroupingExcelConverterControl()
'Auto fit rows and columns
ggec.CanExportColumnWidth = True
ggec.CanExportRowHeight = True
'Exporting Options
Dim options As New ExcelExportingOptions()
'Export the contents of the grid to excel
ggec.ExportToExcel(Me.gridGroupingControl1, "FileName.xls", options)
{% endhighlight %}
{% endtabs %}

### Setting Default Row Height and Column Width
The default row height and column width can be set for the exported excel document by using the [DefaultColumnWidth](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridExcelConverterControl~DefaultColumnWidth.html) and [DefaultRowHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridExcelConverterControl~DefaultRowHeight.html) property of the `GridGroupingExcelConverterControl`. 

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl ggec = new GridGroupingExcelConverterControl();
//Disable auto fit rows and columns
ggec.CanExportColumnWidth = false;
ggec.CanExportRowHeight = false;
//Set default row height and col width need to be export
ggec.DefaultRowHeight = 20;
ggec.DefaultColumnWidth = 20;            
//Exporting Options
ExcelExportingOptions options = new ExcelExportingOptions();
//Export the contents of the grid to excel
ggec.ExportToExcel(this.gridGroupingControl1, "FileName.xls", options);
{% endhighlight %}
{% highlight vb %}
Dim ggec As New GridGroupingExcelConverterControl()
'Disable auto fit rows and columns
ggec.CanExportColumnWidth = False
ggec.CanExportRowHeight = False
'Set default row height and col width need to be export
ggec.DefaultRowHeight = 20
ggec.DefaultColumnWidth = 20
'Exporting Options
Dim options As New ExcelExportingOptions()
'Export the contents of the grid to excel
ggec.ExportToExcel(Me.gridGroupingControl1, "FileName.xls", options)
{% endhighlight %}
{% endtabs %}

### Exporting without Styles
The cell styles can be restricted from the exporting by using the [ExportStyles](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridGroupingExcelConverterBase~ExportStyles.html) property of the converter control. It can export the font, back color, text color, number format, etc.
{% tabs %}
{% highlight c# %}
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
//To export the cell’s  without styles to the excel cell
converter.ExportStyle = false;
converter.GroupingGridToExcel(this.gridGroupingControl1, "FileName.xls", ConverterOptions.Default);
{% endhighlight %}

{% highlight vb %}
Dim converter As New GroupingGridExcelConverterControl()
'To export the cell’s without styles to the excel cell
converter.ExportStyle = True
converter.GroupingGridToExcel(Me.gridGroupingControl1, "FileName.xls", ConverterOptions.Default)
{% endhighlight %}
{% endtabs %}

N> By default the styles will be exported to the Excel.

### Exporting to specific version 
The version of the exported excel file can be specified by using the [ExcelVersion](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl~ExcelVersion.html) property of the converter.

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl ggec = new GridGroupingExcelConverterControl();
//Export the grid to Excel 2007 version 
ggec.ExcelVersion = Syncfusion.XlsIO.ExcelVersion.Excel2007;
ggec.ExportToExcel(this.gridGroupingControl1, "FileName.xls", new ExcelExportingOptions());
{% endhighlight %}
{% highlight vb %}
Dim ggec As New GridGroupingExcelConverterControl()
'Export the grid to Excel 2007 version 
ggec.ExcelVersion = Syncfusion.XlsIO.ExcelVersion.Excel2007
ggec.ExportToExcel(Me.gridGroupingControl1, "FileName.xls", New ExcelExportingOptions())
{% endhighlight %}
{% endtabs %}

### Exporting Groups 
The groups can be exported to the Excel by using the [ExportGroupPlusMinus](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl~ExportGroupPlusMinus.html) property. It will export the groups of the GridGroupingControl as the Excel groups.

{% tabs %}
{% highlight c# %}
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
//Export Groups as the Excel Groups
converter.ExportGroupPlusMinus = true;
converter.GroupingGridToExcel(this.gridGroupingControl1, "FileName.xls", ConverterOptions.Default);
{% endhighlight %}
{% highlight vb %}
Dim converter As New GroupingGridExcelConverterControl()
'Export Groups as the Excel Groups
converter.ExportGroupPlusMinus = True
converter.GroupingGridToExcel(Me.gridGroupingControl1, "FileName.xls", ConverterOptions.Default)
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img3.png)

The exported groups in excel is shown  below,

![](Exporting_images/Exporting_img4.png)

N> The nested tables is also be exported with the record plus minus by default. It can be exported as the ordinary rows by disabling the [ExportRecordPlusMinus](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl~ExportRecordPlusMinus.html) property.

### Exporting Preview Rows 
The record preview rows can be exported to the Excel by enabling the [ExportPreviewRows](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl~ExportPreviewRows.html) property.

{% tabs %}
{% highlight c# %}
//Display record preview row
this.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = true;
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
//Enable exporting of the preview record rows to the excel
converter.ExportPreviewRows = true;
converter.GroupingGridToExcel(this.gridGroupingControl1, "FileName.xls", ConverterOptions.Default);
{% endhighlight %}
{% highlight vb %}
'Display record preview row
Me.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = True
Dim converter As New GroupingGridExcelConverterControl()
'Enable exporting of the preview record rows to the excel
converter.ExportPreviewRows = True
converter.GroupingGridToExcel(Me.gridGroupingControl1, "FileName.xls", ConverterOptions.Default)
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img5.png)

The exported preview rows is shown below,

![](Exporting_images/Exporting_img6.png)

The exported record preview row can be customized by using the [QueryExportPreviewRowInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GroupingGridExcelConverterControl~QueryExportPreviewRowInfo_EV.html) event. It will raise for each preview row element before exporting the grid.

{% tabs %}
{% highlight c# %}
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
converter.ExportPreviewRows = true;
converter.HeaderBackColor = Color.Orange;
converter.CaptionBackColor = Color.Lavender;
// To customize the appearance of RecordPreviewCell after exporting
converter.QueryExportPreviewRowInfo += new GroupingGridExcelConverterControl.GroupingGridExportPreviewRowQueryInfoEventHandler(converter_QueryExportPreviewRowInfo);
// Export the contents of the Grid to Excel
converter.GroupingGridToExcel(this.gridGroupingControl1, "Grid.xls", ConverterOptions.Visible);                     

private void converter_QueryExportPreviewRowInfo(object sender, GroupingGridExportPreviewRowQueryInfoEventArgs e)
{
    if (e.Element.Kind == DisplayElementKind.GroupPreview)
    {
        Element el = e.Element;
        e.Style.CellValue = "Preview notes for Group (" + el.ParentGroup.Name + ": " + el.ParentGroup.Category.ToString() + ")";
        e.Style.BackColor = Color.MistyRose;
        e.Handled = true;
    }

    if (e.Element.Kind == DisplayElementKind.RecordPreview)
    {
        Element el = e.Element;
        e.Style.CellValue = "Preview notes for Record (" + el.ParentTableDescriptor.Fields[0].Name + ": " + el.ParentRecord.GetValue(el.ParentTableDescriptor.Fields[0].Name) + ")";
        e.Style.BackColor = Color.MistyRose;
        e.Handled = true;
    }
}
{% endhighlight %}
{% highlight vb %}
Private converter As New GroupingGridExcelConverterControl()
converter.ExportPreviewRows = True
converter.HeaderBackColor = Color.Orange
converter.CaptionBackColor = Color.Lavender
' To customize the appearance of RecordPreviewCell after exporting
AddHandler converter.QueryExportPreviewRowInfo, AddressOf converter_QueryExportPreviewRowInfo
' Export the contents of the Grid to Excel
converter.GroupingGridToExcel(Me.gridGroupingControl1, "Grid.xls", ConverterOptions.Visible)

private void converter_QueryExportPreviewRowInfo(Object sender, GroupingGridExportPreviewRowQueryInfoEventArgs e)
    If e.Element.Kind = DisplayElementKind.GroupPreview Then
        Dim el As Element = e.Element
        e.Style.CellValue = "Preview notes for Group (" & el.ParentGroup.Name & ": " & el.ParentGroup.Category.ToString() & ")"
        e.Style.BackColor = Color.MistyRose
        e.Handled = True
    End If

    If e.Element.Kind = DisplayElementKind.RecordPreview Then
        Dim el As Element = e.Element
        e.Style.CellValue = "Preview notes for Record (" & el.ParentTableDescriptor.Fields(0).Name & ": " & el.ParentRecord.GetValue(el.ParentTableDescriptor.Fields(0).Name) & ")"
        e.Style.BackColor = Color.MistyRose
        e.Handled = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

The grid with record preview row is shown below,

![](Exporting_images/Exporting_img7.png)

Exported preview row in excel,

![](Exporting_images/Exporting_img8.png)

### Exporting Sparkline Column
The Sparkline column or cells in the GridGroupingControl can be exported to Excel by defining the spark line groups in the excel sheet. It can be achieved by using the [ISparklineGroups](https://msdn.microsoft.com/en-us/library/microsoft.office.interop.excel.isparklinegroups.aspx) interface.

It caches the `SparklineGroup` that needs to be added to the Excel sheet. The spark lines will be appear once the user select the data range and the location range. Data range and reference range for the Sparkline in Excel can be determined and assigned in [QueryImportExportCellInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridExcelConverterBase~QueryImportExportCellInfo_EV.html) event.

{% tabs %}
{% highlight c# %}
GroupingGridExcelConverterControl converter = new GroupingGridExcelConverterControl();
converter.QueryImportExportCellInfo += converter_QueryImportExportCellInfo;
void converter_QueryImportExportCellInfo(object sender, GridImportExportCellInfoEventArgs e)
{
    if (e.Action == GridConverterAction.Export)
    {
        GridTableCellStyleInfoIdentity id = e.GridCell.CellIdentity as GridTableCellStyleInfoIdentity;
        if (id != null && id.Column != null && id.DisplayElement.IsRecord() &&
        e.GridCell.CellType == GridCellTypeName.Control && e.GridCell.Control is SparkLine)
        {
            ISparklineGroup sparklineGroup = e.ExcelCell.Worksheet.SparklineGroups.Add();
            sparklineGroup.SparklineType = SparklineType.Line;
            ISparklines sparklines = sparklineGroup.Add();

            //Specify your needed Column index for starting range
            string startRange = GridRangeInfo.GetAlphaLabel(e.ExcelCell.Column - 3) + e.ExcelCell.Row.ToString();
            //Specify your needed Column  index for end range
            string endRange = GridRangeInfo.GetAlphaLabel(e.ExcelCell.Column - 1) + e.ExcelCell.Row.ToString();
            IRange dataRange = e.ExcelCell.Worksheet.Range[startRange + ":" + endRange];
            IRange referenceRange = e.ExcelCell;
            //Adding Sparkline in excel sheet range
            sparklines.Add(dataRange, referenceRange);
            e.Handled = true;
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Private converter As New GroupingGridExcelConverterControl()
Private converter.QueryImportExportCellInfo += AddressOf converter_QueryImportExportCellInfo
Private Sub converter_QueryImportExportCellInfo(ByVal sender As Object, ByVal e As GridImportExportCellInfoEventArgs)
    If e.Action = GridConverterAction.Export Then
        Dim id As GridTableCellStyleInfoIdentity = TryCast(e.GridCell.CellIdentity, GridTableCellStyleInfoIdentity)
        If id IsNot Nothing AndAlso id.Column IsNot Nothing AndAlso id.DisplayElement.IsRecord() AndAlso e.GridCell.CellType Is GridCellTypeName.Control AndAlso TypeOf e.GridCell.Control Is SparkLine Then
            Dim sparklineGroup As ISparklineGroup = e.ExcelCell.Worksheet.SparklineGroups.Add()
            sparklineGroup.SparklineType = SparklineType.Line
            Dim sparklines As ISparklines = sparklineGroup.Add()

            'Specify your needed Column index for starting range
            Dim startRange As String = GridRangeInfo.GetAlphaLabel(e.ExcelCell.Column - 3) + e.ExcelCell.Row.ToString()
            'Specify your needed Column  index for end range
            Dim endRange As String = GridRangeInfo.GetAlphaLabel(e.ExcelCell.Column - 1) + e.ExcelCell.Row.ToString()
            Dim dataRange As IRange = e.ExcelCell.Worksheet.Range(startRange & ":" & endRange)
            Dim referenceRange As IRange = e.ExcelCell
            'Adding Sparkline in excel sheet range
            sparklines.Add(dataRange, referenceRange)
            e.Handled = True
        End If
    End If
End Sub
{% endhighlight %}
{% endtabs %}

The following image shows the Grid with Sparkline column,

![](Exporting_images/Exporting_img9.png)

Exported Sparkline column range in Excel Sheet,

![](Exporting_images/Exporting_img10.png)

### Deriving Excel Converter
The default excel converter to export the grid to excel can be derived and customized as per the requirements. 

{% tabs %}
{% highlight c# %}
//Deriving the default excel converter
class CustomExcelConverter : GroupingGridExcelConverterControl  
{        
    protected override void ExportBordersToExcel(GridBorder cellBorder, Syncfusion.XlsIO.IBorder rangeBorder)
    {
        base.ExportBordersToExcel(cellBorder, rangeBorder);
    }

    protected override void ExportAlignmentToExcel(GridStyleInfo gridCell, Syncfusion.XlsIO.IRange range)
    {
        base.ExportAlignmentToExcel(gridCell, range);
    }

    protected override void ExportFontToExcel(GridStyleInfo gridCell, Syncfusion.XlsIO.IRange range)
    {
        base.ExportFontToExcel(gridCell, range);
    }

    protected override void ExportImageToExcel(GridStyleInfo gridCell, Syncfusion.XlsIO.IRange range)
    {
        base.ExportImageToExcel(gridCell, range);
    }
    protected override void ExportStylesToExcel(GridModel grid, int iRow, int iColumn, GridStyleInfo gridCell, Syncfusion.XlsIO.IRange range)
    {
        base.ExportStylesToExcel(grid, iRow, iColumn, gridCell, range);
    }

    protected override void ExportNumberFormatToExcel(GridStyleInfo gridStyle, Syncfusion.XlsIO.IRange range)
    {
        base.ExportNumberFormatToExcel(gridStyle, range);
    }

    protected override void ExportBordersToExcel(GridStyleInfo gridCell, Syncfusion.XlsIO.IRange range)
    {
          base.ExportBordersToExcel(gridCell, range);
    }
}
{% endhighlight %}
{% highlight vb %}
'Deriving the default excel converter
Friend Class CustomExcelConverter
    Inherits GroupingGridExcelConverterControl
    Protected Overrides Sub ExportBordersToExcel(ByVal cellBorder As GridBorder, ByVal rangeBorder As Syncfusion.XlsIO.IBorder)
        MyBase.ExportBordersToExcel(cellBorder, rangeBorder)
    End Sub

    Protected Overrides Sub ExportAlignmentToExcel(ByVal gridCell As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
        MyBase.ExportAlignmentToExcel(gridCell, range)
    End Sub

    Protected Overrides Sub ExportFontToExcel(ByVal gridCell As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
        MyBase.ExportFontToExcel(gridCell, range)
    End Sub

    Protected Overrides Sub ExportImageToExcel(ByVal gridCell As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
        MyBase.ExportImageToExcel(gridCell, range)
    End Sub
    Protected Overrides Sub ExportStylesToExcel(ByVal grid As GridModel, ByVal iRow As Integer, ByVal iColumn As Integer, ByVal gridCell As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
        MyBase.ExportStylesToExcel(grid, iRow, iColumn, gridCell, range)
    End Sub

    Protected Overrides Sub ExportNumberFormatToExcel(ByVal gridStyle As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
        MyBase.ExportNumberFormatToExcel(gridStyle, range)
    End Sub

    Protected Overrides Sub ExportBordersToExcel(ByVal gridCell As GridStyleInfo, ByVal range As Syncfusion.XlsIO.IRange)
          MyBase.ExportBordersToExcel(gridCell, range)
    End Sub
End Class

{% endhighlight %}
{% endtabs %}

N> The naming of the `CopyStyles` and `CopyAlignment` methods of the `GridConverterBase` is changed to `ExportBordersToExcel` and `ExportAlingmentToExcel`. 

## Advanced Excel Exporting
The `GridGroupingExcelConverterControl` is created for better performance of exporting the grid contents to Excel. It can be enabled by adding [Converter.Windows.dll](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/webtoc.html) in to assembly reference. 

### Restrict the Exporting of Empty Groups 
The child without (empty) records can be hidden/skipped while exporting by canceling the [QueryExportNestedTable](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl~QueryExportNestedTable_EV.html) event of GridGroupingExcelConverterControl.

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl gridExcelConverter = new GridGroupingExcelConverterControl();
gridExcelConverter.QueryExportNestedTable += gridExcelConverter_QueryExportNestedTable;
void gridExcelConverter_QueryExportNestedTable(object sender, ExportNestedTableEventArgs e)
{
    // Hide the empty elements being exported to Excel.
    if (e.NestedTable.Records.Count == 0)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Private gridExcelConverter As New GridGroupingExcelConverterControl()
Private gridExcelConverter.QueryExportNestedTable += AddressOf gridExcelConverter_QueryExportNestedTable
Private Sub gridExcelConverter_QueryExportNestedTable(ByVal sender As Object, ByVal e As ExportNestedTableEventArgs)
    ' Hide the empty elements being exported to Excel.
    If e.NestedTable.Records.Count = 0 Then
        e.Cancel = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### Exporting Caption and Outlines 
By default, the structure of the grid will be exported as it is to the Excel sheet i.e. nested table outlining, nested table’s caption row, and so on. To stop the exporting of the Nested table’s caption and its outlining, disable the [ExportNestedTableCaption](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl~ExportNestedTableCaption.html) property.

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl excelConverter = new GridGroupingExcelConverterControl();
// Export the Grid without Caption and Outlines of nested tables
excelConverter.ExportNestedTableCaption = false;
ExcelExportingOptions exportingOptions = new ExcelExportingOptions();
excelConverter.ExportToExcel(this.gridGroupingControl1, "Sample.xlsx", exportingOptions);
{% endhighlight %}
{% highlight vb %}
Dim excelConverter As New GridGroupingExcelConverterControl()
' Export the Grid without Caption and Outlines of nested tables
excelConverter.ExportNestedTableCaption = False
Dim exportingOptions As New ExcelExportingOptions()
excelConverter.ExportToExcel(Me.gridGroupingControl1, "Sample.xlsx", exportingOptions)
{% endhighlight %}
{% endtabs %}
The grid without the caption and outlines is shown below![](Exporting_images/Exporting_img11.png)


### Efficient Exporting
By default, the grid will be exported all the elements when the [ExportStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GridExcelConverter.GridGroupingExcelConverterBase~ExportStyle.html) is enabled. Since the style has to be taken from [GridStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo_events.html) store it leads to some amount of memory consumption while exporting large amount of records with styling. 

To resolve this kind of issue, use the [EnableOptimization](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl~EnableOptimization.html) property.  The basic idea behind in this is, the cell value will be taken from[Table.Records](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridChildTable~Records.html) instead of taking it from the `GridStyleInfo`. Therefore the performance of exporting is improve much more than exporting with styling.

{% tabs %}
{% highlight c# %}
GridGroupingExcelConverterControl excelConverter = new GridGroupingExcelConverterControl();      
// Exporing the data without creating style object 
excelConverter.EnableOptimization = true;
excelConverter.ExportToExcel(this.gridGroupingControl1, "Sample.xlsx", exportingOptions);
{% endhighlight %}
{% highlight vb %}
Dim excelConverter As New GridGroupingExcelConverterControl()
' Exporing the data without creating style object 
excelConverter.EnableOptimization = True
excelConverter.ExportToExcel(Me.gridGroupingControl1, "Sample.xlsx", exportingOptions)
{% endhighlight %}
{% endtabs %}

### Limitations in Efficient Exporting 

* As styles are not created for each and every cell, the values which are set using [QueryCellStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTable~QueryCellStyleInfo_EV.html) or [PrepareViewStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~PrepareViewStyleInfo_EV.html) event will not be exported to Excel sheet. The value which are all available in Records collection can be exported to Excel sheet if `EnableOptimization` property is enabled.
* Since styles are not available for `EnableOptimization` exporting, the [GridCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.QueryExportCellRangeEventArgs~GridCell.html) property or grid cell style will be `null` when you are using [QueryExportCellRange](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridConverter.Windows~Syncfusion.GroupingGridExcelConverter.GridGroupingExcelConverterControl~QueryExportCellRange_EV.html) event and only Excel range will be available for customization.

N> For more information refer to the below dashboard sample,
&lt;Installation_Location&gt;\Syncfusion\EssentialStudio\&lt;Product_Version&gt;\Windows\Grid.Grouping.Windows\Samples\Exporting\Excel Exporting Demo\

## PDF Export
The GridGroupingControl can export to the PDF document by using the [ExportToPdf](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter~ExportToPdf.html) method of the [GridPDFConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter.html) class. To ensure the conversion of grid data to PDF document, the following assemblies should be added to the reference folder,

* Syncfusion.Pdf.Base
* Syncfusion.GridHelperClasses.Windows

{% tabs %}
{% highlight c# %}
GridPDFConverter pdfConvertor = new GridPDFConverter();
// Export the contents of the Grid to Pdf
pdfConvertor.ExportToPdf("Sample.pdf", this.gridGroupingControl1.TableControl);
{% endhighlight %}
{% highlight vb %}
Dim pdfConvertor As New GridPDFConverter()
' Export the contents of the Grid to Pdf
pdfConvertor.ExportToPdf("Sample.pdf", Me.gridGroupingControl1.TableControl)
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img12.png)

### Adding Header/Footer
The grid can be exported with the header/footer to the pdf document by enabling the `ShowHeader` and `ShowFooter` properties of the `GridPDFConverter`. The DrawPDFHeader and DrawPDFFooter events are used to customize the header and footer section of the pdf document. 

{% tabs %}
{% highlight c# %}
//Create pdf converter
GridPDFConverter pdfConverter = new GridPDFConverter();
//Enable exporting of header and footer
pdfConverter.ShowHeader = true;
pdfConverter.ShowFooter = true;
//Invoke this events to draw the text in header/footer
pdfConverter.DrawPDFHeader += pdfConverter_DrawPDFHeader;
pdfConverter.DrawPDFFooter += pdfConverter_DrawPDFFooter;
pdfConverter.ExportToPdf("Sample.pdf", this.gridGroupingControl1.TableControl);

void pdfConverter_DrawPDFHeader(object sender, PDFHeaderFooterEventArgs e)
{
    PdfPageTemplateElement header = e.HeaderFooterTemplate;
    PdfSolidBrush brush = new PdfSolidBrush(Color.FromArgb(44, 71, 120));
    PdfFont font = new PdfStandardFont(PdfFontFamily.Helvetica, 16, PdfFontStyle.Bold);

    //Set formatting's for the text
    PdfStringFormat format = new PdfStringFormat();
    format.Alignment = PdfTextAlignment.Center;
    format.LineAlignment = PdfVerticalAlignment.Middle;

    //Draw title
    header.Graphics.DrawString("Syncfusion Essential PDF", font, brush, new RectangleF(0, 0, header.Width, header.Height), format);           

}
void pdfConverter_DrawPDFFooter(object sender, PDFHeaderFooterEventArgs e)
{
    PdfPageTemplateElement footer = e.HeaderFooterTemplate;
    PdfSolidBrush brush = new PdfSolidBrush(Color.Gray);
    PdfFont font = new PdfStandardFont(PdfFontFamily.Helvetica, 6, PdfFontStyle.Bold);
    PdfStringFormat format = new PdfStringFormat();
    format.Alignment = PdfTextAlignment.Center;
    format.LineAlignment = PdfVerticalAlignment.Top;
    footer.Graphics.DrawString("@Copyright 2015", font, brush, new RectangleF(0, footer.Height - 40, footer.Width, footer.Height), format);

}
{% endhighlight %}
{% highlight vb %}
'Create pdf converter
Private pdfConverter As New GridPDFConverter()
'Enable exporting of header and footer
pdfConverter.ShowHeader = True
pdfConverter.ShowFooter = True
'Invoke this events to draw the text in header/footer
AddHandler pdfConverter.DrawPDFHeader, AddressOf pdfConverter_DrawPDFHeader
AddHandler pdfConverter.DrawPDFFooter, AddressOf pdfConverter_DrawPDFFooter
pdfConverter.ExportToPdf("Sample.pdf", Me.gridGroupingControl1.TableControl)

Private Sub pdfConverter_DrawPDFHeader(ByVal sender As Object, ByVal e As PDFHeaderFooterEventArgs)
    Dim header As PdfPageTemplateElement = e.HeaderFooterTemplate
    Dim brush As New PdfSolidBrush(Color.FromArgb(44, 71, 120))
    Dim font As PdfFont = New PdfStandardFont(PdfFontFamily.Helvetica, 16, PdfFontStyle.Bold)

    'Set formatting's for the text
    Dim format As New PdfStringFormat()
    format.Alignment = PdfTextAlignment.Center
    format.LineAlignment = PdfVerticalAlignment.Middle

    'Draw title
    header.Graphics.DrawString("Syncfusion Essential PDF", font, brush, New RectangleF(0, 0, header.Width, header.Height), format)

End Sub
Private Sub pdfConverter_DrawPDFFooter(ByVal sender As Object, ByVal e As PDFHeaderFooterEventArgs)
    Dim footer As PdfPageTemplateElement = e.HeaderFooterTemplate
    Dim brush As New PdfSolidBrush(Color.Gray)
    Dim font As PdfFont = New PdfStandardFont(PdfFontFamily.Helvetica, 6, PdfFontStyle.Bold)
    Dim format As New PdfStringFormat()
    format.Alignment = PdfTextAlignment.Center
    format.LineAlignment = PdfVerticalAlignment.Top
    footer.Graphics.DrawString("@Copyright 2015", font, brush, New RectangleF(0, footer.Height - 40, footer.Width, footer.Height), format)

End Sub
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img13.png)

N> The header/footer height of the exported pdf document can be set by using the `HeaderHeight` and `FooterHeight` properties of the pdf converter.

### Merging with PDF document 
The GridGroupingControl can be exported to the PDF document using [ExportToPdfWithMerge](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter~ExportToPdfWithMerge.html) method. The[GridPDFConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter.html) does not have support to export the grid which has more than 60000 records. It will throw the `OutOfMemoryException` when exporting.  To resolve this exception, the grid can be exported as two or more documents and merging them to single document using this technique. The number of records to be exported can be determined by using [ExportRange](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter~ExportRange.html) property.

{% tabs %}
{% highlight c# %}
//Create PDF converter 
GridPDFConverter pdfConverter = new GridPDFConverter();
//First 40000 records will be exported
pdfConverter.ExportRange = 40000;
//Exporting and merging with another PDF document
pdfConverter.ExportToPdfWithMerge("Sample1.pdf", this.gridGroupingControl1.TableControl);
{% endhighlight %}
{% highlight vb %}
'Create PDF converter 
Dim pdfConverter As New GridPDFConverter()
'First 40000 records will be exported
pdfConverter.ExportRange = 40000
'Exporting and merging with another PDF document
pdfConverter.ExportToPdfWithMerge("Sample1.pdf", Me.gridGroupingControl1.TableControl)
{% endhighlight %}
{% endtabs %}

### Events
The `GridPDFConverter` provides support to customize the exporting actions through events. The [Exporting](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter~Exporting_EV.html) and [Exported](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPDFConverter~Exported_EV.html) events of the convertor is used to notify the pdf exporting of the grid.

{% tabs %}
{% highlight c# %}
//Create PDF converter 
GridPDFConverter pdfConverter = new GridPDFConverter();
//Used to perform the action while exporting the Grid
pdfConverter.Exporting += new GridPDFConverter.PDFExportingEventHandler(pdfConverter_Exporting);
pdfConverter.Exported += new GridPDFConverter.PDFExportedEventHandler(pdfConverter_Exported);

private void pdfConverter_Exporting(object sender, PDFExportingEventArgs e)
{
     // Getting the pdf document
     PdfDocument pdfDocument = e.PdfDocument;

      // To-Do
}

private void pdfConverter_Exported(object sender, PDFExportedEventArgs e)
{
      // Getting the pdf document
     PdfDocument pdfDocument = e.PdfDocument;

     // To-Do
}

{% endhighlight %}
{% highlight vb %}
'Create PDF converter 
Private pdfConverter As New GridPDFConverter()
'Used to perform the action while exporting the Grid
Private pdfConverter.Exporting += New GridPDFConverter.PDFExportingEventHandler(AddressOf pdfConverter_Exporting)
Private pdfConverter.Exported += New GridPDFConverter.PDFExportedEventHandler(AddressOf pdfConverter_Exported)

Private Sub pdfConverter_Exporting(ByVal sender As Object, ByVal e As PDFExportingEventArgs)
     ' Getting the pdf document
     Dim pdfDocument As PdfDocument = e.PdfDocument

      ' To-Do

End Sub

Private Sub pdfConverter_Exported(ByVal sender As Object, ByVal e As PDFExportedEventArgs)
      ' Getting the pdf document
     Dim pdfDocument As PdfDocument = e.PdfDocument

     ' To-Do
End Sub

{% endhighlight %}
{% endtabs %}

## Word Converter
The GridGroupingControl data can be exported to the word by using the [GroupingGridToWord](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GroupingGridWordConverter~GroupingGridToWord.html) method of the [GroupingGridWordConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GroupingGridWordConverter.html). 

{% tabs %}
{% highlight c# %}
GroupingGridWordConverter converter = new GroupingGridWordConverter();
// Export the contents of the Grid To Word
converter.GroupingGridToWord("Grid.doc", this.gridGroupingControl1);
{% endhighlight %}
{% highlight vb %}
Dim converter As New GroupingGridWordConverter()
' Export the contents of the Grid To Word
converter.GroupingGridToWord("Grid.doc", Me.gridGroupingControl1)
{% endhighlight %}
{% endtabs %}
![](Exporting_images/Exporting_img14.png)

The following images shows exported grid in the word document,
![](Exporting_images/Exporting_img15.png)

### Exporting with Styles
The styles of the GridGroupingControl can be exported to the grid by setting the `ExportStyle` property to `true`.

{% tabs %}
{% highlight c# %}
GroupingGridWordConverter wordConverter = new GroupingGridWordConverter();
//Export the Style of the grid to word
wordConverter.ExportStyle = true;
wordConverter.GroupingGridToWord("FileName.doc", this.gridGroupingControl1);
{% endhighlight %}
{% highlight vb %}
Dim wordConverter As New GroupingGridWordConverter()
'Export the Style of the grid to word
wordConverter.ExportStyle = True
wordConverter.GroupingGridToWord("FileName.doc", Me.gridGroupingControl1)
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img16.png)

The exported grid with the styles in the word documents is shown below![](Exporting_images/Exporting_img17.png)

### Exporting with Header and Footer
The GridGroupingControl can be exported to the word with the headers and footers by enabling the `ShowHeader` and `ShowFooter` properties of the word converter. The desired text can be placed on the header and footer by handling the `DrawHeader` and `DrawFooter` events.

{% tabs %}
{% highlight c# %}
GroupingGridWordConverter wordConverter = new GroupingGridWordConverter();
//Export the grid to word document
wordConverter.ShowFooter = true;
wordConverter.ShowHeader = true;
//Set the text for header and footer
wordConverter.DrawHeader += wordConverter_DrawHeader;
wordConverter.DrawFooter += wordConverter_DrawFooter;
wordConverter.GroupingGridToWord("FileName.doc", this.gridGroupingControl1);

void wordConverter_DrawHeader(object sender, DocHeaderFooterEventArgs e)
{            
    e.Header.AddParagraph().AppendText("Syncfusion Inc.");            
}
void wordConverter_DrawFooter(object sender, DocHeaderFooterEventArgs e)
{
    e.Footer.AddParagraph().AppendText("Copyright 2001-2015");
}
{% endhighlight %}
{% highlight vb %}
Private wordConverter As New GroupingGridWordConverter()
'Export the grid to word document
wordConverter.ShowFooter = True
wordConverter.ShowHeader = True
'Set the text for header and footer
AddHandler wordConverter.DrawHeader, AddressOf wordConverter_DrawHeader
AddHandler wordConverter.DrawFooter, AddressOf wordConverter_DrawFooter
wordConverter.GroupingGridToWord("FileName.doc", Me.gridGroupingControl1)

void wordConverter_DrawHeader(Object sender, DocHeaderFooterEventArgs e)
    e.Header.AddParagraph().AppendText("Syncfusion Inc.")
void wordConverter_DrawFooter(Object sender, DocHeaderFooterEventArgs e)
    e.Footer.AddParagraph().AppendText("Copyright 2001-2015")

{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img18.png)

### Deriving Word Converter 
The word converter can be customized the exporting of grid to word by overriding its virtual methods. The protected virtual methods of the `GroupingGridToWordConverter` such as `OnDrawFooter`, `OnDrawHeader`, etc., is used to 

{% tabs %}
{% highlight c# %}
//Deriving the word converter 
class CustomWordConverter : GridWordConverterBase   
{

    protected override void OnDrawFooter(DocHeaderFooterEventArgs e)
    {
        base.OnDrawFooter(e);
    }

    protected override void OnDrawHeader(DocHeaderFooterEventArgs e)
    {
        base.OnDrawHeader(e);
    }

    public override string ToString()
    {
        return base.ToString();
    }

    //...
}
{% endhighlight %}
{% highlight vb %}
'Deriving the word converter 
Friend Class CustomWordConverter
    Inherits GridWordConverterBase

    Protected Overrides Sub OnDrawFooter(ByVal e As DocHeaderFooterEventArgs)
        MyBase.OnDrawFooter(e)
    End Sub

    Protected Overrides Sub OnDrawHeader(ByVal e As DocHeaderFooterEventArgs)
        MyBase.OnDrawHeader(e)
    End Sub

    Public Overrides Function ToString() As String
        Return MyBase.ToString()
    End Function

    '...
End Class
{% endhighlight %}
{% endtabs %}

## CSV Export
The GridGroupingControl can be exported to the CSV format by using the [GridCSVConverter](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridCSVConverter.html). It will export only the data without the styles. 

{% tabs %}
{% highlight c# %}
GridCSVConverter csvConverter = new GridCSVConverter();
//Exporting to CSV format
csvConverter.GridToCSV(this.gridGroupingControl1.TableModel, "Sample.csv");
{% endhighlight %}

{% highlight vb %}
Dim csvConverter As New GridCSVConverter()
'Exporting to CSV format
csvConverter.GridToCSV(Me.gridGroupingControl1.TableModel, "Sample.csv")
{% endhighlight %}
{% endtabs %}

### Exporting the Range of Cells
The range of cells can be exported from the grid to excel as the [CSV](https://msdn.microsoft.com/en-us/library/azure/dn906002.aspx) format by using the [ExportRange](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridCSVConverter~ExportRange.html) method.

{% tabs %}
{% highlight c# %}
GridCSVConverter csvConverter = new GridCSVConverter();
int rowIndex = this.gridGroupingControl1.TableControl.TopRowIndex;
//Export the range of rows to CSV format
csvConverter.ExportRange(GridRangeInfo.Rows(rowIndex, rowIndex + 3), this.gridGroupingControl1.TableModel, "Sample.csv");
{% endhighlight %}
{% highlight vb %}
Dim csvConverter As New GridCSVConverter()
Dim rowIndex As Integer = Me.gridGroupingControl1.TableControl.TopRowIndex
'Export the range of rows to CSV format
csvConverter.ExportRange(GridRangeInfo.Rows(rowIndex, rowIndex + 3), Me.gridGroupingControl1.TableModel, "Sample.csv")
{% endhighlight %}
{% endtabs %}

![](Exporting_images/Exporting_img19.png)

### Exporting Selected Range of Cells
The selected range of cells can be exported to the CSV format by using the [SelectedExport](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridCSVConverter~SelectedExport.html) method. This can only export the model based selection. Therefore enable the[range selection](http://help.syncfusion.com/windowsforms/gridgrouping/selections#model-based-selection) for the grid.

{% tabs %}
{% highlight c# %}
GridCSVConverter csvConverter = new GridCSVConverter();
//Export selected range of cells to CSV format
csvConverter.SelectedExport(this.gridGroupingControl1.TableModel, "Sample.csv");
{% endhighlight %}
{% highlight vb %}
Dim csvConverter As New GridCSVConverter()
'Export selected range of cells to CSV format
csvConverter.SelectedExport(Me.gridGroupingControl1.TableModel, "Sample.csv")
{% endhighlight %}
{% endtabs %}
![](Exporting_images/Exporting_img20.png)

The exported range of cells to the CSV format in the excel file,

![](Exporting_images/Exporting_img21.png)
