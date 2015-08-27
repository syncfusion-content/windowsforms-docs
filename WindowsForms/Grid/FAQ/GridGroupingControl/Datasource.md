---
layout: post
title: Datasource
description: datasource
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## Datasource

#### How to Get the Position of a Row in the DataSource from the Current Record

From the row index, you can get the element displayed at that row. If it is a record row, then the element's parent record's unsorted position will give the underlying DataRow position. 

Example

[C#]



Table table = e.TableControl.Table;



//Gets the current display element.
Element el = table.DisplayElements[e.rowIndex];



//Gets the current record.
Record r = el.ParentRecord;



//Finds its row position.
int dataRowPos = table.UnsortedRecords.IndexOf(r);



//Retrieves the corresponding data row from the datasource.
CustomersDataRow row = dataSoure.Rows[dataRowPos];



// Accesses the CutomerId value of the current record.
string id = row.CustomerId;



[VB.NET]



Dim table As Table = e.TableControl.Table 



'Gets the current display element.
Dim el As Element = table.DisplayElements(e.rowIndex)



'Gets the current record. 
Dim r As Record = el.ParentRecord 



'Finds its row position.
Dim dataRowPos As Integer = table.UnsortedRecords.IndexOf(r)



'Retrieves the corresponding data row from the datasource. 
Dim row As CustomersDataRow = dataSoure.Rows(dataRowPos)



'Accesses the CutomerId value of the current record. 
Dim id As String = row.CustomerId

#### How to set up a datasource to the grouping grid

You can set a datasource to GroupingGrid using the following code.

[C#]



//Assigns a datasource to the GroupingGrid.

this.gridGroupingControl1.DataSource = dataTable;



[VB.NET]



'Assigns a datasource to the GroupingGrid.

Me.gridGroupingControl1.DataSource = dataTable



