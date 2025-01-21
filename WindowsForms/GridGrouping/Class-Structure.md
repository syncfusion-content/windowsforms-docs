---
layout: post
title: Class Structure in Windows Forms GridGrouping control | Syncfusion®
description: Learn about Class Structure support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Class Structure in Windows Forms GridGrouping Control
This walkthrough will explain the classes that are available in GridGroupingControl which plays a major role for the creation of GridGroupingControl.

## GridGroupingControl
The [GridGroupingControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#) class is derived from Control class and implements several interfaces that add Grouping support to this class. It provides support for displaying ADO.NET data and other data sources in a grid. 

Data will be loaded from the given data source and changes will be written back to the data source. It is the ideal choice if you need [grouping support](http://help.syncfusion.com/windowsforms/gridgrouping/grouping), [multi-column sort support](http://help.syncfusion.com/windowsforms/gridgrouping/sorting#multi-column-sorting), or true [nested-table hierarchical support](http://help.syncfusion.com/windowsforms/gridgrouping/relations-and-hierarchy) in a grid. It can be bound to any [IList](https://docs.microsoft.com/en-us/dotnet/api/system.collections.ilist?redirectedfrom=MSDN&view=net-5.0) data source. 

[Expression columns](http://help.syncfusion.com/windowsforms/gridgrouping/expression-fields), [filter columns](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation#filters-and-expressions), and [summary rows](http://help.syncfusion.com/windowsforms/gridgrouping/summaries) can be easily added to this grid. It is fully [designable](http://help.syncfusion.com/windowsforms/gridgrouping/getting-started#through-designer) using Visual Studio and is customizable from [code](http://help.syncfusion.com/windowsforms/gridgrouping/getting-started#through-code).

## GridTableControl
[GridTableControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl.html#) is the main element in GridGroupingControl. The `GridTableControl` displays the rows from the [DisplayElements](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Table.html#Syncfusion_Grouping_Table_DisplayElements) collection of the [Table](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_Table) using schema information stored in the [TableDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_TableDescriptor).

### TableDescriptor
[TableDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#) gives access to table schema information of the root table in data source. `TableDescriptor` object is instantiated by [GridEngine](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridEngine.html#) class and initialized with default schema information from the list assigned to data source.

There is only one `GridEngine` object for GridGroupingControl. `GridTableDescriptor` and `GridTable` objects on the other side can be more than one when hierarchies are displayed. For each hierarchy level, `GridTableDescriptor` and `GridTable` are initialized. For example, if you have ADO.NET DataSet with three tables: Products, Orders, and OrderDetails, there will be three `GridTableDescriptor` and `GridTable`.

### Relations
**Relations** between tables are defined with [GridTableDescriptor.Relations](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_Relations) collection of [TableDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#). Each `TableDescriptor` can have one or multiple [RelationDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRelationDescriptor.html#) objects. `RelationDescriptor` defines foreign key columns in the parent table, a child with information about related child table and primary key columns in the child table.

## GridTable
[GridTable](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTable.html#) object is instantiated by `GridEngine` class. Table object manages records from the engine's data source and provides access to records and grouped elements through several collection classes. 

The most important collection used by [GridTableControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl.html) is `DisplayElements` collection. This collection provides GridTableControl with information on which element to display at a row. It returns elements such as [CaptionSection](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridCaptionSection.html#), [RecordRow](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridRecord.html#), [SummaryRow](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridSummaryRow.html#), and others. Based on the elements returned by this collection, `GridTable` control will display a record, summary, or group caption bar.

## GridGroupDropArea
The [GridGroupDropArea](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupDropArea.html#) class implements a control that is bound to a [GridTableDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#). It lets the user drag and drop column headers into its bounds and change the [Syncfusion.Grouping.TableDescriptor.GroupedColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#Syncfusion_Grouping_TableDescriptor_GroupedColumns) at runtime.

The `GridGroupDropArea` property gives access to the hosted [GridGroupDropArea](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation#grouping) control. Its purpose is to allow dragging header columns from the [GridTableControl](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl.html#) for user-interactive grouping of records. You can hide and show this area with the [ShowGroupDropArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ShowGroupDropArea) property.

### RecordNavigationBar
The [RecordNavigationBar ](http://help.syncfusion.com/windowsforms/gridgrouping/navigation-bar)allows you to display the current record fields and arrow buttons that leads you to change the records.

The `RecordNavigationBar` property gives access to the hosted [Syncfusion.Windows.Forms.RecordNavigationBar](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.RecordNavigationBar.html) control. You can show or hide the record navigation bar with the [ShowNavigationBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ShowNavigationBar) property.

## Grouping Engine

### Engine
[Engine](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Engine.html#) is the main object of the GridGroupingControl. It contains [TableDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#) with schema information such as fields, relations and [Table](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Table.html#) with runtime representation of data source with groups, records, data, and display elements. The engine lets you set the main data source for the whole engine. [TableDescriptor](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#) will pick up [ItemProperties](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.TableDescriptor.html#Syncfusion_Grouping_TableDescriptor_ItemProperties) (schema information) from the data source and table will be initialized at runtime with records from the list.

## GridEngineBase
[GridEngineBase](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridEngineBase.html#) class adds design-time support for engine class. It can be dropped as a component into the component tray of the designer. It can be initialized with [BindingContext](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridEngineBase.html#Syncfusion_Windows_Forms_Grid_Grouping_GridEngineBase_BindingContext) so that the [CurrencyManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridEngineBase.html#Syncfusion_Windows_Forms_Grid_Grouping_GridEngineBase_CurrencyManager) can be kept synchronized. 

## GridEngine
[GridEngine](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridEngine.html#) class adds plumbing for displaying the data in GridGroupingControl. You can specify the data source using [DataSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_DataSource) and [DataMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_DataMember) properties through the designer. It is instantiated with virtual [GridGroupingControl.CreateEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_CreateEngine) method. If you want to customize the engine object, you should subclass this class and should override[CreateEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_CreateEngine) method.

`GridEngine` object is the main grouping engine object. It is derived from[Syncfusion.Grouping.Engine](http://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Engine.html#) base class and adds Windows Forms specific functionality such as support for `BindingContext` and `CurrencyManager`. `GridEngine` also has special overrides of virtual [Engine.CreateTableDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Engine.html#Syncfusion_Grouping_Engine_CreateTableDescriptor_Syncfusion_Grouping_RelationDescriptor_) and [Engine.CreateTable](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Grouping.Engine.html#Syncfusion_Grouping_Engine_CreateTable_Syncfusion_Grouping_TableDescriptor_) methods so that the grid-specific derived `GridTable` class and `GridTableDescriptor` class are instantiated.
