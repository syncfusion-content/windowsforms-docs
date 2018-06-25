---
layout: post
title: Getting Started for Syncfusion Essential WindowsForms
description: This section explains on how to add a GridGroupingControl in an application and some of the basic functionalities of it.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Getting Started
This section will explain about creating simple GridGroupingControl and the overview of its basic functionalities.

## Choosing the Best Grid 

Essential Grid includes a trio of grid controls as well as many other controls that are used in conjunction with these three grids. Essential Grid works similar to Microsoft Excel and allows extremely detailed customization down to the cell level. Multi-level Undo / Redo, Shared Scrollbar support, Data / View separation, floating cells, more than 15 cell types, and unmatched extensibility are the unique features of the Essential Grid.

[GridGroupingControl](http://help.syncfusion.com/windowsforms/gridgrouping/getting-started) - a high performance grouping grid that offers very flexible support for grouping flat data sources as well as hierarchical data sources. This grid supports expressions fields, filters, multi-column sorting, grouping, nested tables/hierarchies, and custom summaries. It can use any [IList](https://msdn.microsoft.com/en-us/library/system.collections.ilist.aspx#) data source including [ADO.NET](https://msdn.microsoft.com/en-us/library/e80y5yhx.aspx#) [DataSet](https://msdn.microsoft.com/en-us/library/system.data.dataset.aspx#)/[DataTables](https://msdn.microsoft.com/en-US/library/system.data.datatable.aspx#) and [IBindingList](https://msdn.microsoft.com/en-us/library/system.componentmodel.ibindinglist.aspx#) objects.

[GridDataBoundGrid](http://help.syncfusion.com/windowsforms/databoundgrid/getting-started#) - a column oriented grid best suited for use with ADO.NET [DataSet](https://msdn.microsoft.com/en-us/library/system.data.dataset.aspx#)/[DataTables](https://msdn.microsoft.com/en-US/library/system.data.datatable.aspx#) data sources. If you are looking to bind with the `ADO.NET` data source without the grouping and hierarchical support then you can use GridDataBoundGrid. GridDataBoundGrid is marked as classic because all the features mentioned in this are available in `GridGroupingControl` with more efficiency and features.

[GridControl](#Getting_Started) - a cell oriented grid that can contain its own data and does not need to be bound to a data source. It has the facility to easily be customized down to the cell level. This grid can also be used in a [virtual manner](http://help.syncfusion.com/windowsforms/grid/virtual-grid#) such that it can bind to any type of data source.

<table>
<tr>
<th>
Control<br/><br/></th><th>
Grouping<br/><br/></th><th>
Sorting<br/><br/></th><th>
Summary<br/><br/></th><th>
Filtering<br/><br/></th><th>
Export<br/><br/></th></tr>
<tr>
<td>
GGC<br/><br/></td><td>
Yes<br/><br/></td><td>
Yes<br/><br/></td><td>
Yes<br/><br/></td><td>
Yes<br/><br/></td><td>
Yes<br/><br/></td></tr>
<tr>
<td>
GDBG<br/><br/></td><td>
-<br/><br/></td><td>
Yes<br/><br/></td><td>
-<br/><br/></td><td>
Yes<br/><br/></td><td>
Yes<br/><br/></td></tr>
<tr>
<td>
GC<br/><br/></td><td>
-<br/><br/></td><td>
*<br/><br/></td><td>
-<br/><br/></td><td>
*<br/><br/></td><td>
Yes<br/><br/></td></tr>
</table>

N> The `*` denotes that by default, support is not provided to the Control. It will be added by having some customizations. The [Sorting](https://www.syncfusion.com/kb/454) and [Filtering](https://www.syncfusion.com/kb/4409/how-to-add-filter-in-grid-control) functionalities can be added to the `GridControl` by doing some customizations. 

For binding the different kind of data sources and support for filtering, sorting, grouping for flat and hierarchical data sources make use of the `GridGroupingControl`.

If user wants a cell oriented grid that can contain its own data and does not need to be bound to a data source then `GridControl` is the best choice

## Assembly Deployment
The following list of assemblies need to be added as reference to use GridGroupingControl in any application,

<table>
<tr>
<th>
Required assemblies
</th>
<th>
Description
</th>
</tr>
<tr>
<td>
{{'[Syncfusion.Grid.Grouping.Windows](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows.html)'| markdownify }}
</td>
<td>
Syncfusion.Grid.Grouping.Windows assembly contains classes that handles UI operations, grouping, filtering and other fundamentals of GridGroupingControl.
</td>
</tr>
<tr>
<td>
{{'[Syncfusion.Grid.Windows](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows.html)'| markdownify }}
</td>
<td>
Syncfusion.Grid.Windows assembly contains classes that handles all UI operations, fundamentals and base classes of GridControl.
</td>
</tr>
<tr>
<td>
{{'[Syncfusion.Grouping.Base](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grouping.Base.html)'| markdownify }}
</td>
<td>
Syncfusion.Grouping.Base allows you to easily access, manipulate, and display your data in a variety of configurations.
</td>
</tr>
<tr>
<td>
{{'[Syncfusion.Shared.Base](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base.html)'| markdownify }}
</td>
<td>
Syncfusion.Shared.Base contains style related properties and various editor controls which are used in GridControl.
</td>
</tr>
</table>

## Configuring a simple GridGroupingControl
This section will explain how to create a simple GridGroupingControl in Windows Forms application and some of the basic functionalities of it.

### Adding GridGroupingControl through Designer
GridGroupingControl can be added through designer by following the below steps.

1.Create a new Windows Form Application.

2.Drag and Drop GridGroupingControl from the toolbox into the designer page. 

![](Getting-Started_images/Getting-Started_img1.png)

3.Once drag drop the GridGroupingControl into the designer page, the GridGroupingControl will be added successfully into the application with the required libraries. The below mentioned assemblies will be added automatically into the application.

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Grouping.Base.dll
* Syncfusion.Grid.Grouping.Windows.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Grouping.Base.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll

![](Getting-Started_images/Getting-Started_img2.png)

### Adding GridGroupingControl through Code
GridGroupingControl can be added through code-behind by following the below steps.

1.Create a new Windows Form Application.

2.Add the below assemblies into the project file

* Syncfusion.Grid.Windows.dll
* Syncfusion.Grid.Grouping.Windows.dll
* Syncfusion.Grouping.Base.dll
* Syncfusion.Shared.Base.dll

3.Initialize a GridGroupingControl by using the below code in code behind.

{% tabs %}
{% highlight c# %}
//Initializing a new GridGroupingControl.
private Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl gridGroupingControl1;
{% endhighlight %}
{% highlight vb %}
'Initializing a new GridGroupingControl.
Private gridGroupingControl1 As New Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl()
{% endhighlight %}
{% endtabs %}

4.Use the below code for adding the initialized GridGroupingControl to the application.

{% tabs %}
{% highlight c# %}
//Add required size for the Grid.
this.gridGroupingControl1.Size = new System.Drawing.Size(130, 80);
this.Controls.Add(this.gridGroupingControl1);
{% endhighlight %}
{% highlight vb %}
'Add required size for the Grid.
Me.gridGroupingControl1.Size = New System.Drawing.Size(130, 80)
Me.Controls.Add(Me. gridGroupingControl1)
{% endhighlight %}
{% endtabs %}

## Populating Data
GridGroupingControl supports variety of data sources such as DataTables, DataSets, or any component that implement interfaces like IList, IBindingList, ITypedList, or IListSource. The data source can have multiple nested tables, which will be displayed hierarchically by GridGroupingControl. For assigning the data source to GridGroupingControl, [DataSource](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~DataSource.html) property needs to be used.

{% tabs %}
{% highlight c# %}
// Adds the data source to the GridGroupingControl
this.gridGroupingControl1.DataSource = this.dataset11.Employees;
{% endhighlight %}
{% highlight vb %}
'Adds the data source to the GridGroupingControl.
Me.gridGroupingControl1.DataSource = Me.dataset11.Employees
{% endhighlight %}
{% endtabs %}

Refer the [Data Binding](http://help.syncfusion.com/windowsforms/gridgrouping/data-binding) topic for more detailed explanation on how to bind data source to GridGroupingControl.

## Editing
By default, GridGroupingControl is in editable state. Editing can be enabled/disabled by using the [ActivateCurrentCellBehavior](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~ActivateCurrentCellBehavior.html) property.

{% tabs %}
{% highlight c# %}
// Disables editing in GridGroupingControl
this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.None;
{% endhighlight %}
{% highlight vb %}
' Disables editing in GridGroupingControl
Me.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.None
{% endhighlight %}
{% endtabs %}

Editing operations can be customized by using the [TableControlCurrentCellStartEditing](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~TableControlCurrentCellStartEditing_EV.html) and [TableControlCurrentCellEditingComplete](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~TableControlCurrentCellEditingComplete_EV.html) events. Check the[Editing](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation) topic for more information on methods and properties related to it.

## Grouping
GridGroupingControl allows to group data by one or more columns. Data will be organized into a hierarchical structure based on the matching field values. 

If grouping is enabled in GridGroupingControl then there will be a specific area at the top of the Grid which shows the grouping options. This area is known as the [GridGroupDropArea](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableControl~GroupDropArea.html). `GridGroupDropArea` is made up of collection of grid controls packed in a panel named [GroupDropPanel](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~GroupDropPanel.html). `GridGroupDropArea` can be enabled by using the [ShowGroupDropArea](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~ShowGroupDropArea.html) property.

{% tabs %}
{% highlight c# %}
// Allows GroupDropArea to be visible
this.gridGroupingControl1.ShowGroupDropArea = true;
{% endhighlight %}
{% highlight vb %}
' Allows GroupDropArea to be visible
Me.gridGroupingControl1.ShowGroupDropArea = True
{% endhighlight %}
{% endtabs %}

![](Getting-Started_images/Getting-Started_img3.png)

Check the [Grouping](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation) topic, to know more information regarding grouping.

## Sorting
Sorting can be done in GridGroupingControl by just clicking the column header of the grid. It can be configured by using the [AllowSortColumns](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo~AllowSortColumns.html) property. By default, sorting will be enabled in GridGroupingControl. Refer the [Sorting](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation) topic for detailed explanation.

{% tabs %}
{% highlight c# %}
// Enables sorting in GridGroupingControl.
this.gridGroupingControl1.TableOptions.AllowSortColumns = true;
{% endhighlight %}
{% highlight vb %}
' Enables sorting in GridGroupingControl.
Me.gridGroupingControl1.TableOptions.AllowSortColumns = True
{% endhighlight %}
{% endtabs %}

![](Getting-Started_images/Getting-Started_img4.png)

## Filtering
GridGroupingControl is specially designed for supporting the filtering options. It supports three types of filtering namely Normal Filter, Excel-Like Filter and Dynamic Filter. To enable the Filter in GridGroupingControl make use of the [AllowFilter](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridColumnDescriptor~AllowFilter.html) property. Refer the [Filtering](http://help.syncfusion.com/windowsforms/gridgrouping/data-representation) topic for detailed explanation.

{% tabs %}
{% highlight c# %}
// Enable Filtering for the 3rd column.
this.gridGroupingControl1.TableDescriptor.Columns[3].AllowFilter = true;
{% endhighlight %}
{% highlight vb %}
'Enable Filtering for the 3rd column.
Me.gridGroupingControl1.TableDescriptor.Columns(3).AllowFilter = True
{% endhighlight %}
{% endtabs %}

![](Getting-Started_images/Getting-Started_img5.png)

