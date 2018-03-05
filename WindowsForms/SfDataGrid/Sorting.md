---
layout: post
title: Sorting
description: This section explains about the sorting support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Sorting
SfDataGrid allows to sort the data against one or more columns either in ascending or descending order. When sorting is applied, the rows are rearranged based on sort criteria.
The data can be sorted by clicking on the column headers that needs to be sorted or it can be performed programmatically. Once sorting is applied, the grid will display a sort icon in the respected column headers showing the sort direction.
The sorting can be performed by touching or clicking the column header. This can be enabled by setting [SfDataGrid.AllowSorting](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowSorting.html) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AllowSorting = true;
{% endhighlight %}
{% endtabs %}
Sorting can be enabled or disabled for the particular column by setting the [GridColumnBase.AllowSorting](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~AllowSorting.html) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].AllowSorting = true;
this.sfDataGrid1.Columns["CustomerID"].AllowSorting = false;
{% endhighlight %}
{% endtabs %}

N>The `GridColumn.AllowSorting` takes higher priority than `SfDataGrid.AllowSorting` property.
End users can sort the column by clicking column header cell. Once the columns get sorted, the sort indicator will be displayed on the right side of the column header.
![](Sorting_images/Sorting_Image1.png)

### Adding sort columns

The sorting can be applied programmatically by adding or removing the `SortColumnDescription` in [SfDataGrid.SortColumnDescriptions](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortColumnDescriptions.html) collection.
{% tabs %}
{% highlight c# %}
SortColumnDescription scd = new SortColumnDescription();
scd.ColumnName = "CustomerID";
scd.SortDirection = ListSortDirection.Ascending;

this.sfDataGrid1.SortColumnDescriptions.Add(scd);
{% endhighlight %}
{% endtabs %}
![](Sorting_images/Sorting_Image5.png)

### Removing sort columns
The sorted column data can be unsorted by removing the corresponding `SortColumnDescription` from the `SfDataGrid.SortColumnDescriptions` collection.

{% tabs %}
{% highlight c# %}
var sortColumnDescription = this.sfDataGrid1.SortColumnDescriptions.FirstOrDefault(col => col.ColumnName == "OrderID");
if (sortColumnDescription != null)
{
    this.sfDataGrid1.SortColumnDescriptions.Remove(sortColumnDescription);
}
{% endhighlight %}
{% endtabs %}

### Clear sorting
The sorting can be cleared by clearing the `SfDataGrid.SortColumnDescriptions`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortColumnDescriptions.Clear();
{% endhighlight %}
{% endtabs %}

### Disable sorting
The sorting functionality of the SfDataGrid can be disabled by setting the `AllowSorting` property to false.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AllowSorting = false;
{% endhighlight %}
{% endtabs %}

## Sorting column in double click
By default, column gets sorted when column header clicked. This behavior can be changed to sort the column on double click by setting the [SfDataGrid.SortClickAction](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortClickAction.html) property to `DoubleClick`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortClickAction = SortClickAction.DoubleClick;
{% endhighlight %}
{% endtabs %}

## Sorting order
By default, the data is sorted in ascending or descending order when clicking column header. The data can be rearranged to its initial order from descending on clicking the column header by setting the [SfDataGrid.AllowTriStateSorting](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowTriStateSorting.html) property to `true`.
Following are the sequence of sorting orders when clicking column header,

* Sorts the data in ascending order
* Sorts the data in descending order
* Clears the sorting and records displayed in its initial order

## Multi column sorting
SfDataGrid control allows to sort more than one column, where sorting is applied one column against other columns. To apply sorting on multiple columns, user have to click the column header by pressing the `Ctrl` key.
In the below screen shot, the OrderID column sorted. Then the ProductName column is sorted against the OrderID data by clicking column header by pressing `Ctrl` key. The sorting state of OrderID column is preserved and ProductName column sorted against OrderID column.
![](Sorting_images/Sorting_Image6.png)

### Display sort order
It is also possible to display sorted order of columns in header by setting [SfDataGrid.ShowSortNumbers](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ShowSortNumbers.html) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ShowSortNumbers = true;
{% endhighlight %}
{% endtabs %}
![](Sorting_images/Sorting_Image7.png)

## Custom sort icon
The default sort icon can be changed by using the [SortIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.HeaderStyleInfo~SortIcon.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns[0].HeaderStyle.SortIcon = global::GettingStarted.Properties.Resources.SortIcon;
{% endhighlight %}
{% endtabs %}
![](Sorting_images/Sorting_Image8.png)

## Custom sorting
SfDataGrid allows to sort the columns based on the custom logic. The custom sorting can be applied by adding the `SortComparer` instance to [SfDataGrid.SortComparers](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortComparers.html).
You can implement [ISortDirection](https://help.syncfusion.com/cr/cref_files/wpf/data/Syncfusion.Data.WPF~Syncfusion.Data.ISortDirection.html) interface in comparer to get the sort direction. So you can apply different custom logics for ascending and descending.
Follow the below steps to add custom comparer to sort using custom logic,

### Defining custom comparer
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
{% endtabs %}

### Adding custom comparer
Custom comparer can be added to `SfDataGrid.SortComparers` property. `SortComparers` maintains custom comparers and the custom comparer gets called when corresponding column gets sorted by clicking column header or programmatically.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortComparers.Add(new Syncfusion.Data.SortComparer() { Comparer = new CustomComparer(), PropertyName = "ProductName" });
{% endhighlight %}
{% endtabs %}
While performing the Sorting, the ProductName column sorts the data using custom comparer available in `SfDataGrid.SortComparers`.
![](Sorting_images/Sorting_Image9.png)

### Canceling sorting for a specific column
The sorting for a particular column can be canceled by using the [SortColumnsChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortColumnsChanging_EV.html) event through `Cancel` property.

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
{% endtabs %}

## Customization using Events

### Canceling scrolling after sorting
The scrolling after the sorting to bring SelectedItem in view can be canceled by using the `SortColumnsChanging` event through [CancelScroll](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs~CancelScroll.html) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.SortColumnsChanging += SfDataGrid1_SortColumnsChanging;

private void SfDataGrid1_SortColumnsChanging(object sender, SortColumnsChangingEventArgs e)
{
    e.CancelScroll = true;
}
{% endhighlight %}
{% endtabs %}

### Sorting the underlying collection
`SfDataGrid` sorts the records in UI and maintains in its internal CollectionView and it will not change the order of data in underlying collection.
You can get sorted data from `SfDataGrid.View.Records` when groups is not in place and [SfDataGrid.View.TopLevelGroup.DisplayElements](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Data.DataGridTopLevelGroup~DisplayElements.html) when grouping in place.
If you want to sort the underlying collection when sorting takes place, this can be achieved by handling [SfDataGrid.SortColumnsChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortColumnsChanged_EV.html) event.

{% tabs %}
{% highlight c# %}
this.dataGrid.SortColumnsChanged += dataGrid_SortColumnsChanged;

void dataGrid_SortColumnsChanged(object sender, SortColumnsChangedEventArgs e)
{
    var viewModel = this.DataContext as ViewModel;
    
    IEnumerable<OrderInfo> OrderedSource = viewModel.Orders;
    
    foreach (var sortColumn in this.dataGrid.View.SortDescriptions)
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
{% endtabs %}
