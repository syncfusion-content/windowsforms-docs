---
layout: post
title: How to Set a Cell Value in Windows Forms Grid Control | Syncfusion®
description: Set a value into a cell in Syncfusion® Windows Forms Grid Control using the CellValue or Text property and update cell content programmatically and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set a Cell Value in Windows Forms Grid Control

A style object holds all the information that affects cells appearance. One property contained in the style object is its CellValue. It is this property that you have to set in order to place a value in a cell. Another property called GridStyleInfo.Text will allow you to set the value of a cell using a string. Text and [CellValue](/windowsforms/Grid/Cell-Style-Architecture#text-and-cellvalue) are related properties and setting one of these properties will also set the other.

Use two-parameter indexer (rowIndex, colIndex) on your Grid Control object to get a reference to that particular cells style, GridStyleInfo object.

{% tabs %}
{% highlight c# %}

//Sets the CellValues of the cell.
int rowIndex = 1;
int colIndex = 2;        
gridControl1[rowIndex, colIndex].CellValue = "PI";
rowIndex++;

//Sets a different value in the next row.
gridControl1[rowIndex, colIndex].CellValue = 3.14159;

{% endhighlight  %}
{% highlight vb %}

'Sets the CellValues of the cell.
Dim rowIndex As Integer = 1
Dim colIndex As Integer = 2
GridControl1(rowIndex, colIndex).CellValue = "PI"
rowIndex = rowIndex + 1

'Sets a different value in the next row.
GridControl1(rowIndex, colIndex).CellValue = 3.14159

{% endhighlight %}
{% endtabs %}

N> Using an indexer on the Grid Control to set values will trigger several notification events that listeners (and the control itself) can use to monitor its statel. These events may slow things down if you have a lot of data to move into the GridControl. In this case, you can want to employ a technique that will avoid these events.

There are several ways to do this; if your data is in some form supported by GridControl.PopulateValues method, you can use that method to move such data into Grid Control. Another option is to use GridControl.SetCellInfo method by passing its appropriate parameters to avoid the notification events. But, if you are only setting a few values or you need the notification events to be raised, then using an indexer will accomplish this task.

