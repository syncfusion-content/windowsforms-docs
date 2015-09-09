---
layout: post
title: How-to-Set-the-Cell-Properties-for-a-Range-of-Cell
description: how to set the cell properties for a range of cells
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Set the Cell Properties for a Range of Cells

## Introduction

Use the GridControl's ChangeCells method by passing it a [GridRangeInfo](/WindowsForms/Grid/Cell-Style-Architecture#gridrangeinfo) object to change the appearance of a range of cells. 

### Example

To set the [backcolor](/windowsforms/grid/cell-style-architecture#backcolor) and textcolor for a range of cells, use the below given code snippet.

{% highlight c# %}



//Style settings.

GridStyleInfo style = new GridStyleInfo();

style.TextColor = Color.Red;

style.BackColor = Color.LightBlue;



//Modifies a range of cells.

gridControl1.ChangeCells(GridRangeInfo.Cells(1, 1, 4, 5), style);


{% endhighlight  %}
{% highlight vbnet %}



'Style settings.

Dim style As New GridStyleInfo()

style.TextColor = Color.Red

style.BackColor = Color.LightBlue



' Modifies a range of cells.

GridControl1.ChangeCells(GridRangeInfo.Cells(1, 1, 4, 5), style)

{% endhighlight  %}

