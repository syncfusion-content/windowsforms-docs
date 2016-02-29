---
layout: post
title: Grouping-Bar | Windows Forms | Syncfusion
description: grouping bar
platform: windowsforms
control: PivotGrid
documentation: ug
---

# Grouping Bar

The PivotGrid Grouping Bar enables the drag and drop feature of fields between different areas such as column, row, value and filter. By using the Grouping Bar, you can add, rearrange, or remove fields to show data in the PivotGrid exactly the way you want.

The Grouping Bar has field headers that identify fields in the pivot grid. One field header contains:

* Caption string - identifies the field's content
* Sort indicator -  identifies the sort order applied to the field's values 
* Filter button - end-users can use it to filter field values



The headers of all visible fields are contained within header areas. The headers of row and column fields are displayed within the row header and column header areas, respectively. The headers of data fields are displayed within the data header area.



### Use Case Scenarios

At times, you may expect the Grid to perform sorting and filtering at run-time.



### Adding Grouping Bar 

By default, Grouping Bar is enabled. It can be disabled by setting ShowGroupBar property of PivotGrid to False.



{% highlight c# %}

// Instantiating PivotGridControl

PivotGridControl pivotGridControl1 = new PivotGridControl();

// Adding PivotRows

pivotGridControl1.PivotRows.Add(new PivotItem { FieldHeader = "Product" });

pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Date" });

// Adding PivotColumns

pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Country" });

pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "State" });

// Adding PivotCalculations

pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName="Amount" , Format="C"});

pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Quantity", Format = "#,##0" });

{% endhighlight %}

{% highlight vbnet %}

' Instantiating PivotGridControl

Dim pivotGridControl1 As PivotGridControl = New PivotGridControl()

' Adding PivotRows

pivotGridControl1.PivotRows.Add(New PivotItem With {.FieldHeader = "Product"})

pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Date"})

' Adding PivotColumns

pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Country"})

pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "State"})

' Adding PivotCalculations

pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName="Amount", .Format="C"})

pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Quantity", .Format = "#,##0"})


{% endhighlight %}


![C:/Users/dwarageshmb/Desktop/Vol 4 Docs/Images/PivotGrid GroupingBar.png](Grouping-Bar_images/Grouping-Bar_img1.png)



## Filtering in Grouping Bar

Data filtering displays only a subset of data that meets criteria specified by you and hides data that you don’t want to be displayed. The items present in the filter header area, column header area and row header area, provide the option of run-time filtering which is represented as a funnel symbol on it. On clicking the symbol, it opens a filter popup which displays a list of elements through which filtering can be applied. 



![C:/Users/dwarageshmb/Desktop/Vol 4 Docs/Images/Filter Popup.png](Grouping-Bar_images/Grouping-Bar_img2.png)





The following code example illustrates how to disable the filtering in the Grouping Bar.


{% highlight c# %}

// Disabling FilteringpivotGridControl1.AllowFiltering = false;

{% endhighlight %}

{% highlight vbnet %}

// Disabling FilteringpivotGridControl1.AllowFiltering = False

{% endhighlight %} 

## Sorting Indicator

The sort indicator in the item represents the sort type such as ascending order or descending order. By default, the PivotGrid will populate the data in ascending order. The sorting order can be changed by clicking on the item present in the row header area and column header area.

The following image illustrates the sort indicator with sort types.

![C:/Users/dwarageshmb/Desktop/Vol 4 Docs/Images/Sort.png](Grouping-Bar_images/Grouping-Bar_img3.png)





The following code example illustrates how to disable sorting in the Grouping Bar.


{% highlight c# %}

// Disabling Sorting
pivotGridControl1.AllowSorting = false;

{% endhighlight %}

{% highlight vbnet %}

' Disabling Sorting
pivotGridControl1.AllowSorting = False 

{% endhighlight %}