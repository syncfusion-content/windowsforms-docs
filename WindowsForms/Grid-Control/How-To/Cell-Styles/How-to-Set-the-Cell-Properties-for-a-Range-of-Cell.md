---
layout: post
title: How to Customize CellRange in Windows Forms GridControl | Syncfusion®
description: Set cell properties for a range of cells in Syncfusion® Windows Forms GridControl using GridRangeInfo and apply styles to multiple cells and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Cell Properties for Range in Windows Forms GridControl

Use the GridControl's ChangeCells method by passing it a [GridRangeInfo](/windowsforms/Grid/Cell-Style-Architecture#gridrangeinfo) object to change the appearance of a range of cells. 

To set the [BackColor](/windowsforms/grid/cell-style-architecture#backcolor) and TextColor for a range of cells, use the below given code snippet.

{% tabs %}
{% highlight c# %}

//Style settings.
GridStyleInfo style = new GridStyleInfo();
style.TextColor = Color.Red;
style.BackColor = Color.LightBlue;

//Modifies a range of cells.
gridControl1.ChangeCells(GridRangeInfo.Cells(1, 1, 4, 5), style);

{% endhighlight  %}
{% highlight vb %}

'Style settings.
Dim style As New GridStyleInfo()
style.TextColor = Color.Red
style.BackColor = Color.LightBlue

' Modifies a range of cells.
GridControl1.ChangeCells(GridRangeInfo.Cells(1, 1, 4, 5), style)

{% endhighlight  %}
{% endtabs %}
