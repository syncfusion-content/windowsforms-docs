---
layout: post
title: Filtering-Grid-Data-Bound-Grid
description: filtering grid data bound grid
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Filtering Grid Data Bound Grid

We will use an example to illustrate filtering procedure for the grid.

Assume that you are binding a grid to DataTable. In this case, you will have to use DataView.RowFilter property to restrict the rows that appear in your Grid Data Bound Grid. The syntax for RowFilter clause is very similar to SQL WHERE clause. You will be able to see a full description of this in the .NET Frameworks online help for DataColumn.Expression, which uses the same syntax. 

Here are some samples.

_Table 74: Filtering procedure for the grid_

<table>
<tr>
<th>
ROWFILTER STRING</th><th>
RESULT</th></tr>
<tr>
<td>
[City Area] = Center</td><td>
Shows only rows where the City Area column is center.</td></tr>
<tr>
<td>
rate > 10</td><td>
Shows only rows where the rate column is greater than 10.</td></tr>
<tr>
<td>
Name LIKE a*</td><td>
Shows only rows where the Name column begins with *a.</td></tr>
<tr>
<td>
Name LIKE *a</td><td>
Shows only rows where the Name column ends with *a.</td></tr>
</table>

![](Filtering-Grid-Data-Bound-Grid_images/Filtering-Grid-Data-Bound-Grid_img1.jpeg)





The filtered grid is created by setting RowFilter property of it to default view. If you change RowFilter property then the grid's contents will change to reflect the new filter. 



{% highlight c# %}

//Assuming the grid is bound to a Data Table.

DataView dv = ((DataTable)this.gridDataBoundGrid1.DataSource).DefaultView;

dv.RowFilter = "FirstName LIKE 's*'";


{% endhighlight  %}
{% highlight vbnet %}




' Assuming the grid is bound to a Data Table.

Dim dv As DataView = CType(Me.gridDataBoundGrid1.DataSource, DataTable).DefaultView

dv.RowFilter = "FirstName LIKE 's*'"

You can use the Essential Grid's GridFilterBar class to automatically add a row of drop-down cells at the top of a simple (non-hierarchical) DataBound Grid that can be used to filter the grid to display only rows that match values from the drop-down. For example, when you have a grid with Grid Filter Bar, if one of your columns is City and you want to see all the rows where City is 'Boston' for example and then you will have to drop the combo box at the top of the City column and select Boston. The grid will then display only those rows with Boston in the City column. Adding a Grid Filter Bar takes only two lines of code. 





//Adds a Filter Bar to the databound grid.

GridFilterBar filterBar = new Syncfusion.Windows.Forms.Grid.GridFilterBar();

filterBar.WireGrid(gridDataBoundGrid1);







'Adds a Filter Bar to the databound grid.

Dim filterBar As GridFilterBar = New Syncfusion.Windows.Forms.Grid.GridFilterBar()

filterBar.WireGrid(GridDataBoundGrid1)


{% endhighlight  %}

![](Filtering-Grid-Data-Bound-Grid_images/Filtering-Grid-Data-Bound-Grid_img2.jpeg)



## Filter By DisplayMember

Grid Data Bound Grid filters data records by value member of the columns. This default behavior can be customized in order to accomplish filtering by display member instead. This can be achieved by deriving custom filter from the GridFilterBar class wherein you can customize GetFilterFromRow method to replace the display strings in the filter with value strings.

Filter By DisplayMember feature performs this sort of customization and lets you filter grid data by display member instead of value member. 

Following code example illustrates how to enable this filter.



{% highlight c# %}

GridDataBoundGridFilterBarExt filterBar = new GridDataBoundGridFilterBarExt();

filterBar.WireGrid(gridDataBoundGrid1);



{% endhighlight  %}
{% highlight vbnet %}



Dim filterBar As GridDataBoundGridFilterBarExt = New GridDataBoundGridFilterBarExt()

filterBar.WireGrid(gridDataBoundGrid1)

{% endhighlight  %}

![](Filtering-Grid-Data-Bound-Grid_images/Filtering-Grid-Data-Bound-Grid_img3.jpeg) 



N> For more details, refer to the following browser sample:

> <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\2.0\Data Bound\Filter By DisplayMember Demo

