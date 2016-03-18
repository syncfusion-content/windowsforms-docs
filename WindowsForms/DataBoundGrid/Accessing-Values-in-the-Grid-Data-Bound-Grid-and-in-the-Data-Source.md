---
layout: post
title: Accessing-Values-in-the-Grid-Data-Bound-Grid-and-in-the-Data-Source | Windows Forms | Syncfusion
description: accessing values in the grid data bound grid and in the data source
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Accessing Values in the Grid Data Bound Grid and in the Data Source

To access values in the Grid Data Bound Grid, use the indexer and retrieve the value from the GridStyleInfo object. 
{% highlight c# %}




//Gets value at (row, col).

object myValue = this.gridDataBoundGrid1[row, col].CellValue; 

{% endhighlight  %}


{% highlight vbnet %}




'Gets Value at (row, col).

Dim myValue as Object = Me.GridDataBoundGrid1(row, col).CellValueget value at row, col
{% endhighlight  %}
If you want to retrieve the values that are based on column names, use the methods in the GridDataBoundGrid.Binder object to switch the name for a column index.
{% highlight c# %}




//Specifies the field name.

int nField = this.gridDataBoundGrid1.Binder.NameToField("FirstName");



//Calls Binder.FieldToColIndex method to retrieve the column index for the ColumnName specified.

int col = this.gridDataBoundGrid1.Binder.FieldToColIndex(nField);



//Gets Value at (row, col).

object myValue = this.gridDataBoundGrid1[row, col].CellValue;

{% endhighlight  %}

{% highlight vbnet %}




'Specifies the field name.

Dim nField As Integer = Me.gridDataBoundGrid1.Binder.NameToField("FirstName")



'Calls Binder.FieldToColIndex method to retrieve the column index for the ColumnName specified.

Dim col As Integer = Me.gridDataBoundGrid1.Binder.FieldToColIndex(nField)



'Gets Value at (row, col).

Dim myValue As Object = Me.gridDataBoundGrid1(row, col).CellValue


{% endhighlight  %}
