---
layout: post
title: Paging | DataGrid | WinForms | Syncfusion
description: This section explains about the paging support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Paging

SfDataGrid provides support to manipulate the data using [SfDataPager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager.html) control.

##Getting Started

Follow the below steps to bind SfDataGrid with SfDataPager.

1.	 Create IEnumerable collection that you want to bind and set it to SfDataPager.Source property.
2.	 Set [SfDataPager.PageSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.WinForms~Syncfusion.Data.PagedCollectionView~PageSize.html)  property to specify the number of records to be displayed per page.
3.	 Bind [SfDataPager.PagedSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~PagedSource.html) to [SfDataGrid.DataSource](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DataSource.html) property. So whenever the page is changed, PagedSource will be update based on current page.

{% tabs %}
{% highlight c# %}
public partial class OrderInfo 
{
    private int _OrderID;

    private DateTime _orderDate;

    private string _CustomerID;

    private double _unitPrice;

    private int _Quantity;

    private int _contactNumber;

    private string _product;

    private string _shipAddress; 
    
    public int OrderID
    {
        get
        {
            return this._OrderID;
        }
        set
        {
            this._OrderID = value;
            this.OnPropertyChanged("OrderID");
        }
    }
    
    public string CustomerID
    {
        get
        {
            return this._CustomerID;
        }
        set
        {
            this._CustomerID = value;
            this.OnPropertyChanged("CustomerID");
        }
    }
   
    public string ProductName
    {
        get
        {
            return this._product;
        }
        set
        {
            this._product = value;
            this.OnPropertyChanged("ProductName");
        }
    }
   
    public DateTime OrderDate
    {
        get
        {
            return _orderDate;
        }
        set
        {
            _orderDate = value;
        }
    }

    public int Quantity
    {
        get
        {
            return this._Quantity;
        }
        set
        {
            _Quantity = value;
            OnPropertyChanged("Quantity");
        }
    }

    public double UnitPrice
    {
        get
        {
            return _unitPrice;
        }
        set
        {
            _unitPrice = value;
            OnPropertyChanged("UnitPrice");
        }
    }
  
    public int ContactNumber
    {
        get
        {
            return this._contactNumber;
        }
        set
        {
            _contactNumber = value;
            OnPropertyChanged("ContactNumber");
        }
    }
  
    public string ShipCountry
    {
        get
        {
            return this._shipAddress;
        }
        set
        {
            this._shipAddress = value;
            this.OnPropertyChanged("ShipCountry");
        }
    }

    public event PropertyChangedEventHandler PropertyChanged;
    private void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
            this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
    }
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class OrderInfo
	Private _OrderID As Integer

	Private _orderDate As DateTime

	Private _CustomerID As String

	Private _unitPrice As Double

	Private _Quantity As Integer

	Private _contactNumber As Integer

	Private _product As String

	Private _shipAddress As String

	Public Property OrderID() As Integer
		Get
			Return Me._OrderID
		End Get
		Set(ByVal value As Integer)
			Me._OrderID = value
			Me.OnPropertyChanged("OrderID")
		End Set
	End Property

	Public Property CustomerID() As String
		Get
			Return Me._CustomerID
		End Get
		Set(ByVal value As String)
			Me._CustomerID = value
			Me.OnPropertyChanged("CustomerID")
		End Set
	End Property

	Public Property ProductName() As String
		Get
			Return Me._product
		End Get
		Set(ByVal value As String)
			Me._product = value
			Me.OnPropertyChanged("ProductName")
		End Set
	End Property

	Public Property OrderDate() As DateTime
		Get
			Return _orderDate
		End Get
		Set(ByVal value As DateTime)
			_orderDate = value
		End Set
	End Property

	Public Property Quantity() As Integer
		Get
			Return Me._Quantity
		End Get
		Set(ByVal value As Integer)
			_Quantity = value
			OnPropertyChanged("Quantity")
		End Set
	End Property

	Public Property UnitPrice() As Double
		Get
			Return _unitPrice
		End Get
		Set(ByVal value As Double)
			_unitPrice = value
			OnPropertyChanged("UnitPrice")
		End Set
	End Property

	Public Property ContactNumber() As Integer
		Get
			Return Me._contactNumber
		End Get
		Set(ByVal value As Integer)
			_contactNumber = value
			OnPropertyChanged("ContactNumber")
		End Set
	End Property

	Public Property ShipCountry() As String
		Get
			Return Me._shipAddress
		End Get
		Set(ByVal value As String)
			Me._shipAddress = value
			Me.OnPropertyChanged("ShipCountry")
		End Set
	End Property

	Public Event PropertyChanged As PropertyChangedEventHandler
	Private Sub OnPropertyChanged(ByVal propertyName As String)
		If PropertyChangedEvent IsNot Nothing Then
			RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
		End If
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

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

![winforms datagrid shown with DataPager](Paging_images/Paging1.png)

### Limitations
1.	SfDataPager doesn’t accepts `DataTable` as Source.
2. `AddNewRow` is not supported in SfDataGrid.



## Load Data in on-demand
SfDataPager allows you to load data for current page alone using on-demand paging instead of loading data for all pages.

Follow the below steps to load the DataSource for page in on-demand,

1.	 Set [SfDataPager.AllowOnDemandPaging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~AllowOnDemandPaging.html) as `true`.
2.	 Set [SfDataPager.PageCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~PageCount.html) based on total number of records and [SfDataPager.PageSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.WinForms~Syncfusion.Data.PagedCollectionView~PageSize.html) property.
3. Use [OnDemandLoading](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~OnDemandLoading_EV.html) event to load the DataSource for current page using [LoadDynamicData](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~LoadDynamicData.html) method.
4.	 [OnDemandLoading](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~OnDemandLoading_EV.html)  event is raised when SfDataPager moves to another page and you can load the DataSource for corresponding page through OnDemandLoading event.

[OnDemandLoadingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.Events.OnDemandLoadingEventArgs~StartRowIndex.html) has the following members,

1.	 [StartRowIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.Events.OnDemandLoadingEventArgs~StartRowIndex.html) - returns the start index based on PageIndex (Number of previous pages * PageSize).
2.  [PageSize]((https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.WinForms~Syncfusion.Data.PagedCollectionView~PageSize.html) ) - denotes the number of records to be displayed in the page.

N> Do not assign SfDataPager.Source property while using on-demand paging.

{% tabs %}
{% highlight c# %}
private List<Employees> employeeCollection;

public Form1()
{
InitializeComponent();
this.sfDataPager1.OnDemandLoading += OnDemandLoading;
}
private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{
sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize));
}
{% endhighlight %}
{% highlight vb %}
Private employeeCollection As List(Of Employees)

AddHandler Me.sfDataPager1.OnDemandLoading += AddressOf OnDemandLoading

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize))
End Sub
{% endhighlight %}
{% endtabs %}

### Load data on-demand asynchronously

Data to the `SfDataPager` can be loaded asynchronously using the [BusyIndicator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Core.Utils.BusyIndicator.html).

{% tabs %}
{% highlight c# %}
this.sfDataPager1.OnDemandLoading += OnDemandLoading;            

private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{
    //Show busy indicator while loading the data.
    if (sfDataGrid.TableControl.IsHandleCreated)
    {
        busyIndicator.Show(this.sfDataGrid.TableControl);
        Thread.Sleep(1000);
    }

    sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize));
    busyIndicator.Hide();
}
{% endhighlight %}
{% highlight vb %}
AddHandler Me.sfDataPager1.OnDemandLoading, AddressOf OnDemandLoading

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
	'Show busy indicator while loading the data.
	If sfDataGrid.TableControl.IsHandleCreated Then
		busyIndicator.Show(Me.sfDataGrid.TableControl)
		Thread.Sleep(1000)
	End If

	sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize))
	busyIndicator.Hide()
End Sub
{% endhighlight %}
{% endtabs %}

### Resetting Cache
While navigating between the pages, records are loaded through `OnDemandLoading` event and the records of navigated pages will be maintained in cache. If you navigate to already navigated page, the records are loaded from cache instead of loading from `OnDemandLoading` event. You can clear the cache by using [PageCollectionView.ResetCache](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.WinForms~Syncfusion.Data.PagedCollectionView~ResetCache.html) method. Once this method is invoked, the `OnDemandLoading` event will be raised while navigating multiple times to the same page.

{% tabs %}
{% highlight c# %}
this.sfDataPager1.OnDemandLoading += OnDemandLoading;
private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{
    sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize));
 
     //resetting cache for all pages.
    (sfDataPager1.PagedSource as PagedCollectionView).ResetCache();
}
{% endhighlight %}
{% highlight vb %}
AddHandler Me.sfDataPager1.OnDemandLoading += AddressOf OnDemandLoading

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
	sfDataPager1.LoadDynamicData(e.StartRowIndex, employeeCollection.Skip(e.StartRowIndex).Take(e.PageSize))

      'resetting cache for all pages.

	TryCast(sfDataPager1.PagedSource, PagedCollectionView).ResetCache()
End Sub
{% endhighlight %}
{% endtabs %}

You can also clear the cache to particular page by specifying the PageIndex in [PageCollectionView.ResetCacheForPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Data.WinForms~Syncfusion.Data.PagedCollectionView~ResetCacheForPage.html) method.

{% tabs %}
{% highlight c# %}
(sfDataPager1.PagedSource as PagedCollectionView).ResetCacheForPage(this.sfDataPager1.SelectedPageIndex);
{% endhighlight %}
{% highlight vb %}
TryCast(sfDataPager1.PagedSource, PagedCollectionView).ResetCacheForPage(Me.sfDataPager1.SelectedPageIndex)
{% endhighlight %}
{% endtabs %}

### Loading data from database in on-demand
You can read the data from database in on-demand (here, records are retrieved from Northwind data provider) in [OnDemandLoading](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~OnDemandLoading_EV.html) event handler.

{% tabs %}
{% highlight c# %}
public partial class Form1 : Form
{
Northwind northWind;
List<Orders> source = new List<Orders>();

public Form1()
{
    InitializeComponent();
    string connectionString = string.Format(@"Data Source = {0}", ("Northwind.sdf"));

    //northWind dataProvider connectivity.
    northWind = new Northwind(connectionString);
    source = northWind.Orders.ToList();
    this.sfDataPager1.OnDemandLoading += OnDemandLoading;
}

private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{ 
    sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize));
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class Form1
	Inherits Form
Private northWind As Northwind
Private source As New List(Of Orders)()

Public Sub New()
	InitializeComponent()
	Dim connectionString As String = String.Format("Data Source = {0}", ("Northwind.sdf"))

	'northWind dataProvider connectivity.
	northWind = New Northwind(connectionString)
	source = northWind.Orders.ToList()
	AddHandler Me.sfDataPager1.OnDemandLoading, AddressOf OnDemandLoading
End Sub

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
	sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize))
End Sub
{% endhighlight %}
{% endtabs %}

### Changing PageCount at run time while filtering
You can change the [SfDataPager.PageCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.SfDataPager~PageCount.html)  at runtime based on the records count in on-demand paging. Here, PageCount are modified by filtering the records in run time.


{% tabs %}
{% highlight c# %}
public partial class Form1 : Form
{
Northwind northWind;
List<Orders> source = new List<Orders>();

public Form1()
{
    InitializeComponent();
    string connectionString = string.Format(@"Data Source = {0}", ("Northwind.sdf"));

    //northWind dataProvider connectivity.
    northWind = new Northwind(connectionString);
    source = northWind.Orders.ToList();
    this.sfDataPager1.OnDemandLoading += OnDemandLoading;
}

private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{ 
    sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize));
}

private List<Orders> ApplyFilter(Northwind NorthwindSource)
{

    // records are filtered based on CustomerID column
    return NorthwindSource.Orders.Where(item => item.CustomerID.Contains(filterTextBox.Text)).ToList();
}

private void FilterBtn_Click(object sender, System.EventArgs e)
{
    source = ApplyFilter(northWind);

    //page count resets based on filtered records.

    if (source.Count() < sfDataPager1.PageSize)
        this.sfDataPager1.PageCount = 1;

    else
    {
        var count = source.Count() / sfDataPager1.PageSize;

        if (source.Count() % sfDataPager1.PageSize == 0)
            this.sfDataPager1.PageCount = count;

        else
            this.sfDataPager1.PageCount = count + 1;

    }
    this.sfDataPager1.MoveToPage(0);
    this.sfDataPager1.Refresh();
}
{% endhighlight %}
{% highlight vb %}

Partial Public Class Form1
	Inherits Form
Private northWind As Northwind
Private source As New List(Of Orders)()

Public Sub New()
	InitializeComponent()
	Dim connectionString As String = String.Format("Data Source = {0}", ("Northwind.sdf"))

	'northWind dataProvider connectivity.
	northWind = New Northwind(connectionString)
	source = northWind.Orders.ToList()
	AddHandler Me.sfDataPager1.OnDemandLoading, AddressOf OnDemandLoading
End Sub

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
	sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize))
End Sub

Private Function ApplyFilter(ByVal NorthwindSource As Northwind) As List(Of Orders)

	' records are filtered based on CustomerID column
	Return NorthwindSource.Orders.Where(Function(item) item.CustomerID.Contains(filterTextBox.Text)).ToList()
End Function

Private Sub FilterBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs)
	source = ApplyFilter(northWind)

	'page count resets based on filtered records.

	If source.Count() < sfDataPager1.PageSize Then
		Me.sfDataPager1.PageCount = 1

	Else
		Dim count = source.Count() / sfDataPager1.PageSize

		If source.Count() Mod sfDataPager1.PageSize = 0 Then
			Me.sfDataPager1.PageCount = count

		Else
			Me.sfDataPager1.PageCount = count + 1
		End If

	End If
	Me.sfDataPager1.MoveToPage(0)
	Me.sfDataPager1.Refresh()
End Sub
{% endhighlight %}
{% endtabs %}

![Pagecount of datapager changed at runtime after filtering in winforms datagrid](Paging_images/Paging2.png)

Here, records are filtered based on the textbox text in clicking event of Filter button. Initially PageCount is 5 and it is changed as 1 once the records are filtered.
You can refer the [sample](https://github.com/SyncfusionExamples/how-to-change-the-PageCount-at-runtime-when-data-loaded-on-demand-is-filtered-in-winforms-datapager) from here.

### Sorting complete collection
You can sort the complete collection with on-demand paging by using [SfDataGrid.SortColumnsChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~SortColumnsChanging_EV.html) event.
In this event, you can sort the complete underlying collection instead of sorting current page alone by resetting the caches.

{% tabs %}
{% highlight c# %}
public partial class Form1 : Form
{
Northwind northWind;
List<Orders> source = new List<Orders>();

public Form1()
{
    InitializeComponent();
    string connectionString = string.Format(@"Data Source = {0}", ("Northwind.sdf"));

    //northWind dataProvider connectivity.
    northWind = new Northwind(connectionString);
    source = northWind.Orders.ToList();
    this.sfDataPager1.OnDemandLoading += OnDemandLoading;
}

private void OnDemandLoading(object sender, OnDemandLoadingEventArgs e)
{ 
    sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize));
}

private void SfDataGrid_SortColumnsChanging(object sender, Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs e)
{
    (sfDataPager1.PagedSource as PagedCollectionView).ResetCache();
    (sfDataPager1.PagedSource as PagedCollectionView).ResetCacheForPage(sfDataPager1.SelectedPageIndex);

    if (e.Action == NotifyCollectionChangedAction.Add || e.Action == NotifyCollectionChangedAction.Replace)
    {
        var sortDesc = e.AddedItems[0];

        if (sortDesc.SortDirection == ListSortDirection.Ascending)
        {

            //records are sorted in ascending order.
            source = source.OfQueryable().AsQueryable().OrderBy(sortDesc.ColumnName).Cast<Orders>().ToList();
        }

        else
        {

            //records are sorted descending order.
            source =
                source.OfQueryable()
                        .AsQueryable()
                        .OrderByDescending(sortDesc.ColumnName)
                        .Cast<Orders>()
                        .ToList();
        }
        this.sfDataPager1.MoveToPage(sfDataPager1.SelectedPageIndex);
    }
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class Form1
	Inherits Form
Private northWind As Northwind
Private source As New List(Of Orders)()

Public Sub New()
	InitializeComponent()
	Dim connectionString As String = String.Format("Data Source = {0}", ("Northwind.sdf"))

	'northWind dataProvider connectivity.
	northWind = New Northwind(connectionString)
	source = northWind.Orders.ToList()
	AddHandler Me.sfDataPager1.OnDemandLoading, AddressOf OnDemandLoading
End Sub

Private Sub OnDemandLoading(ByVal sender As Object, ByVal e As OnDemandLoadingEventArgs)
	sfDataPager1.LoadDynamicData(e.StartRowIndex, source.Skip(e.StartRowIndex).Take(e.PageSize))
End Sub

Private Sub SfDataGrid_SortColumnsChanging(ByVal sender As Object, ByVal e As Syncfusion.WinForms.DataGrid.Events.SortColumnsChangingEventArgs)
	TryCast(sfDataPager1.PagedSource, PagedCollectionView).ResetCache()
	TryCast(sfDataPager1.PagedSource, PagedCollectionView).ResetCacheForPage(sfDataPager1.SelectedPageIndex)

	If e.Action = NotifyCollectionChangedAction.Add OrElse e.Action = NotifyCollectionChangedAction.Replace Then
		Dim sortDesc = e.AddedItems(0)

		If sortDesc.SortDirection = ListSortDirection.Ascending Then

			'records are sorted in ascending order.
			source = source.OfQueryable().AsQueryable().OrderBy(sortDesc.ColumnName).Cast(Of Orders)().ToList()

		Else

			'records are sorted descending order.
			source = source.OfQueryable().AsQueryable().OrderByDescending(sortDesc.ColumnName).Cast(Of Orders)().ToList()
		End If
		Me.sfDataPager1.MoveToPage(sfDataPager1.SelectedPageIndex)
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Complete collection loaded on-demand is sorted in winforms datagrid](Paging_images/Paging3.png)

### Limitations
1.	UI Filtering is not supported. You can code in application level to filter the data.
2.	Data processing operations (Sorting, Grouping) are done only in the current page.
3.	Deleting is not supported. You can code to delete row in application level.
4.	Only the navigated pages are exported when on-demand paging is enabled, if the navigated page cache is cleared then the corresponding page will not be exported.

## Appearance

### Button style

The appearance of the button style can be customized using the [NavigationButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.Style.DataPagerStyle~NavigationButtonStyle.html) and [PageButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataPager.Style.DataPagerStyle~PageButtonStyle.html) property.

{% tabs %}
{% highlight c# %}
this.sfDataPager1.Style.NavigationButtonStyle.BackColor = Color. SeaGreen;
{% endhighlight %}
{% highlight vb %}
Me.sfDataPager1.Style.NavigationButtonStyle.BackColor = Color.SeaGreen
{% endhighlight %}
{% endtabs %}

![Style of navigation buttons changed in winforms datapager](Paging_images/Paging4.png)

{% tabs %}
{% highlight c# %}
this.sfDataPager1.Style.PageButtonStyle.BackColor = Color.LightSeaGreen;
this.sfDataPager1.Style.PageButtonStyle.FocusedBackColor = Color.Silver;
{% endhighlight %}
{% highlight vb %}
Me.sfDataPager1.Style.PageButtonStyle.BackColor = Color.LightSeaGreen
Me.sfDataPager1.Style.PageButtonStyle.FocusedBackColor = Color.Silver
{% endhighlight %}
{% endtabs %}

![Style of page buttons changed in winforms datapager](Paging_images/Paging5.png)

### Orientation
SfDataPager allows you to arrange the child elements either horizontally or vertically. This can be achieved by using the [Orientation](https://help.syncfusion.com/cr/wpf/Syncfusion.SfGrid.WPF~Syncfusion.UI.Xaml.Controls.DataPager.SfDataPager~Orientation.html) Property. Orientation is an Enum type. The following table describes the Orientation enum values.


<table>
<tr>
<th>
Enum Value</th><th>
Description</th></tr>
<tr>
<td>
Horizontal</td><td>
This is the default enum value for Orientation. Arranges all the navigation buttons and numeric buttons horizontally.{{'![Buttons arranged horizontally in winforms datapager](Paging_images/Paging6.png)'|markdownify}}

</td></tr>
<tr>
<td>
Vertical</td><td>
Arranges all the navigation buttons and numeric buttons vertically.{{'![Buttons arrange vertically in winforms datapager](Paging_images/Paging7.png)'|markdownify}}

</td></tr>
</table>

