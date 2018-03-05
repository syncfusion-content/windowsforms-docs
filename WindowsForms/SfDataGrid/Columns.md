---
layout: post
title: Columns
description: This section explains about the columns in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Columns
SfDataGrid allows to add or remove columns using [SfDataGrid.Columns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~Columns.html) property. The columns to be added can be chosen from built-in column types or own column can be created and add to the `SfDataGrid.Columns`.
Below are the built-in column types supported in SfDataGrid. Each column has its own properties to handle different types of data.
<table>
<tr>
<td>
{{'**Column Type**'| markdownify }}
</td>
<td>
{{'        **Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
{{'[GridTextColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn.html)'| markdownify }}        
</td>
<td>
Use to display the string data
</td>
</tr>
<tr>
<td>
{{'[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html)'| markdownify }}
</td>
<td>
Use to display the numeric data
</td>
</tr>
<tr>
<td>
{{'[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html)'| markdownify }}
</td>
<td>
Use to display the date time value
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html)'| markdownify }}        
</td>
<td>
Use to display the Boolean type data
</td>
</tr>
<tr>
<td>
{{'[GridImageColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn.html)'| markdownify }}
</td>
<td>
Use to display the image in each row
</td>
</tr>
<tr>
<td>
{{'[GridHyperlinkColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html)'| markdownify }}
</td>
<td>
Use to display the Uri data
</td>
</tr>
<tr>
<td>
{{'[GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html)'| markdownify }}
</td>
<td>
Use to display button in each row
</td>
</tr>
</table>

## Defining Columns

SfDataGrid provides support for creating columns automatically or manually. Below sections explains both the ways,
SfDataGrid provides support for generating 

1. Automatically generating columns
2. Manually defining columns

### Automatically generating columns

The automatic column generation based on properties of data object can be enabled or disabled by setting [SfDataGrid.AutoGenerateColumns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGenerateColumns.html). Default value is `true`. The columns will be automatically generated based on its column type from the underlying data source.
<table>
<tr>
<td>
{{'**Data Type**'| markdownify }}
</td>
<td>
{{'        **Column**'| markdownify }}
</td>
</tr>
<tr>
<td>
string, object, dynamic
</td>
<td>
GridTextColumn
</td>
</tr>
<tr>
<td>
int, float, double, decimal and also it’s nullable        
</td>
<td>
GridNumericColumn
</td>
</tr>
<tr>
<td>
DateTime, DateTimeOffset and also it’s nullable
</td>
<td>
GridDateTimeColumn
</td>
</tr>
<tr>
<td>
Uri, Uri?        
</td>
<td>
GridHyperLinkColumn
</td>
</tr>
<tr>
<td>
bool, bool?        
</td>
<td>
GridCheckBoxColumn
</td>
</tr>
</table>

N> The order of columns in the collection will determine the order of that they will appear in SfDataGrid.

#### AutoGenerateColumns with different modes

The column auto generation is controlled using the [SfDataGrid.AutoGenerateColumnsMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGenerateColumnsMode.html) property. Default value is `AutoGenerateColumnsMode.Reset`.
The `SfDataGrid.AutoGenerateColumnsMode` includes the following modes.
<table>
<tr>
<td>
{{'**Mode**'| markdownify }}
</td>
<td>
{{'**Behavior**'| markdownify }}
</td>
<td>
{{'**When DataSource changed**'| markdownify }}
</td>
</tr>
<tr>
<td>
None
</td>
<td>
Generates the columns based on the explicit column definition.
</td>
<td>
Keeps old columns in DataGrid.Columns collection.
</td>
</tr>
<tr>
<td>
Reset
</td>
<td>
Generates the columns based on the properties defined in the underlying data object and explicit column definition.
</td>
<td>
Keeps the columns added manually. Clears the columns which are auto generated before and creates new columns based on new DataSource.
</td>
</tr>
<tr>
<td>
ResetAll
</td>
<td>
Generates the columns based on the properties defined in the underlying data object.
</td>
<td>
Clear all the columns including the columns defined manually and creates new columns based on new DataSource.
</td>
</tr>
<tr>
<td>
RetainOld
</td>
<td>
Generates the columns based on the properties defined in the underlying data object, when the SfDataGrid doesn’t have an explicit column definition.
</td>
<td>
The same columns will be maintained when changing DataSource also. So sorting and grouping settings will be maintained.
</td>
</tr>
<tr>
<td>
SmartReset
</td>
<td>
Generates the columns and retains data operation based on the properties defined in underlying data object.
</td>
<td>
Keeps the columns which matches in the current data source and the data operation performed in it.
</td>
</tr>
</table>

#### Customize auto-generated columns

The auto generated column can be customized by handling the [AutoGeneratingColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGeneratingColumn_EV.html) event. `AutoGeneratingColumn` event occurs when the column is auto generated.
[AutoGeneratingColumnArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.AutoGeneratingColumnArgs.html) provides the information about the auto-generated column to the `AutoGeneratingColumn` event. [AutoGeneratingColumnArgs.Column](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.AutoGeneratingColumnArgs~Column.html) property returns the auto-generated column.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AutoGeneratingColumn += SfDataGrid1_AutoGeneratingColumn;

private void SfDataGrid1_AutoGeneratingColumn(object sender, AutoGeneratingColumnArgs e)
{
    e.Column.HeaderText = "AutoGenerated";
    e.Column.HeaderStyle.BackColor = Color.LightSkyBlue;
}

{% endhighlight %}
{% endtabs %}

#### Cancel column generation for particular property

The auto generation of the specific column can be cancelled by handling the [AutoGeneratingColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGeneratingColumn_EV.html) event. The column generation can be cancelled by setting the `Cancel` property to `true`.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AutoGeneratingColumn += SfDataGrid1_AutoGeneratingColumn;
private void SfDataGrid1_AutoGeneratingColumn(object sender, AutoGeneratingColumnArgs e)
{
     if (e.Column.MappingName == "OrderID")
        e.Cancel = true;
}
{% endhighlight %}
{% endtabs %}

#### Changing column type

The type of column adding to SfDataGrid can be changed by setting the instance of column you want to add in [AutoGeneratingColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGeneratingColumn_EV.html) event.
In the below code, column type for `UnitPrice` property is changed to `GridTextColumn` by setting instance of GridTextColumn to `Column` property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AutoGeneratingColumn += SfDataGrid1_AutoGeneratingColumn;


private void SfDataGrid1_AutoGeneratingColumn(object sender, AutoGeneratingColumnArgs e)
        {
            if (e.Column.MappingName == "UnitPrice")
            {

                if (e.Column is GridNumericColumn)
                {
                    e.Column = new GridTextColumn() { MappingName = "UnitPrice", HeaderText = "Unit    Price" };
                }
            }
        }
{% endhighlight %}
{% endtabs %}

#### Changing property settings

The properties of the auto generating column can be changed by handling the [AutoGeneratingColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGeneratingColumn_EV.html) event.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AutoGeneratingColumn += SfDataGrid1_AutoGeneratingColumn;

private void SfDataGrid1_AutoGeneratingColumn(object sender, AutoGeneratingColumnArgs e)
{
    if (e.Column.MappingName == "OrderID")
    {
        e.Column.AllowSorting = true;
        e.Column.AllowGrouping = false;
        e.Column.HeaderStyle.BackColor = Color.LightSkyBlue;
        e.Column.CellStyle.BackColor = Color.MediumBlue;
    }
}
{% endhighlight %}
{% endtabs %}

#### Data Annotations with AutoGenerateColumns

SfDataGrid support to generate the columns based on built-in [Data Annotation Attributes](https://msdn.microsoft.com/en-us/library/system.componentmodel.dataannotations(v=vs.95).aspx). Data Annotations ignored, when the [AutoGenerateColumns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AutoGenerateColumns.html) is set to `false`.

#### Exclude column

The column generation can be skipped by using `AutoGenerateField` property or by setting the `Bindable` attribute to `false`.

{% tabs %}
{% highlight c# %}
[Display(AutoGenerateField = false, Description = "OrderID field is not generated in UI")]

public int OrderID
{
    get { return orderID; }
    set { orderID = value; }
}
{% endhighlight %}
{% endtabs %}

#### Filtering

Filtering can be enabled automatically for the field by using `Display.AutoGenerateFilter` property
{% tabs %}
{% highlight c# %}
[Display(AutoGenerateFilter = true, Description = "Filter enabled for CustomerID column")]

public string CustomerID
{
    get { return customerId; }
    set { customerId = value; }
}
{% endhighlight %}
{% endtabs %}

#### Editing

The value of the property can be changed by using `Editable` attribute.
{% tabs %}
{% highlight c# %}
[Editable(true)]

public string Country
{
    get { return country; }
    set { country = value; }
}
{% endhighlight %}
{% endtabs %}

#### Change the HeaderText of column

The Header text of column can be customized by using `Display.Name` property.
{% tabs %}
{% highlight c# %}
[Display(Name="Name of the Customer",Description="CustomerName is necessary for identification ")]

public string CustomerName
{
    get { return customerName; }
    set { customerName = value; }
}
{% endhighlight %}
{% endtabs %}

#### Change the order of the columns

The columns order can be changed by using `DisplayAttribute.Order` property.
{% tabs %}
{% highlight c# %}
[Display(Order=0)]

public int OrderID
{
    get { return orderID; }
    set { orderID = value; }
}

[Display(Order=-1)]

public string CustomerID
{
    get { return customerId; }
    set { customerId = value; }
}
{% endhighlight %}
{% endtabs %}
The OrderID and CustomerID column rearranged based on specified order.
![](Columns_images/columns1.png)

#### Customizing data format

The data format can  be customized using `DataTypeAttribute.DataType` property.
{% tabs %}
{% highlight c# %}
[DataType(DataType.Currency)]        

public double  UnitPrice
{
    get { return unitPrice; }
    set { unitPrice = value; }
}
{% endhighlight %}
{% endtabs %}

#### Setting read-only column

The editing for a column can be disabled by using `ReadOnly` attribute..
{% tabs %}
{% highlight c# %}
[ReadOnly(true)]

public string Country
{
    get { return country; }
    set { country = value; }
}
{% endhighlight %}
{% endtabs %}

### Manually defining columns

The SfDataGrid allows to define the columns manually by adding the desired column to the [SfDataGrid.Columns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~Columns.html) collection.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.AutoGenerateColumns = false;
this.sfDataGrid1.DataSource = collection.OrdersListDetails;

this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "OrderID", HeaderText = "Order ID" });
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "CustomerID", HeaderText = "Customer ID" });
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "CustomerName", HeaderText = "Customer Name" });
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "Country", HeaderText = "Country" });
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "ProductName", HeaderText = "Product Name" });
{% endhighlight %}
{% endtabs %}


## Column manipulation

The columns (added or auto-generated) can be retrieved from [SfDataGrid.Columns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~Columns.html) property.

### Adding column

The column can be added to the `SfDataGrid` by adding the instance of the column to `SfDataGrid.Columns` property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "OrderID", HeaderText = "Order ID" });
{% endhighlight %}
{% endtabs %}

### Accessing column

The column can be accessed through its column index or [GridColumnBase.MappingName](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~MappingName.html) property from the `SfDataGrid.Columns` collection.
{% tabs %}
{% highlight c# %}
GridColumn column = this.sfDataGrid1.Columns[1];
// Or
GridColumn column = this.sfDataGrid1.Columns["OrderID"];
{% endhighlight %}
{% endtabs %}

### Clearing or Removing column

All the columns can be removed by clearing the `SfDataGrid.Columns` collection.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Clear();
{% endhighlight %}
{% endtabs %}
A column can be removed using the Remove and RemoveAt methods.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Remove(gridColumn);
// Or
this.sfDataGrid1.Columns.RemoveAt(1);
{% endhighlight %}
{% endtabs %}
Column under a stacked column can be removed from StackedHeaderRow.
{% tabs %}
{% highlight c# %}
var childColumns = this.sfDataGrid1.StackedHeaderRows[0].StackedColumns[0].ChildColumns.Split(',');
foreach(var name in childColumns)
{
    var column = this.sfDataGrid1.Columns[name];
    this.sfDataGrid1.Columns.Remove(column);
}
{% endhighlight %}
{% endtabs %}

## Stacked Headers
SfDataGrid supports additional unbound header rows known as `stacked header rows` that span across the DataGrid columns using [StackedHeaderRows](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.StackedHeaderRows.html). SfDataGrid allows to group one or more columns under each stacked header. Each StackedHeaderRow contains the StackedColumns where each StackedColumn contains a number of child columns.
StackedColumn.ChildColumns property returns the columns which are grouped under the stacked header row. StackedColumn.HeaderText returns the text that displays in stacked header row.

### Adding Stacked header
The stacked headers can be added by using the below steps,

1. Create an object of `StackedHeaderRow` for adding stacked columns.

2. Add the columns using `ChildColumns` property of `StackedColumn`.

3. Add the `StackedColumn` to `StackedColumns` collection.

4. Finally add the `StackedHeaderRow` to `StackedHeaderRows` collection of the grid. 

{% tabs %}
{% highlight c# %}
//Creating object for a stacked header row.
var stackedHeaderRow1 = new StackedHeaderRow();

//Adding stacked column to stacked columns collection available in stacked header row object.
stackedHeaderRow1.StackedColumns.Add(new StackedColumn() { ChildColumns = "OrderID,OrderDate", HeaderText = "Order Details" });
stackedHeaderRow1.StackedColumns.Add(new StackedColumn() { ChildColumns = "CustomerID,ContactNumber,", HeaderText = "Customer Details" });
stackedHeaderRow1.StackedColumns.Add(new StackedColumn() { ChildColumns = "ProductName,Quantity,UnitPrice,ShipCountry", HeaderText = "Product Details" });

//Adding stacked header row object to stacked header row collection available in SfDataGrid.
sfDataGrid.StackedHeaderRows.Add(stackedHeaderRow1);
{% endhighlight %}
{% endtabs %}

![](StackedHeader/StackedHeader_img4.png)

### Adding child columns	
SfDataGrid allows to add the child columns in a particular stacked header directly.

{% tabs %}
{% highlight c# %}
//Previous Child columns.
string previousChild = this.sfDataGrid.StackedHeaderRows[0].StackedColumns[0].ChildColumns;

//Adding ChildColumns to stacked header rows with additional child column. 
this.sfDataGrid.StackedHeaderRows[0].StackedColumns[0].ChildColumns = previousChild + ",CustomerID";
{% endhighlight %}
{% endtabs %}
![](StackedHeader/StackedHeader_img5.png)

### Removing child columns
SfDataGrid allows to remove the child columns from particular stacked header directly.

{% tabs %}
{% highlight c# %}
//Removing ChildColumns from the stacked header row.
 var removingColumns = this.sfDataGrid.StackedHeaderRows[0].StackedColumns[0].ChildColumns.Split(',').ToList<string>();
string childColumns = string.Empty;
foreach (var stackedColumnName in removingColumns.ToList())
{
    if (stackedColumnName.Equals("OrderID"))
    {
        removingColumns.Remove(stackedColumnName);
    }
    else
        childColumns = childColumns + stackedColumnName + ",";
}
this.sfDataGrid.StackedHeaderRows[0].StackedColumns[0].ChildColumns = childColumns;
{% endhighlight %}
{% endtabs %}

![](StackedHeader/StackedHeader_img6.png)

### Multi stacked headers
Multiple stacked headers can be added to `SfDataGrid` by adding the required number of `StackedHeaderRow` to `SfDataGrid.StackedHeaderRows`property.

{% tabs %}
{% highlight c# %}
//Creating instance for StackedHeaderRow
StackedHeaderRow stackedHeaderRow1 = new StackedHeaderRow();
StackedHeaderRow stackedHeaderRow2 = new StackedHeaderRow();

//Adding columns to StackedColumns collection to StackedHeaderRow object.
stackedHeaderRow1.StackedColumns.Add(new StackedColumn() { ChildColumns = "OrderID,CustomerID,ContactNumber,OrderDate,ProductName,Quantity", HeaderText = "Sales Details" });

stackedHeaderRow2.StackedColumns.Add(new StackedColumn() { ChildColumns = "OrderID", HeaderText = "Order Details" });
stackedHeaderRow2.StackedColumns.Add(new StackedColumn() { ChildColumns = "CustomerID,ContactNumber", HeaderText = "Customer Details" });
stackedHeaderRow2.StackedColumns.Add(new StackedColumn() { ChildColumns = "OrderDate,ProductName,Quantity", HeaderText = "Product Details" });


//Adding StackedHeaderRow object to StackedHeaderRows collection of SfDatagrid.
this.sfDataGrid.StackedHeaderRows.Add(stackedHeaderRow1);
this.sfDataGrid.StackedHeaderRows.Add(stackedHeaderRow2);
{% endhighlight %}
{% endtabs %}

![](StackedHeader/StackedHeader_img7.png)

### Appearance 

### Stacked header row appearance

The appearance of stacked header row can be customized by setting property. The [StackedHeaderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~StackedHeaderStyle.html"") property contains all the settings that are needed for the stacked header row appearance customization. 
{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.StackedHeaderStyle.BackColor = Color.DarkCyan;
this.sfDataGrid.Style.StackedHeaderStyle.TextColor = Color.White;
{% endhighlight %}
{% endtabs %}
![](images/StackedHeader/StackedHeader_img8.png)

### Changing the stacked header appearance based on column
An appearance of the stacked header row can be customized by using [DrawCell](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DrawCell_EV.html) event. SfDataGrid allow to check the row type for stacked header row by getting the property from `(e.DataRow as DataRowBase).RowType` of[DrawCellEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DrawCellEventArgs.html). 
 SfDataGrid allows to check the stacked column by its cell value which is available in `DrawCellEventArgs `​and apply styling using ‘e.Style’ property of `DrawCellEventArgs` 
{% tabs %}
{% highlight c# %}
this.sfDataGrid.DrawCell += SfDataGrid_DrawCell;

private void SfDataGrid_DrawCell(object sender, DrawCellEventArgs e)
{
    if ((e.DataRow as DataRowBase).RowType == RowType.StackedHeaderRow)
    {
        if (e.CellValue == "Order Details")
        {
            e.Style.BackColor = Color.DarkCyan;
            e.Style.TextColor = Color.White;
        }
        if (e.CellValue == "Customer Details")
        {
            e.Style.BackColor = Color.LightCyan;
        }
        if (e.CellValue == "Product Details")
        {
            e.Style.BackColor = Color.DarkGray;
            e.Style.TextColor = Color.White;
        }
    }
}
{% endhighlight %}
{% endtabs %}

![](StackedHeader/StackedHeader_img9.png)
