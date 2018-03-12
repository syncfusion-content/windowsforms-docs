---
layout: post
title: Syncfusion Essential Windows Forms
description: This section explains about the SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---
# Getting Started 
This section provides a quick overview for working with the data grid for WinForms. Walk through the entire process of creating a real world data grid.

## Assembly deployment
The following list of assemblies needs to be added as reference to use SfDataGrid control in any application,

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion controls and basic components like SfScrollFrame, SfButton, SfForm and SfToolTip.
</td>
</tr>
<tr>
<td>
Syncfusion.GridCommon.WinForms
</td>
<td>
Syncfusion.GridCommon.WinForms assembly contains the base classes for Scrolling, FilterControl and Utilities.
</td>
</tr>
<tr>
<td>
Syncfusion.Data.WinForms
</td>
<td>
Syncfusion.Data.WinForms assembly contains fundamental and base classes for `CollectionViewAdv` which is responsible for data processing operations handled in SfDataGrid.
</td>
</tr>
<tr>
<td>
Syncfusion.SfDataGrid.WinForms
</td>
<td>
Syncfusion.DataGrid.WinForms assembly contains classes that handles all UI operations of SfDataGrid. SfDataGrid control present in Syncfusion.WinForms.DataGrid namespace.
</td>
</tr>
<tr>
<td>
Syncfusion.SfInput.WinForms
</td>
<td>
Syncfusion.SfInput.WinForms contains various editor controls (such as SfNumericTextBox and SfDateTimeEdit) which are used in SfDataGrid.
</td>
</tr>
</table>
In order to use export to Excel and export to PDF functionalities of SfDataGrid control, add the reference to following assemblies,
<table>
<tr>
<td>
{{'**Optional Assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.SfDataGridConverter.WinForms
</td>
<td>
Syncfusion.SfDataGridConverter.WinForms contains static extension classes for exporting SfDataGrid to excel and PDF in using Syncfusion.WinForms.DataGridConverter namespace.
</td>
</tr>
<tr>
<td>
Syncfusion.XlsIO.Base
</td>
<td>
Syncfusion.XlsIO.Base contains fundamental and base classes for creating and manipulating excel files.
</td>
</tr>
<tr>
<td>
Syncfusion.Pdf.Base
</td>
<td>
Syncfusion.Pdf.Base contains fundamental and base classes for creating PDF.
</td>
</tr>
</table>

## Creating application with SfDataGrid
In this walk through, you will create WinForms application that contains SfDataGrid control.

### Creating the project
Create new Windows Forms Project in Visual Studio to display SfDataGrid with data objects.

### Adding control via Designer
SfDataGrid control can be added to the application by dragging it from Toolbox and dropping it in Designer. The required assembly references will be added automatically.
![](GettingStarted_images/GettingStarted_img1.jpeg)

### Adding control in Code
In order to add control manually, do the below steps,
1. Add the below required assembly references to the project,

* Syncfusion.Core.WinForms

* Syncfusion.Data.WinForms

* Syncfusion.GridCommon.WinForms

* Syncfusion.SfDataGrid.WinForms

* Syncfusion.SfInput.WinForms

2. Create the SfDataGrid control instance and add it to the Form
{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.DataGrid;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            SfDataGrid sfDataGrid1 = new SfDataGrid();
            sfDataGrid1.Location = new System.Drawing.Point(85, 108);
            sfDataGrid1.Size = new System.Drawing.Size(240, 150); 
            this.Controls.Add(this.sfDataGrid1);
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Imports Syncfusion.WinForms.DataGrid

Namespace WindowsFormsApplication1
	Partial Public Class Form1
		Inherits Form
		Public Sub New()
			InitializeComponent()
			Dim sfDataGrid1 As New SfDataGrid()
			sfDataGrid1.Location = New System.Drawing.Point(85, 108)
			sfDataGrid1.Size = New System.Drawing.Size(240, 150)
			Me.Controls.Add(Me.sfDataGrid1)
		End Sub
	End Class
End Namespace
{% endhighlight %}
{% endtabs %}

### Creating Data for sample application

SfDataGrid is a data-bound control. So you must create data for application.

1. Create data object class named “OrderInfo” and declare properties as shown below,

{% tabs %}
{% highlight c# %}
public class OrderInfo
{
    int orderID;
    string customerId;
    string country;
    string customerName;
    string shippingCity;

    public int OrderID
    {
        get { return orderID; }
        set { orderID = value; }
    }

    public string CustomerID
    {
        get { return customerId; }
        set { customerId = value; }
    }

    public string CustomerName
    {
        get { return customerName; }
        set { customerName = value; }
    }

    public string Country
    {
        get { return country; }
        set { country = value; }
    }

    public string ShipCity
    {
        get { return shippingCity; }
        set { shippingCity = value; }
    }

    public OrderInfo(int orderId, string customerName, string country, string customerId, string shipCity)
    {
        this.OrderID = orderId;
        this.CustomerName = customerName;
        this.Country = country;
        this.CustomerID = customerId;
        this.ShipCity = shipCity;
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class OrderInfo
	Private _orderID As Integer
	Private _customerId As String
	Private _country As String
	Private _customerName As String
	Private _shippingCity As String

	Public Property OrderID() As Integer
		Get
			Return _orderID
		End Get
		Set(ByVal value As Integer)
			_orderID = value
		End Set
	End Property

	Public Property CustomerID() As String
		Get
			Return _customerId
		End Get
		Set(ByVal value As String)
			_customerId = value
		End Set
	End Property

	Public Property CustomerName() As String
		Get
			Return _customerName
		End Get
		Set(ByVal value As String)
			_customerName = value
		End Set
	End Property

	Public Property Country() As String
		Get
			Return _country
		End Get
		Set(ByVal value As String)
			_country = value
		End Set
	End Property

	Public Property ShipCity() As String
		Get
			Return _shippingCity
		End Get
		Set(ByVal value As String)
			_shippingCity = value
		End Set
	End Property

	Public Sub New(ByVal orderId As Integer, ByVal customerName As String, ByVal country As String, ByVal customerId As String, ByVal shipCity As String)
		Me.OrderID = orderId
		Me.CustomerName = customerName
		Me.Country = country
		Me.CustomerID = customerId
		Me.ShipCity = shipCity
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

2. Create an **OrderInfoCollection** class with Orders property and Orders property is initialized with several data objects in constructor.

{% tabs %}
{% highlight c# %}
public class OrderInfoCollection
{
    private ObservableCollection<OrderInfo> _orders;
    public ObservableCollection<OrderInfo> Orders
    {
        get { return _orders; }
        set { _orders = value; }
    }

    public OrderInfoCollection()
    {
        _orders = new ObservableCollection<OrderInfo>();
        this.GenerateOrders();
    }

    private void GenerateOrders()
    {
        _orders.Add(new OrderInfo(1001, "Maria Anders", "Germany", "ALFKI", "Berlin"));
        _orders.Add(new OrderInfo(1002, "Ana Trujilo", "Mexico", "ANATR", "Mexico D.F."));
        _orders.Add(new OrderInfo(1003, "Antonio Moreno", "Mexico", "ANTON", "Mexico D.F."));
        _orders.Add(new OrderInfo(1004, "Thomas Hardy", "UK", "AROUT", "London"));
        _orders.Add(new OrderInfo(1005, "Christina Berglund", "Sweden", "BERGS", "Lula"));
        _orders.Add(new OrderInfo(1006, "Hanna Moos", "Germany", "BLAUS", "Mannheim"));
        _orders.Add(new OrderInfo(1007, "Frederique Citeaux", "France", "BLONP", "Strasbourg"));
        _orders.Add(new OrderInfo(1008, "Martin Sommer", "Spain", "BOLID", "Madrid"));
        _orders.Add(new OrderInfo(1009, "Laurence Lebihan", "France", "BONAP", "Marseille"));
        _orders.Add(new OrderInfo(1010, "Elizabeth Lincoln", "Canada", "BOTTM", "Tsawassen"));
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class OrderInfoCollection
	Private _orders As ObservableCollection(Of OrderInfo)
	Public Property Orders() As ObservableCollection(Of OrderInfo)
		Get
			Return _orders
		End Get
		Set(ByVal value As ObservableCollection(Of OrderInfo))
			_orders = value
		End Set
	End Property

	Public Sub New()
		_orders = New ObservableCollection(Of OrderInfo)()
		Me.GenerateOrders()
	End Sub

	Private Sub GenerateOrders()
		_orders.Add(New OrderInfo(1001, "Maria Anders", "Germany", "ALFKI", "Berlin"))
		_orders.Add(New OrderInfo(1002, "Ana Trujilo", "Mexico", "ANATR", "Mexico D.F."))
		_orders.Add(New OrderInfo(1003, "Antonio Moreno", "Mexico", "ANTON", "Mexico D.F."))
		_orders.Add(New OrderInfo(1004, "Thomas Hardy", "UK", "AROUT", "London"))
		_orders.Add(New OrderInfo(1005, "Christina Berglund", "Sweden", "BERGS", "Lula"))
		_orders.Add(New OrderInfo(1006, "Hanna Moos", "Germany", "BLAUS", "Mannheim"))
		_orders.Add(New OrderInfo(1007, "Frederique Citeaux", "France", "BLONP", "Strasbourg"))
		_orders.Add(New OrderInfo(1008, "Martin Sommer", "Spain", "BOLID", "Madrid"))
		_orders.Add(New OrderInfo(1009, "Laurence Lebihan", "France", "BONAP", "Marseille"))
		_orders.Add(New OrderInfo(1010, "Elizabeth Lincoln", "Canada", "BOTTM", "Tsawassen"))
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

### Binding to Data
To bind the SfDataGrid to data, set the `SfDataGrid.DataSource` property to an IEnumerable implementation. Each row in SfDataGrid is bound to an object in data source and each column in SfDataGrid bound to a property in data object.
{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
sfDataGrid1.DataSource = orderInfoCollection.Orders;
{% endhighlight %}
{% highlight vb %}
Dim orderInfoCollection As New OrderInfoCollection()
sfDataGrid1.DataSource = orderInfoCollection.Orders
{% endhighlight %}
{% endtabs %}
Now, run the application and you can expect the see the below output,
![](GettingStarted_images/GettingStarted_img2.jpeg)

## Defining Columns
By default, the SfDataGrid control generates the columns automatically when value assigned to `SfDataGrid.DataSource` property. The type of the column generated depends on the type of data in the column and the attribute of the property the column bound with.
The following table lists the column types and its constraints for auto column generation.
<table>
<tr>
<td>
{{'**Generated Column Type**'| markdownify }}
</td>
<td>
{{'**Data Type / Attribute**'| markdownify }}
</td>
</tr>
<tr>
<td>
GridTextColumn
</td>
<td>
Property of type String and any other type apart from below specified cases.
</td>
</tr>
<tr>
<td>
GridNumericColumn
</td>
<td>
Property of type Int, Double, Float, Decimal.
</td>
</tr>
<tr>
<td>
GridDataTimeColumn
</td>
<td>
Property of type DateTime.
</td>
</tr>
<tr>
<td>
GridImageColumn
</td>
<td>
Property of type Byte[]
</td>
</tr>
<tr>
<td>
GridHyperLinkColumn
</td>
<td>
Property of type Uri
</td>
</tr>
<tr>
<td>
GridCheckBoxColumn
</td>
<td>
Property of type Bool.
</td>
</tr>
</table>
When columns are auto-generated, you can handle the `SfDataGrid.AutoGeneratingColumn` event to customize or cancel the columns before they are added to the SfDataGrid.
You can prevent the automatic column generation by setting `SfDataGrid.AutoGenerateColumns` property is false, you have to define the columns to be displayed as below,
{% tabs %}
{% highlight c# %}
sfDataGrid1.AutoGenerateColumns = false;
sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "OrderID" });
sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "CustomerID" });
{% endhighlight %}
{% highlight vb %}
sfDataGrid1.AutoGenerateColumns = False
sfDataGrid1.Columns.Add(New GridTextColumn() With {.MappingName = "OrderID"})
sfDataGrid1.Columns.Add(New GridTextColumn() With {.MappingName = "CustomerID"})
{% endhighlight %}
{% endtabs %}
Below is the list of column types provided in SfDataGrid.
<table>
<tr>
<td>
{{'**Column Type**'| markdownify }}
</td>
<td>
{{'**Comments**'| markdownify }}
</td>
</tr>
<tr>
<td>
GridTextColumn
</td>
<td>
Represents SfDataGrid column that hosts textual content in its cells.
</td>
</tr>
<tr>
<td>
GridNumericColumn
</td>
<td>
Represents SfDataGrid column that hosts SfNumericTextBox controls in its cells which is used to format and display Numeric values.
</td>
</tr>
<tr>
<td>
GridDataTimeColumn
</td>
<td>
Represents SfDataGrid column that hosts SfDateTimeEdit controls in its cells which is used to display and format DateTime values.
</td>
</tr>
<tr>
<td>
GridImageColumn
</td>
<td>
Represents SfDataGrid column that hosts Image in its cells.
</td>
</tr>
<tr>
<td>
GridHyperLinkColumn
</td>
<td>
Represents SfDataGrid column that hosts Hyperlink in its cells
</td>
</tr>
<tr>
<td>
GridCheckBoxColumn
</td>
<td>
Represents SfDataGrid column that hosts CheckBox in its cells.
</td>
</tr>
<tr>
<td>
GridButtonColumn
</td>
<td>
Represents SfDataGrid column that hosts Button in its cells.
</td>
</tr>
<tr>
<td>
GridUnboundColumn
</td>
<td>
Represents SfDataGrid column that hosts textual content which are not actually bound with data object of row.
</td>
</tr>
</table>

## Selection
By default, the entire row is selected when a user clicks a cell in a SfDataGrid. You can set the `SfDataGrid.SelectionMode` property to specify whether a user can select single row, or multiple rows. You can get information about the rows that are selected using `SfDataGrid.SelectedItem` and `SfDataGrid.SelectedItems` properties.
{% tabs %}
{% highlight c# %}
sfDataGrid1.SelectionMode = Syncfusion.WinForms.DataGrid.Enums.GridSelectionMode.Extended;
{% endhighlight %}
{% highlight vb %}
sfDataGrid1.SelectionMode = Syncfusion.WinForms.DataGrid.Enums.GridSelectionMode.Extended
{% endhighlight %}
{% endtabs %}
![](GettingStarted_images/GettingStarted_img3.jpeg)

You can handle the selection operations with the help of `SfDataGrid.SelectionChanging` and `SfDataGrid.SelectionChanged` events of SfDataGrid.

## Sorting, Grouping and Filtering

### Sorting
By default, you can sort columns in a SfDataGrid by clicking the column header. You can configure the sorting by setting `SfDataGrid.SortColumnDescriptions` property as below,
{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
sfDataGrid1.DataSource = orderInfoCollection.Orders;
sfDataGrid1.SortColumnDescriptions.Add(new SortColumnDescription() { ColumnName = "Country" });
{% endhighlight %}
{% highlight vb %}
Dim orderInfoCollection As New OrderInfoCollection()
sfDataGrid1.DataSource = orderInfoCollection.Orders
sfDataGrid1.SortColumnDescriptions.Add(New SortColumnDescription() With {.ColumnName = "Country"})
{% endhighlight %}
{% endtabs %}
![](GettingStarted_images/GettingStarted_img4.jpeg)

You can customize sorting by handling the `SfDataGrid.SortColumnsChanging` and `SfDataGrid.SortColumnsChanged` events. To cancel the default sort, set the Cancel property to true in `SfDataGrid.SortColumnsChanging` event.
{% tabs %}
{% highlight c# %}
sfDataGrid1.SortColumnsChanging += sfDataGrid1_SortColumnsChanging;

void sfDataGrid1_SortColumnsChanging(object sender, Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs e)
{
    if (e.AddedItems[0].ColumnName == "CustomerName")
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.SortColumnsChanging, AddressOf sfDataGrid1_SortColumnsChanging

Private Sub sfDataGrid1_SortColumnsChanging(ByVal sender As Object, ByVal e As Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs)
	If e.AddedItems(0).ColumnName = "CustomerName" Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

### Grouping
Grouping can be enabled by setting `SfDataGrid.ShowGroupDropArea` property, where you can group by dragging the column header and dropping it in theGroupDropArea over the column headers. You can configure the grouping by setting `SfDataGrid.GroupColumnDescriptions` property as below,
{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
sfDataGrid1.DataSource = orderInfoCollection.Orders;
sfDataGrid1.GroupColumnDescriptions.Add(new GroupColumnDescription() { ColumnName = "CustomerName" });
{% endhighlight %}
{% highlight vb %}
Dim orderInfoCollection As New OrderInfoCollection()
sfDataGrid1.DataSource = orderInfoCollection.Orders
sfDataGrid1.GroupColumnDescriptions.Add(New GroupColumnDescription() With {.ColumnName = "CustomerName"})
{% endhighlight %}
{% endtabs %}
![](GettingStarted_images/GettingStarted_img5.jpeg)

### Filtering
Filtering can be enabled by setting `SfDataGrid.AllowFiltering` property to true, where you can open advanced filter UI by clicking the Filter icon in column header and filter the SfDataGrid. You can customize the filtering operations by handling `SfDataGrid.FilterChanging` and `SfDataGrid.FilterChanged` events.
{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
sfDataGrid1.DataSource = orderInfoCollection.Orders;
sfDataGrid1.AllowFiltering = true;
{% endhighlight %}
{% highlight vb %}
Dim orderInfoCollection As New OrderInfoCollection()
sfDataGrid1.DataSource = orderInfoCollection.Orders
sfDataGrid1.AllowFiltering = True
{% endhighlight %}
{% endtabs %}
![](GettingStarted_images/GettingStarted_img6.jpeg)

## Editing
Editing can be enabled by setting `SfDataGrid.AllowEditing` property to true.Set `SfDataGrid.AllowDeleting` property to specify whether user can delete rows by pressing Delete key.
Set `SfDataGrid.AddNewRowPosition` property to enable additional row either Top or Bottom of SfDataGrid, where user can enter new items into the blank row. Adding new row adds an item to the `SfDataGrid.DataSource`.
You can customize the editing operations by handling `SfDataGrid.CurrentCellBeginEdit` and `SfDataGrid.CurrentCellEndEdit` events.
