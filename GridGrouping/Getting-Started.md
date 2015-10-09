---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Getting Started

This section will provide step-by-step procedure to create Grid Grouping control through designer and through programmatical approach in a .NET application.

## Through Designer

Grid Grouping control has strong designer support. You can control all aspects of the grid's appearance through the designer. Additional commands (verbs) will let you save layouts and restore them. You can also use a preview feature that will let you load data into your control, and then further set the Grid Grouping control properties that can be persisted as design time properties.

This section has two major tasks. The first task is to place the Grid Grouping control on the form. The second task is to use the designer to set up data binding to an Access data file or SQL Server Database. This is strictly a Windows Forms process and really has nothing to do with our Grid Grouping control. You just need to set up a Data Adapter to access the data that is needed for the grid. The data for this is located in the My Documents\Syncfusion\EssentialStudio\VersionNumber\Windows\Data\NWIND.mdb or NWIND.sdf (depending upon your installation folder). For MDB file, you must use ADO.NET OLE DB support to access this data. For SQL Server, you must use SQL Server.

### Binding MDB File by using Visual Studio 

#### By using VS 2005

The steps in this lesson are to be used with Visual Studio 2005 and .NET 2.0. You can use Smart Tags that are available in the .NET 2.0 Designer to hook into your MDB file. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.

1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form.

2.In the Grid Grouping control smart tag, click the Choose Data Source drop down. Then click the Add Project Data Source link in the drop down.

 ![](Getting-Started_images/Getting-Started_img1.png) 





In the Data Source Configuration Wizard that appears, select DataBase and click Next.

 ![](Getting-Started_images/Getting-Started_img2.png) 





Click New Connection. Add Connection dialog box will be displayed.

![](Getting-Started_images/Getting-Started_img3.png) 





In the Add Connection dialog box, click Change button. This opens the Change Data Source dialog box.

 ![](Getting-Started_images/Getting-Started_img4.png)





In the Change Source dialog box, select the Microsoft Access DataBase File option, and then click OK.

 ![](Getting-Started_images/Getting-Started_img5.png) 





The Add Connection dialog box will be opened without the DataBase file name entry set. Click Browse button and browse to the following path: _C:\Syncfusion\EssentialStudio\[Version Number]\Windows\Data\NWIND.mdb_ (this path will vary according to your installation location). Click OK.

 ![](Getting-Started_images/Getting-Started_img6.png) 





Click New Connection to choose your data connection. Click Next.

![](Getting-Started_images/Getting-Started_img7.png) 





Click No to indicate that you do not want to save the MDB in the project.

 ![](Getting-Started_images/Getting-Started_img8.png) 





The following screen appears.

 ![](Getting-Started_images/Getting-Started_img9.png) 





Click Next to choose your Database Objects. Select the Tables that you want. Click Finish.

 ![](Getting-Started_images/Getting-Started_img10.png) 




The columns in the Grid Grouping control will now get populated as depicted in the following screen shot.

 ![](Getting-Started_images/Getting-Started_img11.png) 



Finally, set the Anchor property of the Grid Grouping control to _All_, so that the Grid Grouping control can be easily sized with the form.

 ![](Getting-Started_images/Getting-Started_img12.png) 





To allow grouping at run time, the Grid Grouping control displays a drop panel that the user can drag columns to be grouped. To display this drop panel, you need to set ShowGroupDropArea property to _true_.

 ![](Getting-Started_images/Getting-Started_img13.png) 





Run the application to see the Grid Grouping control display the data from the MDB file (without having written a single line of code). Your form should look similar to the one in the following screen shot.



 ![](Getting-Started_images/Getting-Started_img14.png) 





To group by CompanyName, click on the CompanyName column header and drag it to the drop area.



 ![](Getting-Started_images/Getting-Started_img15.png) 





Notice that each set of grouped values has its own "Caption" row and its own "AddNew" row (*). Each group has its own PlusMinus cell that will let you expand/collapse the group.

 ![](Getting-Started_images/Getting-Started_img16.png) 



N>: For more details, refer the following browser sample: C:\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Grouping.Windows\Samples\2.0\GettingStarted\Data Binding VS 2005 Demo

#### By using VS 2008



The steps in this lesson are to be used with Visual Studio 2008 and .NET 3.5. Smart Tags are available in the .NET 4.5.1 Designer to hook into your MDB file. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.



1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form. In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source. Data Source Configuration Wizard dialog box appears.



 ![](Getting-Started_images/Getting-Started_img18.png) 





2.In the Choose a Data Source Type window, click Database, and then click Next.



 ![](Getting-Started_images/Getting-Started_img19.png) 





3.In the Choose Your Data Connection window, click New Connection.



![](Getting-Started_images/Getting-Started_img20.png)





The ChooseData Source dialog box appears.



 ![](Getting-Started_images/Getting-Started_img21.png) 





4.Click Microsoft Access Database File, and then click Continue.



 ![](Getting-Started_images/Getting-Started_img22.png) 



The Add Connection dialog box appears without the Database file name entry set.





5.Click Browse to choose the Data Source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.mdb_ (this path will vary according to your installation location).

6.Click OK.



 ![](Getting-Started_images/Getting-Started_img23.png) 



The connection string is displayed in the Data Source Configuration Wizard dialog box.



7.Click Next.



 ![](Getting-Started_images/Getting-Started_img24.png) 



8.In the Microsoft Visual Studio message box that opens, click No to indicate that you do not want to save the MDB in the project.



 ![](Getting-Started_images/Getting-Started_img25.png) 





The Save the Connection String to the Application Configuration File window opens.



 ![](Getting-Started_images/Getting-Started_img26.png) 



9.Click Next.

10.In the Choose your Database Objects window that opens, select the required tables.



![](Getting-Started_images/Getting-Started_img27.png) 



11.Click Finish.



The columns in the Grid Grouping control will get populated as shown in the following window shot.



![](Getting-Started_images/Getting-Started_img28.png)





12.Finally, set the Anchor property of the Grid Grouping control to _All_, so that the Grid Grouping control can be easily sized with the form.



 ![](Getting-Started_images/Getting-Started_img29.png) 





13.You can group columns at run time by dragging columns headers of the columns be grouped to the GroupDropArea of the Grid Grouping control. To display the GroupDropArea of the Grid Grouping control, set ShowGroupDropArea property to _True_.



![](Getting-Started_images/Getting-Started_img30.png) 





14.Run the application to view the MDB file data displayed by the Grid Grouping control (without having written a single line of code). Your form should look similar to the one in the following window shot.



 ![](Getting-Started_images/Getting-Started_img31.png) 



#### By using VS 2010

The steps in this lesson are for use with Visual Studio 2010 and .NET 4.0. You can use Smart Tags available in the .NET 4.5.1 Designer to hook into your MDB file. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.



1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form. In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source. Data Source Configuration Wizard dialog box appears.



 ![](Getting-Started_images/Getting-Started_img32.png) 



2.In the Choose a Data Source Type window, click Database, and then click Next.



 ![](Getting-Started_images/Getting-Started_img33.png) 





3.In the Choose a Database Model window, click Dataset, and then click Next.



 ![](Getting-Started_images/Getting-Started_img34.png) 



4.In the Choose Your Data Connection window, click New Connection.



 ![](Getting-Started_images/Getting-Started_img35.png) 





The ChooseData Source dialog box appears.

![](Getting-Started_images/Getting-Started_img36.png) 



_Figure_ _43__: Choose Data Source dialog box_

5.Click Microsoft Access Database File, and then click Continue.



 ![](Getting-Started_images/Getting-Started_img37.png) 



The Add Connection dialog box appears without the Database file name entry set.



6.Click Browse to choose the Data Source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\ &lt;Version number&gt;\ Common\Data\NWIND.mdb_ (this path will vary according to your installation location).

7.Click OK.



 ![](Getting-Started_images/Getting-Started_img38.png) 





The connection string is displayed in the Data Source Configuration Wizard dialog box.



8.Click Next.



 ![](Getting-Started_images/Getting-Started_img39.png) 





9.In the Microsoft Visual Studio message box that opens, click No to indicate that you do not want to save the MDB in the project.



![](Getting-Started_images/Getting-Started_img40.png) 





The Save the Connection String to the Application Configuration File window opens.



![](Getting-Started_images/Getting-Started_img41.png) 





10.Click Next.

11.In the Choose your Database Objects window that opens, select the required tables.



 ![](Getting-Started_images/Getting-Started_img42.png)





12.Click Finish.



The columns in the Grid Grouping control will get populated as shown in the following window shot.

 ![](Getting-Started_images/Getting-Started_img43.png) 





13.Finally, set the Anchor property of Grid Grouping control to _all_, so that Grid Grouping control can be easily sized with the form. This is depicted in the following screen shot.



![](Getting-Started_images/Getting-Started_img44.png) 





14.You can group columns at run time by dragging column headers of the columns to be grouped to GroupDropArea of Grid Grouping control. To display GroupDropArea of Grid Grouping control, set ShowGroupDropArea property to _True_.



 ![](Getting-Started_images/Getting-Started_img45.png) 





15.Run the application to view the MDB file data displayed by the Grid Grouping control (without having written a single line of code). Your form should look similar to the one in the following window shot.



 ![](Getting-Started_images/Getting-Started_img46.png) 



#### By using VS 2012

The following steps are intended for use with Visual Studio 2012 and .NET 4.5. You can use Smart Tags that are available in the .NET 4.5 designer to hook into your MDB file. This tutorial is strictly a designer tutorial. You do not have to write a single line of code. 

1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form.

2.In the Grid Grouping control smart tag, click Choose Data Source drop-down list. Then click Add Project Data Source link.

 ![](Getting-Started_images/Getting-Started_img47.png) 





In the Data Source Configuration Wizard that appears, select Database and click Next.

 ![](Getting-Started_images/Getting-Started_img48.png) 





Select Dataset from Data Source Configuration Wizard dialog and click Next.

 ![](Getting-Started_images/Getting-Started_img49.png) 





The following screen will appear:

 ![](Getting-Started_images/Getting-Started_img50.png) 





Click New Connection. ChooseData Source dialog box will be displayed.

 ![](Getting-Started_images/Getting-Started_img51.png) 




3.In the Change Data Source dialog box, select the Microsoft Access Database File option, and then click Continue. Add Connection dialog box will be displayed.



![](Getting-Started_images/Getting-Started_img52.png) 




4.Add Connection dialog box will be opened without the Database file name entry set. Click Browse and browse to the following path: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.mdb_ (this path will vary according to your installation location). Click OK.



![](Getting-Started_images/Getting-Started_img53.png) 





Now the Data Source Configuration Wizard will open, along with the connection string also shown in this dialog. Click Next.

 ![](Getting-Started_images/Getting-Started_img54.png) 





Click No to indicate that you do not want to save the MDB in the project.



 ![](Getting-Started_images/Getting-Started_img55.png) 





The following screen will appear:

![](Getting-Started_images/Getting-Started_img56.png) 





5.Click Next to choose your Database Objects. Select the tables that you want. Click Finish.

 ![](Getting-Started_images/Getting-Started_img57.png) 





The columns in the Grid Grouping control will now be populated as depicted in the following screenshot:

![](Getting-Started_images/Getting-Started_img58.png) 





Finally, set the Anchor property of the Grid Grouping control to All, so that the Grid Grouping control can be easily sized with the form.

 ![](Getting-Started_images/Getting-Started_img59.png) 





To allow grouping at run time, the Grid Grouping control displays a drop panel onto which the user can drag columns to be grouped. To display this drop panel, set the ShowGroupDropArea property to true as shown in the following screenshot:

 ![](Getting-Started_images/Getting-Started_img60.png) 





Run the application to see the Grid Grouping control display the data from the MDB file without having written a single line of code. Your form should look similar to the one in the following screenshot:

 ![](Getting-Started_images/Getting-Started_img61.png) 



#### By using VS 2013

The steps in this lesson are for use with Visual Studio 2013 and .NET 4.5.1. You can use Smart Tags that are available in the .NET 4.5.1 Designer to hook into your MDB file. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.



1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form. In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source. Data Source Configuration Wizard dialog box appears.



![](Getting-Started_images/Getting-Started_img62.png) 





2.In the Choose a Data Source Type window, click Database, and then click Next.



 ![](Getting-Started_images/Getting-Started_img63.png) 





3.Then, in the Choose a Database Model window, click Dataset, and then click Next.



 ![](Getting-Started_images/Getting-Started_img64.png) 





4.In the Choose Your Data Connection window, click New Connection.



 ![](Getting-Started_images/Getting-Started_img65.png) 





ChooseData Source dialog box appears.



 ![](Getting-Started_images/Getting-Started_img66.png) 





5.Click Microsoft Access Database File, and then click Continue.



 ![](Getting-Started_images/Getting-Started_img67.png) 





The Add Connection dialog box appears without the Database file name entry set.



6.Click Browse to choose the Data Source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.mdb_ (this path will vary according to your installation location).

7.Click OK.



 ![](Getting-Started_images/Getting-Started_img68.png) 



The connection string is displayed in the Data Source Configuration Wizard dialog box.



8.Click Next.



 ![](Getting-Started_images/Getting-Started_img69.png) 





9.In the Microsoft Visual Studio message box that opens, click No to indicate that you do not want to save the MDB in the project.



![](Getting-Started_images/Getting-Started_img70.png) 





The Save the Connection String to the Application Configuration File window opens.



 ![](Getting-Started_images/Getting-Started_img71.png) 





10.Click Next.

11.In the Choose your Database Objects window that opens, select the required tables.



 ![](Getting-Started_images/Getting-Started_img72.png) 




12.Click Finish.



The columns in the Grid Grouping control will get populated as shown in the following window shot.



 ![](Getting-Started_images/Getting-Started_img73.png) 





13.Finally, set the Anchor property of the Grid Grouping control to _All_, so that the Grid Grouping control can be easily sized with the form.



 ![](Getting-Started_images/Getting-Started_img74.png) 





14.You can group columns at run time by dragging column headers of the columns to be grouped to the GroupDropArea of the Grid Grouping control. To display GroupDropArea of Grid Grouping control, set ShowGroupDropArea property to _True_.



 ![](Getting-Started_images/Getting-Started_img75.png) 





15.Run the application to view the MDB file data displayed by the Grid Grouping control (without having written a single line of code). Your form should look similar to the one in the following window shot.



 ![](Getting-Started_images/Getting-Started_img76.png) 





## Through Code

This section will give you a step by step tutorial on creating Grid Grouping control through code. You can bind Grid Grouping control either to an MDB file or to data source that has been created manually.

In this lesson, you will learn about the following topics.

### Binding a Grid Grouping Control to an MDB File

This example illustrates how to bind Grid Grouping control to an MDB file at run time. It uses OleDbConnection and OleDbAdapter objects to get connected to data source that exposes OLE DB interface. Try a similar approach to connect to a database from MS SQL Server.

1.Include the required namespace.

{% highlight C# %}  



using Synctusion.Windows.Forms.Grid.Grouping;

using System.Data.OleDb;

{% endhighlight %}

{% highlight vbnet %} 



Imports Synctusion.Windows.Forms.Grid.Grouping

Imports System.Data.OleDb

{% endhighlight %}

2.Create an instance of Grid Grouping control and specify its size.



{% highlight C# %}  



private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;



this.gridGroupingControl1 = new Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl();

this.gridGroupingControl1.Size = new System.Drawing.Size(160, 200 );

{% endhighlight %}

{% highlight vbnet %} 



Private gridGroupingControl1 As Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl



Me.gridGroupingControl1 = New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()

Me.gridGroupingControl1.Size = New System.Drawing.Size(160, 200 )

{% endhighlight %}

3.Set up Data Source.



{% highlight C# %}  



//Creates Connection Object. 

OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Data\\NWIND.MDB");



//Creates Data Adapter. 

OleDbDataAdapter adapter = new OleDbDataAdapter("SELECT * FROM Customers", connection);



// Creates and fills Data Set. 

DataSet dtSet = new DataSet();

adapter.Fill(dtSet);

{% endhighlight %}

{% highlight vbnet %} 



'Creates Connection Object. 

Dim Connection As OleDbConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Data\\NWIND.MDB")



'Creates Data Adapter. 

Dim Adapter As OleDbDataAdapter = New OleDbDataAdapter("SELECT * FROM Customers", Connection)



'Creates and fills Data Set.

Dim dtSet As DataSet = New DataSet()

Adapter.Fill(dtSet)

{% endhighlight %}

4.Bind the grid grouping control to this data table by setting its DataSource property.



{% highlight C# %} 



this.gridGroupingControl1.DataSource = dtSet.Tables[0]; 

 {% endhighlight %}

{% highlight vbnet %} 



Me.GridGroupingControl1.DataSource = dtSet.Tables(0)

{% endhighlight %}

5.Finally add the grid grouping control to the form.



{% highlight C# %}  



this.Controls.Add(this.gridGroupingControl1); 

{% endhighlight %}

{% highlight vbnet %} 



Me.Controls.Add(Me.GridGroupingControl1)

{% endhighlight %}

6.When you run the application, the grid will look like the following image.

 ![](Getting-Started_images/Getting-Started_img77.jpeg) 



### Bind a Grid Grouping Control to a Manual Data Source

Here are some code samples that will create DataTable and bind it to Grid Grouping control. Once you have DataTable object populated, you can use GridGroupingControl.DataSource property to implement the binding.

1.Include the required namespace.



{% highlight C# %}  



using Synctusion.Windows.Forms.Grid.Grouping;

{% endhighlight %}

{% highlight vbnet %} 



Imports Synctusion.Windows.Forms.Grid.Grouping

{% endhighlight %}

2.Create an instance of Grid Grouping control and specify its size.



{% highlight C# %}  



private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;



this.gridGroupingControl1 = new Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl();

this.gridGroupingControl1.Size = new System.Drawing.Size(160, 200 );

{% endhighlight %}

{% highlight vbnet %} 



Private gridGroupingControl1 As Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl



Me.gridGroupingControl1 = New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()

Me.gridGroupingControl1.Size = New System.Drawing.Size(160, 200 )

{% endhighlight %}

3.Set up the Data Source.



{% highlight C# %}  



DataTable myDataTable = new DataTable("MyDataTable");



//Declares Data Column and Data Row variables.

DataColumn myDataColumn;

DataRow myDataRow;



//Creates new Data Column, sets Data Type and Column Name and adds to the Data Table.   

myDataColumn = new DataColumn();

myDataColumn.DataType = System.Type.GetType("System.Int32");

myDataColumn.ColumnName = "id";

myDataTable.Columns.Add(myDataColumn);



//Creates a second column.

myDataColumn = new DataColumn();

myDataColumn.DataType = Type.GetType("System.String");

myDataColumn.ColumnName = "item";

myDataTable.Columns.Add(myDataColumn);



//Creates new Data Row objects and adds to the Data Table.    

for (int i = 0; i <= 10; i++)

{

    myDataRow = myDataTable.NewRow();

    myDataRow["id"] = i;

    myDataRow["item"] = "item " + i.ToString();

    myDataTable.Rows.Add(myDataRow);

}

{% endhighlight %}

{% highlight vbnet %} 



Dim myDataTable As DataTable = New DataTable("MyDataTable")



'Declares Data Column and Data Row variables.

Dim myDataColumn As DataColumn

Dim myDataRow As DataRow



'Creates a new Data Column, sets the Data Type and Column Name and adds to the Data Table. 

myDataColumn = New DataColumn()

myDataColumn.DataType = System.Type.GetType("System.Int32")

myDataColumn.ColumnName = "id"

myDataTable.Columns.Add(myDataColumn)



'Creates a second column.

myDataColumn = New DataColumn()

myDataColumn.DataType = Type.GetType("System.String")

myDataColumn.ColumnName = "item"

myDataTable.Columns.Add(myDataColumn)



'Creates new Data Row objects and adds to the Data Table.    

Dim i As Integer

For i = 0 To 10

myDataRow = myDataTable.NewRow

myDataRow("id") = i

myDataRow("item") = "item " & i

myDataTable.Rows.Add(myDataRow)

Next i

{% endhighlight %}

4.Bind the grid grouping control to this data table by setting its DataSource property.



{% highlight C# %}  



this.gridGroupingControl1.DataSource = myDataTable; 

{% endhighlight %}

{% highlight vbnet %} 



Me.GridGroupingControl1.DataSource = myDataTable

{% endhighlight %}

5.Finally, add the grid grouping control to the form.



{% highlight C# %}  



this.Controls.Add(this.gridGroupingControl1); 

{% endhighlight %}

{% highlight vbnet %} 



Me.Controls.Add(Me.GridGroupingControl1)

{% endhighlight %}

6.When you run the application, the grid will look like the following image. You will be able to sort data by clicking the header of the column you want to sort.

 ![](Getting-Started_images/Getting-Started_img78.jpeg) 



### Binding SQL Server by using Visual Studio

#### By using VS 2005

The steps in this lesson are for use with Visual Studio 2005 and .NET 2.0. You can use Smart Tags that are available in the .NET 2.0 Designer to hook into your SQL server file. This tutorial is strictly a designer tutorial. You neednot write even a single line of code.

1.From the Syncfusion tab in the toolbox, drag a Grid Grouping control onto your form.

2.In the Grid Grouping control smart tag, click the Choose Data Source drop down. Then click the Add Project Data Source link in the drop down.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_15.jpg](Getting-Started_images/Getting-Started_img79.jpeg) 





3.In the Data Source Configuration Wizard that appears, select DataBase and click Next.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_16.jpg](Getting-Started_images/Getting-Started_img80.jpeg) 



4.Click New Connection. The Add Connection dialog box will be displayed.



![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_48.jpg](Getting-Started_images/Getting-Started_img81.jpeg) 



_Figure_ _86__:_ Select the Data Connection



The ChooseData Source dialog box appears.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_49.jpg](Getting-Started_images/Getting-Started_img82.jpeg) 





_Figure_ _87__: Choose Data Source dialog box_





5.Click Microsoft SQL Server, and then click OK.



 ![](Getting-Started_images/Getting-Started_img83.png) 





_Figure_ _88__: Choose Data Source dialog box_



 The Add Connection dialog box appears without the Database file name entry set

6.Choose Server Name.

7.Choose Database Name or Click Browse to choose the Data Source:_C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.sdf_ (this path will vary according to your installation location).

8.Select either windows authentication or SQL server authentication option. You are required to give SQL server credentials when you Authenticate with SQL server.  



 ![](Getting-Started_images/Getting-Started_img84.png) 



_Figure_ _89__:_ Selecting the SQL Server Database



9.Click OK.



 The connection string is displayed in the Data Source Configuration Wizard dialog box.



 ![](Getting-Started_images/Getting-Started_img85.png) 



_Figure_ _90__:Choosing a Data Connection_

10.Click Next.



![](Getting-Started_images/Getting-Started_img86.png) 





_Figure_ _91__: Saving Connection String_



11.Select the DataBaseObject file from the listed database files.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_54.jpg](Getting-Started_images/Getting-Started_img87.jpeg) 



_Figure_ _92__:_ Choosing Database Objects



The columns in Grid Grouping control get populated, as depicted in the following screenshot.



 [http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_25.jpg](Getting-Started_images/Getting-Started_img88.jpeg) 



12.Finally, set the Anchor property of Grid Grouping control to All, so that the control can be sized easily with the form. This is depicted in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_26.jpg](Getting-Started_images/Getting-Started_img89.jpeg) 



13.To allow grouping at run time, the user can drag columns to be grouped onto a drop panel that the Grid Grouping control displays. To display this drop panel, set the ShowGroupDropArea property to “True” as shown in the following screenshot.



![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_27.jpg](Getting-Started_images/Getting-Started_img90.jpeg) 



14.Run the application to see the Grid Grouping control display the data from the SQL Server database. Your form should look similar to the one in the following screenshot.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_28.jpg](Getting-Started_images/Getting-Started_img91.jpeg) 



15.To group by CompanyName, click on the CompanyName column header and drag it to the drop area as illustrated in the following screenshot



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_29.jpg](Getting-Started_images/Getting-Started_img92.jpeg) 



Notice that each set of grouped values has its own "Caption" row and its own "AddNew" row, denoted by the * symbol. Each group has its own PlusMinus cell that allows you to expand or collapse the group. 

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_30.jpg](Getting-Started_images/Getting-Started_img93.jpeg) 



#### By using VS 2008

The steps in this lesson are for use with Visual Studio 2008 and .NET 3.5. You can use Smart Tags that are available in the .NET 4.5.1 Designer to hook into your SQL Server Database. This tutorial is strictly a designer tutorial. You need not write even a single line of code.

1.From the Syncfusion tab in the Toolbox, drag a Grid Grouping control onto your form.

In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source.

The Data Source Configuration Wizard dialog box appears.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_31.jpg](Getting-Started_images/Getting-Started_img94.jpeg) 



2.In the Choose a Data Source Type window, click Database, and then click Next.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_32.jpg](Getting-Started_images/Getting-Started_img95.jpeg) 



3.In the Choose Your Data Connection window, click New Connection.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_48.jpg](Getting-Started_images/Getting-Started_img96.jpeg) 



The ChooseData Source dialog box appears.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_49.jpg](Getting-Started_images/Getting-Started_img97.jpeg) 



4.Click Microsoft SQL Server, and then click OK.

 ![](Getting-Started_images/Getting-Started_img98.png) 



 The Add Connection dialog box appears without the Database file name entry set.



5.Choose Server Name.

6.Choose Database Name or click Browse to choose the data source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.sdf_

This path varies according to your installation location.

7.Select either the Windows Authentication option or the SQL Server Authentication option. If you want to authenticate SQL server, give your credentials for the SQL server.

 ![](Getting-Started_images/Getting-Started_img99.png) 



8.Click OK.

 The connection string is displayed in the Data Source Configuration Wizard dialog box.







 ![](Getting-Started_images/Getting-Started_img100.png) 



9.Click Next.

 ![](Getting-Started_images/Getting-Started_img101.png) 



10.Select DataBaseObject file from listed database files.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_54.jpg](Getting-Started_images/Getting-Started_img102.jpeg) 



11.Click Finish.

The columns in the Grid Grouping control get populated as shown in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_41.jpg](Getting-Started_images/Getting-Started_img103.jpeg) 



12.Finally, set the Anchor property of the Grid Grouping control to All, so that the control can be sized easily with the form, as shown in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_42.jpg](Getting-Started_images/Getting-Started_img104.jpeg) 



13.You can group columns at run time by dragging the column headers of the columns to be grouped to the GroupDropArea of the Grid Grouping control. To display the GroupDropArea of the Grid Grouping control, set the ShowGroupDropArea property to “True”, as shown in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_43.jpg](Getting-Started_images/Getting-Started_img105.jpeg) 



14.Run the application to view the SQL Server Database data displayed by the GridGrouping control. Your form should look similar to the one in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_44.jpg](Getting-Started_images/Getting-Started_img106.jpeg) 



#### By using VS 2010

The steps in this lesson are for use with Visual Studio 2010 and .NET 4.0. You can use Smart Tags that are available in the .NET 4.5.1 Designer to hook into your SQL Server Database. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.

1.From the Syncfusion tab in the Toolbox, drag a Grid Grouping control onto your form.

In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source. The Data Source Configuration Wizard dialog box appears.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_45.jpg](Getting-Started_images/Getting-Started_img107.jpeg) 





_Figure_ _112__: Add a Project Data Source_



2.In the Choose a Data Source Type window, click Database, and then click Next.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_46.jpg](Getting-Started_images/Getting-Started_img108.jpeg) 





_Figure_ _113__: Select Database_



3.In the Choose a Database Model window, click Dataset, and then click Next.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_47.jpg](Getting-Started_images/Getting-Started_img109.jpeg) 





_Figure_ _114__: Select Dataset_



4.In the Choose Your Data Connection window, click New Connection.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_48.jpg](Getting-Started_images/Getting-Started_img110.jpeg) 





The ChooseData Source dialog box appears.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_49.jpg](Getting-Started_images/Getting-Started_img111.jpeg) 





_Figure_ _116__: Choose Data Source dialog box_



5.Click Microsoft SQL Server, and then click OK.



 ![](Getting-Started_images/Getting-Started_img112.png) 



_Figure_ _117__: Choose Data Source dialog box_



The Add Connection dialog box appears without the Database file name entry set

6.Choose Server Name.

7.Choose Database Name or Click Browse to choose the Data Source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.sdf_

This path varies according to your installation location.

8.Select either the Windows Authentication option or the SQL server authentication option. If you want to authenticate with SQL server, give your SQL server credentials.

 ![](Getting-Started_images/Getting-Started_img113.png) 



_Figure_ _118__: Selecting the SQL Server Database_



9.Click OK.

 The connection string is displayed in the Data Source Configuration Wizard dialog box.

 ![](Getting-Started_images/Getting-Started_img114.png) 





_Figure_ _119__: Choosing a Data Connection_



10.Click Next.



 ![](Getting-Started_images/Getting-Started_img115.png) 





_Figure_ _120__: Saving Connection String_



11.Select DataBaseObject file from listed database files.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_54.jpg](Getting-Started_images/Getting-Started_img116.jpeg) 



_Figure_ _121__:_ : _Choosing Database Objects_



12.Click Finish.

The columns in the Grid Grouping control get populated, as shown in the following screenshot.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_55.jpg](Getting-Started_images/Getting-Started_img117.jpeg) 





_Figure_ _122__: Grid Grouping Control_



13.Finally, set the Anchor property of the Grid Grouping control to All, so that the Grid Grouping control can be easily sized with the form. This is depicted in the following screenshot.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_56.jpg](Getting-Started_images/Getting-Started_img118.jpeg) 





14.You can group columns at run time by dragging the columns headers of the columns to be grouped to the GroupDropArea of the Grid Grouping control. To display the GroupDropArea of the Grid Grouping control, set the ShowGroupDropArea property to “True”, as shown in the following screenshot.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_57.jpg](Getting-Started_images/Getting-Started_img119.jpeg) 





15.Run the application to view the SQL Server Database data, displayed by the Grid Grouping control. Your form should look similar to the one in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_58.jpg](Getting-Started_images/Getting-Started_img120.jpeg)  



#### By using VS 2012

The following steps are intended for use with Visual Studio 2012 and .NET 4.5. You can use Smart Tags that are available in the .NET 4.5 Designer to hook into your SQL Server database. This tutorial is strictly a designer tutorial. You do not have to write a single line of code.

1.From the Syncfusion tab in the Toolbox, drag a Grid Grouping control onto your form. 

2.In the Grid Grouping control smart tag, click the Choose Data Source drop-down list. Then click the Add Project Data Source link.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_59.png](Getting-Started_images/Getting-Started_img121.png) 



3.In the Data Source Configuration Wizard that appears, select Database and click Next.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_60.png](Getting-Started_images/Getting-Started_img122.png) 



4.Select Dataset from Data Source Configuration Wizard dialog and click Next.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_61.png](Getting-Started_images/Getting-Started_img123.png) 





The following screen appears:

![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_62.png](Getting-Started_images/Getting-Started_img124.png) 



5.Click New Connection. The ChooseData Source dialog box is displayed.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_63.png](Getting-Started_images/Getting-Started_img125.png) 



6.In the Change Data Source dialog box, select the SQL Server option, and then click Continue. The Add Connection dialog box is displayed.

 ![](Getting-Started_images/Getting-Started_img126.png)



7.Choose Server Name.

8.Choose Database Name or Click Browse to choose the Data Source: _C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.sdf_

This path varies according to your installation location.

9.Select either the Windows Authentication option or the SQL Server Authentication option. If you want to authenticate with SQL server, give your SQL server credentials.   

![](Getting-Started_images/Getting-Started_img127.png) 



_Figure_ _132__:Selecting the SQL Server Database_



10.Click OK.



 The connection string is displayed in the Data Source Configuration Wizard dialog box.



 ![](Getting-Started_images/Getting-Started_img128.png) 





_Figure_ _133__: Choosing a Data Connection_ 



11.Click Next.



 ![](Getting-Started_images/Getting-Started_img129.png) 



_Figure_ _134__: Saving Connection String_

12.Select DataBase Object file from listed database files.



 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_69.png](Getting-Started_images/Getting-Started_img130.png) 



_Figure_ _135__:Choosing Database Objects_

13.Click Finish.

The columns in the Grid Grouping control get populated, as depicted in the following screenshot:

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_70.png](Getting-Started_images/Getting-Started_img131.png) 



14.Finally, set the Anchor property of the Grid Grouping control to All, so that the Grid Grouping control can be sized easily with the form. This is depicted in the following screenshot:

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_71.png](Getting-Started_images/Getting-Started_img132.png) 



15.You can group columns at run time by dragging the columns headers of the columns to be grouped to the GroupDropArea of the Grid Grouping control. To display this drop panel, set the ShowGroupDropArea property to “True”, as shown in the following screenshot:

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_72.png](Getting-Started_images/Getting-Started_img133.png) 



16.Run the application to see the Grid Grouping control display the data from the SQL Server Database, without having written a single line of code. Your form should look similar to the one in the following screenshot:

![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_73.png](Getting-Started_images/Getting-Started_img134.png) 



#### By using VS 2013

The steps in this lesson are for use with Visual Studio 2013 and .NET 4.5.1. You can use Smart Tags that are available in the .NET 4.5.1 Designer to hook into your SQL Server database. This tutorial is strictly a designer tutorial. You do not have to write even a single line of code.

1.From the Syncfusion tab in the Toolbox, drag a Grid Grouping control onto your form.

In the Grid Grouping control smart tag, click Choose DataSource list, and then click Add Project Data Source.

The Data Source Configuration Wizard dialog box appears.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_74.jpg](Getting-Started_images/Getting-Started_img135.jpeg) 



2.In the Choose a Data Source Type window, click Database, and then click Next.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_75.jpg](Getting-Started_images/Getting-Started_img136.jpeg) 



3.Then, in the Choose a Database Model window, click Dataset, and then click Next.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_76.jpg](Getting-Started_images/Getting-Started_img137.jpeg) 



4.In the Choose Your Data Connection window, click New Connection.



![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_77.jpg](Getting-Started_images/Getting-Started_img138.jpeg) 





The ChooseData Source dialog box appears.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_78.jpg](Getting-Started_images/Getting-Started_img139.jpeg) 



5.In the Change Data Source dialog box, select the SQL Server option, and then click Continue. The Add Connection dialog box is displayed.



 ![](Getting-Started_images/Getting-Started_img140.png) 



6.Choose Server Name.

7.Choose Database Name or Click Browse to choose the Data Source: 

_C:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version number&gt;\Common\Data\NWIND.sdf_

This path varies according to your installation location.

8.Select either the Windows Authentication option or the SQL Server Authentication option. If you want to authenticate with SQL server, give your SQL server credentials.   



 ![](Getting-Started_images/Getting-Started_img141.png) 



_Figure_ _146__:Selecting the SQL Server Database_

9.Click OK.

 The connection string is displayed in the Data Source Configuration Wizard dialog box.



 ![](Getting-Started_images/Getting-Started_img142.png) 



_Figure_ _147__:Choosing a Data Connection_

10.Click Next.



 ![](Getting-Started_images/Getting-Started_img143.png) 



11.In the Choose your Database Objects window that opens, select the required tables.

![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_83.jpg](Getting-Started_images/Getting-Started_img144.jpeg) 



12.Click Finish.

The columns in the Grid Grouping control get populated, as shown in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_84.jpg](Getting-Started_images/Getting-Started_img145.jpeg) 





13.Finally, set the Anchor property of the Grid Grouping control to All, so that the Grid Grouping control can be easily sized with the form as shown in the following screenshot.

 ![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_85.jpg](Getting-Started_images/Getting-Started_img146.jpeg) 



14.You can group columns at run time by dragging columns headers of the columns to be grouped to the GroupDropArea of the Grid Grouping control. To display the GroupDropArea of the Grid Grouping control, set the ShowGroupDropArea property to “True”, as shown in the following screenshot.

![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_86.jpg](Getting-Started_images/Getting-Started_img147.jpeg) 



15.Run the application to view the SQL Server database data displayed by the GridGrouping control. Your form should look similar to the one in the following screenshot.

![http://help.syncfusion.com/ug/windows%20forms/ImagesExt/image520_87.jpg](Getting-Started_images/Getting-Started_img148.jpeg) 



