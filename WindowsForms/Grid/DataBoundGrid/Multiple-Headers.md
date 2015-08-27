---
layout: post
title: Multiple-Headers
description: multiple headers
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Multiple Headers

Grid Data Bound Grid supports display of multiple row and column headers. Additional row headers can be added along side the existing header by setting Model.Rows.HeaderCount and additional column headers can be added below the existing column header by setting the Model.Cols.HeaderCount property.

The following code example illustrates how to display multiple row and column headers.

{% highlight c# %}

int extraRowHeaders = 1;

int extraColHeaders = 1;

//Initializes extra row and column headers.

this.gridDataBoundGrid1.Model.Rows.HeaderCount = extraRowHeaders;

this.gridDataBoundGrid1.Model.Cols.HeaderCount = extraColHeaders;

{% endhighlight %}

{% highlight vbnet %}

Dim extraRowHeaders As Integer = 1

Dim extraColHeaders As Integer = 1

'Initializes extra row and column headers.

Me.gridDataBoundGrid1.Model.Rows.HeaderCount = extraRowHeaders

Me.gridDataBoundGrid1.Model.Cols.HeaderCount = extraColHeaders

{% endhighlight %}

The resultant output is shown below.

![](DataBound-Grid_images/DataBound-Grid_img34.jpeg)


## Performance of DataBound Grid 

Essential DataBound Grid can handle large amount of data without a performance hit.

![](DataBound-Grid_images/DataBound-Grid_img35.png)

For more details, refer to the sample: _&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\2.0\Data Bound\Grid Performance Demo_

#### Example

The Grid can be loaded by specifying the number of records and using the following options, Use OptimizedListChangeEvent, Use ResizeToFit on ColWidths and Use DataTableList.

In the Initialize Table group box,

* Use OptimizedListChangeEvent - Selecting this option ensures that the grid data is updated using IBindingList.ListChanged instead of CurrencyManager to change events. 
* Use ResizeToFit on ColWidths - Selecting this option ensures column width is resized to fit the cell content after the data is loaded. 
* Use DataTableList - Selecting this option ensures that the Syncfusion.Collections.DataTableWrapperList is used as the data source instead of data table. DataTableWrapperList is an IBindingList collection that wraps a data table and provides optimized access to the rows of data table in turn improving the performance when inserting records into an existing table holding many records.

In the Manipulate Grid group box

* Repeat Count and Batch Size can be specified in order to check the performance in batch updates. 
* Selecting Use ScrollWindow check box invalidates only the inserted or removed rows instead of invalidating the whole Grid.
* Insert Records, Remove Records and Change Records buttons let you check the performance when inserting, removing, or changing records in the underlying data table. Once the data is loaded after the batch update, you will be able to see the performance and memory usage in a text box, as shown below.

![](DataBound-Grid_images/DataBound-Grid_img36.jpeg)


