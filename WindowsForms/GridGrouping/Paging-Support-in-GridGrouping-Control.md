---
layout: post
title: Paging-Support-in-GridGrouping-Control
description: paging support in gridgrouping control
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Paging Support in GridGrouping Control

Paging support has been provided in Windows Grid to improve the performance of GridGrouping control. This feature enables you to load data in an efficient way by storing and retrieving records in Pages. Each page consisting of not more than hundred records, thereby decreasing the load time. Previously all the records were displayed on a single page. Filters have also been customized to perform filtering only on the hundred items displayed anytime on the current page. 

Navigation through the retrieved records is accomplished by using Arrow buttons of the newly rendered Record Navigation control, displayed at the bottom of the page.

GridGrouping control also provides Paging support for various Data Source Items. This is achieved by using a Pager, which extracts a specific page from the bound data source and binds it to the GridGrouping control.

Certain restrictions may occur on Filtering while using Paging functionality. This is because a grid can control only the records in the page bound to it and not all the records in the data source. However, this restriction can be overcome by wiring the view to a temporary table.

The following code illustrates wiring the GridGrouping control to a Pager:



{% highlight C# %}  



var pager = new Pager {PageSize = 1000};

pager.Wire(gridGroupingControl1, dt); //dt is a DataTable object

{% endhighlight %}

{% highlight vbnet %} 



Dim pager = New Pager With {PageSize = 1000}

pager.Wire(gridGroupingControl1, dt) 'dt is a DataTable object

{% endhighlight %} 

The following code illustrates Filtering along with Paging functionality in the GridGrouping control:



{% highlight C# %}  



gridGroupingControl1.TopLevelGroupOptions.ShowFilterBar = true;

foreach (var col in _gridGroupingControl2.TableDescriptor.Columns)

col.AllowFilter = true;

{% endhighlight %}

{% highlight vbnet %} 



gridGroupingControl1.TopLevelGroupOptions.ShowFilterBar = True

For Each col In _gridGroupingControl2.TableDescriptor.Columns

col.AllowFilter = True

Next col

{% endhighlight %} 

 ![](Paging-Support-in-GridGrouping-Control_images/Paging-Support-in-GridGrouping-Control_img1.png) 



The following sample illustrates Paging support in the GridGrouping control for a data table populated with 100,000 records.



N>: For more details, refer to the following sample link:



[http://www.syncfusion.com/downloads/Support/DirectTrac/101296/Paging-1289568956.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/101296/Paging-1289568956.zip)

## Paging support with a different data source

Paging support has been provided in Grid control for Windows Forms to improve the performance of GridGroupingControl. This feature enables you to load data in an efficient way by storing and retrieving records in pages. Paging support is provided for different data sources. We have provided paging support with IEnumerable, Array List, Generic Collection, IBindingList, and DataTable.

The following code sample illustrates wiring GridGrouping control to a Pager:

{% highlight C# %}  



var pager = new Pager {PageSize = 1000};

pager.Wire(gridGroupingControl1); //Data sources assigned to the pager from gridGroupingControl

{% endhighlight %}

{% highlight vbnet %} 



Dim pager = New Pager With {PageSize = 1000}

pager.Wire(gridGroupingControl1) 'Data sources assigned to the pager from gridGroupingControl

{% endhighlight %} 

