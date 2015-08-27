---
layout: post
title: Multiple-Nested-Relations
description: multiple nested relations
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Multiple Nested Relations

Grid Data Bound Grid control supports multiple nested relations. A relation can be added in the data source and the data source can be set to GridDataBoundGrid. Then the name of the relation can be passed through Grid.Binder.AddRelation function to show a hierarchical pattern.

#### Example:

The following code example illustrates the display of a DataSet with multiple nested relations. The sample displays NorthWind's 'Category', 'Products' and the 'Orders_Details' table, and allows you to expand and collapse the order details for each order and products for each category. After adding a relation in the dataset and setting DataSource to the grid, the name of the relation is passed through Grid.Binder.AddRelation function in order to show hierarchical pattern.

{% highlight c# %}

GridHierarchyLevel hlCategory_Products = gridBinder.AddRelation("Category_Products");

GridHierarchyLevel hlProducts_OrderDetails = gridBinder.AddRelation("Products_OrderDetails");

{% endhighlight %}

{% highlight vbnet %}

Dim hlCategory_Products As GridHierarchyLevel = gridBinder.AddRelation("Category_Products")

Dim hlProducts_OrderDetails As GridHierarchyLevel = gridBinder.AddRelation("Products_OrderDetails")

{% endhighlight %}



![](DataBound-Grid_images/DataBound-Grid_img21.jpeg)



A sample demonstrating this feature is available under the following sample installation path.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Hierarchy\Expand Grid Demo
