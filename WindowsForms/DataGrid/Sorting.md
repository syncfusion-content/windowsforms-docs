---
layout: post
title: Sorting in Windows Forms DataGrid control | Syncfusion
description: Learn here all about sorting feature of Syncfusion Windows Forms DataGrid (SfDataGrid) control and more.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Sorting in Windows Forms DataGrid (SfDataGrid)
[Windows Forms DataGrid](https://www.syncfusion.com/winforms-ui-controls/datagrid) (SfDataGrid) allows to sort the data against one or more columns either in ascending or descending order. When sorting is applied, the rows are rearranged based on sort criteria.
The data can be sorted by clicking on the column headers that needs to be sorted or it can be performed programmatically. Once sorting is applied, the grid will display a sort icon in the respected column headers showing the sort direction.
The sorting can be performed by touching or clicking the column header. This can be enabled by setting [SfDataGrid.AllowSorting](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_AllowSorting) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AllowSorting = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.AllowSorting = True
{% endhighlight %}
{% endtabs %}
Sorting can be enabled or disabled for the particular column by setting the [GridColumnBase.AllowSorting](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_AllowSorting) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].AllowSorting = true;
this.sfDataGrid1.Columns["CustomerID"].AllowSorting = false;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderID").AllowSorting = True
Me.sfDataGrid1.Columns("CustomerID").AllowSorting = False
{% endhighlight %}
{% endtabs %}

N>The `GridColumn.AllowSorting` takes higher priority than `SfDataGrid.AllowSorting` property.
End users can sort the column by clicking column header cell. Once the columns get sorted, the sort indicator will be displayed on the right side of the column header.

![UI Sorting in SfDataGrid windowsforms](Sorting_images/Sorting_Image1.png)

## Adding Sort Columns

The sorting can be applied programmatically by adding or removing the `SortColumnDescription` in [SfDataGrid.SortColumnDescriptions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_SortColumnDescriptions) collection.
{% tabs %}
{% highlight c# %}
SortColumnDescription sortColumnDescription = new SortColumnDescription();
sortColumnDescription.ColumnName = "CustomerID";
sortColumnDescription.SortDirection = ListSortDirection.Ascending;

this.sfDataGrid1.SortColumnDescriptions.Add(sortColumnDescription);
{% endhighlight %}
{% highlight vb %}
Dim sortColumnDescription As New SortColumnDescription()
sortColumnDescription.ColumnName = "CustomerID"
sortColumnDescription.SortDirection = ListSortDirection.Ascending

Me.sfDataGrid1.SortColumnDescriptions.Add(sortColumnDescription)
{% endhighlight %}
{% endtabs %}

![Programmatic sorting in SfDataGrid WinForms](Sorting_images/Sorting_Image5.png)

## Removing Sort Columns
The sorted column data can be unsorted by removing the corresponding `SortColumnDescription` from the `SfDataGrid.SortColumnDescriptions` collection.

{% tabs %}
{% highlight c# %}
var sortColumnDescription = this.sfDataGrid1.SortColumnDescriptions.FirstOrDefault(col => col.ColumnName == "OrderID");
if (sortColumnDescription != null)
{
    this.sfDataGrid1.SortColumnDescriptions.Remove(sortColumnDescription);
}
{% endhighlight %}
{% highlight vb %}
Dim sortColumnDescription = Me.sfDataGrid1.SortColumnDescriptions.FirstOrDefault(Function(col) col.ColumnName = "OrderID")
If sortColumnDescription IsNot Nothing Then
	Me.sfDataGrid1.SortColumnDescriptions.Remove(sortColumnDescription)
End If
{% endhighlight %}
{% endtabs %}

## Clear Sorting
The sorting can be cleared by clearing the `SfDataGrid.SortColumnDescriptions`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortColumnDescriptions.Clear();
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SortColumnDescriptions.Clear()
{% endhighlight %}
{% endtabs %}

## Disable Sorting
The sorting functionality of the SfDataGrid can be disabled by setting the `AllowSorting` property to false.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AllowSorting = false;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.AllowSorting = False
{% endhighlight %}
{% endtabs %}

## Sorting Column in Double Click
By default, column gets sorted when column header clicked. This behavior can be changed to sort the column on double click by setting the [SfDataGrid.SortClickAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_SortClickAction) property to `DoubleClick`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortClickAction = SortClickAction.DoubleClick;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SortClickAction = SortClickAction.DoubleClick
{% endhighlight %}
{% endtabs %}

## Sorting Order
By default, the data is sorted in ascending or descending order when clicking column header. The data can be rearranged to its initial order from descending on clicking the column header by setting the [SfDataGrid.AllowTriStateSorting](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_AllowTriStateSorting) property to `true`.
Following are the sequence of sorting orders when clicking column header,

* Sorts the data in ascending order
* Sorts the data in descending order
* Clears the sorting and records displayed in its initial order

### Retrieve the records as displayed in the view 

After sorting, the records in the view can be retrieved in the same order as displayed in the view by using the [SfDataGrid.View.Records](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.CollectionViewAdv.html#Syncfusion_Data_CollectionViewAdv_Records) collection.

{% tabs %}
{% highlight c# %}
foreach (var record in sfDataGrid.View.Records)
{
    // Do your customizations here.
}
{% endhighlight %}
{% highlight vb %}
For Each record In sfDataGrid.View.Records
    ' Do your customizations here.
Next record
{% endhighlight %}
{% endtabs %}

## Multi Column Sorting
SfDataGrid control allows to sort more than one column, where sorting is applied one column against other columns. To apply sorting on multiple columns, user have to click the column header by pressing the `Ctrl` key.
In the below screen shot, the OrderID column sorted. Then the ProductName column is sorted against the OrderID data by clicking column header by pressing `Ctrl` key. The sorting state of OrderID column is preserved and ProductName column sorted against OrderID column.
![Multi column sorting in SfDataGrid WinForms](Sorting_images/Sorting_Image6.png)

### Display Sort Order
It is also possible to display sorted order of columns in header by setting [SfDataGrid.ShowSortNumbers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowSortNumbers) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ShowSortNumbers = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ShowSortNumbers = True
{% endhighlight %}
{% endtabs %}
![Display the SortNumbers in SfDataGrid column header](Sorting_images/Sorting_Image7.png)

## Custom Sort Icon
The default sort icon can be changed by using the [SortIcon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.HeaderStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_HeaderStyleInfo_SortIcon) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns[0].HeaderStyle.SortIcon = global::GettingStarted.Properties.Resources.SortIcon;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns(0).HeaderStyle.SortIcon = Global.GettingStarted.Properties.Resources.SortIcon
{% endhighlight %}
{% endtabs %}
![SfDataGrid with custom sort icon in windowsforms](Sorting_images/Sorting_Image8.png)

## Custom Sorting
SfDataGrid allows to sort the columns based on the custom logic. The custom sorting can be applied by adding the `SortComparer` instance to [SfDataGrid.SortComparers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_SortComparers).
You can implement [ISortDirection](https://help.syncfusion.com/cr/wpf/Syncfusion.Data.ISortDirection.html) interface in comparer to get the sort direction. So you can apply different custom logics for ascending and descending.
Follow the below steps to add custom comparer to sort using custom logic,

### Defining Custom Comparer
In the below code snippet, ProductName column is compared based on its string length, instead of default string comparison.
{% tabs %}
{% highlight c# %}
public class CustomComparer:IComparer<object>,ISortDirection
{
    public int Compare(object x, object y)
    {
        int nameX;
        int nameY;

        //While data object passed to comparer
        if (x.GetType() == typeof(OrderInfo))
        {
            nameX = ((OrderInfo)x).ProductName.Length;
            nameY = ((OrderInfo)y).ProductName.Length;
        }
        
        //While sorting groups
        else if (x.GetType() == typeof(Group))
        {
            //Calculating the group key length
            nameX = ((Group)x).Key.ToString().Length;
            nameY = ((Group)y).Key.ToString().Length;
        }

        else
        {
            nameX = x.ToString().Length;
            nameY = y.ToString().Length;
        }

        //returns the comparison result based in SortDirection.
        if (nameX.CompareTo(nameY) > 0)
            return SortDirection == ListSortDirection.Ascending ? 1 : -1;
            
        else if (nameX.CompareTo(nameY) == -1)
            return SortDirection == ListSortDirection.Ascending ? -1 : 1;
            
        else
            return 0;
    }
    private ListSortDirection _SortDirection;
    
    /// <summary>
    /// Gets or sets the property that denotes the sort direction.
    /// </summary>
    /// <remarks>
    /// SortDirection gets updated only when sorting the groups. For other cases, SortDirection is always ascending.
    /// </remarks>
    public ListSortDirection SortDirection
    {
        get { return _SortDirection; }
        set { _SortDirection = value; }
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class CustomComparer
	Implements IComparer(Of Object), ISortDirection
	Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer
		Dim nameX As Integer
		Dim nameY As Integer

		'While data object passed to comparer
		If x.GetType() Is GetType(OrderInfo) Then
			nameX = (CType(x, OrderInfo)).ProductName.Length
			nameY = (CType(y, OrderInfo)).ProductName.Length

		'While sorting groups
		ElseIf x.GetType() Is GetType(Group) Then
			'Calculating the group key length
			nameX = (CType(x, Group)).Key.ToString().Length
			nameY = (CType(y, Group)).Key.ToString().Length

		Else
			nameX = x.ToString().Length
			nameY = y.ToString().Length
		End If

		'returns the comparison result based in SortDirection.
		If nameX.CompareTo(nameY) > 0 Then
			Return If(SortDirection = ListSortDirection.Ascending, 1, -1)

		ElseIf nameX.CompareTo(nameY) = -1 Then
			Return If(SortDirection = ListSortDirection.Ascending, -1, 1)

		Else
			Return 0
		End If
	End Function


	Private _SortDirection As ListSortDirection

	''' <summary>
	''' Gets or sets the property that denotes the sort direction.
	''' </summary>
	''' <remarks>
	''' SortDirection gets updated only when sorting the groups. For other cases, SortDirection is always ascending.
	''' </remarks>
	Public Property SortDirection() As ListSortDirection
		Get
			Return _SortDirection
		End Get
		Set(ByVal value As ListSortDirection)
			_SortDirection = value
		End Set
	End Property
End Class
{% endhighlight %}
{% endtabs %}

### Adding Custom Comparer
Custom comparer can be added to `SfDataGrid.SortComparers` property. `SortComparers` maintains custom comparers and the custom comparer gets called when corresponding column gets sorted by clicking column header or programmatically.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortComparers.Add(new Syncfusion.Data.SortComparer() { Comparer = new CustomComparer(), PropertyName = "ProductName" });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.SortComparers.Add(New Syncfusion.Data.SortComparer() With {.Comparer = New CustomComparer(), .PropertyName = "ProductName"})
{% endhighlight %}
{% endtabs %}
While performing the Sorting, the ProductName column sorts the data using custom comparer available in `SfDataGrid.SortComparers`.
![SfDataGrid sorting with custom compararer in windowsforms](Sorting_images/Sorting_Image9.png)

### Canceling Sorting for a Specific Column
The sorting for a particular column can be canceled by using the [SortColumnsChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event through `Cancel` property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortColumnsChanging += SfDataGrid1_SortColumnsChanging;

private void SfDataGrid1_SortColumnsChanging(object sender, SortColumnsChangingEventArgs e)
{
    if (e.AddedItems[0].ColumnName == "OrderID")
    {
        e.Cancel = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.SortColumnsChanging, AddressOf SfDataGrid1_SortColumnsChanging

Private Sub SfDataGrid1_SortColumnsChanging(ByVal sender As Object, ByVal e As SortColumnsChangingEventArgs)
	If e.AddedItems(0).ColumnName = "OrderID" Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

## Customization using Events

### Canceling Scrolling after Sorting
The scrolling after the sorting to bring SelectedItem in view can be canceled by using the `SortColumnsChanging` event through [CancelScroll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs.html#Syncfusion_WinForms_DataGrid_Events_SortColumnsChangingEventArgs_CancelScroll) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortColumnsChanging += SfDataGrid1_SortColumnsChanging;

private void SfDataGrid1_SortColumnsChanging(object sender, SortColumnsChangingEventArgs e)
{
    e.CancelScroll = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.SortColumnsChanging, AddressOf SfDataGrid1_SortColumnsChanging

Private Sub SfDataGrid1_SortColumnsChanging(ByVal sender As Object, ByVal e As SortColumnsChangingEventArgs)
	e.CancelScroll = True
End Sub
{% endhighlight %}
{% endtabs %}

### Sorting the Underlying Collection
`SfDataGrid` sorts the records in UI and maintains in its internal CollectionView and it will not change the order of data in underlying collection.
You can get sorted data from `SfDataGrid.View.Records` when groups is not in place and [SfDataGrid.View.TopLevelGroup.DisplayElements](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.TopLevelGroup.html#Syncfusion_Data_TopLevelGroup_DisplayElements) when grouping in place.
If you want to sort the underlying collection when sorting takes place, this can be achieved by handling [SfDataGrid.SortColumnsChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}

ViewModel viewModel = new ViewModel();
this.DataGrid.SortColumnsChanged += DataGrid_SortColumnsChanged;

private void DataGrid_SortColumnsChanged(object sender, Syncfusion.WinForms.DataGrid.Events.SortColumnsChangedEventArgs e)
{
    IEnumerable<OrderInfo> OrderedSource = viewModel.Orders;
    
    foreach (var sortColumn in this.DataGrid.View.SortDescriptions)
    {
        var columnName = sortColumn.PropertyName;
        
        if (sortColumn.Direction == ListSortDirection.Ascending)
            OrderedSource = OrderedSource.OrderBy(source => GetOrderSource(source, columnName));
        else
            OrderedSource = OrderedSource.OrderByDescending(source => GetOrderSource(source, columnName));
    }            
}

private object GetOrderSource(OrderInfo source, string name)
{
    var propInfo = source.GetType().GetRuntimeProperty(name);
    
    if (propInfo != null)
    
        // get the current sort column value
        return propInfo.GetValue(source);
        
    return null;
}
{% endhighlight %}
{% highlight vb %}
Dim viewModel As ViewModel = New ViewModel()
AddHandler Me.DataGrid.SortColumnsChanged, AddressOf DataGrid_SortColumnsChanged

Private Sub DataGrid_SortColumnsChanged(ByVal sender As Object, ByVal e As SortColumnsChangedEventArgs)
    Dim OrderedSource As IEnumerable(Of OrderInfo) = viewModel.Orders

    For Each sortColumn In Me.DataGrid.View.SortDescriptions
        Dim columnName = sortColumn.PropertyName

        If sortColumn.Direction = ListSortDirection.Ascending Then
            OrderedSource = OrderedSource.OrderBy(Function(source) GetOrderSource(source, columnName))

        Else
            OrderedSource = OrderedSource.OrderByDescending(Function(source) GetOrderSource(source, columnName))
        End If
    Next sortColumn
End Sub

Private Function GetOrderSource(ByVal source As OrderInfo, ByVal name As String) As Object
    Dim propInfo = source.GetType().GetRuntimeProperty(name)

    If propInfo IsNot Nothing Then

        ' get the current sort column value
        Return propInfo.GetValue(source)
    End If

    Return Nothing
End Function

{% endhighlight %}
{% endtabs %}
