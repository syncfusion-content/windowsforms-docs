---
layout: post
title: How to retrieve the text from a cell in GridControl | Syncfusion
description: Learn here all about how to retrieve the text from a cell of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to retrieve the text from a cell in Windows Forms GridControl

To retrieve text from a cell, simply use [Text](/windowsforms/grid/cell-style-architecture#text-and-cellvalue) property of the cells style object, which is obtained through an indexer in the GridControl.

{% tabs %}
{% highlight c# %}

//Accesses the cell's Text property to retrieve the text from the cell.
string cellText = gridControl1[2, 3].Text;

{% endhighlight  %}

{% highlight vb %}

'Access the cell's Text property to retrieve the text from the cell.
Dim cellText As String = gridControl1(2,3).Text
{% endhighlight  %}
{% endtabs %}


N> Depending upon exactly what object is stored in the_ CellValue _property, you may have to do additional work to retrieve usable value from the style. There is also FormattedText property that may give you a different value. One example would be if the cell is a combobox cell type that is using DisplayMember and ValueMember properties to show different values from the ones being stored in the GridControl (as in foreign key look tables). In this case, the Text property is the ValueMember value and the FormattedText property is the DisplayMember property.

