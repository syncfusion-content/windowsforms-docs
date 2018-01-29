---
layout: post
title: Multi-Row-Record | Windows Forms | Syncfusion
description: multi row record
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Multi Row Record

DataBound Grid has support for displaying a single record in multiple rows. 

![](Multi-Row-Record_images/Multi-Row-Record_img1.jpeg)



N> For more details, refer to the following browser sample:

_<Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Customization\Multi Row Record Demo_

## Example

Using the following code example, you can switch display of records from NorthWind's Customers table between displaying a single row per record and multiple rows per record. The Binder.LayoutColumns function can be used to break records into multiple rows. The record can be broken by inserting a "." in the LayoutColumns() function of GridHierarchyLevel class.

{% tabs %}
{% highlight c# %}
GridModel gridModel = gridDataBoundGrid1.Model;
GridModelDataBinder binder = gridDataBoundGrid1.Binder;

// "." indicates a new row.
binder.LayoutColumns(new string[] {"CustomerID", "CompanyName", "ContactTitle", "ContactName", ".", "Address", "City", ".", "PostalCode", "Country", "Phone", "Fax", "Region"});
{% endhighlight  %}
{% highlight vbnet %}
Dim gridModel As GridModel = gridDataBoundGrid1.Model
Dim binder As GridModelDataBinder = gridDataBoundGrid1.Binder

' "." indicates a new row.
binder.LayoutColumns(New String() {"CustomerID", "CompanyName", "ContactTitle", "ContactName", ".", "Address", "City", ".", "PostalCode", "Country", "Phone", "Fax", "Region"})
{% endhighlight  %}
{% endtabs %}
