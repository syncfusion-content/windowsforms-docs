---
layout: post
title: Creating-Grid-Grouping-Control
description: creating grid grouping control
platform: windowsform
control: Grid
documentation: ug
---

# Creating Grid Grouping Control

This section will provide step-by-step procedure to create Grid Grouping control through designer and through programmatical approach in a .NET application.

## Through Designer

For details, see Tutorials Lesson 1: Grid Grouping Control Designer.

## Through Code

This section will give you a step by step tutorial on creating Grid Grouping control through code. You can bind Grid Grouping control either to an MDB file or to data source that has been created manually.

In this lesson, you will learn about the following topics.

## Binding a Grid Grouping Control to an MDB File

This example illustrates how to bind Grid Grouping control to an MDB file at run time. It uses OleDbConnection and OleDbAdapter objects to get connected to data source that exposes OLE DB interface. Try a similar approach to connect to a database from MS SQL Server.

1. Include the required namespace.

   ~~~ cs

		using Synctusion.Windows.Forms.Grid.Grouping;

		using System.Data.OleDb;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Synctusion.Windows.Forms.Grid.Grouping

		Imports System.Data.OleDb

   ~~~
   {:.prettyprint }

2. Create an instance of Grid Grouping control and specify its size.

   ~~~ cs

		private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;



		this.gridGroupingControl1 = new Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl();

		this.gridGroupingControl1.Size = new System.Drawing.Size(160, 200 );

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private gridGroupingControl1 As Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl



		Me.gridGroupingControl1 = New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()

		Me.gridGroupingControl1.Size = New System.Drawing.Size(160, 200 )

   ~~~
   {:.prettyprint }
   
3. Set up Data Source.

   ~~~ cs

		//Creates Connection Object. 

		OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Data\\NWIND.MDB");



		//Creates Data Adapter. 

		OleDbDataAdapter adapter = new OleDbDataAdapter("SELECT * FROM Customers", connection);



		// Creates and fills Data Set. 

		DataSet dtSet = new DataSet();

		adapter.Fill(dtSet);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		'Creates Connection Object. 

		Dim Connection As OleDbConnection = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Data\\NWIND.MDB")



		'Creates Data Adapter. 

		Dim Adapter As OleDbDataAdapter = New OleDbDataAdapter("SELECT * FROM Customers", Connection)



		'Creates and fills Data Set.

		Dim dtSet As DataSet = New DataSet()

		Adapter.Fill(dtSet)

   ~~~
   {:.prettyprint }
   
4. Bind the grid grouping control to this data table by setting its DataSource property.

   ~~~ cs

		this.gridGroupingControl1.DataSource = dtSet.Tables[0];

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.GridGroupingControl1.DataSource = dtSet.Tables(0)

   ~~~
   {:.prettyprint }

5. Finally add the grid grouping control to the form.

   ~~~ cs

		this.Controls.Add(this.gridGroupingControl1); 

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.Controls.Add(Me.GridGroupingControl1)

   ~~~
   {:.prettyprint }
   
6. When you run the application, the grid will look like the following image.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img1.jpeg)


## Bind a Grid Grouping Control to a Manual Data Source

Here are some code samples that will create DataTable and bind it to Grid Grouping control. Once you have DataTable object populated, you can use GridGroupingControl.DataSource property to implement the binding.

1. Include the required namespace.

   ~~~ cs

		using Synctusion.Windows.Forms.Grid.Grouping;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Synctusion.Windows.Forms.Grid.Grouping

   ~~~
   {:.prettyprint }
   
2. Create an instance of Grid Grouping control and specify its size.

   ~~~ cs

		private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;

		this.gridGroupingControl1 = new Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl();

		this.gridGroupingControl1.Size = new System.Drawing.Size(160, 200 );

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private gridGroupingControl1 As Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl

		Me.gridGroupingControl1 = New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()

		Me.gridGroupingControl1.Size = New System.Drawing.Size(160, 200 )

   ~~~
   {:.prettyprint }

3. Set up the Data Source.

   ~~~ cs

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

   ~~~
   {:.prettyprint }

   ~~~ vbnet

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


   ~~~
   {:.prettyprint }

4. Bind the grid grouping control to this data table by setting its DataSource property.


   ~~~ cs

		this.gridGroupingControl1.DataSource = myDataTable; 

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.GridGroupingControl1.DataSource = myDataTable

   ~~~
   {:.prettyprint }

5. Finally, add the grid grouping control to the form.

   ~~~ cs

		this.Controls.Add(this.gridGroupingControl1); 

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.Controls.Add(Me.GridGroupingControl1)

   ~~~
   {:.prettyprint }

6. When you run the application, the grid will look like the following image. You will be able to sort data by clicking the header of the column you want to sort.

   ![](Grid-Grouping-Control_images/Grid-Grouping-Control_img2.jpeg)
