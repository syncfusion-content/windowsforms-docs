---
layout: post
title: Sorting in Windows Forms Pivot Chart control | Syncfusion
description: Learn about Sorting support in Syncfusion® Windows Forms Pivot Chart control, its elements and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Sorting in Windows Forms Pivot Chart

The pivot chart supports sorting of both [PivotAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_PivotAxis) and [PivotLegend](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_PivotLegend) programmatically in the ascending and descending order. By default, the pivot chart populates the series in ascending order.

## Sort by pivot axis

The pivot axis can be sorted by adding a [PivotSortDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotSortDescriptor.html) to the [SortedAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html) collection and [ListSortDirection](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.listsortdirection) to specify the sorting order.

Here, "Gender" is a `PivotAxis` item.

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

Before applying sorting:

![WinForms PivotChart before sorting](Sorting_images/Before_Sorting.png)

After applying sorting on `PivotAxis` "Gender":

![WinForms PivotChart after sorting](Sorting_images/After_Sorting.png)

## Sort by pivot legends

`PivotLegends` can be sorted by adding a [PivotSortDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotSortDescriptor.html) to the [SortedLegends](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html) collection and [ListSortDirection](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.listsortdirection) to specify the sorting order.

Here, the "State" of `PivotLegends` item is `FieldMappingName` and the sorting order is ascending.

{% tabs %}

{% highlight c# %}

//Adding PivotLegends to the SortLegends collection for sorting.
this.pivotChart1.SortedLegends.Add(new PivotSortDescriptor("State"));

{% endhighlight %}

{% highlight vb %}

'Adding PivotLegends to the SortLegends collection for sorting.
Me.pivotChart1.SortedLegends.Add(New PivotSortDescriptor("State"))

{% endhighlight %}

{% endtabs %}

## Events

There are two events available in both `SortedAxis` and `SortedLegends` of the pivot chart to handle or notify the sorting operation.

<table>
<tr>
<th>S.No</th><th>Event name</th><th>Details</th><th>Event arguments</th>
</tr>
<tr>
<td>1</td><td>Changing</td><td>Occurs before a property in a nested element or the collection is changed.</td><td><a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotItemSortingEventArgs.html">PivotItemSortingEventArgs</a></td>
</tr>
<tr><td>2</td><td>Changed</td><td>Occurs after a property in a nested element or the collection is changed.</td><td><a href="https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotItemSortedEventArgs.html">PivotItemSortedEventArgs</a></td>
</tr>
</table>

