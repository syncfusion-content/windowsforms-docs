---
layout: post
title: Managing Records and Columns in WinForms GridGrouping | Syncfusion®
description: Learn about Managing Records and Columns support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Managing Records and Columns in Windows Forms GridGrouping
This section will explain about working with records and columns in GridGroupingControl.

## Hiding Records and Columns
The columns can be hidden from GridGroupingControl by using the [VisibleColumns.Remove](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection.html#Syncfusion_Windows_Forms_Grid_Grouping_GridVisibleColumnDescriptorCollection_Remove_Syncfusion_Windows_Forms_Grid_Grouping_GridVisibleColumnDescriptor_) and [VisibleColumns.RemoveAt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection.html#Syncfusion_Windows_Forms_Grid_Grouping_GridVisibleColumnDescriptorCollection_RemoveAt_System_Int32_) methods.

{% tabs %}
{% highlight c# %}
//Hide the given column 
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("ProductName");

//Hide the column at the given index
this.gridGroupingControl1.TableDescriptor.VisibleColumns.RemoveAt(2);
{% endhighlight %}
{% highlight vb %}
'Hide the given column 
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("ProductName")

'Hide the column at the given index
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.RemoveAt(2)
{% endhighlight %}
{% endtabs %}
The rows can be hidden by adding the [RowHiddenEntries](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_RowHiddenEntries).
{% tabs %}
{% highlight c# %}
int n = this.gridGroupingControl1.TableControl.TopRowIndex;
GridRowHidden[] hiddenRows = new GridRowHidden[1];
hiddenRows[0] = new GridRowHidden(n);            

//Hide the first row
this.gridGroupingControl1.TableControl.Model.RowHiddenEntries.AddRange(hiddenRows);      
{% endhighlight %}
{% highlight vb %}
Dim n As Integer = Me.gridGroupingControl1.TableControl.TopRowIndex
Dim hiddenRows(0) As GridRowHidden
hiddenRows(0) = New GridRowHidden(n)

'Hide the first row
Me.gridGroupingControl1.TableControl.Model.RowHiddenEntries.AddRange(hiddenRows)
{% endhighlight %}
{% endtabs %}

## Hide Row and Column Header
The row and  column headers of the GridGroupingControl can be hide by setting the [ShowRowHeaders](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ShowRowHeaders) and [ShowColumnHeaders](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ShowColumnHeaders) property to `false`.

{% tabs %}
{% highlight c# %}
//Hide Row and Column Headers in GridGroupingControl
this.gridGroupingControl1.ShowRowHeaders = false;
this.gridGroupingControl1.ShowColumnHeaders = false;
{% endhighlight %}
{% highlight vb %}
'Hide Row and Column Headers in GridGroupingControl
Me.gridGroupingControl1.ShowRowHeaders = False
Me.gridGroupingControl1.ShowColumnHeaders = False
{% endhighlight %}
{% endtabs %}

### Hiding Column Headers of the Groups 
The column headers of the groups can be hidden by using the [TopLevelGroupOptions.ShowColumnHeaders](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupOptionsStyleInfo_ShowColumnHeaders) property.

{% tabs %}
{% highlight c# %}
 //To hide the row and column headers for the parent table of the grid
this.gridGroupingControl1.TopLevelGroupOptions.ShowColumnHeaders = false;
{% endhighlight %}
{% highlight vb %}
'To hide the column headers for the parent table of the grid
Me.gridGroupingControl1.TopLevelGroupOptions.ShowColumnHeaders = False
{% endhighlight %}
{% endtabs %}

### Hiding Column Headers of the Nested Tables
The column headers of the nested tables can be hidden by setting the `NestedTableGroupOptions.ShowColumnHeaders` property to `false`.

{% tabs %}
{% highlight c# %}
//To hide the row and column headers for the nested table
this.gridGroupingControl1.NestedTableGroupOptions.ShowColumnHeaders = false;
{% endhighlight %}
{% highlight vb %}
'To hide the row and column headers for the nested table
Me.gridGroupingControl1.NestedTableGroupOptions.ShowColumnHeaders = False
{% endhighlight %}
{% endtabs %}

### Hiding Columns and Rows by Resizing
The columns of the GridGroupingControl can be hide by resizing it to the minimum size.  

The following image shows the column `CategoryID` is resized to the minimum size over the other column,

![Managing-Records-and-Columns_img1](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img1.jpeg)

The below screenshot shows the grid displaying the columns after hiding the `CategoryID`,

![Managing-Records-and-Columns_img2](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img2.jpeg)

The rows cannot be hidden by resizing to the minimum positions as mentioned in the above procedure. In GridGroupingControl, it will resize all the records of the grid when resizing a single row. If the row is resized to the minimum size (`zero`), it will hide all the records of the grid.  This restriction can be removed by creating a `GridEngineFactory` before the `InitializeComponent` method of the GridGroupingControl.

{% tabs %}
{% highlight c# %}
//To enable resizing of single row in GridGroupingControl
GridEngineFactory.Factory = new Syncfusion.GridHelperClasses.AllowResizingIndividualRows();
InitializeComponent();
{% endhighlight %}
{% highlight vb %}
'To enable resizing of single row in GridGroupingControl
GridEngineFactory.Factory = New Syncfusion.GridHelperClasses.AllowResizingIndividualRows()
InitializeComponent()
{% endhighlight %}
{% endtabs %}
The following screen shot shows the resizing of the row `6` to the minimum size,

![Managing-Records-and-Columns_img3](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img3.jpeg)

The hidden row by resizing is showing in the following screen shot

![Managing-Records-and-Columns_img4](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img4.jpeg)

## Unhide Columns Using Double Click
The hidden columns by resizing can be unhide by performing the double click between the column headers![Managing-Records-and-Columns_images5](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img5.jpeg)

### Prevent Column from Hiding 
The columns can be prevent from hiding on resizing by canceling the [ColsHiding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_ColsHiding) event.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableModel.ColsHiding += new GridRowColHidingEventHandler(TableModel_ColsHiding);

void TableModel_ColsHiding(object sender, GridRowColHidingEventArgs e)
{
    int colIndex = 3;

    if (e.From <= colIndex && e.To >= colIndex)
    {

        //Restrict the column from hiding. 
        e.Cancel = true;
    }
}
{% endhighlight %}
{% highlight vb %}
Private Me.gridGroupingControl1.TableModel.ColsHiding += New GridRowColHidingEventHandler(AddressOf TableModel_ColsHiding)

Private Sub TableModel_ColsHiding(ByVal sender As Object, ByVal e As GridRowColHidingEventArgs)
    Dim colIndex As Integer = 3

    If e.From <= colIndex AndAlso e.To >= colIndex Then

        'Restrict the column from hiding. 
        e.Cancel = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}

## Adding Column Headers for Child Groups 
By default the grid will not shows the column headers for the child groups. It be displayed for the child groups by setting the `ChildGroupOptions.ShowColumnHeaders` property to `true`.

{% tabs %}
{% highlight c# %}
//Display the column headers for the child groups
this.gridGroupingControl1.ChildGroupOptions.ShowColumnHeaders = true;
{% endhighlight %}

{% highlight vb %}
'Display the column headers for the child groups
Me.gridGroupingControl1.ChildGroupOptions.ShowColumnHeaders = True
{% endhighlight %}
{% endtabs %}

## Frozen Columns
The frozen columns can be added to the GridGroupingControl by using the [FrozenColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_FrozenColumn) collection.

{% tabs %}
{% highlight c# %}
//Frozen the column first 3 columns of the grid
this.gridGroupingControl1.TableModel.Cols.FrozenCount = 3;
{% endhighlight %}
{% highlight vb %}
'Frozen the column first 3 columns of the grid
Me.gridGroupingControl1.TableModel.Cols.FrozenCount = 3
{% endhighlight %}
{% endtabs %}

N> The GridGroupingControl does not have the support for the frozen rows option.

## Moving Columns
The columns can be moved from one position to other by using the drag and drop. The column `CategoryID` is moving by using the drag and drop is shown in the following screenshot![Managing-Records-and-Columns_images6](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img6.jpeg)

The grid after moving the column is shown below

![Managing-Records-and-Columns_img7](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img7.jpeg)

### Programmatic Moving of Columns
The columns visible order can be programmatically changed by using the [VisibleColumns.Move](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection.html#Syncfusion_Windows_Forms_Grid_Grouping_GridVisibleColumnDescriptorCollection_Move_System_Int32_System_Int32_) method.

The columns before moving the column is shown below
 
![Managing-Records-and-Columns_img8](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img8.jpeg)

The grid after moving the column

![Managing-Records-and-Columns_img9](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img9.jpeg)

## Unbound Columns
The GridGroupingControl provides the support for adding the unbound columns which are not bounded to the grid's data source. This can be achieved by creating the field descriptor and adding to the [UnboundFields](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html) collection.

{% tabs %}
{% highlight c# %}
//Adding Unbound field to the GridGroupingControl
this.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundField");
{% endhighlight %}
{% highlight vb %}
'Adding Unbound field to the GridGroupingControl
Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundField")
{% endhighlight %}
{% endtabs %}

Since the unbound fields are working independently, it has to be manually populated with the [TableDescriptor.QueryValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_QueryValue) event and store the edited value by using the [TableDescriptor.SaveValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_SaveValue) events.

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableDescriptor.QueryValue += new FieldValueEventHandler(TableDescriptor_QueryValue);
this.gridGroupingControl1.TableDescriptor.SaveValue += new FieldValueEventHandler(TableDescriptor_SaveValue);

//Maintain the typed values in unbound column
Hashtable UnboundValues = new Hashtable();

void TableDescriptor_SaveValue(object sender, FieldValueEventArgs e)
{

    if (e.Field.Name == "UnboundField")
    {
        UnboundValues[e.Record.Id] = e.Value;
    }
}

void TableDescriptor_QueryValue(object sender, FieldValueEventArgs e)
{

    if (e.Field.Name == "UnboundField")
    {
        e.Value = UnboundValues[e.Record.Id];
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableDescriptor.QueryValue, AddressOf TableDescriptor_QueryValue
AddHandler gridGroupingControl1.TableDescriptor.SaveValue, AddressOf TableDescriptor_SaveValue

'Maintain the typed values in unbound column
Private UnboundValues As New Hashtable()

Private Sub TableDescriptor_SaveValue(ByVal sender As Object, ByVal e As FieldValueEventArgs)

    If e.Field.Name = "UnboundField" Then
        UnboundValues(e.Record.Id) = e.Value
    End If
End Sub

Private Sub TableDescriptor_QueryValue(ByVal sender As Object, ByVal e As FieldValueEventArgs)

    If e.Field.Name = "UnboundField" Then
        e.Value = UnboundValues(e.Record.Id)
    End If
End Sub
{% endhighlight %}
{% endtabs %}

The unbound field added to the GridGroupingControl is shown in the following screenshot![Managing-Records-and-Columns_images10](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img10.jpeg)

## Setting the Column Widths and Row Heights 
The column width and row height of the GridGroupingControl can be set dynamically by resizing using the mouse controller. 

### Setting Default Row Heights
Default row heights can be set by using the [DefaultRecordRowHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultRecordRowHeight) property
{% tabs %}
{% highlight c# %}
//Setting Default row heights.
this.gridGroupingControl1.Table.DefaultRecordRowHeight = 150;
{% endhighlight %}
{% highlight vb %}
'Setting default row heights.
Me.gridGroupingControl1.Table.DefaultRecordRowHeight = 150
{% endhighlight %}
{% endtabs %}

### Setting Default Header Row Heights
The row heights for the column headers can be changed by using the [DefaultColumnHeaderRowHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultColumnHeaderRowHeight) property. Refer the below code.
{% tabs %}
{% highlight c# %}
//Setting default header row heights.
this.gridGroupingControl1.Table.DefaultColumnHeaderRowHeight = 50;
{% endhighlight %}
{% highlight vb %}
'Setting default header row heights.
Me.gridGroupingControl1.Table.DefaultColumnHeaderRowHeight = 50
{% endhighlight %}
{% endtabs %}

### Setting Default Caption Row Heights
The row heights for the caption bar can be changed by using the [DefaultCaptionRowHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultCaptionRowHeight) property. Refer the below code. By default, caption bar will not be visible in grid. To enable the caption bar, make use of the ShowCaption property
{% tabs %}
{% highlight c# %}
// Displaying the Caption bar in Grid
this.gridGroupingControl1.TopLevelGroupOptions.ShowCaption = true; 

//Setting caption row heights.
this.gridGroupingControl1.Table.DefaultCaptionRowHeight = 25;
{% endhighlight %}
{% highlight vb %}
'Displaying the caption bar in Grid.
Me.gridGroupingControl1.TopLevelGroupOptions.ShowCaption = True

'Setting caption row heights.
Me.gridGroupingControl1.Table.DefaultCaptionRowHeight = 25
{% endhighlight %}
{% endtabs %}

### Setting Default FilterBar Row Height
The row height for the filter bar can be changed by using the [DefaultFilterBarRowHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultFilterBarRowHeight) property. 
{% tabs %}
{% highlight c# %}
//Setting filter bar row heights.
this.gridGroupingControl1.Table.DefaultFilterBarRowHeight = 25;
{% endhighlight %}
{% highlight vb %}
'Setting filter bar row heights.
Me.gridGroupingControl1.Table.DefaultFilterBarRowHeight = 25
{% endhighlight %}
{% endtabs %}

### Setting Default Row Height for Groups
Default row heights for group footer, header and preview sections can be changed by using the [DefaultGroupFooterSectionHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultGroupFooterSectionHeight), [DefaultGroupHeaderSectionHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultGroupHeaderSectionHeight) and [DefaultGroupPreviewSectionHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTable_DefaultGroupPreviewSectionHeight) properties respectively.
{% tabs %}
{% highlight c# %}
//Sets default height for group header sections.
this.gridGroupingControl1.Table.DefaultGroupHeaderSectionHeight = 25;

//Sets default height for group footer sections.
this.gridGroupingControl1.Table.DefaultGroupFooterSectionHeight = 25;

//Sets default height for Group preview rows.
this.gridGroupingControl1.Table.DefaultGroupPreviewSectionHeight = 25; 
{% endhighlight %}
{% highlight vb %}
'Sets default height for group header sections.
Me.gridGroupingControl1.Table.DefaultGroupHeaderSectionHeight = 25

'Sets default height for group footer sections.
Me.gridGroupingControl1.Table.DefaultGroupFooterSectionHeight = 25

'Sets default height for Group preview rows.
Me.gridGroupingControl1.Table.DefaultGroupPreviewSectionHeight = 25
{% endhighlight %}
{% endtabs %}

### Setting Width for a particular Column
To set the default width for the particular column, use the following code snippet,

{% tabs %}
{% highlight c# %}
//Setting the column width for the given column index
this.gridGroupingControl1.TableDescriptor.Columns[1].Width = 150;
{% endhighlight %}
{% highlight vb %}
'Setting the column width for the given column index
Me.gridGroupingControl1.TableDescriptor.Columns(1).Width = 150
{% endhighlight %}
{% endtabs %}

### Setting Default Column Width for columns
The default column width can be assigned for GridGroupingControl columns by setting the [DefaultColumnWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableOptionsStyleInfo_DefaultColumnWidth) property. Please refer the below code,

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableDescriptor.AllowCalculateMaxColumnWidth = false;
this.gridGroupingControl1.TableOptions.DefaultColumnWidth = 100;
{% endhighlight %}
{% highlight vb %}
Me.gridGroupingControl1.TableDescriptor.AllowCalculateMaxColumnWidth = False
Me.gridGroupingControl1.TableOptions.DefaultColumnWidth = 100
{% endhighlight %}
{% endtabs %}

N> The `DefaultColumnWidth` can be affected to columns only when set the [AllowCalculateMaxColumnWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_AllowCalculateMaxColumnWidth) property to false.

The column width can be calculated based on [ColumnsMaxLengthStrategy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableOptionsStyleInfo_ColumnsMaxLengthStrategy) property. Below is the list of predefined column sizing options available in[GridColumnMaxLengthStrategy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridColumnsMaxLengthStrategy.html) enumeration.
`GridColumnsMaxLengthStrategy.None`:The Default column width or defined width set to column. 
`GridColumnsMaxLengthStrategy.MaxLengthSummary`:Calculates the width of column based on header and cell contents. So that header and cell contents are not truncated.
`GridColumnsMaxLengthStrategy. FirstNRecords`:Calculates the width of the column based on the number of rows is defined by [ColumnsMaxLengthFirstNRecords](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableOptionsStyleInfo_ColumnsMaxLengthFirstNRecords) property. Please refer the below code,

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableOptions.ColumnsMaxLengthFirstNRecords = 10;
this.gridGroupingControl1.TableOptions.ColumnsMaxLengthStrategy = Syncfusion.Windows.Forms.Grid.Grouping.GridColumnsMaxLengthStrategy.FirstNRecords;
{% endhighlight %}
{% highlight vb %}
Me.gridGroupingControl1.TableOptions.ColumnsMaxLengthFirstNRecords = 10
Me.gridGroupingControl1.TableOptions.ColumnsMaxLengthStrategy = Syncfusion.Windows.Forms.Grid.Grouping.GridColumnsMaxLengthStrategy.FirstNRecords
{% endhighlight %}
{% endtabs %}

### Setting Column Styles 
The styles can be applied for the particular column by using the [Appearance](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_Appearance) properties of the [TableDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html).

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableDescriptor.Columns[1].Appearance.AnyRecordFieldCell.BackColor = Color.Orange;
this.gridGroupingControl1.TableDescriptor.Columns[1].Appearance.AnyRecordFieldCell.TextColor = Color.White;
this.gridGroupingControl1.TableDescriptor.Columns[1].Appearance.AnyRecordFieldCell.Font.Bold = true;
{% endhighlight %}
{% highlight vb %}
Me.gridGroupingControl1.TableDescriptor.Columns(1).Appearance.AnyRecordFieldCell.BackColor = Color.Orange
Me.gridGroupingControl1.TableDescriptor.Columns(1).Appearance.AnyRecordFieldCell.TextColor = Color.White
Me.gridGroupingControl1.TableDescriptor.Columns(1).Appearance.AnyRecordFieldCell.Font.Bold = True
{% endhighlight %}
{% endtabs %}
![Managing-Records-and-Columns_img11](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img11.jpeg)

## Proportional Column Sizing 
All the columns of the grid can be have the same width that of the equal partition of the total width by setting the [AllowProportionalColumnSizing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_AllowProportionalColumnSizing) to `true`.

{% tabs %}
{% highlight c# %}
//Enable proportional column sizing
this.gridGroupingControl1.AllowProportionalColumnSizing = true;
{% endhighlight %}
{% highlight vb %}
'Enable proportional column sizing
Me.gridGroupingControl1.AllowProportionalColumnSizing = True
{% endhighlight %}
{% endtabs %}
## Getting the Record ID of the Current Record
The record id of the current record can be get by using the [Table.CurrentRecord.Id](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html) property.

{% tabs %}
{% highlight c# %}
//Get the current record of the grid
Record record = this.gridGroupingControl1.Table.CurrentRecord;

//Display the record id of the current record
MessageBox.Show("The Current Record ID is :" + record.Id.ToString());
{% endhighlight %}
{% highlight vb %}
'Get the current record of the grid
Dim record As Record = Me.gridGroupingControl1.Table.CurrentRecord

'Display the record id of the current record
MessageBox.Show("The Current Record ID is :" & record.Id.ToString())
{% endhighlight %}
{% endtabs %}

![Managing-Records-and-Columns_img12](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img12.jpeg)

## Getting the Value of the Particular Field from the Record
To get the value of the particular field from the record, use the [Record.GetValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRecord.html#Syncfusion_Windows_Forms_Grid_Grouping_GridRecord_GetValue_Syncfusion_Grouping_FieldDescriptor_) method. It will return the value of the given filed.

{% tabs %}
{% highlight c# %}
int index = 5;
string data = this.gridGroupingControl1.Table.Records[index].GetValue("ProductName").ToString();
MessageBox.Show("Product Name is :" + data);
{% endhighlight %}
{% highlight vb %}
Dim index As Integer = 5
Dim data As String = Me.gridGroupingControl1.Table.Records(index).GetValue("ProductName").ToString()
MessageBox.Show("Product Name is :" & data)
{% endhighlight %}
{% endtabs %}

![Managing-Records-and-Columns_img13](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img13.jpeg)

## Set the value for the particular Field 
The value for the particular field can be set by using the [SetValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRecord.html) method.

{% tabs %}
{% highlight c# %}
//Set the value for the particular record
this.gridGroupingControl1.Table.Records[5].SetValue("ProductName", "Hello");
{% endhighlight %}
{% highlight vb %}
'Set the value for the particular record
Me.gridGroupingControl1.Table.Records(5).SetValue("ProductName", "Hello")
{% endhighlight %}
{% endtabs %}

## Setting the Current Cell Activation Behavior 
The activation behavior of the current cell can be set by using the [ActivateCurrentCellBehavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ActivateCurrentCellBehavior) property.

{% tabs %}
{% highlight c# %}
//Activate the current cell on double click 
this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell
{% endhighlight %}
{% highlight vb %}
'Activate the current cell on double click 
Me.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell
{% endhighlight %}
{% endtabs %}

## Getting the Row Index from a Record
The row index of the record can be get by using the [GetRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRecord.html) method.

{% tabs %}
{% highlight c# %}
//Get the current record of the grid
int index = this.gridGroupingControl1.Table.CurrentRecord.GetRowIndex();

//Display the row index of the current record
MessageBox.Show("The Current Record row index is :" + index.ToString());
{% endhighlight %}
{% highlight vb %}
'Get the current record of the grid
Dim index As Integer = Me.gridGroupingControl1.Table.CurrentRecord.GetRowIndex()

'Display the row index of the current record
MessageBox.Show("The Current Record row index is :" & index.ToString())
{% endhighlight %}
{% endtabs %}

![Managing-Records-and-Columns_img14](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img14.jpeg)

