---
layout: post
title: Get Position of a Row in DataSource from Current Record | Syncfusion
description: Learn here all about how to get position of a row in the DataSource from the current record of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Get Position of a Row in the DataSource from the Current Record

From the row index, you can get the element displayed at that row. If it is a record row, then the element's parent record's unsorted position will give the underlying DataRow position. 

 
{% highlight c# %}

Table table = e.TableControl.Table;
//Gets the current display element.
Element el = table.DisplayElements[e.rowIndex];

//Gets the current record.
Record r = el.ParentRecord;

//Finds its row position.
int dataRowPos = table.UnsortedRecords.IndexOf(r);

//Retrieves the corresponding data row from the datasource.
CustomersDataRow row = dataSource.Rows[dataRowPos];

// Accesses the CustomerId value of the current record.
string id = row.CustomerId;

{% endhighlight %}



{% highlight vb %}

Dim table As Table = e.TableControl.Table 

'Gets the current display element.
Dim el As Element = table.DisplayElements(e.rowIndex)

'Gets the current record. 
Dim r As Record = el.ParentRecord 

'Finds its row position.
Dim dataRowPos As Integer = table.UnsortedRecords.IndexOf(r)

'Retrieves the corresponding data row from the datasource. 
Dim row As CustomersDataRow = dataSource.Rows(dataRowPos)

'Accesses the CustomerId value of the current record. 
Dim id As String = row.CustomerId

{% endhighlight  %}