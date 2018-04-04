---
layout: post
title: Column types
description: This section explains about the column types in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Column Types 
SfDataGrid provides support for various built-in column types. Each column has its own properties and renderer to handle different types of data.
<table>
<tr>
<td>
{{'**Column Type**'| markdownify }}
</td>
<td>
{{'**Renderer**'| markdownify }}
</td>
<td>
{{'        **Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
{{'[GridTextColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridTextBoxCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridTextBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the string data
</td>
</tr>
<tr>
<td>
{{'[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridNumericCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridNumericCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the numeric data
</td>
</tr>
<tr>
<td>
{{'[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridDateTimeCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridDateTimeCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the date time value
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridCheckBoxCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridCheckBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the Boolean type data
</td>
</tr>
<tr>
<td>
{{'[GridImageColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridImageCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridImageCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the image in each row
</td>
</tr>
<tr>
<td>
{{'[GridHyperlinkColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridHyperlinkCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridHyperlinkCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the Uri data
</td>
</tr>
<tr>
<td>
{{'[GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridButtonCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridButtonCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display button in each row
</td>
</tr>
</table>

## GridColumn

[GridColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumn.html) is a class that provides base functionalities for all the column types in SfDataGrid.

### Mapping Column to a Property

Column can be bound to a property in data object using [GridColumnBase.MappingName](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~MappingName.html) property.

### Formatting the Value

[GridColumnBase.Format](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~Format.html) property can be used to set format for the data in the column.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderDate"].Format = "yyyy/mm/dd";
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderDate").Format = "yyyy/mm/dd"
{% endhighlight %}
{% endtabs %}
![](ColumnTypes_images/ColumnTypes_img1.png)

N> This property works only for `GridDateTimeColumn`, `GridNumericColumn` and `GridButtonColumn`.

### Styling GridColumn

[GridColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumn.html) support to customize the style of particular column using [GridColumnBase.CellStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~CellStyle.html) and [GridColumnBase.HeaderStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~HeaderStyle.html) properties. For more information, refer Styling section.

{% tabs %}
{% highlight c# %}
//Change the record cell back color for product name column.
this.sfDataGrid.Columns["ProductName"].CellStyle.BackColor = Color.SlateGray;

//Change the record cell text color for product name column.
this.sfDataGrid.Columns["ProductName"].CellStyle.TextColor = Color.White

//Change the header cell back color for product name column.
this.sfDataGrid.Columns["ProductName"].HeaderStyle.BackColor = Color.MediumSlateBlue;

//Change the header cell text color for product name column.
this.sfDataGrid.Columns["ProductName"].HeaderStyle.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
'Change the record cell back color for product name column.
Me.sfDataGrid.Columns("ProductName").CellStyle.BackColor = Color.SlateGray

'Change the record cell text color for product name column.
'Change the header cell back color for product name column.
Color.White Me.sfDataGrid.Columns("ProductName").HeaderStyle.BackColor = Color.MediumSlateBlue
Me.sfDataGrid.Columns("ProductName").CellStyle.TextColor = Color.White Me.sfDataGrid.Columns("ProductName").HeaderStyle.BackColor

'Change the header cell text color for product name column.
Me.sfDataGrid.Columns("ProductName").HeaderStyle.TextColor = Color.White
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img2.png)

## GridTextColumn

[GridTextColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn.html) provides support to display column data as text, which hosts TextBox in edit mode.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridTextColumn() 
{ 
    MappingName = "ProductName", 
    HeaderText = "Product Name" 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridTextColumn() With {.MappingName = "ProductName", .HeaderText = "Product Name"})
{% endhighlight %}
{% endtabs %}

### Multiline Support

SfDataGrid allows to edit multiline text in `GridTextColumn` by setting [GridTextColumn.AllowMultiline](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn~AllowMultiline.html) property to `true`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["ProductName"] as GridTextColumn).AllowMultiline= true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridTextColumn).AllowMultiline= True
{% endhighlight %}
{% endtabs %}

### Vertical Scroll Bar 
Vertical scroll bar can be enabled for multiline textbox cell while editing by setting the [GridTextColumn.AllowVerticalScrollBar](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn~AllowVerticalScrollbar.html) to `true`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["ProductName"] as GridTextColumn).AllowVerticalScrollbar = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridTextColumn).AllowVerticalScrollbar = True
{% endhighlight %}
{% endtabs %}

## GridNumericColumn

[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html) provides support to display columns data as numeric values.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridNumericColumn() 
{ 
    MappingName = "UnitPrice", 
    HeaderText = "Unit Price" 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.MappingName = "UnitPrice", .HeaderText = "Unit Price"})
{% endhighlight %}
{% endtabs %}

### Format Mode

SfDataGrid allows to set the below format modes for the numeric columns by using the [GridNumericColumn.FormatMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn~FormatMode.html) property.

#### Numeric
`Numeric` format can be used to display numeric value.

#### Percent
`Percent` format can be used to display percentage values with percentage symbol.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridNumericColumn() 
{ 
    MappingName = "Discount", 
    HeaderText = "Discount", 
    FormatMode = FormatMode.Percent 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.MappingName = "Discount", .HeaderText = "Discount", .FormatMode = FormatMode.Percent})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img3.png)

#### Currency

`Currency` format can be used to display values in currency format with currency symbol.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridNumericColumn()
{
MappingName = "UnitPrice",
HeaderText = "Unit Price",
FormatMode = FormatMode.Currency,
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.MappingName = "UnitPrice", .HeaderText = "Unit Price", .FormatMode = FormatMode.Currency})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img4.png)

N> By default, `GridNumericColumn` displays the record with `Numeric` format.

### Data Formatting

[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html) allows to format the numeric data with culture-specific information by using the [GridNumericColumn.NumberFormatInfo](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn~NumberFormatInfo.html) property.

#### NumberFormatInfo for Numeric Formatted Column

The below properties of `NumberFormatInfo` can be used to specify the format for the numeric values.

* `NumberDecimalDigits` - The Number of decimal digits to be displayed after the decimal point can be changed by using `NumberDecimalDigits` property.

* `NumberDecimalSeparator` - By default, the dot (.) operator separates the decimal part of numeric value. Any operator can be used as decimal separator through `NumberDecimalSeparator` property.

* `NumberGroupSeparator` - By default, the comma (,) separates group of digits before the decimal point. Any operator can be used as group separator through `NumberGroupSeparator` property.

* `NumberGroupSizes` - The number of digits in each group before the decimal point on numeric values can be changed by using `NumberGroupSizes` property.

* `Formatting negative pattern` - The pattern of negative numeric values can be formatted by using `NumberNegativePattern`.

{% tabs %}
{% highlight c# %}
NumberFormatInfo numberFormat = Application.CurrentCulture.NumberFormat.Clone() as NumberFormatInfo;
numberFormat.NumberDecimalDigits = 2;
numberFormat.NumberDecimalSeparator = "*";
numberFormat.NumberGroupSizes = new int[] { };
this.sfDataGrid1.Columns.Add(new GridNumericColumn()
{
    HeaderText = "Quantity",
    MappingName = "Quantity",
    FormatMode = FormatMode.Numeric,
    NumberFormatInfo = numberFormat
});
{% endhighlight %}
{% highlight vb %}
Dim numberFormat As NumberFormatInfo = TryCast(Application.CurrentCulture.NumberFormat.Clone(), NumberFormatInfo)
numberFormat.NumberDecimalDigits = 2
numberFormat.NumberDecimalSeparator = "*"
numberFormat.NumberGroupSizes = New Integer() { }
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.HeaderText = "Quantity", .MappingName = "Quantity", .FormatMode = FormatMode.Numeric, .NumberFormatInfo = numberFormat})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img5.png)

#### NumberFormatInfo for Percent Formatted Column

The below properties of `NumberFormatInfo` can be used to specify the format for the percentage values.

* `PercentSymbol` - By default, the percent operator (%) will be loaded with the value. The symbol can be changed by using `PercentSymbol` property.

* `PercentDecimalDigits` - The number of decimal digits to be displayed after the decimal point on percent value can be specified using `PercentDecimalDigits` property.

* `PercentDecimalSeparator` - By default, the dot (.) operator separates the decimal part of percent value. Any operator can be used as decimal separator through `PercentDecimalSeparator` property.

* `PercentGroupSeparator` - By default, the comma (,) operator separates the group of digits left to the decimal point on currency value. Any operator can be used as group separator through `PercentGroupSeparator` property.

* `PercentGroupSizes` - The number of digits in each group before the decimal point can be changed through `PercentGroupSizes` property.

* `Pattern` - The pattern for both positive and negative percent values can be formatted through `PercentPositivePattern` and `PercentNegativePattern`.

{% tabs %}
{% highlight c# %}
NumberFormatInfo numberFormat = Application.CurrentCulture.NumberFormat.Clone() as NumberFormatInfo;
numberFormat.PercentDecimalDigits = 2;
numberFormat.PercentDecimalSeparator = "*";
numberFormat.PercentSymbol = "/-";
this.sfDataGrid1.Columns.Add(new GridNumericColumn() 
{ 
    MappingName = "Discount", 
    HeaderText = "Discount", 
    FormatMode = FormatMode.Percent , 
    NumberFormatInfo = numberFormat
});
{% endhighlight %}
{% highlight vb %}
Dim numberFormat As NumberFormatInfo = TryCast(Application.CurrentCulture.NumberFormat.Clone(), NumberFormatInfo)
numberFormat.PercentDecimalDigits = 2
numberFormat.PercentDecimalSeparator = "*"
numberFormat.PercentSymbol = "/-"
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.MappingName = "Discount", .HeaderText = "Discount", .FormatMode = FormatMode.Percent, .NumberFormatInfo = numberFormat})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img6.png)

#### NumberFormatInfo for Currency Formatted Column

The below properties of `NumberFormatInfo` can be used to specify the format for the currency values.

* `CurrencySymbol` - By default, the currency symbol will be displayed based on culture. The symbol can be changed by using `CurrencySymbol` property.

* `CurrencyDecimalDigits` - The number of decimal digits to be displayed after the decimal point on currency values can be changed using `CurrencyDecimalDigits` property.

* `CurrencyDecimalSeparator` - By default, the dot (.) operator separates the decimal part of currency value. Any operator can be used as decimal separator through `CurrencyDecimalSeparator` property.

* `CurrencyGroupSeparator` - By default, the comma (,) separates the group of digits before the decimal point on currency value. Any operator can be used as group separator through `CurrencyGroupSeparator` property.

* `CurrencyGroupSizes` - The number of digits in each group before the decimal point on currency value can be changed by using `CurrencyGroupSizes` property.

* `Pattern` - The pattern for both positive and negative currency values can be formatted through `CurrencyPositivePattern` and `CurrencyNegativePattern`.

{% tabs %}
{% highlight c# %}
NumberFormatInfo numberFormat = Application.CurrentCulture.NumberFormat.Clone() as NumberFormatInfo;
numberFormat.CurrencyDecimalDigits = 2;
numberFormat.CurrencyDecimalSeparator = "*"
numberFormat.CurrencySymbol = "#";
this.sfDataGrid1.Columns.Add(new GridNumericColumn()
{
MappingName = "UnitPrice",
HeaderText = "Unit Price",
FormatMode = FormatMode.Currency,
NumberFormatInfo = numberFormat
});
{% endhighlight %}
{% highlight vb %}
Dim numberFormat As NumberFormatInfo = TryCast(Application.CurrentCulture.NumberFormat.Clone(), NumberFormatInfo)
numberFormat.CurrencyDecimalDigits = 2
"*" numberFormat.CurrencySymbol = "#"
numberFormat.CurrencyDecimalSeparator = "*" numberFormat.CurrencySymbol
Me.sfDataGrid1.Columns.Add(New GridNumericColumn() With {.MappingName = "UnitPrice", .HeaderText = "Unit Price", .FormatMode = FormatMode.Currency, .NumberFormatInfo = numberFormat})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img7.png)

### Displaying Null Value

[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html) provides support to restrict or allow null value in columns based on [GridNumericColumn.AllowNull](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn~AllowNull.html) property.

### Auto Increment

[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html) allows end-user to increment or decrement the value by pressing up and down arrow keys. This can be enabled by setting [GridNumericColumn.InterceptArrowKeys](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn~InterceptArrowKeys.html) property to `true`.

## GridDateTimeColumn

[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) provides support to display and edit the date time values on the cell.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridDateTimeColumn() 
{ 
  MappingName = "OrderDate", 
  HeaderText = "Order Date" 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridDateTimeColumn() With {.MappingName = "OrderDate", .HeaderText = "Order Date"})
{% endhighlight %}
{% endtabs %}

### Change the Pattern of Date Time Value

The date time value can be formatted by using [GridDateTimeColumn.Pattern](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~Pattern.html) property, which contains the set of predefined date time patterns.

<table>
<tr>
<td>
{{'**Pattern**'| markdownify }}
</td>
<td>
{{'**Expected**'| markdownify }}
</td>
</tr>
<tr>
<td>
LongDate
</td>
<td>
Monday, June 15, 2016
</td>
</tr>
<tr>
<td>
LongTime
</td>
<td>
1:45:30 PM
</td>
</tr>
<tr>
<td>
ShortDate
</td>
<td>
6/15/2016
</td>
</tr>
<tr>
<td>
ShortTime
</td>
<td>
1:45 PM
</td>
</tr>
<tr>
<td>
FullDateTime
</td>
<td>
Monday, June 15, 2016 1:45 PM
</td>
</tr>
<tr>
<td>
MonthDay
</td>
<td>
June 15
</td>
</tr>
<tr>
<td>
RFC1123
</td>
<td>
Mon, 15 Jun 2016 20:45:30 GMT
</td>
</tr>
<tr>
<td>
SortableDateTime
</td>
<td>
2016-06-15T13:45:30
</td>
</tr>
<tr>
<td>
UniversalSortableDateTime
</td>
<td>
2016-06-15 13:45:30Z
</td>
</tr>
<tr>
<td>
YearMonth        
</td>
<td>
June, 2016
</td>
</tr>
<tr>
<td>
Custom
</td>
<td>
Sets the custom pattern for date and time value.
</td>
</tr>
</table>

### Displaying Null Value

[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) provides support to restrict or allow null value in columns based on [AllowNull](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~AllowNull.html) property. Instead of displaying null values, any default date time value can be displayed by using[NullValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~NullValue.html) property.
The `NullValue` property won’t work, when the `AllowNull` property is false.

### Auto Increment

[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) allows end-user to increment or decrement the value when `MouseWheel`  by setting the [AllowValueChangeOnMouseWheel](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~AllowValueChangeOnMouseWheel.html) property to true. 
The value can also be changed by pressing up and down arrow keys when the [InterceptArrowKeys](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~InterceptArrowKeys.html) property is true.

### Setting Date Time Value Range

Displaying the input value can be restricted within the range by using [MinDateTime](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~MinDateTime.html) and [MaxDateTime](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn~MaxDateTime.html) properties.

## GridCheckBoxColumn

[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) provides support to display and edit Boolean type data.

### Three State Check Box
[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) provides support for the three check states rather than two. The states are `checked`, `unchecked` and an `intermediate` state. This can be enabled by setting [AllowThreeState](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~AllowThreeState.html) property to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridCheckBoxColumn() 
{ 
    MappingName = "PaidStatus", 
    HeaderText = "Paid Status",
    AllowThreeState = true 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridCheckBoxColumn() With {.MappingName = "PaidStatus", .HeaderText = "Paid Status", .AllowThreeState = True})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img8.png)

### Text on the Check Box Column

[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) allows to display the text along with checkbox in the cell.  This can be enabled by setting the [AllowText](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~AllowText.html) property to true.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["IsClosed"] as GridCheckBoxColumn).AllowText = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("IsClosed"), GridCheckBoxColumn).AllowText = True
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img9.png)

### Check Box on Header

By default, CheckBox displays only in record cell. By enabling the [AllowCheckBoxOnHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~AllowCheckBoxOnHeader.html) property, CheckBox can be displayed in header cell of `GridCheckBoxColumn`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["IsClosed"] as GridCheckBoxColumn).AllowText = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("IsClosed"), GridCheckBoxColumn).AllowText = True
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img10.png)

### Customizing the Check Box Value

[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) allows to display check box for enumeration type columns also. The corresponding underlying value for the checked, unchecked and intermediate state can be specified by the below properties.

1. [TrueValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~TrueValue.html) – Specifies the underlying value corresponding 
to a cell value of true, which appears as a checked box.

2. [FalseValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~FalseValue.html) – Specifies the underlying value corresponding to a cell value of false, which appears as an unchecked box.

3. [IntermediateValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn~IndeterminateValue.html) – Specifies the underlying value corresponding to an indeterminate or null cell value, which appears as a disabled checkbox.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridCheckBoxColumn()
{ 
    MappingName = "PaidStatus", 
    HeaderText = "Paid Status", 
    TrueValue = PaidStatus.Paid, 
    FalseValue = PaidStatus.NotPaid, 
    IndeterminateValue = PaidStatus.UnKnown, 
    AllowThreeState = true,
    AllowText = true
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridCheckBoxColumn() With {.MappingName = "PaidStatus", .HeaderText = "Paid Status", .TrueValue = PaidStatus.Paid, .FalseValue = PaidStatus.NotPaid, .IndeterminateValue = PaidStatus.UnKnown, .AllowThreeState = True, .AllowText = True})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img11.png)

### Appearance

#### Styling

SfDataGrid allows to customize the appearance of the check box column through [SfDataGrid.Style.CheckBoxStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~CheckBoxStyle.html) property.

{% tabs %}
{% highlight c# %}
//Change the appearance of the checked box.
this.sfDataGrid1.Style.CheckBoxStyle.CheckedBackColor = Color.LawnGreen;
this.sfDataGrid1.Style.CheckBoxStyle.CheckedBorderColor = Color.DarkViolet;
this.sfDataGrid1.Style.CheckBoxStyle.CheckedTickColor = Color.Red;

//Change the appearance of the intermediate state checkbox
this.sfDataGrid1.Style.CheckBoxStyle.IndeterminateBorderColor = Color.DarkSlateGray;
this.sfDataGrid1.Style.CheckBoxStyle.IndeterminateColor = Color.Brown;

//Change the appearance of the unchecked box
this.sfDataGrid1.Style.CheckBoxStyle.UncheckedBackColor = Color.Moccasin;
this.sfDataGrid1.Style.CheckBoxStyle.UncheckedBorderColor = Color.DarkSlateGray;
{% endhighlight %}
{% highlight vb %}
'Change the appearance of the checked box.
Me.sfDataGrid1.Style.CheckBoxStyle.CheckedBackColor = Color.LawnGreen
Me.sfDataGrid1.Style.CheckBoxStyle.CheckedBorderColor = Color.DarkViolet
Me.sfDataGrid1.Style.CheckBoxStyle.CheckedTickColor = Color.Red

'Change the appearance of the intermediate state checkbox
Me.sfDataGrid1.Style.CheckBoxStyle.IndeterminateBorderColor = Color.DarkSlateGray
Me.sfDataGrid1.Style.CheckBoxStyle.IndeterminateColor = Color.Brown

'Change the appearance of the unchecked box
Me.sfDataGrid1.Style.CheckBoxStyle.UncheckedBackColor = Color.Moccasin
Me.sfDataGrid1.Style.CheckBoxStyle.UncheckedBorderColor = Color.DarkSlateGray
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img12.png)

#### Conditional Styling

SfDataGrid allows to customize the appearance of the check box column based on conditions through [QueryCheckBoxCellStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~QueryCheckBoxCellStyle_EV.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.QueryCheckBoxCellStyle += SfDataGrid1_QueryCheckBoxCellStyle;

void SfDataGrid1_QueryCheckBoxCellStyle(object sender, QueryCheckBoxCellStyleEventArgs e)
{
    if (e.RowIndex % 2 == 0)
    {
        e.Style.CheckedBackColor = Color.LawnGreen;
        e.Style.CheckedBorderColor = Color.DarkViolet;
        e.Style.CheckedTickColor = Color.Red;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.QueryCheckBoxCellStyle, AddressOf SfDataGrid1_QueryCheckBoxCellStyle

Private Sub SfDataGrid1_QueryCheckBoxCellStyle(ByVal sender As Object, ByVal e As QueryCheckBoxCellStyleEventArgs)
	If e.RowIndex Mod 2 = 0 Then
		e.Style.CheckedBackColor = Color.LawnGreen
		e.Style.CheckedBorderColor = Color.DarkViolet
		e.Style.CheckedTickColor = Color.Red
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img13.png)

## GridButtonColumn

[GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html) provides support to display columns data as buttons.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridButtonColumn() 
{ 
    MappingName = "ProductName ", 
    HeaderText = "Product Name"
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridButtonColumn() With {.MappingName = "ProductName ", .HeaderText = "Product Name"})
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img14.png)

### Default Text for the Buttons

By default, [GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html) displays the button with underlying value as button text. The default text for the buttons can be changed by setting value for [DefaultButtonText](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn~DefaultButtonText.html) property. The `DefaultButtonText` property will work only when the[AllowDefaultButtonText](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn~AllowDefaultButtonText.html) property value is true.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["ProductName"] as GridButtonColumn).AllowDefaultButtonText = true;
(this.sfDataGrid1.Columns["ProductName"] as GridButtonColumn).DefaultButtonText = "Submit";
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridButtonColumn).AllowDefaultButtonText = True
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridButtonColumn).DefaultButtonText = "Submit"
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img15.png)

### Adding Image for the Button Column

SfDataGrid allows to display image within the button by using the [GridButtonColumn.Image](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn~Image.html) property.

{% tabs %}
{% highlight c# %}
  this.sfDataGrid1.Columns.Add(new GridButtonColumn()
            {
                MappingName = "ProductName",
                HeaderText = "Product Name",
                Image = SystemIcons.Information.ToBitmap(),
            });
{% endhighlight %}
{% highlight vb %}
  Me.sfDataGrid1.Columns.Add(New GridButtonColumn() With {.MappingName = "ProductName", .HeaderText = "Product Name", .Image = SystemIcons.Information.ToBitmap()})
{% endhighlight %}
{% endtabs %}

#### Positioning the Text and Image 

The text and image within the [GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html) can be positioned relative to each other by using the [TextImageRelation](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn~TextImageRelation.html) property.

{% tabs %}
{% highlight c# %}
  this.sfDataGrid1.Columns.Add(new GridButtonColumn()
            {
                MappingName = "ProductName",
                HeaderText = "Product Name",
                Image = SystemIcons.Information.ToBitmap(),
                ImageSize = new Size(16, 16),
                TextImageRelation = TextImageRelation.ImageBeforeText,
            });
{% endhighlight %}
{% highlight vb %}
  Me.sfDataGrid1.Columns.Add(New GridButtonColumn() With {.MappingName = "ProductName", .HeaderText = "Product Name", .Image = SystemIcons.Information.ToBitmap(), .ImageSize = New Size(16, 16), .TextImageRelation = TextImageRelation.ImageBeforeText})
{% endhighlight %}
{% endtabs %}
![](ColumnTypes_images/ColumnTypes_img16.png)

### Appearance

SfDataGrid allows to customize the appearance of the button column through [SfDataGrid.Style.ButtonStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~ButtonStyle.html) property.

{% tabs %}
{% highlight c# %}
//Change the appearance of the button column
this.sfDataGrid1.Style.ButtonStyle.BackColor = Color.LightPink;
this.sfDataGrid1.Style.ButtonStyle.TextColor = Color.DarkBlue;
this.sfDataGrid1.Style.ButtonStyle.BorderColor = Pens.DarkRed;
{% endhighlight %}
{% highlight vb %}
'Change the appearance of the button column
Me.sfDataGrid1.Style.ButtonStyle.BackColor = Color.LightPink
Me.sfDataGrid1.Style.ButtonStyle.TextColor = Color.DarkBlue
Me.sfDataGrid1.Style.ButtonStyle.BorderColor = Pens.DarkRed
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img17.png)

## GridHyperlinkColumn

[GridHyperlinkColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html) provides support to display columns data as `HyperLink` and allows to open hyperlinks as well as to run executable files. 

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridHyperlinkColumn() 
{ 
   MappingName = " OrderURI ", 
   HeaderText = "Order URI" 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridHyperlinkColumn() With {.MappingName = " OrderURI ", .HeaderText = "Order URI"})
{% endhighlight %}
{% endtabs %}

### Behavior Customization

SfDataGrid provide support to open the hyperlink either by single click or double click. This can be specified by the [HyperlinkOpenBehavior](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn~HyperlinkOpenBehavior.html) property.
The [HyperlinkOpenArea](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn~HyperlinkOpenArea.html) property decides whether to open the hyperlink by clicking anywhere on the cell or by clicking only on the text inside the cell.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["OrderURI"] as GridHyperlinkColumn).HyperlinkOpenArea = HyperlinkOpenArea.Cell;
(this.sfDataGrid1.Columns["OrderURI"] as GridHyperlinkColumn).HyperlinkOpenBehavior = HyperlinkOpenBehavior.DoubleClick;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("OrderURI"), GridHyperlinkColumn).HyperlinkOpenArea = HyperlinkOpenArea.Cell
TryCast(Me.sfDataGrid1.Columns("OrderURI"), GridHyperlinkColumn).HyperlinkOpenBehavior = HyperlinkOpenBehavior.DoubleClick
{% endhighlight %}
{% endtabs %}


N> `GridHyperlinkColumn` allows to open hyperlink by pressing space key.

### Appearance

SfDataGrid allows to customize the appearance of the hyperlink column through [SfDataGrid.Style.HyperlinkStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~HyperlinkStyle.html#) property.

{% tabs %}
{% highlight c# %}
//Change the appearance of the hyperlink.
this.sfDataGrid1.Style.HyperlinkStyle.DefaultLinkColor = Color.DarkGreen;
this.sfDataGrid1.Style.HyperlinkStyle.HoveredLinkColor = Color.Red;
{% endhighlight %}
{% highlight vb %}
'Change the appearance of the hyperlink.
Me.sfDataGrid1.Style.HyperlinkStyle.DefaultLinkColor = Color.DarkGreen
Me.sfDataGrid1.Style.HyperlinkStyle.HoveredLinkColor = Color.Red
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img18.png)

### Canceling the Navigation

Navigation to the hyperlinks can be canceled within the [HyperlinkOpening](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~HyperlinkOpening_EV.html) event by setting the `CellHyperlinkOpeningEventArgs.Cancel` to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HyperlinkOpening += SfDataGrid1_HyperlinkOpening;

void SfDataGrid1_HyperlinkOpening(object sender, CellHyperlinkOpeningEventArgs e)
{
    if (e.NavigateText == "https://www.google.com/")
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.HyperlinkOpening, AddressOf SfDataGrid1_HyperlinkOpening

Private Sub SfDataGrid1_HyperlinkOpening(ByVal sender As Object, ByVal e As CellHyperlinkOpeningEventArgs)
	If e.NavigateText = "https://www.google.com/" Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

[HyperlinkOpened](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~HyperlinkOpened_EV.html) event occurs after the hyperlink is opened. It does not occur if the `HyperlinkOpening` event is canceled.

### Changing the Browser to Open the Hyperlink

By default, [GridHyperlinkColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html) opens the hyperlink in system default browser. This can be changed by handling the [HyperlinkOpening](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~HyperlinkOpening_EV.html) event.

The below code shows how to open the hyperlink in Internet Explorer.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.HyperlinkOpening += SfDataGrid1_HyperlinkOpening;

void SfDataGrid1_HyperlinkOpening(object sender, CellHyperlinkOpeningEventArgs e)
{
    e.Cancel = true;
    System.Diagnostics.Process process = new System.Diagnostics.Process();
    process.StartInfo.FileName = "iexplore";
    process.StartInfo.Arguments = e.NavigateText;
    process.Start();
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.HyperlinkOpening, AddressOf SfDataGrid1_HyperlinkOpening

Private Sub SfDataGrid1_HyperlinkOpening(ByVal sender As Object, ByVal e As CellHyperlinkOpeningEventArgs)
	e.Cancel = True
	Dim process As New System.Diagnostics.Process()
	process.StartInfo.FileName = "iexplore"
	process.StartInfo.Arguments = e.NavigateText
	process.Start()
End Sub
{% endhighlight %}
{% endtabs %}

## GridImageColumn

[GridImageColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn.html) provides support to display columns data as Image.
`GridImageColumn` can be created and images can be added to it as given below.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridImageColumn() 
{ 
    MappingName = "Images", 
    HeaderText = "Country" 
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridImageColumn() With {.MappingName = "Images", .HeaderText = "Country"})
{% endhighlight %}
{% endtabs %}

The image will be added to the column be adding the image to the underlying data as below.
{% tabs %}
{% highlight c# %}
public class OrderInfo : INotifyPropertyChanged
{
    public byte[] Images { get; set; }
}
public class OrderInfoCollection :  IDisposable
{
    public OrderInfoCollection()
    {
        OrdersListDetails = new OrderInfoRepository().GetListOrdersDetails(200);            
    }
    public BindingList<OrderInfo> GetListOrdersDetails(int count)
    {
        BindingList<OrderInfo> ordersDetails = new BindingList<OrderInfo>();
        for (int i = 10000; i < count + 10000; i++)
        {
            ordersDetails.Add(GetOrder(i));
        }
        return ordersDetails;
    }
    private OrderInfo GetOrder(int i)
    {
        if (order.OrderID % 2 == 0 )
            order.Images = ImageToByteArray(Image.FromFile(@"..\..\Images\US.jpg"));
        else if (order.OrderID % 3 == 0 )
            order.Images = ImageToByteArray(Image.FromFile(@"..\..\Images\Japan.jpg"));
        else
            order.Images = ImageToByteArray(Image.FromFile(@"..\..\Images\UK.jpg"));
            return order;
    }
    public byte[] ImageToByteArray(System.Drawing.Image imageIn)
    {
        MemoryStream ms = new MemoryStream();
        imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
        return ms.ToArray();
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class OrderInfo
	Implements INotifyPropertyChanged
		Public Property Images() As Byte()
End Class
  Public Class OrderInfoCollection
	  Implements IDisposable
		Public Sub New()
			OrdersListDetails = New OrderInfoRepository().GetListOrdersDetails(200)
		End Sub
  Public Function GetListOrdersDetails(ByVal count As Integer) As BindingList(Of OrderInfo)
			Dim ordersDetails As New BindingList(Of OrderInfo)()
			For i As Integer = 10000 To count + 10000 - 1
				ordersDetails.Add(GetOrder(i))
			Next i
			Return ordersDetails
  End Function
  Private Function GetOrder(ByVal i As Integer) As OrderInfo
			If order.OrderID Mod 2 = 0 Then
				order.Images = ImageToByteArray(Image.FromFile("..\..\Images\US.jpg"))
			ElseIf order.OrderID Mod 3 = 0 Then
				order.Images = ImageToByteArray(Image.FromFile("..\..\Images\Japan.jpg"))
			Else
				order.Images = ImageToByteArray(Image.FromFile("..\..\Images\UK.jpg"))
			End If
			Return order
  End Function
  Public Function ImageToByteArray(ByVal imageIn As System.Drawing.Image) As Byte()
			Dim ms As New MemoryStream()
			imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp)
			Return ms.ToArray()
  End Function
  End Class
{% endhighlight %}
{% endtabs %}

### Positioning Text and Image

The text and image within the [GridImageColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn.html) can be positioned relative to each other by using the [TextImageRelation](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn~TextImageRelation.html) property.
The `TextImageRelation` property will not work if [ImageLayout](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn~ImageLayout.html) property value is not equal to none.

### Appearance

SfDataGrid allows to customize the appearance of the image column based on conditions through [QueryImageCellStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~QueryImageCellStyle_EV.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.QueryImageCellStyle += SfDataGrid1_QueryImageCellStyle;
void SfDataGrid1_QueryImageCellStyle(object sender, QueryImageCellStyleEventArgs e)
{
	if (e.RowIndex == 3)
		e.ImageLayout = ImageLayout.Tile;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.QueryImageCellStyle, AddressOf SfDataGrid1_QueryImageCellStyle

Private Sub SfDataGrid1_QueryImageCellStyle(ByVal sender As Object, ByVal e As QueryImageCellStyleEventArgs)
	If e.RowIndex = 3 Then
		e.ImageLayout = ImageLayout.Tile
	End If
End Sub
{% endhighlight %}
{% endtabs %}
![](ColumnTypes_images/ColumnTypes_img19.png)

## Custom Column Support

SfDataGrid allows to create own column by overriding predefined column type and to customize existing column renderer.

### Creating Column from Existing Column

New column type can be created by overriding the predefined column types in SfDataGrid.
In the below code snippet, `GridCurrencyColumn` column created from `GridNumericColumn`.

{% tabs %}
{% highlight c# %}
public class GridCurrencyColumn : GridNumericColumn
{
    protected override object GetFormattedValue(object record, object value)
    {
        var formatInfo = this.NumberFormatInfo ?? CultureInfo.CurrentUICulture.NumberFormat;
        if (value == null || DBNull.Value.Equals(value))
        {
            if (AllowNull)
                return value;
            value = (double)this.MinValue;
        }
        double originalValue;
        if (double.TryParse(value.ToString(), out originalValue))
        {
            if (originalValue < MinValue)
                originalValue = MinValue;
            if (originalValue > MaxValue)
                originalValue = MaxValue;
            return string.Format(formatInfo, "{0:c}", originalValue);
        }
        return value;
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class GridCurrencyColumn
	Inherits GridNumericColumn
		Protected Overrides Function GetFormattedValue(ByVal record As Object, ByVal value As Object) As Object
			Dim formatInfo = If(Me.NumberFormatInfo, CultureInfo.CurrentUICulture.NumberFormat)

			If value Is Nothing OrElse DBNull.Value.Equals(value) Then
				If AllowNull Then
					Return value
				End If
				value = CDbl(Me.MinValue)
			End If

			Dim originalValue As Double
			If Double.TryParse(value.ToString(), originalValue) Then
				If originalValue < MinValue Then
					originalValue = MinValue
				End If

				If originalValue > MaxValue Then
					originalValue = MaxValue
				End If

				Return String.Format(formatInfo, "{0:c}", originalValue)
			End If

			Return value
		End Function
End Class
{% endhighlight %}
{% endtabs %}

In the below code snippet, created `GridCurrencyColumn` added to [SfDataGrid.Columns](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~Columns.html) collection to specify the value as currency without setting the format mode.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridCurrencyColumn()
{
    MappingName = "UnitPrice",
    HeaderText = "Unit Price",
});
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridCurrencyColumn() With {.MappingName = "UnitPrice", .HeaderText = "Unit Price"})
{% endhighlight %}
{% endtabs %}

### Customize Column Renderer

SfDataGrid allows to customize the column related operations like key navigation and UI related interactions by overriding the corresponding renderer associated with the column. Each column has its own renderer with set of virtual methods for handling the column level operations.
Below table lists the available cell types for columns and its renderers.

<table>
<tr>
<td>
{{'**Column Name**'| markdownify }}
</td>
<td>
{{'**Renderer**'| markdownify }}
</td>
<td>
{{'**Cell Type**'| markdownify }}
</td>
</tr>
<tr>
<td>
{{'[GridTextColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridTextColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridTextBoxCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridTextBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
TextBox
</td>
</tr>
<tr>
<td>
{{'[GridNumericColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridNumericColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridNumericCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridNumericCellRenderer.html#"")'| markdownify }}
</td>
<td>
Numeric
</td>
</tr>
<tr>
<td>
{{'[GridDateTimeColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridDateTimeCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridDateTimeCellRenderer.html#"")'| markdownify }}
</td>
<td>
DataTime
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridCheckBoxCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridCheckBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
CheckBox
</td>
</tr>
<tr>
<td>
{{'[GridImageColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridImageColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridImageCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridImageCellRenderer.html#"")'| markdownify }}
</td>
<td>
Image
</td>
</tr>
<tr>
<td>
{{'[GridHyperlinkColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridHyperlinkCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridHyperlinkCellRenderer.html#"")'| markdownify }}
</td>
<td>
Hyperlink
</td>
</tr>
<tr>
<td>
{{'[GridButtonColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridButtonColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridButtonCellRenderer](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Renderers.GridButtonCellRenderer.html#"")'| markdownify }}
</td>
<td>
Button
</td>
</tr>
</table>

Below code, creates the `GridTextBoxCellRendererExt` to change the fore ground of CustomerID column and replacing created renderer to `CellRenderers`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CellRenderers.Remove("TextBox");
this.sfDataGrid1.CellRenderers.Add("TextBox", new GridTextBoxCellRendererExt());
public class GridTextBoxCellRendererExt : GridTextBoxCellRenderer
{
	protected override void OnRender(Graphics paint, Rectangle cellRect, string cellValue, CellStyleInfo style, DataColumnBase column, RowColumnIndex rowColumnIndex)
	{
		if (column.GridColumn.MappingName == "CustomerID")
			style.TextColor = Color.DarkBlue;
		base.OnRender(paint, cellRect, cellValue, style, column, rowColumnIndex);
	}
}

{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.CellRenderers.Remove("TextBox")
Me.sfDataGrid1.CellRenderers.Add("TextBox", New GridTextBoxCellRendererExt())

public class GridTextBoxCellRendererExt : GridTextBoxCellRenderer
	protected override void OnRender(Graphics paint, Rectangle cellRect, String cellValue, CellStyleInfo style, DataColumnBase column, RowColumnIndex rowColumnIndex)
		If column.GridColumn.MappingName = "CustomerID" Then
			style.TextColor = Color.DarkBlue
		End If
		MyBase.OnRender(paint, cellRect, cellValue, style, column, rowColumnIndex)
{% endhighlight %}
{% endtabs %}

![](ColumnTypes_images/ColumnTypes_img20.png)

