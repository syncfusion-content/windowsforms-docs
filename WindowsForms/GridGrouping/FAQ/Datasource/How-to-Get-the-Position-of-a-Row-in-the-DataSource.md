---
layout: post
title: How-to-Get-the-Position-of-a-Row-in-the-DataSource | Windows Forms | Syncfusion
description: how to get the position of a row in the datasource from the current record
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Get the Position of a Row in the DataSource from the Current Record

From the row index, you can get the element displayed at that row. If it is a record row, then the element's parent record's unsorted position will give the underlying DataRow position. 

Example

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

{% highlight vbnet %}



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

{% endhighlight %}

