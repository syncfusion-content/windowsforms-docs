---
layout: post
title: Sort-by-DisplayMember | Windows Forms | Syncfusion
description: sort by displaymember
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Sort by DisplayMember

By default, sorting is done in DataBound Grid through IBindingList.

N> IBindingList interface provides features required to support both complex and simple scenarios when binding to a data source.

Sort method relies on the data source for the grid and by default sorting is done based on the value members present in the data source and not based on display member. We can implement Sort By DisplayMember feature in Data Bound Grid. The code for foreign key column can be added to the View of the data table so that the sort behavior can be redirected to use foreign key column linked to the combo box column when the user sorts combo box column.

## Example

The following code example implements a solution for sorting a column by its display member instead of its value member. Here the foreign key column is added to the View of the data to redirect sort behavior to use foreign key column. 

To accomplish this, two handlers, CellClick event and QueryCellInfo event have been used. In CellClick event, display member is set to the existing mapping name in sortName (which will be the value member) so that sorting is done by display member.

{% tabs %}
{% highlight c# %}
string sortName = column.MappingName;

if (column.MappingName == "SupplierID")
    sortName = "CompanyName";

else if (column.MappingName == "CategoryID")
    sortName = "CategoryName";
{% endhighlight  %}
{% highlight vbnet %}
Dim sortName As String = column.MappingName

If column.MappingName = "SupplierID" Then
sortName = "CompanyName"

ElseIf column.MappingName = "CategoryID" Then
sortName = "CategoryName"
End If
{% endhighlight  %}
{% endtabs %}

DataView is created by using List property under CurrencyManager class.

{% tabs %}
{% highlight c# %}
CurrencyManager cm = BindingContext[grid.DataSource, grid.DataMember] as CurrencyManager;
DataView dataView = cm.List as DataView;
{% endhighlight  %}
{% highlight vbnet %}
Dim cm As CurrencyManager = TryCast(BindingContext(Grid.DataSource, Grid.DataMember), CurrencyManager)
Dim dataView As DataView = TryCast(cm.List, DataView)
DataView sort is applied to this with sortName.

if (dataView.Sort == sortName)
{
    dataView.Sort = sortName + " DESC";
}

else
    dataView.Sort = sortName;

If dataView.Sort = sortName Then
dataView.Sort = sortName & " DESC"

Else
dataView.Sort = sortName
End If
{% endhighlight  %}
{% endtabs %}

N> CurrencyManager manages a list of binding objects when data source uses IBindingList interface.

In QueryCellInfo handler, the sorting icon is drawn with respect to sorting

{% tabs %}
{% highlight c# %}
if (dataView.Sort == sortName)
    e.Style.Tag = ListSortDirection.Ascending;

else if (dataView.Sort == sortName + " DESC")
    e.Style.Tag = ListSortDirection.Descending;
{% endhighlight  %}
{% highlight vbnet %}
If dataView.Sort = sortName Then
e.Style.Tag = ListSortDirection.Ascending

ElseIf dataView.Sort = sortName & " DESC" Then
e.Style.Tag = ListSortDirection.Descending
End If
{% endhighlight  %}
{% endtabs %}

![](Sort-by-DisplayMember_images/Sort-by-DisplayMember_img3.jpeg)


A sample demonstrating this feature is available under the following sample installation path.

_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\2.0\Data Bound\Sort By DisplayMember Demo_

