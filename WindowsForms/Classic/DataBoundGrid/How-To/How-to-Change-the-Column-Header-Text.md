---
layout: post
title: Change Column Header Text in WinForms GridDataBoundGrid | Syncfusion®
description: Change the column header text in Syncfusion® Windows Forms GridDataBoundGrid by setting the GridBoundColumn.HeaderText property.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Change the Column Header Text in WinForms GridDataBoundGrid

This page explains How to Change the Column Header Text and more details.

## How to Change the Column Header Text

GridDataBoundGrid by default uses the property name of the content of the columns as the header text. For DataTable, this is the DataColumn.ColumnName property.

To specify a header other than this default one, set GridBoundColumn.HeaderText property for the column. If you have explicitly added GridBoundColumns to GridDataBoundGrid.GridBoundColumns collection, then you must use GridBoundColumns in that collection. If you did not add GridBoundColumns, then you can use GridBoundColumns that are auto generated when you set the datasource to the grid, GridDataBoundGrid.Binder.InternalColumns.

{% tabs %}
{% highlight c# %}

//Changes the Header Text of 'Attribute' Column.
this.gridDataBoundGrid1.Binder.InternalColumns["Attribute"].HeaderText = "NewHeaderText";

{% endhighlight %}

{% highlight vb %}

'Changes the Header Text of 'Attribute' Column.
 Me.GridDataBoundGrid1.Binder.InternalColumns("Attribute").HeaderText = "NewHeaderText"

{% endhighlight %}
{% endtabs %}
