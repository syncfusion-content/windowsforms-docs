---
layout: post
title: Sorting in PivotChart
description: Sorting operations in PivotChart
platform: windowsforms
control: PivotChart
documentation: ug
---

# Sorting
PivotChart provides support to sort both `PivotAxis` and `PivotLegends` programmatically in both ascending and descending order. By default, the PivotChart will populate the series in ascending order.

## Sort by Pivot Axis 
PivotAxis can be sorted by adding `PivotSortDescriptor` to the `SortedAxis` collection and `ListSortDirection` is used to specify the sorting order.

Here "Gender" is an `PivotAxis` item.

{% tabs %}
{% highlight c# %}
//Adding PivotAxis to the SortAxis collection for sorting.
this.pivotChart1.SortedAxis.Add(new PivotSortDescriptor("Gender", ListSortDirection.Ascending));
{% endhighlight %}

{% highlight vb %}
'Adding PivotAxis to the SortAxis collection for sorting.
Me.pivotChart1.SortedAxis.Add(New PivotSortDescriptor("Gender", ListSortDirection.Ascending))
{% endhighlight %}
{% endtabs %}
 
Before applying sorting

![](Sorting_images/Before_Sorting.png) 

After applying sorting on `PivotAxis` "Gender"

![](Sorting_images/After_Sorting.png) 

## Sort by Pivot Legends
`PivotLegends` can be sorted by adding `PivotSortDescriptor` to the `SortedLegends` collection and `ListSortDirection` is used to specify the sorting order.

Here "State" `FieldMappingName` of `PivotLegends` item and sorting order is ascending. 

{% tabs %}
{% highlight c# %}
//Adding PivotAxis to the SortLegends collection for sorting.
this.pivotChart1.SortedLegends.Add(new PivotSortDescriptor("State"));
{% endhighlight %}

{% highlight vb %}
'Adding PivotAxis to the SortAxis collection for sorting.
Me.pivotChart1.SortedLegends.Add(New PivotSortDescriptor("State"))
{% endhighlight %}
{% endtabs %}

## Sort by values
`PivotLegends` can also be sorted based on the values by using `SortByCalculation` method of `PivotEngine`.

{% tabs %}
{% highlight c# %}
// Sorts the given indexed columns based on values in 
this.pivotChart1.PivotEngine.SortByCalculation(6, false, ListSortDirection.Descending);
{% endhighlight %}

{% highlight vb %}
' Sorts the given indexed columns based on values in 
Me.pivotChart1.PivotEngine.SortByCalculation(6, False, ListSortDirection.Descending)
{% endhighlight %}
{% endtabs %}

## Events
There are two events available in both `SortedAxis` and `SortedLegends` of PivotChart to handle or notify the sorting operation.

<table>
<tr>
<th>S.No</th><th>Event name</th><th>Details</th><th>Event arguments</th>
</tr>
<tr>
<td>1</td><td>Changing</td><td>Occurs before a property in a nested element or the collection is changed.</td><td><a href="https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20chart/Syncfusion.PivotChart.Windows~Syncfusion.Windows.Forms.PivotChart.PivotItemSortingEventArgs.html">PivotItemSortingEventArgs</a></td>
<tr><td>2</td><td>Changed</td><td>Occurs after a property in a nested element or the collection is changed.	</td><td><a href="https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20chart/Syncfusion.PivotChart.Windows~Syncfusion.Windows.Forms.PivotChart.PivotItemSortedEventArgs.html">PivotItemSortedEventArgs</a></td>
</tr>
</table>

