---
layout: post
title: Multi-Row-Record
description: multi row record
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Multi Row Record

DataBound Grid has support for displaying a single record in multiple rows. 

![](DataBound-Grid_images/DataBound-Grid_img25.jpeg)



> Note: For more details, refer to the following browser sample:
>
> &lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Customization\Multi Row Record Demo

#### Example

Using the following code example, you can switch display of records from NorthWind's Customers table between displaying a single row per record and multiple rows per record. The Binder.LayoutColumns function can be used to break records into multiple rows. The record can be broken by inserting a "." in the LayoutColumns() function of GridHierarchyLevel class.

{% highlight c# %}

GridModel gridModel = gridDataBoundGrid1.Model;

GridModelDataBinder binder = gridDataBoundGrid1.Binder;


// "." indicates a new row.

binder.LayoutColumns(new string[] {"CustomerID", "CompanyName", "ContactTitle", "ContactName", ".", "Address", "City", ".", "PostalCode", "Country", "Phone", "Fax", "Region"});



{% endhighlight %}

{% highlight vbnet %}

Dim gridModel As GridModel = gridDataBoundGrid1.Model

Dim binder As GridModelDataBinder = gridDataBoundGrid1.Binder


' "." indicates a new row.

binder.LayoutColumns(New String() {"CustomerID", "CompanyName", "ContactTitle", "ContactName", ".", "Address", "City", ".", "PostalCode",

"Country", "Phone", "Fax", "Region"})

{% endhighlight %}