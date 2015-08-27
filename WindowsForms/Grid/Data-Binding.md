---
layout: post
title: Data-Binding
description: data binding
platform: windowsform
control: Grid
documentation: ug
---

# Data Binding

To display data, grid grouping control must be bound to data source. The grid grouping control supports variety of data sources such as DataTables, DataSets, or any component that implements interface IList, IBindingList, ITypedList, or IListSource. The data source can have multiple nested tables, which will be displayed hierarchically by grid grouping control.

This section deals with different types of data binding mechanisms, supported by grid grouping control, which are listed below.

## Data Binding using ADO.NET

ADO.NET is an object-oriented set of libraries that allows you to interact with different types of data sources and different types of databases. It comes in different sets of libraries. These libraries are called DataProviders and they allow a common way to interact with specific data sources or protocols. The following table lists the data providers that are widely used.

_Table 79: Data Binding_

<table>
<tr>
<th>
PROVIDER NAME</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
Ole Db Data Provider</td><td>
Data Sources that expose an OleDb interface, i.e. Access or Excel.</td></tr>
<tr>
<td>
SQL Data Provider</td><td>
For interacting with Microsoft SQL Server.</td></tr>
</table>


### ADO.NET Objects

ADO.NET objects are used by ADO data model to support database interaction. These objects must be created to supply data-aware control like grid with database data. Data-aware controls possess two data binding properties, DataSource and DataMember. Any data source can be bound to the control by assigning it to DataSource and DataMember properties.

### Connection Object

It is used for connection to database and managing transactions against database. Database location and access method will be specified through this connection object. The connection object should be a type of OleDBConnection in case of OLE DB data sources or should be a SqlConnection object for data sources provided by MS SQL Server.

### DataAdapter Object

Data adapter acts like a bridge between dataset and data source. It is used to retrieve data from database and populate tables within a dataset. It uses connection object to connect database in order to fill dataset and update changes back to database. There are two adapter components supplied: OleDBDataAdapter and SqlDataAdapter. The former accesses data sources exposed using OLE DB and the latter is designed to work with data sources provided by MS SQL Server version 7.0 or later.

### DataSet

Dataset acts like a memory resident cache to hold data. It represents a complete set of data including tables that organize data and relationships between tables. Dataset is designed to help manage data in memory and to support disconnected operations on data. It can be populated by calling Fill method of the DataAdapter.

### Command Object

Commands contain information that is submitted to database, and are represented by provider-specific classes such as SQLCommand. A command can be a stored procedure call, an UPDATE statement, or a statement that returns results.

### DataReader Object

This is a suitable object when you want to only get the stream of data for reading. The data returned from data reader is a fast forward-only stream of data. This means that you can only pull data from the stream in a sequential manner. This is good for speed, but if you need to manipulate data, then DataSet is a better object to work with.

### Data Binding Methods

To bind grid to a database, you can use any one of the following methods.

1. Binding At Design Time
   * Binding to a database at Design time using VS2003
   * Binding to a database at Design time using VS2005

2. Binding At Run Time
   * Binding to an MDB file at run time
   * Binding to a manually created datasource
   
## Binding to XML Data


Grid Grouping Control can be bound to data from XML files. To do this, DataSet object is required which provides the necessary methods that will let you read XML data into dataset. After loading the data, you can bind the grouping grid to this dataset by setting data binding properties, DataSource and DataMember to dataset and table name respectively. It is also possible to save the changes back to XML file.

The following table lists some important methods provided by dataset that allows you to manipulate XML data. In this, the XmlSchema represents the type of data stored in XML file.

_Table 80: Methods to manipulate XML_

<table>
<tr>
<th colspan = "2">
METHOD NAME</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ReadXml</td><td colspan = "2">
Reads XML Schema and data into dataset using the specified XML file.</td></tr>
<tr>
<td>
ReadXmlSchema</td><td colspan = "2">
Reads XML Schema from the specified file into dataset.</td></tr>
<tr>
<td>
WriteXml</td><td colspan = "2">
Writes the current data and optionally the schema, for dataset into the specified XML file.</td></tr>
<tr>
<td>
WriteXmlSchema</td><td colspan = "2">
Writes dataset structure as an XML schema into the specified file.</td></tr>
</table>


The following code example illustrates the binding process.

{% highlight c# %}

//Creates a Data Set.

DataSet XmlData = new DataSet();



//Populates it with data from an XML file.

XmlData.ReadXml("C:\\Data\\Customers_Orders.xml");



//Binds the grid to Data Set.

gridGroupingControl1.DataSource = XmlData;

gridGroupingControl1.DataMember = XmlData.Tables[0];

{% endhighlight %}

{% highlight vbnet %}

'Creates a Data Set.

Dim XmlData As New DataSet()



'Populates it with data from an XML file.

XmlData.ReadXml("C:\\Data\\Customers_Orders.xml")



'Binds the grid to Data Set.

gridGroupingControl1.DataSource = XmlData

gridGroupingControl1.DataMember = XmlData.Tables(0)

{% endhighlight %}


## Binding to Custom Collections

Custom Collections provide a way to store arbitrary objects in a structured fashion that can be bound to grouping grid. All the data binding is based on a set of interfaces that defines different capabilities of objects and collections within the context of accessing and navigating through data. These interfaces set up a two-way communication between bound grid and objects collection used by the same grid. Those collections may be custom business objects collection or may be the one provided by .NET Framework itself like DataView.

Data binding interfaces will allow you to create collections of custom objects to present those collections through the grid or navigate through the objects to view them through the same grid and interact with them. Some of these interfaces are IList, ITypedList, and IBindingList.

### IList Interface

Using this interface, you can create an ordered, indexed set of data items. IList interface is one of the most important interfaces in data binding because complex data-bound controls can only be bound to collections that implement IList. This interface lets you manage collection's data by adding, removing, inserting, and accessing items.

Data source implementing the IList interface must have at least one record in order to make bound controls like grid to create any rows. It will not be notified of any data changes and thus the changes should be updated manually.

### ITypedList Interface

ITypedList is suitable for complex data binding process where you can control the columns that are visible with which description and how they should be treated. For example, should they be read only, even there is a set clause in the property definition. Using this interface, you can tell the bound grid exactly how the objects inside a bound collection have to show up in the control and which properties should show up and how they should be treated.

In this case, it is not necessary to have any records for the rows to be created. Like IList, data source will not be notified when items are added or removed from the list.

### IBindingList Interface

IBindingList interface is the most important data-binding interface that provides rich data binding support. Implementing this interface lets you control changes to the list, sorting and searching the list. One important benefit is support for providing change notifications to the collection subscribing to this interface.

IBindingList interface overcomes shortcomings of other interfaces by declaring ListChanged event. Data sources referencing this interface will hook onto this event and so will be aware of items that are added or removed from the list. This makes bound grid update itself automatically.

The chapters in this section will demonstrate how to create such collections by implementing collection interfaces and how to bind grouping grid to these collections. 

## IList

This section demonstrates implementation of a collection using ArrayList and shows how to bind this collection to a grouping grid. ArrayList is an implementation of IList that could be best defined as a hybrid of normal array and collection. It holds items in the order they were added. The items can be retrieved in any order via their index. As elements are added, the capacity of the ArrayList increases automatically. It allows null references and duplicate elements. Objects implementing IList interface should have at least one record for data rows to be created. Data rows correspond to data objects in the collection and the data columns represents properties of data.

### Implementation

Follow these steps to bind an array of custom objects to a grouping grid.

1. Create a class (Data) whose instances represent records and properties represent record fields.

   ~~~ cs

		public class Data

		{

			public Data() : this("", "", "")

			{

			}

			public Data(string cat_Id, string cat_Name, string desc)

			{

		this.cat_Id = cat_Id;

		this.cat_Name = cat_Name;

		this.desc = desc;

			}

			private string cat_Name;

			public string CategoryName

			{

		get

		{

		return this.cat_Name;

		}

		set

		{

		this.cat_Name = value;

		}

			}

			private string desc;

			public string Description

			{

		get

		{

		return this.desc;

		}

		set

		{

		this.desc = value;

		}

			}

			private string cat_Id;

			public string CategoryID

			{

				get

				{

		return this.cat_Id;

				}

				set

				{

		this.cat_Id = value;

				}

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Public Class Data

		Public Sub New()

		Me.New("", "", "")

		End Sub



		Public Sub New(ByVal cat_Id As String, ByVal cat_Name As String, ByVal desc As String)

		Me.cat_Id = cat_Id

		Me.cat_Name = cat_Name

		Me.desc = desc

		End Sub



		Private cat_Name As String

		Public Property CategoryName() As String

		Get

		Return Me.cat_Name

		End Get

		Set(ByVal value As String)

		Me.cat_Name = Value

		End Set

		End Property



		Private desc As String

		Public Property Description() As String

		Get

		Return Me.desc

		End Get

		Set(ByVal value As String)

		Me.desc = Value

		End Set

		End Property



		Private cat_Id As String

		Public Property CategoryID() As String

		Get

		Return Me.cat_Id

		End Get

		Set(ByVal value As String)

		Me.cat_Id = Value

		End Set

		End Property

		End Class

   ~~~
   {:.prettyprint }

2. Create an instance of ArrayList and add a list of Data type objects into it. This represents collection.

   ~~~ cs

		using System;

		using System.Collections;



		ArrayList al = new ArrayList();

		al.Add(new Data("Condiments", "Charlotte Cooper","Bigfoot Breweries"));

		al.Add(new Data("Confections","Regina Murphy","Grandma Kelly's Homestead"));

		al.Add(new Data("Grains/Cereals","Jean-Guy Lauzon","Ma Maison"));

		al.Add(new Data("Meat/Poultry","Shelley Burke","New Orleans Cajun Delights"));

		al.Add(new Data("Produce", "Mayumi Ohno", "Mayumi's"));

		al.Add(new Data("Seafood", "Robb Merchant", "New England Seafood Cannery"));

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports System

		Imports System.Collections



		Dim al As ArrayList = New ArrayList()

		al.Add(New Data("Condiments", "Charlotte Cooper", "Bigfoot Breweries"))

		al.Add(New Data("Confections", "Regina Murphy", "Grandma Kelly's Homestead"))

		al.Add(New Data("Grains/Cereals", "Jean-Guy Lauzon", "Ma Maison"))

		al.Add(New Data("Meat/Poultry", "Shelley Burke", "New Orleans Cajun Delights"))

		al.Add(New Data("Produce", "Mayumi Ohno", "Mayumi's"))

		al.Add(New Data("Seafood", "Robb Merchant", "New England Seafood Cannery"))

   ~~~
   {:.prettyprint }
   
3. Assign this array list to the grouping grid's DataSource.

  ~~~ cs

		this.gridGroupingControl1.DataSource = al;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.gridGroupingControl1.DataSource = al

   ~~~
   {:.prettyprint }

4. Run the sample. Your grid will look similar to the one below.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img38.jpeg)


> Note: For more details, refer to the following browser sample:
>
> _&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Data Sources\Array List Demo_

## IBindingList

This section demonstrates implementation of IBindingList and how to bind this list to Grid Grouping control. As IBindingList derives from IList, it requires the implementation of all the members of the IList, ICollection and IEnumerable interfaces.

### Benefits

The benefit of using IBindingList includes support for change notifications when the list is modified. It does have ListChanged event, which will be fired upon any data change. If the collection supports changes, it should also support firing ListChanged event when the collection changes. To indicate that, the collection should return true from SupportsChangeNotification property. Hence when items are added or removed from the collection, the grouping grid will be notified of these changes and will update itself automatically.

### Implementation Procedure

Follow these steps to create your own collection that implements IBindingList and to bind this collection to a grouping grid.

1. Create a class(Class1) whose instances will represent records. Its properties represent record fields.
2. Create another class(Class2) that implements interfaces IBindingList and INotifiedPropertyChanged, in order to be notified of any property value change. This class will represent the list of records and will act as data store for your grouping grid.
3. Implements the necessary events: ListChanged and PropertyChanged.
4. Raise ListChanged event once the list is modified. 
5. Make SupportChangeNotifications property to return true.
6. Create an instance of Class2 and add a list of records into it. Then assign this list to DataSource of grouping grid.
 
> Note: For the complete code refer the sample:
>
> _&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Data Sources\IBindingList Demo_

## ITypedList

This section demonstrates implementation of ITypedList, which will be used for complex data binding. It is best to use this interface where you want a type to explicitly specify properties it exposes instead of letting TypeDescriptor to find out using reflection. The interface contains two methods: GetItemProperties and GetListName.

GetItemProperties accepts no parameters and returns PropertyDescriptorCollection. In this method, you can use TypeDescriptor.GetProperties to load properties from your type. GetListName returns the name of the list.

### Implementation

Follow the steps below to create a collection (Books Collection) that implements ITypedList and binds this collection to the grouping grid.

1. Create a class Book that represents the structure of the record.


   ~~~ cs

		class Book

		{

			public Book(string bname, string author)

			{

				this.bookName = bname;

				this.author = author;

			}

			private string bookName;

			public string BookName

			{

				get

				{

					return this.bookName;

				}

				set

				{

					this.bookName = value;

				}

			}

			private string author;

			public string Author

			{

				get

				{

					return this.author;

				}

				set

				{

					this.author = value;

				}

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Public Class Book

		Public Sub New(ByVal bname As String, ByVal auth As String)

		Me.bName = bname

		Me.authr = auth

		End Sub

		Private bname As String

		Public Property BookName() As String

		Get

		Return Me.bname

		End Get

		Set

		Me.bname = Value

		End Set

		End Property

		Private authr As String

		Public Property Author() As String

		Get

		Return Me.authr

		End Get

		Set

		Me.authr = Value

		End Set

		End Property

		End Class

   ~~~
   {:.prettyprint }
   
2. Create another class Books that inherits ArrayList class and implements ITypedList. A list of its instances will act as data store for grouping grid. Implement GetItemProperties and GetListName methods.

   ~~~ cs

		public class Books : ArrayList, ITypedList

		{

			public PropertyDescriptorCollection GetItemProperties(PropertyDescriptor[] listAccessors)

			{

				return TypeDescriptor.GetProperties(typeof(Book));

			}



			public string GetListName(PropertyDescriptor[] listAccessors)

			{

				return "Book";

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Public Class Books : Inherits ArrayList : Implements ITypedList

		Public Function GetItemProperties(ByVal listAccessors As PropertyDescriptor()) As PropertyDescriptorCollection Implements ITypedList.GetItemProperties

		Return TypeDescriptor.GetProperties(GetType(Book))

		End Function



		Public Function GetListName(ByVal listAccessors As PropertyDescriptor()) As String Implements ITypedList.GetListName

		Return "Book"

		End Function

		End Class

   ~~~
   {:.prettyprint }

3. Create an instance of Books and add a few records into it.

   ~~~ cs

		Books MyBooks = new Books();

		MyBooks.Add(new Book("Computer Networks", "Tanenbaum"));

		MyBooks.Add(new Book("Data Structures", "Tremblay and Sorenson"));

		MyBooks.Add(new Book("Database Management", "Alexis Leon"));

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Dim MyBooks As Books = New Books()

		MyBooks.Add(New Book("Computer Networks", "Tanenbaum"))

		MyBooks.Add(New Book("Data Structures", "Tremblay and Sorenson"))

		MyBooks.Add(New Book("Database Management", "Alexis Leon"))

   ~~~
   {:.prettyprint }

4. Assign this list to the grouping grid's DataSource.

   ~~~ cs

		this.gridGroupingControl1.DataSource = MyBooks;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.GridGroupingControl1.DataSource = MyProducts

   ~~~
   {:.prettyprint }

5. Run the sample. Given below is a sample screenshot.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img41.jpeg)



> Note: For more details, refer to the following browser sample:>
>
>_&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Data Sources\Array List Demo_

## Strongly Typed Collections

Grid Grouping control can be bound to a Strongly Typed Collection. Strongly Typed Collection is a collection that stores a Known Type. It can be viewed as an array of specific object. For example, suppose your application needs to store information about products in a factory, you could create a Strongly Typed collection of Product objects. 

### Benefits

* Since the collection knows the type of object, it does not need to type cast items between the type you are really storing and a generic object type stored in a collection.
* If you are writing the code to manage collection items, then you can perform any other operation on the items that are being written into and read from the collection.

## Collection Base


This section demonstrates how to build a Strongly Typed Collection using CollectionBase class. Strongly Typed collection can be created by inheriting from the System.Collections.CollectionBase class. CollectionBase class implements IList, IListSource, and IEnumerable. These interfaces enable the users to implement methods and properties that support binding, enumerating, and looping using ForEach construct. The result is that your strongly typed collections can be bound directly to our grid grouping control as datasource.

1. Create a class Product whose instances represent the records and properties represent the record fields.

   ~~~ cs

		class Product

		{

			string productName, qtyPerUnit;



			public Product(string name, string qty)

			{

				this.productName = name;

				this.qtyPerUnit = qty;

			}



			public string ProductName

			{

				get

				{

					return productName;

				}

				set

				{

					productName = value;

				}

			}

			public string QuantityPerUnit

			{

				get

				{

					return qtyPerUnit;

				}

				set

				{

					qtyPerUnit = value;

				}

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Class Product

		Private ProdName As String 

		Private QtyPerUnit As String



		Public Sub New(ByVal name As String, ByVal qty As String)

		ProdName = name

		QtyPerUnit = qty

		End Sub 

		Public Property ProductName() As String 

		Get

		Return ProdName 

		End Get 

		Set(ByVal Value As String) 

		ProdName = Value

		End Set 

		End Property     

		Public Property QuantityPerUnit() As String 

		Get

		Return QtyPerUnit 

		End Get 

		Set(ByVal Value As String) 

		QtyPerUnit = Value

		End Set 

		End Property  

		End Class

   ~~~
   {:.prettyprint }

2. Create another class Product that derives the CollectionBase class. To make it Strongly Typed, add a default property that will return a typed object. Also, implement an ADD method.

   ~~~ cs

		using System;

		using System.Collections;

		class Products : CollectionBase

		{

		//Default Property.

			public Product this[int index]

			{

				get { return (Product)List[index]; }

				set { List[index] = (Product)value; }

			}



			public int Add(Product item)

			{

				return List.Add(item);

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports System

		Imports System.Collections



		Public Class Products

		Inherits CollectionBase



		//Using Default Property Indexer.

		Default Public Property Item(ByVal Index As Integer) As Product 

		Get 

		Return CType(List.Item(Index), Product) 

		End Get 

		Set(ByVal Value As Product) 

		List.Item(Index) = Value 

		End Set 

		End Property 



		Public Function Add(ByVal Item As Product) As Integer 

		Return List.Add(Item) 

		End Function 

		End Class 

   ~~~
   {:.prettyprint }

3. Create Products Collection by instantiating Products class and adding few records to it.

   ~~~ cs

		Products MyProducts = new Products();

		MyProducts.Add(new Product("Chai", "10 boxes x 20 bags"));

		MyProducts.Add(new Product("Aniseed Syrup", "12 - 550 ml bottles"));

		MyProducts.Add(new Product("Sir Rodney's Marmalade", "30 gift boxes"));

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Dim MyProducts As Products = New Products()

		MyProducts.Add(New Product("Chai", "10 boxes x 20 bags"))

		MyProducts.Add(New Product("Aniseed Syrup", "12 - 550 ml bottles"))

		MyProducts.Add(New Product("Sir Rodney's Marmalade", "30 gift boxes"))

   ~~~
   {:.prettyprint }

4. Finally assign this collection to the grouping grid's DataSource.

   ~~~ cs

		this.gridGroupingControl1.DataSource = MyProducts;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.GridGroupingControl1.DataSource = MyProducts

   ~~~
   {:.prettyprint }

5. Run the sample. Here is a sample screen shot.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img43.jpeg)



> Note: For more details, refer the following browser sample:
>
>_&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Data Sources\Collection Base Demo_

## Generic Collection

This section deals with implementation of Generic Collection. Generics refer to those classes, structure, methods, and interfaces that have place holders for the types they can contain or use. A generic collection class uses type parameters as place holders for the type of objects it stores, for the type of its fields, and the parameter types for its methods. The actual types are assigned to these place holders while creating the instances.

It provides a standard way to create non-type-specific collection. Hence, we can get immediate benefit of type safety without having to derive from base collection type and implement type-specific members. Through generics, it is possible to have a single array class to store a list of Players or even a list of Products.

The .NET 2.0 framework provides a number of generic collections to work with. The generic collection classes have been defined in the System.Collections.Generic namespace. Some of them are listed below.

* List<T> is the generic version of ArrayList based on generic interface IList.
* BindingList<T> is the generic collection based on IBindingList.
* BindingListView<T> is a generic collection based on IBindingListView.

where T is the place-holder for type parameter.

Off these classes, IBindingList implementation has some specialities. BindingList<T> automatically raises ListChanged event when INotifyPropertyChanged.PropertyChanged event is raised in a child object. It also raises it when items are added or removed. When you implement custom collection and want the grid to react to changes in datasource, you should implement IBindingList and raise ListChanged events.

### Implementation

Follow the steps below to implement generic collection and bind it to our grouping grid control. This implementation uses BindingList<T> class.

1. Create a class (CustomClass) whose objects represent records, and properties represent the record fields. This class implements INotifyPropertyChanged interface in order to trigger the grid to react to changes in the list.

   ~~~ cs

		public class CustomClass : INotifyPropertyChanged

		{

			int id;

			string first_name;

			string last_name;

			string address;

			string city;



			public CustomClass(int id,string fname,string lname,string addr,string city)

			{

				this.id = id;

				first_name = fname;

				last_name = lname;

				address = addr;

				this.city = city;

			}



			public int ID

			{

				get { return id; }

				set 

				{

					if (id != value)

					{

						id = value;

						RaisePropertyChanged("ID");                   

					}

				}

			}



			public string FirstName

			{

				get { return first_name; }

				set 

				{

					if (first_name != value)

					{

						first_name = value;

						RaisePropertyChanged("FirstName"); 

					}

				}

			}



			public string LastName

			{

				get { return last_name; }

				set 

				{

					if (last_name != value)

					{

						last_name = value;

						RaisePropertyChanged("LastName");

					}

					last_name = value; 

				}

			}



			public string Address

			{

				get { return address; }

				set 

				{

					if (address != value)

					{

						address = value;

						RaisePropertyChanged("Address");

					}

				}

			}



			public string City

			{

				get { return city; }

				set 

				{

					if (city != value)

					{

						city = value;

						RaisePropertyChanged("City");

					}

				}

			}



			void RaisePropertyChanged(string name)

			{

				if (PropertyChanged != null)

				PropertyChanged(this, new PropertyChangedEventArgs(name));

			}



		//INotifyPropertyChanged Members.

			public event PropertyChangedEventHandler PropertyChanged;

		}


   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Public Class CustomClass : Implements INotifyPropertyChanged

			Dim cusid As Integer

			Dim first_name As String, last_name As String, addr As String, cityname As String



			Public Sub New(ByVal id As Integer, ByVal fname As String, ByVal lname As String, ByVal addr As String, ByVal city As String)

				Me.cusid = id

				Me.first_name = fname

				Me.last_name = lname

				Me.addr = addr

				Me.cityname = city

			End Sub



			Public Property ID() As Integer

				Get

					Return cusid

				End Get

				Set(ByVal value As Integer)

					If cusid &lt;&gt; value Then

						cusid = value

						RaisePropertyChanged("ID")

					End If

				End Set

			End Property



			Public Property FirstName() As String

				Get

					Return first_name

				End Get

				Set(ByVal value As String)

					If first_name &lt;&gt; value Then

						first_name = value

						RaisePropertyChanged("FirstName")

					End If

				End Set

			End Property



			Public Property LastName() As String

				Get

					Return last_name

				End Get

				Set(ByVal value As String)

					If last_name &lt;&gt; value Then

						last_name = value

						RaisePropertyChanged("LastName")

					End If

				End Set

			End Property



			Public Property Address() As String

				Get

					Return addr

				End Get

				Set(ByVal value As String)

					If addr &lt;&gt; value Then

						addr = value

						RaisePropertyChanged("Address")

					End If

				End Set

			End Property



			Public Property city() As String

				Get

					Return cityname

				End Get

				Set(ByVal value As String)

					If cityname &lt;&gt; value Then

						cityname = value

						RaisePropertyChanged("City")

					End If

				End Set

			End Property



		Sub RaisePropertyChanged(ByVal name As String)

		RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(name))

		End Sub



		Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged



		End Class

   ~~~
   {:.prettyprint }
   
2. Instantiate BindingList &lt;T&gt; class by specifying the type of collection as CustomClass and add few records to it. This will create a collection of CustomClass type objects.

   ~~~ cs

		using System.Collections.Generic;



		BindingList<CustomClass> bl = new BindingList<CustomClass>();

		bl.Add(new CustomClass(0101, "Charlotte", "Cooper", "49 Gilbert St.", "London"));

		bl.Add(new CustomClass(0102, "Shelley", "Burke", "P.O. Box 78934", "New Orleans"));

		bl.Add(new CustomClass(0103, "Regina", "Murphy", "707 Oxford Rd.", "Ann Arbor"));

		bl.Add(new CustomClass(0104, "Yoshi", "Nagase", "9-8 Sekimai Musashino-shi", "Tokyo"));

		bl.Add(new CustomClass(0105, "Mayumi", "Ohno", "Calle del Rosal 4", "Oviedo"));

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports System.Collections.Generic



		Dim bl As BindingList(Of CustomClass) = New BindingList(Of CustomClass)()

		bl.Add(New CustomClass(101, "Charlotte", "Cooper", "49 Gilbert St.", "London"))

		bl.Add(New CustomClass(102, "Shelley", "Burke", "P.O. Box 78934", "New Orleans"))

		bl.Add(New CustomClass(103, "Regina", "Murphy", "707 Oxford Rd.", "Ann Arbor"))

		bl.Add(New CustomClass(104, "Yoshi", "Nagase", "9-8 Sekimai Musashino-shi", "Tokyo"))

		bl.Add(New CustomClass(105, "Mayumi", "Ohno", "Calle del Rosal 4", "Oviedo"))

   ~~~
   {:.prettyprint }

3. Assign this list to the grouping grid's DataSource.

   ~~~ cs

		this.gridGroupingControl1.DataSource = bl;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.GridGroupingControl1.DataSource = bl

   ~~~
   {:.prettyprint }

4. Finally, run the sample. Your grid will look like this.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img45.jpeg)

> Note: For more details, refer the following browser sample:
>
> _&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\Data Sources\Generic Collection Demo_

## Unbound Mode

Grid Grouping control can be operated in Unbound Mode. In unbound mode, you can add your own columns to the grouping grid along with other bound columns.

### Implementation

This section demonstrates how to add custom columns to a grouping grid. The TableDescriptor.UnboundFields.Add() method will allow you to add unbound fields to the grouping grid. Unbound values can be provided in QueryValue event and any changes in the values can be stored back to the data store by handling SaveValue event. Additionally, you can handle QueryCellStyleInfo event to customize unbound cells individually.

The values must be saved somewhere because the grouping grid does not maintain any data structure to store cell values. Since values are unbound, they cannot be stored into bound data source too. In this example, a HashTable is used to save the values of unbound column. The example displays an unbound CheckBox column along with other bound columns using grouping grid.

1. Create a Grid Grouping control and bind it to data store.

   ~~~ cs

		private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;



		//Defines Grouping Grid.

		this.gridGroupingControl1 = new Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl();

		this.gridGroupingControl1.Size = new System.Drawing.Size(160,200 );



		//Creates Data Store.

		DataTable dt = new DataTable("MyTable");

		int nCols = 2;

		int nRows = 5;

		for(int i = 0; i < nCols; i++)

		dt.Columns.Add(new DataColumn(string.Format("Col{0}", i)));

		for(int i = 0; i < nRows; ++i)

		{

		DataRow dr = dt.NewRow();

		for(int j = 0; j < nCols; j++)

		dr[j] = string.Format("row{0} col{1}", i, j);

		dt.Rows.Add(dr);

		}



		//Binds data source to grouping grid.

		this.gridGroupingControl1.DataSource = dt;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		'Defines Grouping Grid.

		Private gridGroupingControl1 

		As Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl



		Me.gridGroupingControl1 = 

		New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()

		Me.gridGroupingControl1.Size = New System.Drawing.Size(160,200 )



		'Creates Data Store.

		Dim dt As DataTable = New DataTable("MyTable")



		Dim nCols As Integer = 2

		Dim nRows As Integer = 5



		Dim i As Integer = 0

		Do While i < nCols

		dt.Columns.Add(New DataColumn(String.Format("Col{0}", i)))

		i += 1

		Loop



		i = 0

		Do While i < nRows

		Dim dr As DataRow = dt.NewRow()

		Dim j As Integer = 0

		Do While j < nCols

		dr(j) = String.Format("row{0} col{1}", i, j)

		j += 1

		Loop

		dt.Rows.Add(dr)

		i += 1

		Loop



		' Binds data source to grouping grid.

		Me.GridGroupingControl1.DataSource = dt

   ~~~
   {:.prettyprint }

2. Create FieldDescriptor that well describes your custom column and adds it to UnboundFieldDescriptor collection of grouping grid.

   ~~~ cs

		FieldDescriptor unboundField = new FieldDescriptor("CheckboxCol", "", false, "");

		unboundField.ReadOnly = false;

		this.gridGroupingControl1.TableDescriptor.UnboundFields.Add(unboundField);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Dim unboundField As FieldDescriptor = New FieldDescriptor("CheckboxCol", "", False, "")

		unboundField.ReadOnly = False

		Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add(unboundField)

   ~~~
   {:.prettyprint }

3. Setup check boxes in the unbound column. You can also customize unbound cells through Appearance property.

   ~~~ cs

		gridGroupingControl1.TableDescriptor.Columns["CheckboxCol"].Appearance.AnyRecordFieldCell.CellType = "CheckBox";

		gridGroupingControl1.TableDescriptor.Columns["CheckboxCol"].Appearance.AnyRecordFieldCell.CheckBoxOptions.CheckedValue = "True";

		gridGroupingControl1.TableDescriptor.Columns["CheckboxCol"].Appearance.AnyRecordFieldCell.CheckBoxOptions.UncheckedValue = "False";

		gridGroupingControl1.TableDescriptor.Columns["CheckboxCol"].Appearance.AnyRecordFieldCell.HorizontalAlignment = GridHorizontalAlignment.Center;

		gridGroupingControl1.TableDescriptor.Columns["CheckboxCol"].Appearance.AnyRecordFieldCell.VerticalAlignment = GridVerticalAlignment.Middle;



   ~~~
   {:.prettyprint }

   ~~~ vbnet

		gridGroupingControl1.TableDescriptor.Columns("CheckboxCol").Appearance.AnyRecordFieldCell.CellType = "CheckBox"

		gridGroupingControl1.TableDescriptor.Columns("CheckboxCol"].Appearance.AnyRecordFieldCell.CheckBoxOptions.CheckedValue = "True"

		gridGroupingControl1.TableDescriptor.Columns("CheckboxCol"].Appearance.AnyRecordFieldCell.CheckBoxOptions.UncheckedValue = "False"

		gridGroupingControl1.TableDescriptor.Columns("CheckboxCol"].Appearance.AnyRecordFieldCell.HorizontalAlignment = GridHorizontalAlignment.Center

		gridGroupingControl1.TableDescriptor.Columns("CheckboxCol"].Appearance.AnyRecordFieldCell.VerticalAlignment = GridVerticalAlignment.Middle


   ~~~
   {:.prettyprint }

4. Handle QueryValue and SaveValue events to set and save the unbound values. Define a HashTable to store unbound values.

   ~~~ cs

		Hashtable unboundValues = new Hashtable();



		private void gridGroupingControl1_QueryValue(object sender, FieldValueEventArgs e)

		{

			if (e.Field.Name == "CheckboxCol")

			{

				string key = e.Record.GetValue("Col1").ToString();

				if (key != null)

				{

					object val = unboundValues[key];

					e.Value = val;

				}

			}

		}



		private void gridGroupingControl1_SaveValue(object sender, FieldValueEventArgs e)

		{

			if (e.Field.Name == "CheckboxCol")

			{

				string key = e.Record.GetValue("Col1").ToString();

				if (key != null)

				{

					object val = e.Value;

					unboundValues[key] = val;

				}

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Hashtable(unboundValues = New Hashtable())



		Private Sub gridGroupingControl1_QueryValue(ByVal sender As Object, ByVal e As FieldValueEventArgs) Handles gridGroupingControl1.QueryValue

		If e.Field.Name = "CheckboxCol" Then

		Dim key As String = e.Record.GetValue("Col1").ToString()

		If Not key Is Nothing Then

		Dim val As Object = unboundValues(key)

		e.Value = val

		End If

		End If

		End Sub



		Private Sub gridGroupingControl1_SaveValue(ByVal sender As Object, ByVal e As FieldValueEventArgs) Handles gridGroupingControl1.SaveValue

		If e.Field.Name = "CheckboxCol" Then

		Dim key As String = e.Record.GetValue("Col1").ToString()

		If Not key Is Nothing Then

		Dim val As Object = e.Value

		unboundValues(key) = val

		End If

		End If

		End Sub


   ~~~
   {:.prettyprint }

5. Customize the unbound cells by handling the QueryCellStyleInfo event.

   ~~~ cs

		this.gridGroupingControl1.QueryCellStyleInfo += new Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventHandler(this.gridGroupingControl1_QueryCellStyleInfo);



		private void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)

		{

			if (e.TableCellIdentity.ColIndex == 3 && e.TableCellIdentity.RowIndex > 2)

			{

				if (e.TableCellIdentity.RowIndex % 4 == 0)

				e.Style.CellValue = false;

				else

				e.Style.CellValue = true;

			}

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs) Handles gridGroupingControl1.QueryCellStyleInfo

		If e.TableCellIdentity.ColIndex = 3 AndAlso e.TableCellIdentity.RowIndex > 2 Then

		If e.TableCellIdentity.RowIndex Mod 4 = 0 Then

		e.Style.CellValue = False

		Else

		e.Style.CellValue = True

		End If

		End If

		End Sub

   ~~~
   {:.prettyprint }

6. Run the sample. Here is a sample screenshot.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img47.jpeg)

