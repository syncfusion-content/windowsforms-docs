---
layout: post
title: Column types in WinForms DataGrid control | Syncfusion
description: Learn about different column types support (Text, Numeric, DateTime, ComboBox and so on) in Syncfusion WinForms DataGrid (SfDataGrid) control and more details.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Column types in WinForms DataGrid (SfDataGrid) 
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
{{'[GridTextColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridTextColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridTextBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridTextBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the string data
</td>
</tr>
<tr>
<td>
{{'[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridNumericCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridNumericCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the numeric data
</td>
</tr>
<tr>
<td>
{{'[GridDateTimeColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridDateTimeCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridDateTimeCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the date time value
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridCheckBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridCheckBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the Boolean type data
</td>
</tr>
<tr>
<td>
{{'[GridComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html)'| markdownify }}
</td>
<td>
{{'[GridComboBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridComboBoxCellRenderer.html)'| markdownify }}
</td>
<td>
Use to display combobox in each row
</td>
</tr>
<tr>
<td>
{{'[GridImageColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridImageCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridImageCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the image in each row
</td>
</tr>
<tr>
<td>
{{'[GridHyperlinkColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridHyperlinkCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridHyperlinkCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display the Uri data
</td>
</tr>
<tr>
<td>
{{'[GridButtonColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridButtonCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridButtonCellRenderer.html#"")'| markdownify }}
</td>
<td>
Use to display button in each row
</td>
</tr>
<tr>
<td>
{{'[GridProgressBarColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridProgressBarColumn.html)'| markdownify }}
</td>
<td>
{{'[GridProgressBarCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridProgressBarCellRenderer.html)'| markdownify }}
</td>
<td>
Use to display progressbar in each row
</td>
</tr>
<tr>
<td>
{{'[GridMultiSelectComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html)'| markdownify }}
</td>
<td>
{{'[GridMultiSelectComboBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridMultiSelectComboBoxCellRenderer.html)'| markdownify }}
</td>
<td>
Use to display multi select combobox in each row
</td>
</tr>
<tr>
<td>
{{'[GridMaskColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html)'| markdownify }}
</td>
<td>
{{'[GridCellMaskEditBoxRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridCellMaskEditBoxRenderer.html)'| markdownify }}
</td>
<td>
Use to display the masked value.
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxSelectorColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxSelectorColumn.html)'| markdownify }}
</td>
<td>
{{'[GridCheckBoxSelectorCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridCheckBoxSelectorCellRenderer.html)'| markdownify }}
</td>
<td>
Selects or deselects rows based on the check box value, which is not bound with data object.
</td>
</tr>
</table>

## GridColumn

[GridColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumn.html) is a class that provides base functionalities for all the column types in SfDataGrid.

### Mapping Column to a Property

Column can be bound to a property in data object using [GridColumnBase.MappingName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_MappingName) property.

### Formatting the Value

[GridColumnBase.Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_Format) property can be used to set format for the data in the column.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderDate"].Format = "yyyy/mm/dd";
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderDate").Format = "yyyy/mm/dd"
{% endhighlight %}
{% endtabs %}
![Winforms datagrid shows to display the formatting value of datetime column in datagrid windows form](ColumnTypes_images/ColumnTypes_img1.png)

N> This property works only for `GridDateTimeColumn`, `GridNumericColumn` and `GridButtonColumn`.

### Custom formatting

The SfDataGrid allows creating and assigning custom format for the columns through the [IDataGridFormatProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.IDataGridFormatProvider.html) interface.
The [GridColumnBase.FormatProvider](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_FormatProvider) property can be used to set custom format for the columns.

{% tabs %}
{% highlight c# %}
public Form1()
{
    InitializeComponent();
    var data = new OrderInfoCollection();
    sfDataGrid.DataSource = data.OrdersListDetails;
    
    sfDataGrid.Columns["OrderDate"].Format = "dd/MM/yyyy";
    sfDataGrid.Columns["OrderDate"].FormatProvider = new CustomFormatter();
}


public class CustomFormatter : IDataGridFormatProvider
 {
     public object Format(string format, GridColumnBase gridColumn, object record, object value)
     {
         if (value == null)
         {
             throw new ArgumentNullException((value == null) ? "format" : "args");
         }

         if (gridColumn is GridColumn && (gridColumn as GridColumn).MappingName == "OrderDate")
         {
             var orderInfo = record as OrderInfo;

             if (orderInfo.OrderDate.Month == 1)
                 return "January " + orderInfo.OrderDate.Day + ", " + orderInfo.OrderDate.Year;  
         }

         return value.ToString();
     }


     public object GetFormat(Type formatType)
     {
         return this;
     }

     public string Format(string format, object arg, IFormatProvider formatProvider)
     {
         throw new NotImplementedException();
     }
 }
{% endhighlight %}
{% highlight vb %}
Public Sub New()
	InitializeComponent()
	Dim data = New OrderInfoCollection()
	sfDataGrid.DataSource = data.OrdersListDetails

	sfDataGrid.Columns("OrderDate").Format = "dd/mm/yyyy"
	sfDataGrid.Columns("OrderDate").FormatProvider = New CustomFormatter()
End Sub


Public Class CustomFormatter
	Implements IDataGridFormatProvider
		Public Function Format(ByVal _format As String, ByVal gridColumn As GridColumnBase, ByVal record As Object, ByVal value As Object) As Object
			If value Is Nothing Then
				Throw New ArgumentNullException(If((value Is Nothing), "format", "args"))
			End If

			If TypeOf gridColumn Is GridColumn AndAlso (TryCast(gridColumn, GridColumn)).MappingName = "OrderDate" Then
				Dim orderInfo = TryCast(record, OrderInfo)

				If orderInfo.OrderDate.Month = 1 Then
					Return "January " & orderInfo.OrderDate.Day & ", " & orderInfo.OrderDate.Year
				End If
			End If

			Return value.ToString()
		End Function


		Public Function GetFormat(ByVal formatType As Type) As Object
			Return Me
		End Function

		Public Function Format(ByVal _format As String, ByVal arg As Object, ByVal formatProvider As IFormatProvider) As String
			Throw New NotImplementedException()
		End Function
End Class
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to display the custom formatting of datetime column in datagrid windows form](ColumnTypes_images/ColumnTypes_img21.png)

N> The custom format will be applied, only when the [GridColumnBase.Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_Format) property is set for the corresponding column.


### Styling GridColumn

[GridColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumn.html) support to customize the style of particular column using [GridColumnBase.CellStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_CellStyle) and [GridColumnBase.HeaderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_HeaderStyle) properties. For more information, refer Styling section.

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

![Winforms datagrid shows to apply the cell style to the columns in datagrid windows form](ColumnTypes_images/ColumnTypes_img2.png)

### Disable Column

A column can be disabled by setting the [AllowFocus](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_AllowFocus) property. Therefore, that column cannot be selected or edited.

## GridTextColumn

[GridTextColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridTextColumn.html) provides support to display column data as text, which hosts TextBox in edit mode.

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

SfDataGrid allows to edit multiline text in `GridTextColumn` by setting [GridTextColumn.AllowMultiline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridTextColumn.html#Syncfusion_WinForms_DataGrid_GridTextColumn_AllowMultiline) property to `true`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["ProductName"] as GridTextColumn).AllowMultiline= true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridTextColumn).AllowMultiline= True
{% endhighlight %}
{% endtabs %}

### Vertical Scroll Bar 
Vertical scroll bar can be enabled for multiline textbox cell while editing by setting the [GridTextColumn.AllowVerticalScrollBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridTextColumn.html#Syncfusion_WinForms_DataGrid_GridTextColumn_AllowVerticalScrollbar) to `true`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["ProductName"] as GridTextColumn).AllowVerticalScrollbar = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("ProductName"), GridTextColumn).AllowVerticalScrollbar = True
{% endhighlight %}
{% endtabs %}

## GridNumericColumn

[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html) provides support to display columns data as numeric values.

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

SfDataGrid allows to set the below format modes for the numeric columns by using the [GridNumericColumn.FormatMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#Syncfusion_WinForms_DataGrid_GridNumericColumn_FormatMode) property.

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

![Winforms datagrid shows to display the percent format mode of numeric column in datagrid windows form](ColumnTypes_images/ColumnTypes_img3.png)

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

![Winforms datagrid shows to display the currency format mode of numeric column in datagrid windows form](ColumnTypes_images/ColumnTypes_img4.png)

N> By default, `GridNumericColumn` displays the record with `Numeric` format.

### Data Formatting

[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html) allows to format the numeric data with culture-specific information by using the [GridNumericColumn.NumberFormatInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#Syncfusion_WinForms_DataGrid_GridNumericColumn_NumberFormatInfo) property.

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

![Winforms datagrid shows to display the number format of numeric column in datagrid windows form](ColumnTypes_images/ColumnTypes_img5.png)

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

![Winforms datagrid shows to display the percent format of numeric column in datagrid windows form](ColumnTypes_images/ColumnTypes_img6.png)

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

![Winforms datagrid shows to display the currency format of numeric column in datagrid windows form](ColumnTypes_images/ColumnTypes_img7.png)

### Displaying Null Value

[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html) provides support to restrict or allow null value in columns based on [GridNumericColumn.AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#Syncfusion_WinForms_DataGrid_GridNumericColumn_AllowNull) property.

### Auto Increment

[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html) allows end-user to increment or decrement the value by pressing up and down arrow keys. This can be enabled by setting [GridNumericColumn.InterceptArrowKeys](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#Syncfusion_WinForms_DataGrid_GridNumericColumn_InterceptArrowKeys) property to `true`.

## GridDateTimeColumn

[GridDateTimeColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) provides support to display and edit the date time values on the cell.

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

The date time value can be formatted by using [GridDateTimeColumn.Pattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_Pattern) property, which contains the set of predefined date time patterns.

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

[GridDateTimeColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) provides support to restrict or allow null value in columns based on [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_AllowNull) property. Instead of displaying null values, any default date time value can be displayed by using[NullValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_NullValue) property.
The `NullValue` property won’t work, when the `AllowNull` property is false.

### Auto Increment

[GridDateTimeColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html) allows end-user to increment or decrement the value when `MouseWheel`  by setting the [AllowValueChangeOnMouseWheel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_AllowValueChangeOnMouseWheel) property to true. 
The value can also be changed by pressing up and down arrow keys when the [InterceptArrowKeys](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_InterceptArrowKeys) property is true.

### Setting Date Time Value Range

Displaying the input value can be restricted within the range by using [MinDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_MinDateTime) and [MaxDateTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#Syncfusion_WinForms_DataGrid_GridDateTimeColumn_MaxDateTime) properties.

## GridCheckBoxColumn

[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) provides support to display and edit Boolean type data.

### Three State Check Box
[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) provides support for the three check states rather than two. The states are `checked`, `unchecked` and an `intermediate` state. This can be enabled by setting [AllowThreeState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_AllowThreeState) property to true.

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

![Winforms datagrid shows to display the three state of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img8.png)

### Text on the Check Box Column

[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) allows to display the text along with checkbox in the cell.  This can be enabled by setting the [AllowText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_AllowText) property to true.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["IsClosed"] as GridCheckBoxColumn).AllowText = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("IsClosed"), GridCheckBoxColumn).AllowText = True
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to display the text of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img9.png)

### Check Box on Header

By default, CheckBox displays only in record cell. By enabling the [AllowCheckBoxOnHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_AllowCheckBoxOnHeader) property, CheckBox can be displayed in header cell of `GridCheckBoxColumn`.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["IsClosed"] as GridCheckBoxColumn).AllowCheckBoxOnHeader = true;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("IsClosed"), GridCheckBoxColumn).AllowCheckBoxOnHeader = True
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to display the header text of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img10.png)

All the checkboxes in a column will be checked/unchecked by clicking on the CheckBox in the header.

![Winforms datagrid shows to display the all checked/unchecked by clicking on the checkbox in the header in datagrid windows form](ColumnTypes_images/ColumnTypes_img22.png)

By default, enabling the [AllowCheckBoxOnHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_AllowCheckBoxOnHeader) property will display the checkbox with text on the header cell of [GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html). The text in the header cell can be disabled by setting empty value for the [HeaderText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_HeaderText) property of the column.

{% tabs %}
{% highlight c# %}
(this.sfDataGrid1.Columns["IsClosed"] as GridCheckBoxColumn).AllowCheckBoxOnHeader = true;
this.sfDataGrid1.Columns["IsClosed"].HeaderText = string.Empty;
{% endhighlight %}
{% highlight vb %}
TryCast(Me.sfDataGrid1.Columns("IsClosed"), GridCheckBoxColumn).AllowCheckBoxOnHeader = True
Me.sfDataGrid1.Columns("IsClosed").HeaderText = String.Empty
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to display the header text as disable of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img23.png)

### Customizing the Check Box Value

[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html) allows to display check box for enumeration type columns also. The corresponding underlying value for the checked, unchecked and intermediate state can be specified by the below properties.

1. [TrueValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_TrueValue) – Specifies the underlying value corresponding 
to a cell value of true, which appears as a checked box.

2. [FalseValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_FalseValue) – Specifies the underlying value corresponding to a cell value of false, which appears as an unchecked box.

3. [IntermediateValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxColumn_IndeterminateValue) – Specifies the underlying value corresponding to an indeterminate or null cell value, which appears as a disabled checkbox.

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

![Winforms datagrid shows to display the customize the value of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img11.png)

### Appearance

#### Styling

SfDataGrid allows to customize the appearance of the check box column through [SfDataGrid.Style.CheckBoxStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_CheckBoxStyle) property.

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

![Winforms datagrid shows to display the changed the appearance  of checkbox column in datagrid windows form](ColumnTypes_images/ColumnTypes_img12.png)

#### Conditional Styling

SfDataGrid allows to customize the appearance of the check box column based on conditions through [QueryCheckBoxCellStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

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

![Winforms datagrid shows to display the changed the appearance  of checkbox column based on the condition in datagrid windows form](ColumnTypes_images/ColumnTypes_img13.png)

### Canceling the check box state change

Changing the check box state can be canceled by setting the [CellCheckBoxClickEventArgs.Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.CellCheckBoxClickEventArgs.html) to true in the [SfDataGrid.CellCheckBoxClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CellCheckBoxClick += sfDataGrid1_CellCheckBoxClick;

void sfDataGrid1_CellCheckBoxClick(object sender, CellCheckBoxClickEventArgs e)
{
    if (e.RowIndex == 1)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.CellCheckBoxClick, AddressOf SfDataGrid1_CellCheckBoxClick
	
Private Sub sfDataGrid1_CellCheckBoxClick(ByVal sender As Object, ByVal e As CellCheckBoxClickEventArgs)
	If e.RowIndex = 1 Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

## GridComboBoxColumn
[GridComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html) is derived from the GridColumn which hosts SfComboBox as edit element. Data source to the combo box can be set by using the [GridComboBoxColumn.DataSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DataSource) property.

By default, GridComboBoxColumn displays the value by using the [MappingName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_MappingName) property. You can set [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DisplayMember) that denotes the string to be displayed in the cell (to serve as visual representation of object). You can set [ValueMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_ValueMember) that denotes string from the object data source that acts as a value for that cell or to get the SelectedValue from the SelectedItem.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Columns.Add( new GridComboBoxColumn() { MappingName = "ShipCity",HeaderText="Ship City" }); 
(this.sfDataGrid.Columns["ShipCity"] as GridComboBoxColumn).DataSource = orderInfo.ComboBoxItemsSource; 
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Columns.Add(New GridComboBoxColumn() With {.MappingName = "ShipCity", .HeaderText="Ship City"})
TryCast(Me.sfDataGrid.Columns("ShipCity"), GridComboBoxColumn).DataSource = orderInfo.ComboBoxItemsSource
{% endhighlight %}
{% endtabs %}

The SfDataGrid triggers the [CellComboBoxSelectionChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event when the `SelectedValue` is changed. The [CellComboBoxSelectionChangedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.CellComboBoxSelectionChangedEventArgs.html) of CellComboBoxSelectionChanged event provides the information of the changed cell value. Properties to get the selected item and index are as follows:

*	[SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.CellComboBoxSelectionChangedEventArgs.html#Syncfusion_WinForms_DataGrid_Events_CellComboBoxSelectionChangedEventArgs_SelectedIndex) : Returns the index of selected item.
*	[SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Events.CellComboBoxSelectionChangedEventArgs.html#Syncfusion_WinForms_DataGrid_Events_CellComboBoxSelectionChangedEventArgs_SelectedItem)	: Returns the selected item from drop-down list.

![Winforms datagrid shows to display GridComboBoxColumn in datagrid windows form](ColumnTypes_images/ComboBox_img1.png)

### Opening drop-down popup on single-click
Drop-down of the combo-box column can be shown on single click by using the custom combo-box renderer. 
In the following code, the `GridComboBoxCellRendererExt` is created to call the `ShowDropDown` method to open the drop-down on the initialization. 
Replace the default renderer with created renderer in the SfDataGrid.CellRenderers collection.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CellRenderers.Remove("ComboBox");
this.sfDataGrid.CellRenderers.Add("ComboBox", new GridComboBoxCellRendererExt());

public class GridComboBoxCellRendererExt : GridComboBoxCellRenderer
{
    protected override void OnInitializeEditElement(DataColumnBase column, RowColumnIndex rowColumnIndex, SfComboBox uiElement)
    {
        base.OnInitializeEditElement(column, rowColumnIndex, uiElement);
        uiElement.ShowDropDown();          
    }     
}
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.CellRenderers.Remove("ComboBox")
Me.sfDataGrid.CellRenderers.Add("ComboBox", New GridComboBoxCellRendererExt())

Public Class GridComboBoxCellRendererExt
	Inherits GridComboBoxCellRenderer
	Protected Overrides Sub OnInitializeEditElement(ByVal column As DataColumnBase, ByVal rowColumnIndex As RowColumnIndex, ByVal uiElement As SfComboBox)
		MyBase.OnInitializeEditElement(column, rowColumnIndex, uiElement)
		uiElement.ShowDropDown()
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

### Customizing GroupCaptionText based on DisplayMemberPath
By default, the group caption text will be displayed based on the [MappingName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_MappingName) of combo-box column. This can be changed to display the [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DisplayMember) by using the [GroupMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_GroupMode) property of the column.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridComboBoxColumn() { MappingName = "ShipCityID", HeaderText = "Ship City", ValueMember = "ShipCityID", DisplayMember = "ShipCityName", GroupMode = Syncfusion.Data.DataReflectionMode.Display });
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridComboBoxColumn() With {.MappingName = "ShipCityID", .HeaderText = "Ship City", .ValueMember = "ShipCityID", .DisplayMember = "ShipCityName", .GroupMode = Syncfusion.Data.DataReflectionMode.Display})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to display the customizing groupcaptiontext based on the displaymemberpath in datagrid windows form](ColumnTypes_images/ComboBox_img2.png)

### Loading different DataSources for each row of GridComboBoxColumn
Different data sources can be loaded for each row of the [GridComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html) by using the [DataSourceSelector](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_IDataSourceSelector) property.

### Implementing IDataSourceSelector
DataSourceSelector needs to implement IDataSourceSelector interface to implement the GetDataSource method that receives the following parameters,

* record – data object associated with row.
* dataSource – Data context of data grid.

In the following code, DataSource of the `Ship City` column is returned based on `ShipCountry` column value by using the record and the data context of SfDataGrid passed to the `GetDataSource` method.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridComboBoxColumn() { MappingName = "ShipCityID", HeaderText = "Ship City", ValueMember = "ShipCityID", DisplayMember = "ShipCityName", IDataSourceSelector = new DataSourceSelector()});

public class DataSourceSelector : IDataSourceSelector
{
    public IEnumerable GetDataSource(object record, object dataSource)
    {
        if (record == null)
            return null;

        var orderInfo = record as OrderDetails;
        var countryName = orderInfo.ShipCountry;

        var countryDetails = new CountryInfoRepository();

        //Returns ShipCity collection based on ShipCountry.
        if (countryDetails.ShipCities.ContainsKey(countryName))
        {
            ObservableCollection<ShipCityDetails> shipCities = null;
            countryDetails.ShipCities.TryGetValue(countryName, out shipCities);
            return shipCities.ToList();
        }
        return null;
    }
}
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridComboBoxColumn() With {.MappingName = "ShipCityID", .HeaderText = "Ship City", .ValueMember = "ShipCityID", .DisplayMember = "ShipCityName", .IDataSourceSelector = New DataSourceSelector()})

Public Class DataSourceSelector
	Implements IDataSourceSelector
	Public Function GetDataSource(ByVal record As Object, ByVal dataSource As Object) As IEnumerable
		If record Is Nothing Then
			Return Nothing
		End If

		Dim orderInfo = TryCast(record, OrderDetails)
		Dim countryName = orderInfo.ShipCountry

		Dim countryDetails = New CountryInfoRepository()

		'Returns ShipCity collection based on ShipCountry.
		If countryDetails.ShipCities.ContainsKey(countryName) Then
			Dim shipCities As ObservableCollection(Of ShipCityDetails) = Nothing
			countryDetails.ShipCities.TryGetValue(countryName, shipCities)
			Return shipCities.ToList()
		End If
		Return Nothing
	End Function
End Class
{% endhighlight %}
{% endtabs %}

Following screenshot illustrates the different `Ship City` DataSource bound to each row of the ComboBox column based on the `Ship Country` Name.

![Winforms datagrid shows to display the different data source in checkbox column in datagrid windows form](ColumnTypes_images/ComboBox_img3.png)

![Winforms datagrid shows to display the different data source in checkbox column in datagrid windows form](ColumnTypes_images/ComboBox_img4.png)

### Editing the combo box
By default, the combo-box column is not allowed to edit the values. This can be changed by setting the [GridComboBoxColumn.DropDownStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DropDownStyle) as `DropDown` to edit the values by using the text box.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridComboBoxColumn() { MappingName = "ShipCityID", HeaderText = "Ship City", ValueMember = "ShipCityID", DisplayMember = "ShipCityName", DropDownStyle = DropDownStyle.DropDown, IDataSourceSelector = new DataSourceSelector()});
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridComboBoxColumn() With {.MappingName = "ShipCityID", .HeaderText = "Ship City", .ValueMember = "ShipCityID", .DisplayMember = "ShipCityName", .DropDownStyle = DropDownStyle.DropDown, .IDataSourceSelector = New DataSourceSelector()})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to apply the edit mode of combobox column in datagrid windows form](ColumnTypes_images/ComboBox_img5.png)

### Auto completing on edit mode
The auto completion on the edit mode can be enabled by using the [GridComboBoxColumn.AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_AutoCompleteMode) property. Default value is `None`. Following types of auto complete modes are available,

* None
* Append
* Suggest
* SuggestAppend

{% tabs %}
{% highlight c# %}
GridComboBoxColumn comboBoxColumn = sfDataGrid.Columns["ShipCityID"] as GridComboBoxColumn;
comboBoxColumn.DropDownStyle = DropDownStyle.DropDown;
comboBoxColumn.AutoCompleteMode = AutoCompleteMode.Suggest;
{% endhighlight %}
{% highlight vb %}
Dim comboBoxColumn As GridComboBoxColumn = TryCast(sfDataGrid.Columns("ShipCityID"), GridComboBoxColumn)
comboBoxColumn.DropDownStyle = DropDownStyle.DropDown
comboBoxColumn.AutoCompleteMode = AutoCompleteMode.Suggest
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to apply the auto completing on edit mode of combobox column in datagrid windows form](ColumnTypes_images/ComboBox_img6.png)

### Auto suggesting on edit mode
By default, auto suggestion in the dropdown will display the value based on the `Starts with` filter condition. This can be changed to retrieve the matches with the Contains condition by using the [AutoSuggestionMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_AutoSuggestMode) property. You can also set delay for auto suggestion by using the [AutoSuggestDelay](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_AutoSuggestDelay) property.

{% tabs %}
{% highlight c# %}
GridComboBoxColumn comboBoxColumn = sfDataGrid.Columns["ShipCityID"] as GridComboBoxColumn;
comboBoxColumn.DropDownStyle = DropDownStyle.DropDown;
comboBoxColumn.AutoCompleteMode = AutoCompleteMode.Suggest;
comboBoxColumn.AutoSuggestMode = AutoCompleteSuggestMode.Contains;
comboBoxColumn.AutoSuggestDelay = 1000;
{% endhighlight %}
{% highlight vb %}
Dim comboBoxColumn As GridComboBoxColumn = TryCast(sfDataGrid.Columns("ShipCityID"), GridComboBoxColumn)
comboBoxColumn.DropDownStyle = DropDownStyle.DropDown
comboBoxColumn.AutoCompleteMode = AutoCompleteMode.Suggest
comboBoxColumn.AutoSuggestMode = AutoCompleteSuggestMode.Contains
comboBoxColumn.AutoSuggestDelay = 1000
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to apply the auto suggesting on edit mode of combobox column in datagrid windows form](ColumnTypes_images/ComboBox_img7.png)

## GridButtonColumn

[GridButtonColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html) provides support to display columns data as buttons.

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

![Winforms datagrid shows to display the column data as button column in datagrid windows form](ColumnTypes_images/ColumnTypes_img14.png)

### Default Text for the Buttons

By default, [GridButtonColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html) displays the button with underlying value as button text. The default text for the buttons can be changed by setting value for [DefaultButtonText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#Syncfusion_WinForms_DataGrid_GridButtonColumn_DefaultButtonText) property. The `DefaultButtonText` property will work only when the[AllowDefaultButtonText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#Syncfusion_WinForms_DataGrid_GridButtonColumn_AllowDefaultButtonText) property value is true.

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

![Winforms datagrid shows to display the default data as button column in datagrid windows form](ColumnTypes_images/ColumnTypes_img15.png)

### Adding Image for the Button Column

SfDataGrid allows to display image within the button by using the [GridButtonColumn.Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#Syncfusion_WinForms_DataGrid_GridButtonColumn_Image) property.

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

The text and image within the [GridButtonColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html) can be positioned relative to each other by using the [TextImageRelation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#Syncfusion_WinForms_DataGrid_GridButtonColumn_TextImageRelation) property.

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
![Winforms datagrid shows to display the column data and images as button column in datagrid windows form](ColumnTypes_images/ColumnTypes_img16.png)

### Appearance

SfDataGrid allows to customize the appearance of the button column through [SfDataGrid.Style.ButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_ButtonStyle) property.

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

![Winforms datagrid shows to display the customize the appearance of button column in datagrid windows form](ColumnTypes_images/ColumnTypes_img17.png)

### Deleting the selected records by button click

The selected records can be deleted when clicking the cell button by using the [DeleteSelectedRecords](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_DeleteSelectedRecords) method in the [SfDataGrid.CellButtonClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CellButtonClick += sfDataGrid1_CellButtonClick;   

private void sfDataGrid1_CellButtonClick(object sender, CellButtonClickEventArgs e)
{
    sfDataGrid1.DeleteSelectedRecords();          
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.CellButtonClick, AddressOf SfDataGrid1_ CellButtonClick

Private Sub sfDataGrid1_CellButtonClick(ByVal sender As Object, ByVal e As CellButtonClickEventArgs)
	sfDataGrid1.DeleteSelectedRecords()
End Sub
{% endhighlight %}
{% endtabs %}

## GridHyperlinkColumn

[GridHyperlinkColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html) provides support to display columns data as `HyperLink` and allows to open hyperlinks as well as to run executable files. 

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

SfDataGrid provide support to open the hyperlink either by single click or double click. This can be specified by the [HyperlinkOpenBehavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#Syncfusion_WinForms_DataGrid_GridHyperlinkColumn_HyperlinkOpenBehavior) property.
The [HyperlinkOpenArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#Syncfusion_WinForms_DataGrid_GridHyperlinkColumn_HyperlinkOpenArea) property decides whether to open the hyperlink by clicking anywhere on the cell or by clicking only on the text inside the cell.

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

SfDataGrid allows to customize the appearance of the hyperlink column through [SfDataGrid.Style.HyperlinkStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_HyperlinkStyle) property.

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

![Winforms datagrid shows to display the customize the appearance of hyperlink column in datagrid windows form](ColumnTypes_images/ColumnTypes_img18.png)

### Canceling the Navigation

Navigation to the hyperlinks can be canceled within the [HyperlinkOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event by setting the `CellHyperlinkOpeningEventArgs.Cancel` to true.

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

[HyperlinkOpened](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event occurs after the hyperlink is opened. It does not occur if the `HyperlinkOpening` event is canceled.

### Changing the Browser to Open the Hyperlink

By default, [GridHyperlinkColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html) opens the hyperlink in system default browser. This can be changed by handling the [HyperlinkOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

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

[GridImageColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html) provides support to display columns data as Image.
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

The text and image within the [GridImageColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html) can be positioned relative to each other by using the [TextImageRelation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html#Syncfusion_WinForms_DataGrid_GridImageColumn_TextImageRelation) property.
The `TextImageRelation` property will not work if [ImageLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html#Syncfusion_WinForms_DataGrid_GridImageColumn_ImageLayout) property value is not equal to none.

### Appearance

SfDataGrid allows to customize the appearance of the image column based on conditions through [QueryImageCellStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

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
![Winforms datagrid shows to display the customize the appearance of image column in datagrid windows form](ColumnTypes_images/ColumnTypes_img19.png)

## GridProgressBarColumn

[GridProgressBarColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridProgressBarColumn.html) provides support to display non-editable integer type data.

#### Changing boundary values of progress

You can change the boundary values of ProgressBar using the `Maximum` and `Minimum` properties.

Maximum - Specifies the maximum value of progress bar.

Minimum - Specifies the minimum value of progress bar.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Columns.Add(new GridProgressBarColumn() { MappingName = "SoftwareProficiency", HeaderText = "Software Proficiency", Maximum = 100, Minimum = 0, ValueMode = ProgressBarValueMode.Percentage });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Columns.Add(New GridProgressBarColumn() With {.MappingName = "SoftwareProficiency", .HeaderText = "Software Proficiency", .Maximum = 100, .Minimum = 0, .ValueMode = ProgressBarValueMode.Percentage})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows with ProgressBar column](ColumnTypes_images/ColumnTypes_img24.png)

#### Changing progress value mode

You can change the value mode of ProgressBar using the [ValueMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridProgressBarColumn.html#Syncfusion_WinForms_DataGrid_GridProgressBarColumn_ValueMode) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Columns.Add(new GridProgressBarColumn() { MappingName = "SoftwareProficiency", HeaderText = "Software Proficiency", Maximum = 100, Minimum = 0, ValueMode = ProgressBarValueMode.Value });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Columns.Add(New GridProgressBarColumn() With {.MappingName = "SoftwareProficiency", .HeaderText = "Software Proficiency", .Maximum = 100, .Minimum = 0, .ValueMode = ProgressBarValueMode.Value })
{% endhighlight %}
{% endtabs %}

![Changing the ProgressBar value mode as Value](ColumnTypes_images/ColumnTypes_img25.png)

### Appearance

#### Background

The background color can be set by using the `BackgroundColor` property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.BackgroundColor = Color.DarkGray;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.BackgroundColor = Color.DarkGray
{% endhighlight %}
{% endtabs %}

![Changing the ProgressBar BackgroundColor](ColumnTypes_images/ColumnTypes_img26.png)

#### Foreground

The font color and the foreground color can be set by using the [ForegroundColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_ForegroundColor) property.

ForegroundColor - Specifies the color used to draw the foreground in segment mode and constant mode.

TextColor - Specifies the color of the font used to draw the text of the ProgressBar.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.TextColor = Color.Red;
this.sfDataGrid.Style.ProgressBarStyle.ForegroundColor = Color.LightGoldenrodYellow;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.TextColor = Color.Red
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundColor = Color.LightGoldenrodYellow
{% endhighlight %}
{% endtabs %}

![Changing the ProgressBar ForegroundColor and TextColor](ColumnTypes_images/ColumnTypes_img27.png)

### Gradient appearance

#### Gradient background

The color of the background gradient can be changed using the following properties:

[GradientBackgroundStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_GradientBackgroundStartColor) - Specifies the start color of the background gradient.The [BackgroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridProgressBarInfo.html#Syncfusion_Windows_Forms_Grid_GridProgressBarInfo_BackgroundStyle)  property should be set to `Gradient`.

[GradientBackgroundEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_GradientBackgroundEndColor) - Specifies the end color of the background gradient. The `BackgroundStyle` property should be set to 'Gradient' .

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.BackgroundStyle =  GridProgressBarStyle.Gradient;
this.sfDataGrid.Style.ProgressBarStyle.GradientBackgroundStartColor = Color.GreenYellow;
this.sfDataGrid.Style.ProgressBarStyle.GradientForegroundEndColor = Color.DarkGray;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.BackgroundStyle = GridProgressBarStyle.Gradient
Me.sfDataGrid.Style.ProgressBarStyle.GradientBackgroundStartColor = Color.GreenYellow
Me.sfDataGrid.Style.ProgressBarStyle.GradientForegroundEndColor = Color.DarkGray
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows background gradient appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img28.png)

#### Gradient foreground

The color of the foreground gradient can be changed by using the following properties:

[GradientForegroundStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_GradientForegroundStartColor) -  Specifies the start color of the foreground gradient. The [ForegroundStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_ForegroundStyle) property should be set to `Gradient`.

[GradientForegroundEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_GradientForegroundEndColor) - Specifies the end color of the foreground gradient. The `ForegroundStyle` property should be set to `Gradient`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Gradient;
this.sfDataGrid.Style.ProgressBarStyle.GradientForegroundStartColor = Color.Yellow;
this.sfDataGrid.Style.ProgressBarStyle.GradientForegroundEndColor = Color.Blue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Gradient
Me.sfDataGrid.Style.ProgressBarStyle.GradientForegroundStartColor = Color.Yellow
Me.sfDataGrid.Style.ProgressBarStyle.GradientForegroundEndColor = Color.Blue
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows foreground gradient appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img29.png)

### Tube appearance

Colors can be set to the background tube of the ProgressBar column.

#### Tube background

[TubeBackgroundStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_TubeBackgroundStartColor) - Specifies the start color of the background tube. The `BackgroundStyle` property should be set to `Tube`.

[TubeBackgroundEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_TubeBackgroundEndColor) - Specifies the end color of the background tube. The`BackgroundStyle` property should be set to `Tube`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.BackgroundStyle =  GridProgressBarStyle.Tube;
this.sfDataGrid.Style.ProgressBarStyle.TubeBackgroundStartColor = Color.YellowGreen;
this.sfDataGrid.Style.ProgressBarStyle.TubeBackgroundEndColor = Color.White;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.BackgroundStyle = GridProgressBarStyle.Tube
Me.sfDataGrid.Style.ProgressBarStyle.TubeBackgroundStartColor = Color.YellowGreen
Me.sfDataGrid.Style.ProgressBarStyle.TubeBackgroundEndColor = Color.White
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows background tube appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img30.png)

#### Tube foreground

Colors can be set for the foreground tube of the ProgressBar.

[TubeForegroundStartColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_TubeForegroundStartColor) - Specifies the start color of the foreground tube.The `ForegroundStyle` property should be set to `Tube`.

[TubeForegroundEndColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_TubeForegroundStartColor) - Specifies the end color of the foreground tube.The `ForegroundStyle` property should be set to `Tube`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Tube;
this.sfDataGrid.Style.ProgressBarStyle.TubeForegroundStartColor = Color.LightGray;
this.sfDataGrid.Style.ProgressBarStyle.TubeForegroundEndColor = Color.Turquoise;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Tube
Me.sfDataGrid.Style.ProgressBarStyle.TubeForegroundStartColor = Color.LightGray
Me.sfDataGrid.Style.ProgressBarStyle.TubeForegroundEndColor = Color.Turquoise
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows foreground tube appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img31.png)


### Segment appearance

#### Segmented background

The background of the ProgressBar column can be displayed with a segmented appearance by using the property given below.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.AllowBackgroundSegments = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.AllowBackgroundSegments = True
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows background segment appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img32.png)

#### Segmented foreground

The foreground of the ProgressBar column can be displayed with a segmented appearance by using the [AllowForegroundSegments](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_AllowForegroundSegments) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.AllowForegroundSegments =true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.AllowForegroundSegments =True
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows foreground segment appearance of the ProgressBar](ColumnTypes_images/ColumnTypes_img33.png)

### Changing alignment of text

Progressbar allows to change the alignment of text. Progressbar supports the following list of alignment options:

<table>
<tr>
<td>
{{'**Alignment**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Center
</td>
<td>
The text on the progress bar can be set to Center using the `TextAlignment` property. This is the default text alignment. The `ValueMode` property should be set to `Percentage` or `Value`.
</td>
</tr>
<tr>
<td>
Left
</td>
<td>
The text on the progress bar can be set to left using the `TextAlignment` property. The `ValueMode` property should be set to `Percentage` or `Value.
</td>
</tr>
<tr>
<td>
Right
</td>
<td>
The text on the progress bar can be set to right using the `TextAlignment` property. The `ValueMode` property should be set to `Percentage` or `Value`.
</td>
</tr>
</table>

The following code sample demonstrates how to apply the text alignment style to left.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Left;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Left
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows TextAlignment as left of the ProgressBar](ColumnTypes_images/ColumnTypes_img34.png)

### Changing orientation

Progressbar allows to change the orientation of text. Progressbar contains the following list of orientation options:

<table>
<tr>
<td>
{{'**Orientation**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Horizontal
</td>
<td>
The direction of display of the ProgressBar can be changed to `Horizontal` using the following given property. In this case, direction of the text is also changed.
</td>
</tr>
<tr>
<td>
Vertical
</td>
<td>
The direction of display of the ProgressBar can be changed to `Vertical` using the following property. In this case, the direction of the text is also changed.
</td>
</tr>
</table>

The following code sample demonstrates how to apply the progress orientation style to vertical.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.ProgressBarStyle.Orientation = Orientation.Vertical;
this.sfDataGrid.RowHeight = 50;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.ProgressBarStyle.Orientation = Orientation.Vertical
Me.sfDataGrid.RowHeight = 50
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows progress orientation as Vertical of the ProgressBar](ColumnTypes_images/ColumnTypes_img37.png)

### Add image in progress bar

The `ForegroundStyle` is set to `Image` style, then the foreground image can be specified using the following given property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.RowHeight = 50;
this.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Image;
this.sfDataGrid.Style.ProgressBarStyle.ForegroundImage = (Bitmap)Image.FromFile(@"cloud.jpg");
this.sfDataGrid.Style.ProgressBarStyle.FitImageToProgressBar = false;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.RowHeight = 50
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Image
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundImage = CType(Image.FromFile("cloud.jpg"), Bitmap)
Me.sfDataGrid.Style.ProgressBarStyle.FitImageToProgressBar = false
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows progress image of the ProgressBar](ColumnTypes_images/ColumnTypes_img38.png)

#### Fit image to progress

Image can be fit to the `ForegroundStyle` to enable the [FitImageToProgressBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.ProgressBarCellStyleInfo.html#Syncfusion_WinForms_DataGrid_Styles_ProgressBarCellStyleInfo_FitImageToProgressBar) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.RowHeight = 50;
this.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Image;
this.sfDataGrid.Style.ProgressBarStyle.ForegroundImage = (Bitmap)Image.FromFile(@"cloud.jpg");
this.sfDataGrid.Style.ProgressBarStyle.FitImageToProgressBar = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.RowHeight = 50
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundStyle = GridProgressBarStyle.Image
Me.sfDataGrid.Style.ProgressBarStyle.ForegroundImage = CType(Image.FromFile("cloud.jpg"), Bitmap)
Me.sfDataGrid.Style.ProgressBarStyle.FitImageToProgressBar = true
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows progress image in fit of the ProgressBar](ColumnTypes_images/ColumnTypes_img39.png)

### Conditional styling

SfDataGrid allows to customize the appearance of the ProgressBar column based on conditions using the [QueryProgressBarCellStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
sfDataGrid.QueryProgressBarCellStyle += SfDataGrid_QueryProgressBarCellStyle;

private void SfDataGrid_QueryProgressBarCellStyle(object sender, QueryProgressBarCellStyleEventArgs e)
{
if (e.ColumnIndex == 10 && e.RowIndex % 2 == 0)
{
e.Style.TextColor = Color.Blue;
e.Style.ForegroundColor = Color.Yellow;
e.Style.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Left;
}
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.QueryProgressBarCellStyle, AddressOf SfDataGrid_QueryProgressBarCellStyle

Private Sub SfDataGrid_QueryProgressBarCellStyle(ByVal sender As Object, ByVal e As QueryProgressBarCellStyleEventArgs)
    If e.ColumnIndex = 10 AndAlso e.RowIndex Mod 2 = 0 Then
        e.Style.TextColor = Color.Blue
        e.Style.ForegroundColor = Color.Yellow
        e.Style.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Left
    End If
End Sub

{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows cell conditional styling of the ProgressBar](ColumnTypes_images/ColumnTypes_img40.png)

## GridMultiSelectComboBoxColumn

[GridMultiSelectComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html)  is derived from the GridColumn that hosts SfComboBox as an edit element. Data source to the combo box can be set using the [GridMultiSelectComboBoxColumn.DataSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridMultiSelectComboBoxColumn_DataSource) property.
By default, GridMultiSelectComboBoxColumn displays values using the [MappingName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_MappingName) property. You can set [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DisplayMember) that denotes the string to be displayed in the cell (to serve as visual representation of object). You can set [ValueMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_ValueMember) that denotes string from the object data source that acts as a value for that cell to get the SelectedValue from the SelectedItem.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridMultiSelectComboBoxColumn() { MappingName = "Products", HeaderText = "Products", DisplayMember = "ProductName", ValueMember = "ProductName", DataSource = orderInfo.ProductDetails });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridMultiSelectComboBoxColumn() With {.MappingName = "Products", .HeaderText = "Products", .DisplayMember = "ProductName", .ValueMember = "ProductName", .DataSource = orderInfo.ProductDetails})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows that MultiSelectComboBox column](ColumnTypes_images/ColumnTypes_img41.png)

### Opening drop-down popup on single-click

The drop-down of the MultiSelectComboBox column can be shown on single click by enabling [StaysOpenOnEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridMultiSelectComboBoxColumn_StaysOpenOnEdit).

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridMultiSelectComboBoxColumn() { MappingName = "Products", HeaderText = "Products", DisplayMember = "ProductName", ValueMember = "ProductName", DataSource = orderInfo.ProductDetails, StaysOpenOnEdit = true });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridMultiSelectComboBoxColumn() With {.MappingName = "Products", .HeaderText = "Products", .DisplayMember = "ProductName", .ValueMember = "ProductName", .DataSource = orderInfo.ProductDetails, .StaysOpenOnEdit = True})
{% endhighlight %}
{% endtabs %}

### Customizing GroupCaptionText based on DisplayMember

By default, the group caption text will be displayed based on  [MappingName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_MappingName) of multi select combo box column. This can be changed to display the [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridComboBoxColumn_DisplayMember) using the [GroupMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_GroupMode) property of column.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridMultiSelectComboBoxColumn() { MappingName = "Products", HeaderText = "Products", DisplayMember = "ProductName", ValueMember = "ProductName", DataSource = orderInfo.ProductDetails, GroupMode = Syncfusion.Data.DataReflectionMode.Display });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridMultiSelectComboBoxColumn() With {.MappingName = "Products", .HeaderText = "Products", .DisplayMember = "ProductName", .ValueMember = "ProductName", .DataSource = orderInfo.ProductDetails, .GroupMode = Syncfusion.Data.DataReflectionMode.Display})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows to customizing GroupCaptionText based on DisplayMember](ColumnTypes_images/ColumnTypes_img42.png)

### Loading different DataSources for each row

Different data sources can be loaded to each row of [GridMultiSelectComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html)  using the [DataSourceSelector](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridMultiSelectComboBoxColumn_IDataSourceSelector) property.

#### Implementing IDataSourceSelector

`DataSourceSelector` needs to implement [IDataSourceSelector](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html#Syncfusion_WinForms_DataGrid_GridMultiSelectComboBoxColumn_IDataSourceSelector) interface to implement the GetDataSource method that receives the following parameters:
•	Record – Data object associated with row.
•	DataSource – Data context of data grid.

In the following code, DataSource of the `ShipCity` column is returned based on the`ShipCountry` column value using the record and the data context of SfDataGrid passed to the `GetDataSource` method.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridMultiSelectComboBoxColumn() { MappingName = "ShipCityID", HeaderText = "Ship City", ValueMember = "ShipCityID", DisplayMember = "ShipCityName", IDataSourceSelector = new DataSourceSelector()});

public class DataSourceSelector : IDataSourceSelector
{
    public IEnumerable GetDataSource(object record, object dataSource)
    {
        if (record == null)
            return null;

        var orderInfo = record as OrderDetails;
        var countryName = orderInfo.ShipCountry;

        var countryDetails = new CountryInfoRepository();

        //Returns ShipCity collection based on ShipCountry.
        if (countryDetails.ShipCities.ContainsKey(countryName))
        {
            ObservableCollection<ShipCityDetails> shipCities = null;
            countryDetails.ShipCities.TryGetValue(countryName, out shipCities);
            return shipCities.ToList();
        }
        return null;
    }
}
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridMultiSelectComboBoxColumn() With {.MappingName = "ShipCityID", .HeaderText = "Ship City", .ValueMember = "ShipCityID", .DisplayMember = "ShipCityName", .IDataSourceSelector = New DataSourceSelector()})

Public Class DataSourceSelector
	Implements IDataSourceSelector
	Public Function GetDataSource(ByVal record As Object, ByVal dataSource As Object) As IEnumerable
		If record Is Nothing Then
			Return Nothing
		End If

		Dim orderInfo = TryCast(record, OrderDetails)
		Dim countryName = orderInfo.ShipCountry

		Dim countryDetails = New CountryInfoRepository()

		'Returns ShipCity collection based on ShipCountry.
		If countryDetails.ShipCities.ContainsKey(countryName) Then
			Dim shipCities As ObservableCollection(Of ShipCityDetails) = Nothing
			countryDetails.ShipCities.TryGetValue(countryName, shipCities)
			Return shipCities.ToList()
		End If
		Return Nothing
	End Function
End Class
{% endhighlight %}
{% endtabs %}

The following screenshot illustrates the different `ShipCity` DataSource bound to each row of the multi select combo box column based on the `ShipCountry` Name.

![Winforms datagrid shows that different dataSource for each row in MultiSelectComboBox column](ColumnTypes_images/ColumnTypes_img43.png)

![Winforms datagrid shows that different dataSource for each row in MultiSelectComboBox column](ColumnTypes_images/ColumnTypes_img44.png)

## GridMaskColumn

[GridMaskColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html) provides the support to display column data with the specified mask pattern. You can set the input mask at runtime by setting [GridMaskColumn.Mask](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_Mask) property.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "ContactNumber", HeaderText = "Contact Number", Mask = "(999) 999-9999" });
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "ContactNumber", .HeaderText = "Contact Number", .Mask = "(999) 999-9999"})
{% endhighlight %}
{% endtabs %}

![Winforms DataGrid shows with GridMaskColumn](ColumnTypes_images/ColumnTypes_img50.gif)

### Setting mask format

At runtime, you can copy or paste the entries of `GridMaskColumn`. The entries that are copied can be specified whether to include literals using the [GridMaskColumn.MaskFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_MaskFormat) property. By default `GridMaskColumn.MaskFormat` is set to `ClipModes.IncludeLiterals`, To get rid of the literals in the formatted string you can set [GridMaskColumn.MaskFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_MaskFormat) as `ClipModes.ExcludeLiterals`. 

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "ContactNumber", HeaderText = "Contact Number", Mask = "(999) 999-9999", MaskFormat = Syncfusion.Windows.Forms.Tools.ClipModes.ExcludeLiterals });
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "ContactNumber", .HeaderText = "Contact Number", .Mask = "(999) 999-9999", .MaskFormat = Syncfusion.Windows.Forms.Tools.ClipModes.ExcludeLiterals})
{% endhighlight %}
{% endtabs %}

### Setting prompt character

By default, an underscore (_) is displayed when the user input is absent. This can be changed by setting [GridMaskColumn.PromptCharacter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_PromptCharacter) property.

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "ContactNumber", HeaderText = "Contact Number", Mask = "(999) 999-9999", PromptCharacter = '^' });
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "ContactNumber", .HeaderText = "Contact Number", .Mask = "(999) 999-9999", .PromptCharacter = "^"c})
{% endhighlight %}
{% endtabs %}

### Setting separators

You can display the data along with separators specifying date, time and decimals at runtime using the [GridMaskColumn.DateSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_DateSeparator), [GridMaskColumn.TimeSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_TimeSeparator) and [GridMaskColumn.DecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMaskColumn.html#Syncfusion_WinForms_DataGrid_GridMaskColumn_DecimalSeparator) properties. Separators can be specified in the mask character itself.

For example, if you want to display the user data in date time format say 'mm/dd/yy', the mask character should be '##/##/##’.
If you want to display the date time as ‘mm-dd-yy’, change the `GridMaskColumn.DateSeparator` property from ‘/’ to ‘-‘.

<table>
<tr>
<th>
Separators</th><th>
Description</th></tr>
<tr>
<td>
DateSeparator</td><td>
Specifies the character to use when a date separator position is specified. The default separator is '/'.
</td>
</tr>
<tr>
<td>
DecimalSeparator</td><td>
Specifies the character to use when a decimal separator position is specified. The default separator is '.'.
</td>
</tr>
<tr>
<td>
TimeSeparator</td><td>
Specifies the character to use when a time separator position is specified. The default separator is ':'.
</td>
</tr>
</table>

{% tabs %}
{% highlight c# %}
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "ShippingDate", HeaderText = "Shipping Date", Mask = "##/##/####", DateSeparator = '-' });
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "Freight", HeaderText = "Freight", Mask = "##.###", DecimalSeparator = '.' });
sfDataGrid.Columns.Add(new GridMaskColumn() { MappingName = "ShippingTime", HeaderText = "Shipping Time", Mask = "##:##:##", TimeSeparator=':' });
{% endhighlight %}
{% highlight vb %}
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "ShippingDate", .HeaderText = "Shipping Date", .Mask = "##/##/####", .DateSeparator = "-"c})
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "Freight", .HeaderText = "Freight", .Mask = "##.###", .DecimalSeparator = "."c})
sfDataGrid.Columns.Add(New GridMaskColumn() With {.MappingName = "ShippingTime", .HeaderText = "Shipping Time", .Mask = "##:##:##", .TimeSeparator=":"c})
{% endhighlight %}
{% endtabs %}

## GridCheckBoxSelectorColumn

`SfDataGrid` allows you to select or deselect individual rows through CheckBox using [GridCheckBoxSelectorColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxSelectorColumn.html), which is not bound with data object from underlying data source, and it can be added like normal columns. The selector column supports row selection alone, and selection in selector column works based on the [SelectionMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_SelectionMode).

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridCheckBoxSelectorColumn() { MappingName = "SelectorColumn", HeaderText = "Selector", Width = 100, CheckBoxSize = new Size(14, 14) });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridCheckBoxSelectorColumn() With
{
        .MappingName = "SelectorColumn",
        .HeaderText = "Selector",
        .Width = 100,
        .CheckBoxSize = New Size(14, 14)
})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows that GridCheckBoxSelector column](ColumnTypes_images/ColumnTypes_img46.png)

### CheckBox on column header

You can display check box instead of text in header of selector column by setting the [AllowCheckBoxOnHeader](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxSelectorColumn.html#Syncfusion_WinForms_DataGrid_GridCheckBoxSelectorColumn_AllowCheckBoxOnHeader) property to `True`. Using header check box, you can select or deselect all the rows in the datagrid.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridCheckBoxSelectorColumn() { MappingName = "SelectorColumn", HeaderText = string.Empty, AllowCheckBoxOnHeader = true, Width = 34, CheckBoxSize = new Size(14, 14) });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridCheckBoxSelectorColumn() With
{
        .MappingName = "SelectorColumn",
        .HeaderText = String.Empty,
        .AllowCheckBoxOnHeader = True,
        .Width = 34,
        .CheckBoxSize = New Size(14, 14)
})
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows that GridCheckBoxSelectorColumn header text](ColumnTypes_images/ColumnTypes_img47.png)

### Styling the selector column

The style of checkbox in record cells can be customized using the [CheckBoxStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_CheckBoxStyle) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.CheckBoxStyle.CheckedBorderColor = Color.DarkViolet;
this.sfDataGrid1.Style.CheckBoxStyle.UncheckedBorderColor = Color.Red;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.CheckBoxStyle.CheckedBorderColor = Color.DarkViolet
Me.sfDataGrid1.Style.CheckBoxStyle.UncheckedBorderColor = Color.Red
{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows that GridCheckBoxSelectorColumn styling](ColumnTypes_images/ColumnTypes_img48.png)

The style of the header checkbox can be customized through the [QueryCheckBoxCellStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.QueryCheckBoxCellStyle += OnSfDataGrid1_QueryCheckBoxCellStyle;

private void OnSfDataGrid1_QueryCheckBoxCellStyle(object sender, Syncfusion.WinForms.DataGrid.Events.QueryCheckBoxCellStyleEventArgs e)
{
    if (e.RowIndex == this.sfDataGrid1.TableControl.GetHeaderIndex() && e.Column.MappingName == "SelectorColumn")
    {
        e.Style.IndeterminateBorderColor = Color.Red;
        e.Style.IndeterminateColor = Color.DarkViolet;
    }
}

{% endhighlight %}
{% highlight vb %}

AddHandler sfDataGrid1.QueryCheckBoxCellStyle, AddressOf OnSfDataGrid1_QueryCheckBoxCellStyle

Private Sub OnSfDataGrid1_QueryCheckBoxCellStyle(ByVal sender As Object, ByVal e As QueryCheckBoxCellStyleEventArgs)
	If e.RowIndex = Me.sfDataGrid1.TableControl.GetHeaderIndex() AndAlso e.Column.MappingName = "SelectorColumn" Then
		e.Style.IndeterminateBorderColor = Color.Red
        e.Style.IndeterminateColor = Color.DarkViolet
	End If
End Sub

{% endhighlight %}
{% endtabs %}

![Winforms datagrid shows that GridCheckBoxSelectorColumn header checkbox styling](ColumnTypes_images/ColumnTypes_img49.png)

### Limitations
The following are the limitations of `GridCheckBoxSelectorColumn`:

* Selector column does not support cell selection.
* Selector column does not support data operations such as sorting, filtering and grouping.
* Selector column will be excluded in operations such as printing and exporting.
* Selector column does not have filter row support.  

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

In the below code snippet, created `GridCurrencyColumn` added to [SfDataGrid.Columns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Columns) collection to specify the value as currency without setting the format mode.

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
{{'[GridTextColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridTextColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridTextBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridTextBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
TextBox
</td>
</tr>
<tr>
<td>
{{'[GridNumericColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridNumericColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridNumericCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridNumericCellRenderer.html#"")'| markdownify }}
</td>
<td>
Numeric
</td>
</tr>
<tr>
<td>
{{'[GridDateTimeColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridDateTimeColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridDateTimeCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridDateTimeCellRenderer.html#"")'| markdownify }}
</td>
<td>
DataTime
</td>
</tr>
<tr>
<td>
{{'[GridCheckBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridCheckBoxColumn.html#"")'| markdownify }}        
</td>
<td>
{{'[GridCheckBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridCheckBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
CheckBox
</td>
</tr>
<tr>
<td>
{{'[GridImageColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridImageColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridImageCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridImageCellRenderer.html#"")'| markdownify }}
</td>
<td>
Image
</td>
</tr>
<tr>
<td>
{{'[GridHyperlinkColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridHyperlinkColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridHyperlinkCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridHyperlinkCellRenderer.html#"")'| markdownify }}
</td>
<td>
Hyperlink
</td>
</tr>
<tr>
<td>
{{'[GridButtonColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridButtonColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridButtonCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridButtonCellRenderer.html#"")'| markdownify }}
</td>
<td>
Button
</td>
</tr>
<tr>
<td>
{{'[GridProgressBarColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridProgressBarColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridProgressBarCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridProgressBarCellRenderer.html#"")'| markdownify }}
</td>
<td>
ProgressBar
</td>
</tr>
<tr>
<td>
{{'[GridMultiSelectComboBoxColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridMultiSelectComboBoxColumn.html#"")'| markdownify }}
</td>
<td>
{{'[GridMultiSelectComboBoxCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Renderers.GridMultiSelectComboBoxCellRenderer.html#"")'| markdownify }}
</td>
<td>
MultiSelectComboBox
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

![Winforms datagrid displays the custom column using the custom renderer](ColumnTypes_images/ColumnTypes_img20.png)

### Creating new column and renderer

You can create a new column by deriving [GridColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumn.html) and create new a cell renderer by overriding the predefined renderer in SfDataGrid. The following steps describe how to create a sparkline column as a custom column.

#### Creating custom column

You can create a custom column by overriding a new class from the `GridColumn` class.

{% tabs %}
{% highlight c# %}
public class GridSparklineColumn : GridColumn
{
    /// <summary>
    /// Initializes a new instance of the <see cref="GridSparklineColumn"/> class.
    /// </summary>
    public GridSparklineColumn()
    {
        SetCellType("Sparkline");
        this.SparklineType = SparkLineType.Line;
    }

    /// <summary>
    /// Gets or sets the type of the sparkline control.
    /// </summary>
    public SparkLineType SparklineType { get; set; }
}
{% endhighlight %}
{% highlight vb %}
Public Class GridSparklineColumn
	Inherits GridColumn
	''' <summary>
	''' Initializes a new instance of the <see cref="GridSparklineColumn"/> class.
	''' </summary>
	Public Sub New()
		SetCellType("Sparkline")
		Me.SparklineType = SparkLineType.Line
	End Sub

	''' <summary>
	''' Gets or sets the type of the sparkline control.
	''' </summary>
	Public Property SparklineType() As SparkLineType
End Class
{% endhighlight %}
{% endtabs %}

#### Creating renderer

After creating a custom column, you need to create renderer for the custom column. You can create custom renderer by deriving the [GridCellRendererBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellRendererBase.html) class.

{% tabs %}
{% highlight c# %}
/// <summary>
/// Represents a class that used for drawing the spark line cell.
/// </summary>
public class GridSparklineCellRenderer : GridCellRendererBase
{
/// <summary>
/// Initializes a new instance of the <see cref="GridSparklineCellRenderer"/> class.
/// </summary>
/// <param name="sparkline">The sparkline.</param>
/// <param name="dataGrid">The DataGrid.</param>
public GridSparklineCellRenderer(Syncfusion.Windows.Forms.Chart.SparkLine sparkline, SfDataGrid dataGrid)
{
    Sparkline = sparkline;
    DataGrid = dataGrid;
    IsEditable = false;
}
       
/// <summary>
/// Gets or sets to specify the datagrid.
/// </summary>
protected SfDataGrid DataGrid { get; set; }

/// <summary>
/// Gets the sparkline control used to draw the sparkline.
/// </summary>
protected SparkLine Sparkline { get; set; }

///<summary>
///Renders the line type sparkline.
///</summary>
///<param name="graphics">The <see cref="System.Windows.Forms.PaintEventArgs"/> instance containing the event data.</param>
///<param name="sparkline">The Sparkline.</param>
public void DrawSparkline(Graphics graphics, Syncfusion.Windows.Forms.Chart.SparkLine sparkline)
{
    SparkLineSource sparkLineSource = new SparkLineSource();
    int areaMarginX = 3;
    int areaMarginY = 3;
    double firstPointX = 0, firstPointY = 0, secondPointX = 0, secondPointY = 0;
    double areaWidth = sparkline.ControlWidth - areaMarginX * areaMarginX;
    double areaHeight = sparkline.ControlHeight - areaMarginY * areaMarginY;

    var sourceList = (List<object>)sparkLineSource.GetSourceList(sparkline.Source, sparkline);

    if (sourceList.Count == 0)
        return;

    double lineInterval = areaWidth / (sourceList.Count);
    double lineRange = sparkline.HighPoint - sparkline.LowPoint;

    for (int i = 0; i < sourceList.Count; i++)
    {
        double Value = Convert.ToDouble(sourceList[i]) - sparkline.LowPoint;

        secondPointX = firstPointX;
        secondPointY = firstPointY;

        firstPointX = this.Sparkline.Location.X + (lineInterval * i + (lineInterval / 2));
        firstPointY = this.Sparkline.Location.Y + (areaHeight - (areaHeight * (Value / lineRange)));

        if (i > 0)
            graphics.DrawLine(new Pen(sparkline.LineStyle.LineColor, 1), (float)(areaMarginX + firstPointX), (float)(areaMarginY + firstPointY), (float)(areaMarginX + secondPointX), (float)(areaMarginY + secondPointY));

        if (sparkline.Markers.ShowMarker)
            graphics.FillEllipse(new SolidBrush(sparkline.Markers.MarkerColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);
        if (Convert.ToDouble(sourceList[i]) == sparkline.StartPoint && sparkline.Markers.ShowStartPoint)
            graphics.FillEllipse(new SolidBrush(sparkline.Markers.StartPointColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);
        if (Convert.ToDouble(sourceList[i]) == sparkline.EndPoint && sparkline.Markers.ShowEndPoint)
            graphics.FillEllipse(new SolidBrush(sparkline.Markers.EndPointColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);

        if (sparkline.GetNegativePoint() != null)
        {
            int count = sparkline.GetNegativePoint().GetUpperBound(0);
            for (int k = 0; k <= count; k++)
            {
                if (Convert.ToDouble(sourceList[i]) == (double)sparkline.GetNegativePoint().GetValue(k) && sparkline.Markers.ShowNegativePoint)
                    graphics.FillEllipse(new SolidBrush(sparkline.Markers.NegativePointColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);
            }
        }

        if (Convert.ToDouble(sourceList[i]) == sparkline.HighPoint && sparkline.Markers.ShowHighPoint)
            graphics.FillEllipse(new SolidBrush(sparkline.Markers.HighPointColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);
        if (Convert.ToDouble(sourceList[i]) == sparkline.LowPoint && sparkline.Markers.ShowLowPoint)
            graphics.FillEllipse(new SolidBrush(sparkline.Markers.LowPointColor.BackColor), (float)(areaMarginX + firstPointX - 2), (float)(areaMarginY + firstPointY - 2), 5, 5);
    }
}

/// <summary>
/// Override to draw the spark line of the cell.
/// </summary>
/// <param name="graphics">The <see cref="T:System.Drawing.Graphics"/> that used to draw the spark line.</param>
/// <param name="cellRect">The cell rectangle.</param>
/// <param name="cellValue">The cell value.</param>
/// <param name="style">The CellStyleInfo of the cell.</param>
/// <param name="column">The DataColumnBase of the cell.</param>
/// <param name="rowColumnIndex">The row and column index of the cell.</param>
protected override void OnRender(Graphics graphics, Rectangle cellRect, string cellValue, CellStyleInfo style, DataColumnBase column, RowColumnIndex rowColumnIndex)
{
    using (SolidBrush brush = new SolidBrush(style.BackColor))
        graphics.FillRectangle(brush, cellRect);

    var sparklineColumn = column.GridColumn as GridSparklineColumn;
    this.Sparkline = new Syncfusion.Windows.Forms.Chart.SparkLine();
    var record = this.DataGrid.GetRecordAtRowIndex(rowColumnIndex.RowIndex);

    this.Sparkline.Source = GetSparklineSource(column.GridColumn.MappingName, record);
    this.Sparkline.Type = sparklineColumn.SparklineType;
    this.Sparkline.Markers.ShowEndPoint = true;
    this.Sparkline.Markers.ShowHighPoint = true;
    this.Sparkline.Markers.ShowLowPoint = true;
    this.Sparkline.Markers.ShowMarker = true;
    this.Sparkline.Markers.ShowNegativePoint = true;
    this.Sparkline.Markers.ShowStartPoint = true;
    this.Sparkline.Size = cellRect.Size;
    this.Sparkline.Location = cellRect.Location;

    var smoothingMode = graphics.SmoothingMode;
    var clipBounds = graphics.VisibleClipBounds;
    graphics.SetClip(cellRect);
    graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
    if (this.Sparkline.Type == SparkLineType.Line)
        DrawSparkline(graphics, Sparkline);
    else if (this.Sparkline.Type == SparkLineType.Column)
        DrawSparkColumn(graphics, Sparkline);
    else
        DrawSparkWinLossColumn(graphics, Sparkline);

    graphics.SmoothingMode = smoothingMode;
    graphics.SetClip(clipBounds);
}

/// <summary>
/// Occurs when a key is pressed while the cell has focus.
/// </summary>
/// <param name="dataColumn">The DataColumnBase of the cell.</param>
/// <param name="rowColumnIndex">The row and column index of the cell.</param>
/// <param name="e">The <see cref="T:System.Windows.Forms.KeyEventArgs"/> that contains the event data.</param>
protected override void OnKeyDown(DataColumnBase dataColumn, RowColumnIndex rowColumnIndex, KeyEventArgs e)
{
    var selectionController = this.DataGrid.SelectionController as CustomSelectionController;
    switch (e.KeyCode)
    {
        case Keys.Space:
        case Keys.Down:
        case Keys.Up:
        case Keys.Left:
        case Keys.Right:
        case Keys.Enter:
        case Keys.PageDown:
        case Keys.PageUp:
        case Keys.Tab:
        case Keys.Home:
        case Keys.End:
            selectionController.HandleKeyOperations(e);
            break;
    }

    base.OnKeyDown(dataColumn, rowColumnIndex, e);
}

/// <summary>
/// Gets data to the sparkline column.
/// </summary>
/// <param name="mappingName">The mapping name of the column.</param>
/// <param name="record">Data of the SparkLine.</param>
/// <returns>returns collection.</returns>
private double[] GetSparklineSource(string mappingName, object record)
{
    var salesCollection = record as System.Data.DataRowView;
    var item = salesCollection.Row.ItemArray[5];
    return item as double[];
}
{% endhighlight %}
{% highlight vb %}
''' <summary>
''' Represents a class used for drawing the sparkline cell.
''' </summary>
Public Class GridSparklineCellRenderer
	Inherits GridCellRendererBase
''' <summary>
''' Initializes a new instance of the <see cref="GridSparklineCellRenderer"/> class.
''' </summary>
''' <param name="sparkline">The sparkline.</param>
''' <param name="dataGrid">The DataGrid.</param>
Public Sub New(ByVal sparkline As Syncfusion.Windows.Forms.Chart.SparkLine, ByVal dataGrid As SfDataGrid)
	Me.Sparkline = sparkline
	Me.DataGrid = dataGrid
	IsEditable = False
End Sub

''' <summary>
''' Gets or sets to specify the datagrid.
''' </summary>
Protected Property DataGrid() As SfDataGrid

''' <summary>
''' Gets the sparkline control used to draw the sparkline.
''' </summary>
Protected Property Sparkline() As SparkLine

'''<summary>
'''Renders the line type sparkline.
'''</summary>
'''<param name="graphics">The <see cref="System.Windows.Forms.PaintEventArgs"/> instance containing the event data.</param>
'''<param name="sparkline">The Sparkline.</param>
Public Sub DrawSparkline(ByVal graphics As Graphics, ByVal sparkline As Syncfusion.Windows.Forms.Chart.SparkLine)
	Dim sparkLineSource As New SparkLineSource()
	Dim areaMarginX As Integer = 3
	Dim areaMarginY As Integer = 3
	Dim firstPointX As Double = 0, firstPointY As Double = 0, secondPointX As Double = 0, secondPointY As Double = 0
	Dim areaWidth As Double = sparkline.ControlWidth - areaMarginX * areaMarginX
	Dim areaHeight As Double = sparkline.ControlHeight - areaMarginY * areaMarginY

	Dim sourceList = CType(sparkLineSource.GetSourceList(sparkline.Source, sparkline), List(Of Object))

	If sourceList.Count = 0 Then
		Return
	End If

	Dim lineInterval As Double = areaWidth / (sourceList.Count)
	Dim lineRange As Double = sparkline.HighPoint - sparkline.LowPoint

	For i As Integer = 0 To sourceList.Count - 1
		Dim Value As Double = Convert.ToDouble(sourceList(i)) - sparkline.LowPoint

		secondPointX = firstPointX
		secondPointY = firstPointY

		firstPointX = Me.Sparkline.Location.X + (lineInterval * i + (lineInterval / 2))
		firstPointY = Me.Sparkline.Location.Y + (areaHeight - (areaHeight * (Value / lineRange)))

		If i > 0 Then
			graphics.DrawLine(New Pen(sparkline.LineStyle.LineColor, 1), CSng(areaMarginX + firstPointX), CSng(areaMarginY + firstPointY), CSng(areaMarginX + secondPointX), CSng(areaMarginY + secondPointY))
		End If

		If sparkline.Markers.ShowMarker Then
			graphics.FillEllipse(New SolidBrush(sparkline.Markers.MarkerColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
		End If
		If Convert.ToDouble(sourceList(i)) = sparkline.StartPoint AndAlso sparkline.Markers.ShowStartPoint Then
			graphics.FillEllipse(New SolidBrush(sparkline.Markers.StartPointColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
		End If
		If Convert.ToDouble(sourceList(i)) = sparkline.EndPoint AndAlso sparkline.Markers.ShowEndPoint Then
			graphics.FillEllipse(New SolidBrush(sparkline.Markers.EndPointColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
		End If

		If sparkline.GetNegativePoint() IsNot Nothing Then
			Dim count As Integer = sparkline.GetNegativePoint().GetUpperBound(0)
			For k As Integer = 0 To count
				If Convert.ToDouble(sourceList(i)) = CDbl(sparkline.GetNegativePoint().GetValue(k)) AndAlso sparkline.Markers.ShowNegativePoint Then
					graphics.FillEllipse(New SolidBrush(sparkline.Markers.NegativePointColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
				End If
			Next k
		End If

		If Convert.ToDouble(sourceList(i)) = sparkline.HighPoint AndAlso sparkline.Markers.ShowHighPoint Then
			graphics.FillEllipse(New SolidBrush(sparkline.Markers.HighPointColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
		End If
		If Convert.ToDouble(sourceList(i)) = sparkline.LowPoint AndAlso sparkline.Markers.ShowLowPoint Then
			graphics.FillEllipse(New SolidBrush(sparkline.Markers.LowPointColor.BackColor), CSng(areaMarginX + firstPointX - 2), CSng(areaMarginY + firstPointY - 2), 5, 5)
		End If
	Next i
End Sub

''' <summary>
''' Overrides to draw the sparkline of the cell.
''' </summary>
''' <param name="graphics">The <see cref="T:System.Drawing.Graphics"/> that used to draw the spark line.</param>
''' <param name="cellRect">The cell rectangle.</param>
''' <param name="cellValue">The cell value.</param>
''' <param name="style">The CellStyleInfo of the cell.</param>
''' <param name="column">The DataColumnBase of the cell.</param>
''' <param name="rowColumnIndex">The row and column index of the cell.</param>
Protected Overrides Sub OnRender(ByVal graphics As Graphics, ByVal cellRect As Rectangle, ByVal cellValue As String, ByVal style As CellStyleInfo, ByVal column As DataColumnBase, ByVal rowColumnIndex As RowColumnIndex)
	Using brush As New SolidBrush(style.BackColor)
		graphics.FillRectangle(brush, cellRect)
	End Using

	Dim sparklineColumn = TryCast(column.GridColumn, GridSparklineColumn)
	Me.Sparkline = New Syncfusion.Windows.Forms.Chart.SparkLine()
	Dim record = Me.DataGrid.GetRecordAtRowIndex(rowColumnIndex.RowIndex)

	Me.Sparkline.Source = GetSparklineSource(column.GridColumn.MappingName, record)
	Me.Sparkline.Type = sparklineColumn.SparklineType
	Me.Sparkline.Markers.ShowEndPoint = True
	Me.Sparkline.Markers.ShowHighPoint = True
	Me.Sparkline.Markers.ShowLowPoint = True
	Me.Sparkline.Markers.ShowMarker = True
	Me.Sparkline.Markers.ShowNegativePoint = True
	Me.Sparkline.Markers.ShowStartPoint = True
	Me.Sparkline.Size = cellRect.Size
	Me.Sparkline.Location = cellRect.Location

	Dim smoothingMode = graphics.SmoothingMode
	Dim clipBounds = graphics.VisibleClipBounds
	graphics.SetClip(cellRect)
	graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality
	If Me.Sparkline.Type = SparkLineType.Line Then
		DrawSparkline(graphics, Sparkline)
	ElseIf Me.Sparkline.Type = SparkLineType.Column Then
		DrawSparkColumn(graphics, Sparkline)
	Else
		DrawSparkWinLossColumn(graphics, Sparkline)
	End If

	graphics.SmoothingMode = smoothingMode
	graphics.SetClip(clipBounds)
End Sub

''' <summary>
''' Occurs when the key is pressed while the cell has focus.
''' </summary>
''' <param name="dataColumn">The DataColumnBase of the cell.</param>
''' <param name="rowColumnIndex">The row and column index of the cell.</param>
''' <param name="e">The <see cref="T:System.Windows.Forms.KeyEventArgs"/> that contains the event data.</param>
Protected Overrides Sub OnKeyDown(ByVal dataColumn As DataColumnBase, ByVal rowColumnIndex As RowColumnIndex, ByVal e As KeyEventArgs)
	Dim selectionController = TryCast(Me.DataGrid.SelectionController, CustomSelectionController)
	Select Case e.KeyCode
		Case Keys.Space, Keys.Down, Keys.Up, Keys.Left, Keys.Right, Keys.Enter, Keys.PageDown, Keys.PageUp, Keys.Tab, Keys.Home, Keys.End
			selectionController.HandleKeyOperations(e)
	End Select

	MyBase.OnKeyDown(dataColumn, rowColumnIndex, e)
End Sub

''' <summary>
''' Gets data to the sparkline column.
''' </summary>
''' <param name="mappingName">The mapping name of the column.</param>
''' <param name="record">Data of the SparkLine.</param>
''' <returns>returns collection.</returns>
Private Function GetSparklineSource(ByVal mappingName As String, ByVal record As Object) As Double()
	Dim salesCollection = TryCast(record, System.Data.DataRowView)
	Dim item = salesCollection.Row.ItemArray(5)
	Return TryCast(item, Double())
End Function
{% endhighlight %}
{% endtabs %}

#### Adding the custom renderer to CellRenderers collection

By using the following code, you can add the previous created custom renderer to the [SfDataGrid.CellRenderers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCellRendererCollection.html) collection.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.CellRenderers.Add("Sparkline", new GridSparklineCellRenderer(new Syncfusion.Windows.Forms.Chart.SparkLine(), this.sfDataGrid1));
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.CellRenderers.Add("Sparkline", New GridSparklineCellRenderer(New Syncfusion.Windows.Forms.Chart.SparkLine(), Me.sfDataGrid1))
{% endhighlight %}
{% endtabs %}

#### Loading custom column

By using the following code, you can define the custom column in SfDataGrid.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridSparklineColumn() { MappingName = "Sparkline", HeaderText = "Analysis Report", Width = 150, AllowFiltering = false });
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns.Add(New GridSparklineColumn() With {.MappingName = "Sparkline", .HeaderText = "Analysis Report", .Width = 150, .AllowFiltering = False})
{% endhighlight %}
{% endtabs %}

![WinForms datagrid shows to custom column by using the custom renderer](ColumnTypes_images/ColumnTypes_img45.png)

Refer to the above prepared sparkline column in this following link: [Sparkline column](https://github.com/SyncfusionExamples/how-to-create-custom-column-in-winforms-datagrid/tree/master/SparklineColumn)

Here, a rating column has been created as a custom column. The sample for this can be downloaded from this following link: [RatingColumn](https://github.com/SyncfusionExamples/how-to-create-custom-column-in-winforms-datagrid/tree/master/RatingColumn)

## See also

[How to suspend the PING sound when perform the Tab operation in DataGrid(SfDataGrid)](https://www.syncfusion.com/kb/11242)

[How to differentiate combobox column from other columns in non-editable display mode in WinForms DataGrid](https://www.syncfusion.com/kb/10013)

[How to change value of other columns while changing the value in a combobox column in WinForms DataGrid (SfDataGrid)](https://www.syncfusion.com/kb/9978/how-to-change-value-of-other-columns-while-changing-the-value-in-a-combobox-column-in)

[How to set checkbox value based on the value change on another checkbox column in WinForms DataGrid (SfDataGrid)](https://www.syncfusion.com/kb/9775/how-to-set-checkbox-value-based-on-the-value-change-on-another-checkbox-column-in-winforms)

[How to change the ValidationMode of the GridNumericColumn in WinForms DataGrid (SfDataGrid)](https://www.syncfusion.com/kb/9323/how-to-change-the-validationmode-of-the-gridnumericcolumn-in-winforms-datagrid-sfdatagrid)
