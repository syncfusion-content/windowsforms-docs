---
layout: post
title: Major-Control-Classes-Overview
description: major control classes overview
platform: WindowsForms
control: GridGrouping
documentation: ug
---

## Major Control Classes Overview

GridGroupingControl Class

The GridGroupingControl class is derived from Control class and implements several interfaces that add Grouping support to this class. It provides support for displaying ADO.NET data and other data sources in a grid. Data will be loaded from the given datasource and changes will be written back to the datasource. It is the ideal choice if you need grouping support, multi-column sort support, or true nested-table hierarchical support in a grid. It can be bound to any IList datasource. You can easily add expression columns, filter columns, and summary rows to this grid. It is fully designable using Visual Studio and is customizable from code. 

GridTableControl is the main element in Grid Grouping control. Grid Table control displays rows from Syncfusion.Grouping.Table.DisplayElements collection of the Grid Grouping control.Table using schema information stored in the TableDescriptor.

TableDescriptor gives access to table schema information of the root table in datasource. TableDescriptor object is instantiated by GridEngine class and initialized with default schema information from the list assigned to DataSource. There is only one GridEngine object for Grid Grouping control. GridTableDescriptor and GridTable objects on the other side can be more than one when hierarchies are displayed. For each hierarchy level, GridTableDescriptor and GridTable are initialized. For example, if you have ADO.NET DataSet with three tables: "Products", "Orders", and "OrderDetails", there will be three GridTableDescriptors and GridTables.

Relations between tables are defined with GridTableDescriptor.Relations collection of TableDescriptor. Each TableDescriptor can have one or multiple RelationDescriptor objects. RelationDescriptor defines foreign key columns in the parent table, a child with information about related child table and primary key columns in the child table.

GridTable object is instantiated by GridEngine class. Table object manages records from the engine's DataSource and provides access to records and grouped elements through several collection classes. The most important collection used by Grid Table control is DisplayElements collection. This collection provides Grid Table control with information on which element to display at a row. It returns elements such as CaptionSection, RecordRow, SummaryRow, and others. Based on the elements returned by this collection, Grid Table control will display a record, summary, or group caption bar. There are several collections returned such as Records, which contains all records in the table. FilterRecords contains all visible records.

Another related collection is the NestedDisplayElements collection. Similar to DisplayElements, this collection also returns all records, groups, and sections that are expanded and meet filter criteria. The only difference between these two collections is that NestedDisplayElements collection steps into nested tables too whereas DisplayElements collection does not.

The Grouping Engine

Engine is the main object of the grid grouping control. It contains TableDescriptor with schema information such as fields, relations and Table with runtime representation of data source with groups, records, data, and display elements. The engine lets you set the main datasource for the whole engine. TableDescriptor will pick up ItemProperties (schema information) from the datasource and table will be initialized at runtime with records from the list.

GridEngineBase class adds design-time support for engine class. It can be dropped as a component into the component tray of the designer. It can be initialized with BindingContext so that the CurrencyManager can be kept synchronized. 

GridEngine class adds plumbing for displaying the data in Grid Grouping control. You can specify the datasource using DataSource and DataMember properties through the designer. It is instantiated with virtual GridGroupingControl.CreateEngine method. If you want to customize the engine object, you should subclass this class and should override CreateEngine method.

GridEngine object is the main grouping engine object. It is derived from Syncfusion.Grouping.Engine base class and adds Windows Forms specific functionality such as support for Forms BindingContext and CurrencyManager. GridEngine also has special overrides of virtual Engine.CreateTableDescriptor and Engine.CreateTable methods so that the grid-specific derived GridTable class and GridTableDescriptor class are instantiated.

