---
layout: post
title: Sorting
description: sorting
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Sorting

Sorting feature available in DataBound Grid control allows the user to arrange items in a sequence and/or in different sets. SortBehaviour property under the control allows you to sort a column in a data bound grid when the column header cell is clicked. Implementation of this property will rearrange the cell data in the clicked column. This property can be set using either a code or designer. By default, it is set to perform sorting on double-click. GridSortBehavior is an enumeration that defines the sorting behavior options/values.

Following is the list of options/values that can be assigned to SortBehaviour property:

* SingleClick: Sort column when user clicks once.
* DoubleClick: Sort column when user double-clicks.
* None: No sorting when user clicks.

The following code example illustrates sorting of columns on a single click.




{% highlight c# %}
this.gridDataBoundGrid1.SortBehavior = GridSortBehavior.SingleClick;


{% endhighlight  %}



{% highlight vbnet %}
Me.gridDataBoundGrid1.SortBehavior = GridSortBehavior.SingleClick

{% endhighlight  %}

![](Sorting_images/Sorting_img1.jpeg)



