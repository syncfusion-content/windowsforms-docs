---
layout: post
title: Filtering
description: This section explains about the Filtering support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Filtering
Filtering is the process of retrieving the values from the collection which satisfy the specified condition. In the SfDataGrid the filtering can be applied though the UI as well as the programmatic filters. 

## Programmatic Filtering
The programmatic filtering can be applied to the SfDataGrid by using the following methods,
 
* View Filtering
* Column Filtering 

### View Filtering 
The view filtering can be applied by setting the [SfDataGrid.View.Filter](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.CollectionViewAdv~Filter.html) delegate. Once the Filter delegate is set for the view, call the[RefreshFilter](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.ICollectionViewAdv~RefreshFilter.html) method to refresh the view.
Here, `FilterRecords` delegate is assigned to `SfDataGrid.View.Filter` predicate to filter `CustomerID` column. After that, `SfDataGrid.View.RefreshFilter` method is called to refresh the records. If the record satisfies the filter conditions, `true` will be returned. Else `false` is returned.

{% tabs %}
{% highlight c# %}
public bool FilterRecords(object o)
{
    string filterText = "FRANS";
    var item = o as OrderInfo;
    if (item != null)
    {
        if (item.CustomerID.Equals(filterText))
            return true;
    }
    return false;
}

private void btnApplyFilter_Click(object sender, EventArgs e)
{
    sfDataGrid1.View.Filter = FilterRecords;
    sfDataGrid1.View.RefreshFilter();
}
{% endhighlight %}
{% endtabs %}

N>View filters is not supported when the DataSource is DataTable.

### Column Filtering
The column filtering can be achieved by adding the [FilterPredicate](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.FilterPredicate.html) to the [GridColumn.FilterPredicates](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~FilterPredicates.html) property.

{% tabs %}
{% highlight c# %}
// Filter the OrderID column with a value of 10005.
sfDataGrid1.Columns["OrderID"].FilterPredicates.Add(new FilterPredicate() { FilterType = FilterType.Equals, FilterValue = "10005" });
{% endhighlight %}
{% endtabs %}

### Filter Behavior
The [FilterBehavior](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.FilterBehavior.html) property is used to specify whether to consider the [FilterValue](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.FilterPredicate~FilterValue.html) as the string or specific data type.

* **StringTyped** - Records are filtered without considering the type and it takes FilterValue type as string.
* **StronglyTyped** - Records are filtered by considering the FilterValue underlying type.

N>When the[DataTable](https://msdn.microsoft.com/en-us/library/system.data.datatable.aspx) is used as a datasource, [IsCaseSensitive](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.FilterPredicate~IsCaseSensitive.html) property in FilterPredicate is not applicable, since `DataTable` does not support case sensitive filtering.

### Clear Filtering
The Filters applied to the SfDataGrid can be removed by clearing the `FilterPredicates` added for the columns. This can be achieved by using the following methods, 

* [SfDataGrid.ClearFilters](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ClearFilters.html) - Clears filters for all the columns programmatically.
* [SfDataGrid.ClearFilter(String columnName)](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ClearFilter(String).html) - Clears the filter for particular column that has the columnName as MappingName.
* [SfDataGrid.ClearFilter(GridColumn column)](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ClearFilter(GridColumn).html) - Clears the filter for particular column alone.

{% tabs %}
{% highlight c# %}
sfDataGrid1.ClearFilters();
sfDataGrid1.ClearFilter("OrderID");
sfDataGrid1.ClearFilter(sfDataGrid1.Columns[0]);
{% endhighlight %}
{% endtabs %}

## UI Filtering 
SfDataGrid provides excel like filtering UI and also advanced filter UI to filter the data easily. UI filtering can be enabled by setting [SfDataGrid.AllowFiltering](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowFiltering.html) property to `true`. This allows to open the filter UI by clicking on the filter icon in column header to filter the records.
The filtering can be enabled or disabled for the particular column by setting [GridColumn.AllowFiltering](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~AllowFiltering.html) property.

{% tabs %}
{% highlight c# %}
// Enable the UI filtering for the SfDataGrid.
this.sfDataGrid1.AllowFiltering = true;  

// Enable the UI filtering for the OrderID column.
this.sfDataGrid1.Columns["OrderID"].AllowFiltering = true;
{% endhighlight %}
{% endtabs %}

N>`GridColumn.AllowFiltering` has higher priority than `SfDataGrid.AllowFiltering` property.

### Built-in UI Views
The SfDataGrid provides the following types of Filter popup modes, 

* Checkbox Filter - Provides excel like filter interface with list of check box’s.
* Advanced Filter - Provides advanced filter options to filter the data.
* Both - Both Checkbox Filter and Advanced Filter are loaded while opening the filter pop-up. 
By default, the filter popup mode of the column is set as `Both`. The checkbox and the advanced filter UI’s can be switched by using the Advanced Filter button.

**Checkbox Filtering UI**

![](Filtering_images/Filtering_img1.png)

**Advanced Filtering UI**

![](Filtering_images/Filtering_img2.png)

### Changing Filter UI View for Grid
The Filter popup mode for the SfDataGrid can be set by using the [SfDataGrid.FilterPopupMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterPopupMode.html) property.

{% tabs %}
{% highlight c# %}
// Sets the Advanced filter mode for the SfDataGrid.
this.sfDataGrid1.FilterPopupMode = FilterPopupMode.AdvancedFilter;

// Sets the CheckBox filter mode for the SfDataGrid.
this.sfDataGrid1.FilterPopupMode = FilterPopupMode.CheckBoxFilter;

//Sets the Both filter mode for the SfDataGrid.
this.sfDataGrid1.FilterPopupMode = FilterPopupMode.Both;
{% endhighlight %}
{% endtabs %}

### Changing Filter UI View for Column
The Filter popup mode for the column can be set by using the [GridColumn.FilterPopupMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~FilterPopupMode.html) property.

{% tabs %}
{% highlight c# %}
// Sets the advanced filter popup mode for the column.
sfDataGrid1.Columns["OrderID"].FilterPopupMode = FilterPopupMode.AdvancedFilter;

// Sets the checkbox filter popup mode for the column.
sfDataGrid1.Columns["OrderID"].FilterPopupMode = FilterPopupMode.CheckBoxFilter;

// Sets the Both advanced and checkbox filter popup mode for the column.
sfDataGrid1.Columns["OrderID"].FilterPopupMode = FilterPopupMode.Both;
{% endhighlight %}
{% endtabs %}

### Changing Filter UI using Event
The column `FilterPopupMode` can also be changed by using the [FilterPopupShowing](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterPopupShowing_EV.html) event. This even will be raised on opening the filter popup.

{% tabs %}
{% highlight c# %}
sfDataGrid.FilterPopupShowing += sfDataGrid_FilterPopupShowing;
void sfDataGrid_FilterPopupShowing(object sender, FilterPopupShowingEventArgs e)
{
    if(e.Column.MappingName == "OrderID")
    {
        e.Control.FilterPopupMode = FilterPopupMode.AdvancedFilter;
    }
}
{% endhighlight %}
{% endtabs %}

## Checkbox Filtering
The Checkbox filtering is like the Excel like filter popup. Which shows the checked list box of the unique items with the search textbox. 
The items which are in the checked state will be visible in the view other items will be filtered out of the view. 

{% tabs %}
{% highlight c# %}
// Sets the CheckBox filter mode for the SfDataGrid.
this.sfDataGrid1.FilterPopupMode = FilterPopupMode.CheckBoxFilter;

// Sets the checkbox filter popup mode for the column.
sfDataGrid1.Columns["OrderID"].FilterPopupMode = FilterPopupMode.CheckBoxFilter;
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img3.png)

![](Filtering_images/Filtering_img4.png)

### Instant Filtering
By default, filters are applied to the columns when OK button is clicked in UI filtering. This can be change to update the filters immediately whenever update in filter popup by setting the [ImmediateUpdateColumnFilter](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~ImmediateUpdateColumnFilter.html) property as true for the corresponding column.
This will loads the Checkbox filter popup with the `Done` button to close the filter popup.
{% tabs %}
{% highlight c# %}
// Enable immediate filtering for the column.
this.sfDataGrid1.Columns["CustomerID"].ImmediateUpdateColumnFilter = true;
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img5.png)

### Filtering null values 
The null values of the column can be filtered by using the ` (Blanks) ` option of the checked list box. This can be enabled for the column by setting the [AllowBlankFilters](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~AllowBlankFilters.html) property to `true`.

{% tabs %}
{% highlight c# %}
// Enable blank filters for the column.
this.sfDataGrid1.Columns["CustomerID"].AllowBlankFilters = true;
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img6.png)

N>If there is no null values exist in the column, the `(Blanks)` option will not be listed in the CheckedListBox.

### Filtering Based on Display Text
By default, the filtering is applied based on the actual value of the column. This can be changed to filter based on the display text by setting the [FilterMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~FilterMode.html) value as `ColumnFilter.DisplayText`.
In the below screenshot, first and second records have same display value for OrderDate column but both have different actual value (E.g. 2232018 12:00:00 AM and 2232018 6:30:00 PM). 

![](Filtering_images/Filtering_img7.png)

By default, based on the actual value only filter will be applied. So it will consider both values as different. And while opening filter popup, both values will be displayed like below.

![](Filtering_images/Filtering_img8.png)

If the `FilterMode` is set as DisplayText, display value only will be considered for filtering. So filter popup will be shown like below.

![](Filtering_images/Filtering_img9.png)

After filtering, both records having the same OrderDate display value will be displayed in view.

![](Filtering_images/Filtering_img10.png)

## Advanced Filtering
Advanced filter UI provides multiple filter options to filter the data easily. Filter menu options are loaded based on advanced filter type by automatically detecting the underlying date type.
Below are the built-in filter types supported.

* **Text Filters** – Loads various menu options to filter the display text effectively.
* **Number Filters** – Loads various menu options to filter the numeric data.
* **Date Filters** – Loads various menu options and DatePicker to filter DateTime type column.

<table>
<tr>
<th>
Text Filter
</th>
<th>
Number Filter
</th>
<th>
Date Filter
</th>
</tr>
<tr>
<td>
When the string value is bounded to the 
GridColumn or the items source is dynamic, then `TextFilter` are loaded in advanced filter.
</td>
<td>
When integer, double, short, decimal, byte or long are bound to the GridColumn then `Number Filters` are loaded in advanced filter.
</td>
<td>
When the DateTime type value is bound to the GridColumn, then `Date Filter` is loaded in advanced filter.
</td>
</tr>
<tr>
<td>
<img src="Filtering_images/Filtering_img11.png"/>
</td>
<td>
<img src="Filtering_images/Filtering_img12.png"/>
</td>
<td>
<img src="Filtering_images/Filtering_img13.png"/>
</td>
</tr>
<tr>
<td>
<b>Filter Menu Options</b>
<ol>
<li>Equals</li>
<li>Not Equal</li>
<li>Begins With</li>
<li>Ends With</li>
<li>Contains</li>
<li>Empty</li>
<li>Not Empty</li>
<li>Null</li>
<li>Not Null</li>
</ol>
</td>
<td>
<b>Filter Menu Options</b>
<ol>
<li>Equals</li>
<li>Not Equal</li>
<li>Null</li>
<li>Not Null</li>
<li>Less Than</li>
<li>Less Than or Equal</li>
<li>Greater Than</li>
<li>Greater Than or Equal</li>
</ol>
</td>
<td>
<b>Filter Menu Options</b>
<ol>
<li>Equals</li>
<li>Not Equal</li>
<li>Before</li>
<li>Before Or Equal</li>
<li>After</li>
<li>After Or Equal</li>
<li>Null</li>
<li>Not Null</li>
</ol>
</td>
</tr>
</table>

N> 
1. Null and Not Null options are available only when `AllowBlankFilters` is set to `true`.
2. If the column is `GridUnboundColumn`, then Text Filter will be loaded.

### Instant Filtering
By default the advanced filtering will be applied while clicking the OK button after specifying the suitable filter value. This can be changed to update filtering immediately on updating the filter popup by setting the [ImmediateUpdateColumnFilter](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~ImmediateUpdateColumnFilter.html) property to `true` for the column.

![](Filtering_images/Filtering_img14.png)

### Filtering null values 
The null values can be filtered by using the `Null` and `Not Null` filter conditions from the advanced filter. 

![](Filtering_images/Filtering_img15.png)

### Case Sensitive Filtering
The case sensitive filtering can be enabled for the column by using the casing buttons available in the advanced filter UI. If the button is active the filtering will be applied with the case sensitive with the filter text.

![](Filtering_images/Filtering_img16.png)

## Customization using Events

### Loading Text Filter for number or date column
To load the Text Filter for the column that has number or date value as underlying type, set the `FilterBehavior` property of the GridColumn as `StringTyped`. This loads the Text Filters instead of Number or Date Filters.

{% tabs %}
{% highlight c# %}
//To load the text filter instead of date filter.
sfDataGrid.Columns["OrderDate"].FilterBehavior = FilterBehavior.StringTyped;
{% endhighlight %}
{% endtabs %}

### Customizing Filter Predicates
The filter predicated can be customized by using the [FilterChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterChanging_EV.html) event. This event will be raised while applying the filter using the filter control.
{% tabs %}
{% highlight c# %}
sfDataGrid.FilterChanging +=sfDataGrid_FilterChanging;
void sfDataGrid_FilterChanging(object sender, FilterChangingEventArgs e)
{
    if (e.FilterPredicates == null || e.Column.MappingName != "CustomerID" || e.FilterPredicates.Count == 0)
        return;

    if (e.FilterPredicates[0].FilterValue.Equals("ALFKI"))
        e.FilterPredicates[0].FilterValue = "MEREP";          
}
{% endhighlight %}
{% endtabs %}

### Getting the Filtered Records
The filtered records can be get by using the [FilterChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterChanged_EV.html) event. This event will be fired after performing the filtering in SfDataGrid.
{% tabs %}
{% highlight c# %}
sfDataGrid.FilterChanged +=sfDataGrid_FilterChanged;
void sfDataGrid_FilterChanged(object sender, FilterChangedEventArgs e)
{
    //OrderInfo is Model Class 
    ObservableCollection<OrderInfo> order = new ObservableCollection<OrderInfo>();

    // Get filtered records
    var records = (sender as SfDataGrid).View.Records;

    foreach (RecordEntry record in records)
        order.Add(record.Data as OrderInfo);
}
{% endhighlight %}
{% endtabs %}

### Displaying Custom filter control for filtering
The custom filter control can be loaded instead of the default filter control by handling the [FilterPopupShowing](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterPopupShowing_EV.html) event.
{% tabs %}
{% highlight c# %}
public class CustomFilterControl : FilterControlBase
{
    SfDataGrid grid;
    public string MappingName { get; set; }

    public CustomFilterControl(SfDataGrid grid)
        : base()
    {
        this.grid = grid;
        this.ShowSortPanel = false;
    }

    protected override void OnOKButtonClicked(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(MappingName))
        {
            var column = grid.Columns[MappingName];
            column.FilterPredicates.Clear();
            foreach (var item in this.CheckListBox.CheckedItems)
            {
                FilterPredicate predicate = new FilterPredicate
                {
                    FilterBehavior = Syncfusion.Data.FilterBehavior.StringTyped,
                    PredicateType = PredicateType.Or,
                    FilterMode = ColumnFilter.DisplayText,
                    FilterType = FilterType.Contains,
                    FilterValue = item.ToString(),
                    IsCaseSensitive = false

                };

                column.FilterPredicates.Add(predicate);
            }
        }

        base.OnOKButtonClicked(sender, e);
    }
}
{% endhighlight %}
{% endtabs %}

The custom filter control can be loaded in the SfDataGrid by using the `FilterPopupShowing` event. 
{% tabs %}
{% highlight c# %}
void sfDataGrid_FilterPopupShowing(object sender, FilterPopupShowingEventArgs e)
{
    if (e.Column.MappingName == "CustomerID")
    {
        e.Cancel = true;
        List<string> items = new List<string>();
        items.Add("MEREP");
        items.Add("FOLKO");
        items.Add("ALFKI");
        var customFiltercontrol = new CustomFilterControl(this.sfDataGrid);
        customFiltercontrol.DataSource = items;
        customFiltercontrol.MappingName = e.Column.MappingName;
        customFiltercontrol.Show(this.sfDataGrid, e.Location);
    }
}
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img17.png)

## Appearance

### Hiding sort options 
The sort options of the filter control can be hidden by setting the [ShowSortPanel](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridFiltering.DataGridFilterControl~ShowSortPanel.html) property to `false` in the [FilterPopupShowing](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~FilterPopupShowing_EV.html) event.

{% tabs %}
{% highlight c# %}
sfDataGrid.FilterPopupShowing +=sfDataGrid_FilterPopupShowing;
void sfDataGrid_FilterPopupShowing(object sender, FilterPopupShowingEventArgs e)
{
    //Hide the sorting options of the filter control
    e.Control.ShowSortPanel = false;            
}
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img18.png)

### Setting custom filter/filtered Icons in column header
The custom filter icon or the filtered icons can be set to the column header by using the [HeaderStyle.FilterIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.HeaderStyleInfo~FilterIcon.html) and [HeaderStyle.FilteredIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.HeaderStyleInfo~FilteredIcon.html) property.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns[1].HeaderStyle.FilterIcon = new Bitmap(Image.FromFile(@"..\..\FilterIcon.png"));
sfDataGrid.Columns[0].HeaderStyle.FilteredIcon = new Bitmap(Image.FromFile(@"..\..\FilteredIcon.png"));
{% endhighlight %}
{% endtabs %}

![](Filtering_images/Filtering_img19.png)

