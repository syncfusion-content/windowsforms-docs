---
layout: post
title: Filtering | PivotGrid | Windows Forms | Syncfusion
description: Filtering support in pivot grid
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Filtering

The filtered data displays only a subset of data that meets a specific criteria and hides the data that you do not want to display. The filters are automatically re-applied every time when the pivot grid is refreshed or updated until you remove those filters. In the pivot grid, filters are additive, which means that each additional filter is based on the current filter and further reduces the subset of data. At a time, 'n' number of filtering conditions can be applied to the pivot grid.

In the pivot grid control, the filtering operation can be performed by any of the following ways:

## Using filter expression programmatically

The [FilterExpression](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.FilterExpression.html) class is used to encapsulate the information required to define a filter and it contains the following properties.

* **Expression** - Specifies the well-forsmed logical expression that defines the filter.
* **Name** - Specifies the name of the filter expression.
* **DimensionName** - Specifies the dimension name for filter expression.
* **DimensionHeader** - Specifies the dimension header for filter expression.
* **Format** - Specifies the format of filter expression.
* **Evaluator** - Evaluates the specfied value.

### Defining filter expressions

To define a filter, create an instance of [FilterExpression](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.FilterExpression.html) class and add that instance to [Filters](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Filters.html) collection of pivot grid control.

Please refer the code sample below.

{% tabs %}

{% highlight C# %}

FilterExpression filterExpression1 = new FilterExpression()
{
    DimensionHeader = "Product",
    Name = "Product",
    DimensionName = "Product",
    Expression = "Product = Bike"
};
this.pivotGridControl1.Filters.Add(filterExpression1);

{% endhighlight %}

{% highlight vb %}

Dim m_FilterExpression As filterExpression1 = New FilterExpression() With 
{
    .DimensionHeader = "Product",
    .Name = "Product", 
    .DimensionName = "Product",
    .Expression = "Product = Bike"
}
pivotGridControl1.Filters.Add(filterExpression1)

{% endhighlight %}

{% endtabs %}

![Filtering_img1](Filtering_images/Filtering_img1.png)

## Using grouping bar's built-in popup

The filtering operation can also be performed by using the built-in popup integrated with the filter, row and column header areas of [grouping bar](grouping-bar.md).

While clicking on the filter icon present in the header item of row or column or filter header area, a filter popup will be opended by displaying its corresponding list of values. By selecting and unselecting the required values in the list, filtering will be applied to particular header item.

![Filtering_img2](Filtering_images/Filtering_img2.png)