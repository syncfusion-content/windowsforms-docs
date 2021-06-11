---
layout: post
title: How to set the cell properties for a range of cells | Syncfusion
description: Learn here all about how to set the cell properties for a range of cells in Gridcontrol of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to set the cell properties for a range of cells

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
