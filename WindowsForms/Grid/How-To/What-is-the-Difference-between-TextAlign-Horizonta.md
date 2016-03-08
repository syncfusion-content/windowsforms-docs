---
layout: post
title: What-is-the-Difference-between-TextAlign-Horizonta | Windows Forms | Syncfusion
description: what is the difference between textalign, horizontalalignment, and verticalalignment?
platform: windowsforms
control: Grid
documentation: ug
---

# What is the Difference between TextAlign, HorizontalAlignment, and VerticalAlignment?

## Introduction

TextAlign is set when the description of embedded controls are to be aligned to the left or right. HorizontalAlignment is set when cell value is to be aligned either left or right or center of the cell. VerticalAlignment is set when the cell value is to be aligned either top or bottom or middle of the cell.

### Example

{% highlight c# %}



//Right aligns the cell values of column 3 horizontally.

this.gridControl1.ColStyles[3].HorizontalAlignment = GridHorizontalAlignment.Right;



//Right aligns the embedded controls in column 6. 

this.gridControl1.ColStyles[6].TextAlign = GridTextAlign.Right;



//Aligns the cell values of column 8 at the bottom. 

this.gridControl1.ColStyles[8].VerticalAlignment = GridVerticalAlignment.Bottom;

{% endhighlight  %}

{% highlight vbnet %}



'Right aligns the cell values of column 3 horizontally.

Me.gridControl1.ColStyles(3).HorizontalAlignment = GridHorizontalAlignment.Right



'Right aligns the embedded controls in column 6.

Me.gridControl1.ColStyles(6).TextAlign = GridTextAlign.Right



'Aligns the cell values of column 8 at the bottom. 

Me.gridControl1.ColStyles(8).VerticalAlignment = GridVerticalAlignment.Bottom
{% endhighlight  %}


