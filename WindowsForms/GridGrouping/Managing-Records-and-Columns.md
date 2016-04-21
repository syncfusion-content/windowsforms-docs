---
layout: post
title: Managing Records and Columns for Syncfusion Essential WindowsForms
description: This section explains on how to working with records and columns in the GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Managing Records and Columns 
This section will explain about working with records and columns in GridGroupingControl.

## Hiding Records and Columns
The columns can be hidden from GridGroupingControl by using the [VisibleColumns.Remove](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection~Remove.html) and [VisibleColumns.RemoveAt](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection~RemoveAt.html) methods.

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
The rows can be hidden by adding the [RowHiddenEntries](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~RowHiddenEntries.html).
{% tabs %}
{% highlight c# %}
int n = this.gridGroupingControl1.TableControl.TopRowIndex;
GridRowHidden[] hiddenrows = new GridRowHidden[1];
hiddenrows[0] = new GridRowHidden(n);            
//Hide the first row
this.gridGroupingControl1.TableControl.Model.RowHiddenEntries.AddRange(hiddenrows);      
{% endhighlight %}
{% highlight vb %}
Dim n As Integer = Me.gridGroupingControl1.TableControl.TopRowIndex
Dim hiddenrows(0) As GridRowHidden
hiddenrows(0) = New GridRowHidden(n)
'Hide the first row
Me.gridGroupingControl1.TableControl.Model.RowHiddenEntries.AddRange(hiddenrows)
{% endhighlight %}
{% endtabs %}

## Hide Row and Column Header
The row and  column headers of the GridGroupingControl can be hide by setting the [ShowRowHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowRowHeaders.html) and [ShowColumnHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowColumnHeaders.html) property to `false`.

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
The column headers of the groups can be hidden by using the [TopLevelGroupOptions.ShowColumnHeaders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupOptionsStyleInfo~ShowColumnHeaders.html) property.

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

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img1.jpeg)

The below screenshot shows the grid displaying the columns after hiding the `CategoryID`,

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img2.jpeg)

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

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img3.jpeg)

The hidden row by resizing is showing in the following screen shot

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img4.jpeg)

## Unhide Columns Using Double Click
The hidden columns by resizing can be unhide by performing the double click between the column headers![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img5.jpeg)

### Prevent Column from Hiding 
The columns can be prevent from hiding on resizing by canceling the [ColsHiding](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ColsHiding_EV.html) event.

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
The frozen columns can be added to the GridGroupingControl by using the [FrozenColumn](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor~FrozenColumn.html) collection.

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
The columns can be moved from one position to other by using the drag and drop. The column `CategoryID` is moving by using the drag and drop is shown in the following screenshot![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img6.jpeg)

The grid after moving the column is shown below

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img7.jpeg)

### Programmatic Moving of Columns
The columns visible order can be programmatically changed by using the [VisibleColumns.Move](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridVisibleColumnDescriptorCollection~Move.html) method.

The columns before moving the column is shown below
 
![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img8.jpeg)

The grid after moving the column

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img9.jpeg)

## Unbound Columns
The GridGroupingControl is provide the support for adding the unbound columns which are not bounded to the grid’s data source. This can be achieved by creating the field descriptor and adding to the [UnboundFields](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor~UnboundFields.html) collection.

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
Since the unbound fields are working independently, it has to be manually populated with the [TableDescriptor.QueryValue](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~QueryValue_EV.html) event and store the edited value by using the [TableDescriptor.SaveValue](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~SaveValue_EV.html) events.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableDescriptor.QueryValue += new FieldValueEventHandler(TableDescriptor_QueryValue);
this.gridGroupingControl1.TableDescriptor.SaveValue += new FieldValueEventHandler(TableDescriptor_SaveValue);

//maintain the typed values in unbound column
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

'maintain the typed values in unbound column
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

The unbound field added to the GridGroupingControl is shown in the following screenshot![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img10.jpeg)

## Setting the Column Widths and Row Heights 
The column width and row height of the GridGroupingControl can be set dynamically by resizing using the mouse controller. 

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

### Setting Column Styles 
The styles can be applied for the particular column by using the [Appearance](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor~Appearance.html) properties of the [TableDescriptor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor_members.html).

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
![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img11.jpeg)

## Proportional Column Sizing 
All the columns of the grid can be have the same width that of the equal partition of the total width by setting the [AllowProportionalColumnSizing](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~AllowProportionalColumnSizing.html) to ‘true`.

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
The record id of the current record can be get by using the [Table.CurrentRecord.Id](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTable~CurrentRecord.html) property.

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

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img12.jpeg)

## Getting the Value of the Particular Field from the Record
To get the value of the particular field from the record, use the [Record.GetValue](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridRecord~GetValue.html) method. It will return the value of the given filed.

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

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img13.jpeg)

## Set the value for the particular Field 
The value for the particular field can be set by using the [SetValue](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridRecord~SetValue.html) method.

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
The activation behavior of the current cell can be set by using the [ActivateCurrentCellBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ActivateCurrentCellBehavior.html) property.

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
The row index of the record can be get by using the [GetRowIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridRecord~GetRowIndex.html) method.

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

![](Managing-Records-and-Columns_images/Managing-Records-and-Columns_img14.jpeg)

