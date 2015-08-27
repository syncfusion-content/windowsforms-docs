---
layout: post
title: Sort-by-DisplayMember
description: sort by displaymember
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Sort by DisplayMember

By default, sorting is done in DataBound Grid through IBindingList.

> Note: IBindingList interface provides features required to support both complex and simple scenarios when binding to a data source.

Sort method relies on the data source for the grid and by default sorting is done based on the value members present in the data source and not based on display member. We can implement Sort By DisplayMember feature in Data Bound Grid. The code for foreign key column can be added to the View of the data table so that the sort behavior can be redirected to use foreign key column linked to the combo box column when the user sorts combo box column.

#### Example

The following code example implements a solution for sorting a column by its display member instead of its value member. Here the foreign key column is added to the View of the data to redirect sort behavior to use foreign key column. 

To accomplish this, two handlers, CellClick event and QueryCellInfo event have been used. In CellClick event, display member is set to the existing mapping name in sortName (which will be the value member) so that sorting is done by display member.

{% highlight c# %}

string sortName = column.MappingName;

if (column.MappingName == "SupplierID")

    sortName = "CompanyName";

else if (column.MappingName == "CategoryID")

    sortName = "CategoryName";

{% endhighlight %}

{% highlight vbnet %}

Dim sortName As String = column.MappingName

If column.MappingName = "SupplierID" Then

sortName = "CompanyName"

ElseIf column.MappingName = "CategoryID" Then

sortName = "CategoryName"

End If

{% endhighlight %}

DataView is created by using List property under CurrencyManager class.

{% highlight c# %}

CurrencyManager cm = BindingContext[grid.DataSource, grid.DataMember] as CurrencyManager;

DataView dv = cm.List as DataView;

{% endhighlight %}

{% highlight vbnet %}

Dim cm As CurrencyManager = TryCast(BindingContext(Grid.DataSource, Grid.DataMember), CurrencyManager)

Dim dv As DataView = TryCast(cm.List, DataView)

{% endhighlight %}


DataView sort is applied to this with sortName.

{% highlight c# %}

if (dv.Sort == sortName)

{

    dv.Sort = sortName + " DESC";

}

else

    dv.Sort = sortName;

{% endhighlight %}

{% highlight vbnet %}

If dv.Sort = sortName Then

dv.Sort = sortName & " DESC"

Else

dv.Sort = sortName

End If

{% endhighlight %}

> Note: CurrencyManager manages a list of binding objects when data source uses IBindingList interface.

In QueryCellInfo handler, the sorting icon is drawn with respect to sorting

{% highlight c# %}

if (dv.Sort == sortName)

    e.Style.Tag = ListSortDirection.Ascending;

else if (dv.Sort == sortName + " DESC")

    e.Style.Tag = ListSortDirection.Descending;

{% endhighlight %}

{% highlight vbnet %}

If dv.Sort = sortName Then

e.Style.Tag = ListSortDirection.Ascending

ElseIf dv.Sort = sortName & " DESC" Then

e.Style.Tag = ListSortDirection.Descending

End If

{% endhighlight %}


![](DataBound-Grid_images/DataBound-Grid_img19.jpeg)



A sample demonstrating this feature is available under the following sample installation path.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\2.0\Data Bound\Sort By DisplayMember Demo
