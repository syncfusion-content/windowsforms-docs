---
layout: post
title: DataBinding
description: This section explains about the DataBinding support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Data Binding
SfDataGrid control is designed to display the bounded data in a tabular format. The data binding can be achieved by assigning the data sources to [SfDataGrid.DataSource](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DataSource.html) property.

{% tabs %}
{% highlight c# %}
OrderInfoCollection collection = new OrderInfoCollection();
this.sfDataGrid1.DataSource = collection.OrdersListDetails;
{% endhighlight %}
{% endtabs %}

If the data source implements [INotifyCollectionChanged](https://msdn.microsoft.com/en-us/library/System.Collections.Specialized.INotifyCollectionChanged) interface, then `SfDataGrid` control will automatically refresh the UI when item is added, removed or while list cleared.
When you add, remove item in [ObservableCollection](https://msdn.microsoft.com/library/ms668604), `SfDataGrid` automatically refresh the UI as `ObservableCollection` implements `INotifyCollectionChanged`. But when you do the same in [List](https://msdn.microsoft.com/en-us/library/6sh2ey19), `SfDataGrid` will not refresh the UI automatically.

## Binding to IEnumerable
`SfDataGrid` control supports to bind any collection that implements the [IEnumerable](https://msdn.microsoft.com/en-us/library/system.collections.ienumerable) interface. All the data operations such as sorting, grouping, filtering, summaries are supported when you are binding collection derived from `IEnumerable`.

## Binding with DataTable
`SfDataGrid` control supports to bind the DataTable. `SfDataGrid` control automatically refresh the UI when you are binding DataTable as `DataSource` when rows are added, removed or cleared.

{% tabs %}
{% highlight c# %}
DataTable dataTable = this.GetDataTable();
this.sfDataGrid1.DataSource = dataTable;
{% endhighlight %}
{% endtabs %}

Below are the limitations when binding DataTable as `DataSource` to `SfDataGrid`.

* Custom sorting is not supported.
* [SfDataGrid.View.Filter](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Data.DataTableCollectionViewWrapper~Filter.html) is not supported.
* Advanced Filtering does not support Case Sensitive filtering.
* `AddNewRow` is not support when filtering is enabled.
* [GridUnboundColumn.Expression](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridUnboundColumn~Expression.html) is not supported. This can be achieved by using the [DataColumn](https://msdn.microsoft.com/en-us/library/System.Data.DataColumn) of DataTable by setting [DataColumn.Expression](https://msdn.microsoft.com/en-us/library/system.data.datacolumn.expression) property.

![](DataBinding_images/DataBinding_img1.jpeg)

## Binding to XML data
SfDataGrid can be bound to data from XML files. This can be achieved by using the [DataSet](https://msdn.microsoft.com/en-us/library/system.data.dataset(v=vs.110).aspx) object which provides the necessary methods that is used to read XML data into dataset. After loading the data, the grid can be bind to this dataset by setting data binding properties such as `DataSource` and `DataMember` to the dataset and table name respectively. It is also possible to save the changes back to XML file.

{% tabs %}
{% highlight c# %}
DataSet dataSet = new DataSet();
dataSet.ReadXml(@"..\\..\\Data\\Datasource.xml");
this.sfDataGrid1.DataSource = dataSet.Tables[0];
{% endhighlight %}
{% endtabs %}
![](DataBinding_images/DataBinding_img2.jpeg)

## Binding Complex properties
SfDataGrid control provides support to bind complex property to its columns. To bind the complex property to [GridColumn](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumn.html), set the complex property path to [MappingName](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~MappingName.html).
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "Empcomplexmodel.EmpName", HeaderText = "Employee Name" });
{% endhighlight %}
{% endtabs %}

All the data operations (sorting, grouping, filtering and etc.) are supported when you are binding complex property.

### Limitations when binding complex property
* SfDataGrid doesn’t support **LiveDataUpdateMode** – `AllowDataShaping` and `AllowSummaryUpdate`.

## Binding Indexer properties
SfDataGrid control provides support to bind an indexer property to its columns. To bind an indexer property to `GridColumn`, set the indexer property path to `MappingName`.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns.Add(new GridTextColumn() { MappingName = "EmpDetails[0].Title", HeaderText = "Title" });
{% endhighlight %}
{% endtabs %}

All the data operations (sorting, grouping, filtering and etc.) are supported when you are binding indexer property. 

### Limitations when binding indexer property
* SfDataGrid doesn’t support [LiveDataUpdateMode ](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~LiveDataUpdateMode.html)– `AllowDataShaping` and `AllowSummaryUpdate`.

## Events

### DataSourceChanged
[SfDataGrid.DataSourceChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DataSourceChanged_EV.html) event occurs when the data source is changed by using `DataSource` property.
This event receives two arguments namely sender that handles SfDataGrid and [DataSourceChangedEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DataSourceChangedEventArgs.html) as objects.
The `DataSourceChangedEventArgs` object contains the following properties:

* [OldValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DataSourceChangedEventArgs~OldValue.html) - Gets the value of old data source
* [NewValue](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DataSourceChangedEventArgs~NewValue.html)  - Get the value of new data source
* [OldView](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DataSourceChangedEventArgs~OldView.html) – Gets the old view of the data grid.
* [NewView](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.DataSourceChangedEventArgs~NewView.html) – Gets the new view of the data grid.

## View
SfDataGrid has the `View` property of type `ICollectionViewAdv` interface that implements `IEditableCollectionView` interface. `View` is responsible for maintaining and manipulating the data and other advanced operations like Sorting, Grouping, Filtering etc.
When you bind Collection to `DataSource` property of SfDataGrid, then [View](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~View.html) will be created and maintains the operations on data such as Grouping, Filtering, Sorting, Insert, Delete, and Modification.
Following are some important properties that can be used for various purposes.

N> SfDataGrid creates different types of views derived from `ICollectionViewAdv` interface based on `DataSource`.

<table>
<tr>
<td>
{{'**Property**'| markdownify }}
</td>
<td>
{{'**Type**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Records
</td>
<td>
RecordsList
</td>
<td>
Maintains the Records that are displayed in View when DataGrid is not Grouped.
</td>
</tr>
<tr>
<td>
TopLevelGroup
</td>
<td>
TopLevelGroup
</td>
<td>
Maintains the Group information when DataGrid is Grouped.
</td>
</tr>
<tr>
<td>
TopLevelGroup.DisplayElements
</td>
<td>
GroupDisplayElements
</td>
<td>
Maintains the Records and Group information that are displayed in View when DataGrid is Grouped.
</td>
</tr>
<tr>
<td>
Filter
</td>
<td>
Predicate&lt;object&gt;
</td>
<td>
Get or sets the method that determines the data is suitable to be displayed in View.
</td>
</tr>
<tr>
<td>
FilterPredicates
</td>
<td>
ObservableCollection&lt;IFilterDefinition&gt;
</td>
<td>
Maintains the FilterPredicates that are created while filtering using Filtering UI.
</td>
</tr>
<tr>
<td>
GroupDescriptions
</td>
<td>
ObservableCollection&lt;GroupDescription&gt;
</td>
<td>
Maintains the GroupDescription collection information. It describes how the items in the collection are grouped in the view.
</td>
</tr>
<tr>
<td>
SortDescriptions
</td>
<td>
SortDescriptionCollection
</td>
<td>
Maintains the SortDescription collection information. It describes how the items in the collection are sort in the view.
</td>
</tr>
<tr>
<td>
SourceCollection
</td>
<td>
IEnumerable
</td>
<td>
Maintains the underlying source collection.
</td>
</tr>
<tr>
<td>
TableSummaryRows
</td>
<td>
ObservableCollection&lt;ISummaryRow&gt;
</td>
<td>
Maintains the TableSummaryRows collection information. 
</td>
</tr>
<tr>
<td>
SummaryRows
</td>
<td>
ObservableCollection&lt;ISummaryRow&gt;
</td>
<td>
Maintains the SummaryRows collection information. 
</td>
</tr>
<tr>
<td>
CaptionSummaryRow
</td>
<td>
ISummaryRow
</td>
<td>
Maintains the CaptionSummaryRow information.
</td>
</tr>
</table>

### Events
The following events are associated with `View`.

* RecordPropertyChanged
* SourceCollectionChanged

#### RecordPropertyChanged
`RecordPropertyChanged` event is raised when the DataModel property value is changed, if the DataModel implements the[INotifyPropertyChanged](https://msdn.microsoft.com/en-us/library/system.componentmodel.inotifypropertychanged(v=vs.100).aspx) interface. The event receives with two arguments namely sender that handles the DataModel and [PropertyChangedEventArgs](https://msdn.microsoft.com/en-us/library/system.componentmodel.propertychangedeventargs(v=vs.110).aspx) as object.
`PropertyChangedEventArgs` has below property,
[PropertyName](https://msdn.microsoft.com/en-us/library/system.componentmodel.propertychangedeventargs.propertyname) – It denotes the PropertyName of the changed value.

#### SourceCollectionChanged
[SourceCollectionChanged ](https://help.syncfusion.com/cr/cref_files/windowsforms/data/Syncfusion.Data.WinForms~Syncfusion.Data.ICollectionViewAdv~SourceCollectionChanged_EV.html)event is raised when you make changes in source collection for example add or remove the collection. The event receives two arguments namely sender that handles [QueryableCollectionViewWrapper](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Data.QueryableCollectionViewWrapper.html) object and [NotifyCollectionChangedEventArgs](https://msdn.microsoft.com/en-us/library/system.collections.specialized.notifycollectionchangedeventargs(v=vs.110).aspx) as object.
`NotifyCollectionChangedEventArgs` has below properties,

[Action](https://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.Collections.Specialized.NotifyCollectionChangedEventArgs.Action)&rd=true) - It contains the current action. (i.e.) Add, Remove, Move, Replace and Reset.

[NewItems](http://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.Collections.Specialized.NotifyCollectionChangedEventArgs.NewItems)&rd=true) - It contains the list of new items involved in the change.

[OldItems](http://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.Collections.Specialized.NotifyCollectionChangedEventArgs.OldItems)&rd=true) - It contains the list of old items affected by the Action.

[NewStartingIndex](https://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.Collections.Specialized.NotifyCollectionChangedEventArgs.NewStartingIndex)&rd=true) - It contains the index at which the change occurred.

[OldStartingIndex](https://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.Collections.Specialized.NotifyCollectionChangedEventArgs.OldStartingIndex)&rd=true) - It contains the index at which the Action occurred.

The following is the methods that are associated with `View` which can be used to defer refresh the view.
<table>
<tr>
<td>
{{'**Method Name**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
DeferRefresh
</td>
<td>
Enter the defer cycle so that you can perform all data operations in view and update once.
</td>
</tr>
<tr>
<td>
BeginInit & EndInit
</td>
<td>
When BeginInit method is called it suspends all the updates until EndInit method is called. You can perform all the updation with in these methods and update the view at once.
</td>
</tr>
</table>

N>`View` has properties that already defined in SfDataGrid. It recommended setting those properties via SfDataGrid.

## Binding data from ADO .NET Entity Framework
SfDataGrid control supports to bind data from ADO.NET Entity Framework. In this walk-through, you will learn about binding data from ADO.NET Entity Framework and save back the changes to the database.
**References:**
[https://msdn.microsoft.com/en-us/library/jj682076(v=vs.113).aspx](https://msdn.microsoft.com/en-us/library/jj682076(v=vs.113).aspx) 

### Defining Data Model using Entity Framework 4.0
To create Data Model using Entity Framework in Windows Forms application, follow the below steps.

1) Right click your project, select **Add** option and then click **New Item**. 

2) The **Add New Item** wizard appears, select “**ADO.NET Entity Data Mode**” from the Data node. 

3) Name the file as **Model1.edmx**and then select **Add** button.  
![](DataBinding_images/DataBinding_img3.jpeg)

4) The Entity Data Model Wizard appears. In the **Choose Model Contents**, select **EF Designer from database** option and then click **Next**.

![](DataBinding_images/DataBinding_img4.jpeg)

5) In the **Choose Your Data Connection**, select **Northwind** database from the drop-down list for data connection. To configure/modify connection, you can refer: [How to: Create Connections to SQL Server Databases](https://msdn.microsoft.com/en-us/library/s4yys16a.aspx).

![](DataBinding_images/DataBinding_img5.jpeg)

6) Enable the **Save entity connection settings in App.config** as check box and then click **Next**.
7) In the **Choose Your Database** Objects and Settings, expand the Tables node and select the **Order Details** table.

![](DataBinding_images/DataBinding_img6.jpeg)

8) Click **Finish** button to add the **Model1.edmx**file to your application. The Entity diagram for the **Order Detail** table is opened.

![](DataBinding_images/DataBinding_img7.jpeg)

### Loading data from Entity Framework data service
The data from the defined entity model can be loaded as a data source to the `SfDataGrid` by loading the **Order Details** table by the created entity for the **Northwnd** database.

{% tabs %}
{% highlight c# %}
NORTHWNDEntities northWind = new NORTHWNDEntities();
this.sfDataGrid1.DataSource = northWind.Order_Details;
{% endhighlight %}
{% endtabs %}

Now, run the application and you can see the following screenshot shows the `SfDataGrid` control populated with data from Entity Framework data service.
![](DataBinding_images/DataBinding_img8.jpeg)

## Binding data from LINQ to SQL
`SfDataGrid` control supports to bind data from LINQ to SQL. In this walkthrough, you will learn about binding data from LINQ to SQL and save back the changes to the Database.

### Adding data model using LINQ to SQL
To create data model using LINQ to SQL in WF project follow the below steps.
1) Right click on your project, Select **Add** option and then click **New Item**.
2) The Add New Item wizard appears, Select **LINQ to SQL Classes** from the **Visual C**#.
3) Name the file as **Northwind** and then select **Add** option to add the **Northwind.dbml**in your project.

![](DataBinding_images/DataBinding_img9.jpeg)

4) Once the **Northwind.dbml**is added in your project, then the design view is opened.

![](DataBinding_images/DataBinding_img10.jpeg)

5) You can add new Database connection by clicking add icon button in Server Explorer. 

6) The **Add Connection** wizard appeared with the default data source as **Microsoft SQL Server Database File (SqlClient**).

![](DataBinding_images/DataBinding_img11.jpeg)

7) Click **Change** to open the **Change Data Source** dialog box and select the type of data source as **Microsoft SQL Server Database File (SqlClient).**

![](DataBinding_images/DataBinding_img12.jpeg)

8) Select the Database file name and click on **Test Connection** to check the connection with your database.

![](DataBinding_images/DataBinding_img13.jpeg)

9) Once the connection is succeeded, click **OK** button to add database in your server explorer.

![](DataBinding_images/DataBinding_img14.jpeg)

10) Drag **Shippers** table in to design view of **Northwind.dbml**. The Entity model diagram for **Shippers** table is generated once it is dropped in to design view.
### Loading data from LINQ to SQL classes
The data from the defined data model of the LINQ to SQL classes can be loaded as a data source to the `SfDataGrid` by loading the **Shippers** table by the created data context for the **Northwnd** database.

{% tabs %}
{% highlight c# %}
NorthwindDataContext nordthWinddataContext = new NorthwindDataContext();
this.sfDataGrid1.DataSource = nordthWinddataContext.Shippers;
{% endhighlight %}
{% endtabs %}
![](DataBinding_images/DataBinding_img15.jpeg)

## Binding data from ADO.NET
SfDataGrid control supports to load the data using ADO.NET. In this walk-through, you will learn about binding data from ADO.NET service

### Connecting application to Databases
To connect SQL database to your WPF application, refer the below MSDN link or follow the below steps,
[https://msdn.microsoft.com/en-us/library/s4yys16a.aspx](https://msdn.microsoft.com/en-us/library/s4yys16a.aspx) 

1) Select the **Connect to Database** option from the **Tools** menu.

2) The Add Connection wizard appeared with the default data source as Microsoft SQL Server (SqlClient).

![](DataBinding_images/DataBinding_img16.jpeg)

3) Click **Change** to open the **Change Data Source** dialog box and select the type of data source as **Microsoft SQL Server Database File (SqlClient).**

![](DataBinding_images/DataBinding_img17.jpeg)

4) Select the Database file name and click on **Test Connection** to check the connection with your database.

![](DataBinding_images/DataBinding_img18.jpeg)

5) Once the connection is succeeded, click **OK** button to add database in your server explorer.

![](DataBinding_images/DataBinding_img19.jpeg)

6) To get connection string for the database, right-click on your database and then click **Properties** option.

### Loading data from ADO.NET
To access the data from data source using `ADO.NET`, follow the below steps.

1) Create a connection through any of the [.NET Framework data provider](https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/data-providers) based on the type of data source that you have owned.

2) Fill the data from the database to a data set using the data adapter.

3) Set the `DataSource` as **Suppliers** table from the data set.

{% tabs %}
{% highlight c# %}
DataSet dataSet = new DataSet();
SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=NORTHWND.MDF;Integrated Security=True;Connect Timeout=30");
sqlConnection.Open();
SqlDataAdapter sqlAdapter = new SqlDataAdapter("Select * from Suppliers", sqlConnection);
sqlAdapter.Fill(dataSet, "Suppliers");
this.sfDataGrid1.DataSource = dataSet.Tables["Suppliers"];
{% endhighlight %}
{% endtabs %}

![](DataBinding_images/DataBinding_img20.jpeg)

## Binding data from Microsoft Access
SfDataGrid control supports to bind data from Microsoft Access database. In this section, you will learn about how to bind the data from Microsoft Access database to SfDataGrid.

### Importing Microsoft Access database
To load the data from Microsoft Access database, follow the below steps.

1) On the **View** menu, select**Other Windows > Data Sources**.

2) In the **Data Sources** window, click**Add New Data Source**, the DataSource configuration wizard will be opened.

![](DataBinding_images/DataBinding_img21.jpeg)

3) Select **Database** on the **Choose a Data Source Type** page, and then select**Next**.

![](DataBinding_images/DataBinding_img22.jpeg)

4) On the **Choose your Data Connection** page, select **New Connection** to configure a new data connection and Change the **Data source** to **.NET Framework Data Provider for OLE DB**.

![](DataBinding_images/DataBinding_img23.jpeg)

5) In **OLE DB Provider**, select **Microsoft Office 12.0 Access Database Engine OLE DB Provider**. In **Server or file name**, specify the path and name of the .accdb file to which you want to connect, and then select **OK**.

![](DataBinding_images/DataBinding_img24.jpeg)

6) Select **Next** on the **Choose your Data Connection** page.

7) Select **Next** on the **Save connection string to the Application Configuration file** page.

8) Expand the **Tables** node on the **Choose your Database Objects** page.

![](DataBinding_images/DataBinding_img25.jpeg)

9) Select whatever tables or views you want in your dataset, and then select **Finish**.

### Loading data from Microsoft Access database
To access the Microsoft Access database, follow the below steps.

1) Create a **OleDbConnection** with the Microsoft Access database.

2) Fill the data from the database to a data set using the **OleDbDataAdapter**.

3) Set the `DataSource` as **Employees** table from the data set.

{% tabs %}
{% highlight c# %}
OleDbConnection oleConnection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\SfWinforms\SfDataGrid_UserGuide\Sample\DataBinding\Data\Employees.accdb;Persist Security Info=True");
OleDbDataAdapter oleDataAdapter = new OleDbDataAdapter("SELECT * FROM Employees", oleConnection);
EmployeesDataSet employeeDataSet = new EmployeesDataSet();
oleConnection.Open();
oleDataAdapter.Fill(employeeDataSet, "Employees");
oleConnection.Close();
this.sfDataGrid1.DataSource = employeeDataSet.Tables[“Employees”];
{% endhighlight %}
{% endtabs %}

![](DataBinding_images/DataBinding_img26.jpeg)

