---
layout: post
title: Sorting | Windows Forms | Syncfusion
description: sorting
platform: windowsforms
control: PivotChart
documentation: ug
---

# Sorting
Sorting enables you to quickly visualize and understand the data in a better way, organize and find the data that you want, and ultimately make more effective decisions. By default, the PivotChart will populate the series in ascending order. The sorting order for `PivotAxis` and `PivotLegends` can be changed by adding `SortAxisDescriptorCollection`, `SortLegendDescriptorCollection` objects to the `SortedAxis` and `SortedLegends` collection vice versa. 

## Sort by PivotAxis 
PivotAxis can be sorted by adding `SortAxisDescritorCollection` object to the `SortedAxis` collection. Here "Gender" is an PivotAxis item, ListSortDirection is used to specify the sorting order.

{% tabs %}
{% highlight c# %}
//Adding PiovtAxis to the SortAxis collection for sorting.
this.pivotChart1.SortedAxis.Add(new PivotSortDescriptor("Gender", ListSortDirection.Ascending));
{% endhighlight %}

{% highlight vb %}
'Adding PiovtAxis to the SortAxis collection for sorting.
Me.pivotChart1.SortedAxis.Add(New PivotSortDescriptor("Gender", ListSortDirection.Ascending))
{% endhighlight %}
{% endtabs %}
 
Before Applying sorting

![](Sorting/images/Before_Sorting.png) 

After Applying Sorting on PivotAxis "Gender"

![](Sorting/images/After_Sorting.png) 

## Sort by PivotLegends
`PivotLegends` can be sorted by adding `SortLegendDescritorCollection` object to the `SortedLegends` collection. Here "state" is PivotLgends item `FieldMappingName`, And sorting direction takes default value Ascending order. 

{% tabs %}
{% highlight c# %}
//Adding PiovtAxis to the SortLegends collection for sorting.
this.pivotChart1.SortedLegends.Add(new PivotSortDescriptor("State"));
{% endhighlight %}

{% highlight VB %}
'Adding PiovtAxis to the SortAxis collection for sorting.
Me.pivotChart1.SortedLegends.Add(New PivotSortDescriptor("State"))
{% endhighlight %}
{% endtabs %}

## Sort by values
`PivotLegends` can be sorted based on the label Text, you can able to sort them using values.  Below code snippet is used for applying sorting based on values.

{% tabs %}
{% highlight c# %}
// Sorts the given indexed columns based on values in 
this.pivotChart1.PivotEngine.SortByCalculation(6, false, ListSortDirection.Descending);
{% endhighlight %}

{% highlight VB %}
' Sorts the given indexed columns based on values in 
Me.pivotChart1.PivotEngine.SortByCalculation(6, False, ListSortDirection.Descending)
{% endhighlight %}
{% endtabs %}

## Events
There are two events available for sorting in both PivotAxis and PivotLegends, those details were given below.

<table>
<tr>
<th>S.No</th><th>API Name</th><th>Details</th><th>Event Args</th>
</tr>
<tr>
<td>1</td><td>Changing</td><td>Occurs before a property in a nested element or the collection is changed.</td><td>PivotItemSortedEventArgs</td>
<tr><td>2</td><td>Changed</td><td>Occurs after a property in a nested element or the collection is changed.	</td><td>PivotItemSortingEventArgs</td>
</tr>
</table>

