---
layout: post
title: How-to-Change-the-Backcolor-of-a-Single-Row | Windows Forms | Syncfusion
description: how to change the backcolor of a single row
platform: windowsforms
control: Grid
documentation: ug
---

# How to Change the BackColor of a Single Row

## Introduction

GridControl.RowStyles collection contains [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview) objects that provide row style settings for the GridControl. Changing the properties on a particular RowStyle will affect all the cells in that row (unless a particular cell has a more specific style setting, like a [CellStyle](/windowsforms/Grid/Cell-Style-Architecture#properties), applied).

### Example

{% highlight c# %}



//Sets the BackColor of the 3rd row.

gridControl1.RowStyles[3].BackColor = Color.Red;
{% endhighlight  %}


{% highlight vbnet %}



'Sets the BackColor of the 3rd row.

GridControl1.RowStyles(3).BackColor = Color.Red


{% endhighlight  %}
