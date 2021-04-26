---
layout: post
title: About DataBoundGrid in Windows Forms xptoolbar | Syncfusion
description: Learn about Accessing Values in the Grid Data Bound Grid and in the Data Source support in Syncfusion Windows Forms GridDataBoundGrid and more.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# DataBoundGrid in Windows Forms xptoolbar

To access values in the Grid Data Bound Grid, use the indexer and retrieve the value from the GridStyleInfo object. 

{% tabs %}
{% highlight c# %}
//Gets value at (row, col).
object myValue = this.gridDataBoundGrid1[row, col].CellValue; 
{% endhighlight  %}
{% highlight vb %}
'Gets Value at (row, col).
Dim myValue as Object = Me.GridDataBoundGrid1(row, col).CellValue
{% endhighlight  %}
{% endtabs %}

If you want to retrieve the values that are based on column names, use the methods in the GridDataBoundGrid.Binder object to switch the name for a column index.

{% tabs %}
{% highlight c# %}
//Specifies the field name.
int nField = this.gridDataBoundGrid1.Binder.NameToField("FirstName");

//Calls Binder.FieldToColIndex method to retrieve the column index for the ColumnName specified.
int col = this.gridDataBoundGrid1.Binder.FieldToColIndex(nField);

//Gets Value at (row, col).
object myValue = this.gridDataBoundGrid1[row, col].CellValue;
{% endhighlight  %}
{% highlight vb %}

'Specifies the field name.
Dim nField As Integer = Me.gridDataBoundGrid1.Binder.NameToField("FirstName")

'Calls Binder.FieldToColIndex method to retrieve the column index for the ColumnName specified.
Dim col As Integer = Me.gridDataBoundGrid1.Binder.FieldToColIndex(nField)

'Gets Value at (row, col).
Dim myValue As Object = Me.gridDataBoundGrid1(row, col).CellValue
{% endhighlight  %}
{% endtabs %}