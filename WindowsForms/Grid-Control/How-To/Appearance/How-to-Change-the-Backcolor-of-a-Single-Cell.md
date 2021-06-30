---
layout: post
title: How to change the backcolor of a single cell | Syncfusion
description: Learn here all about how to change the backcolor of a single cell of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to change the BackColor of a single cell

The style object holds all the information that affects the cells appearance. One property contained in the style object is its [BackColor](/windowsforms/grid/cell-style-architecture#backcolor). Use a two-parameter indexer (rowIndex, colIndex) on your GridControl object to get a reference to that particular cells style, a [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview) object. 

{% tabs %}
{% highlight c# %}

//Changes the BackColor of a cell in the 1st row and 3rd column.
gridControl1[1, 3].BackColor = Color.Red;

{% endhighlight  %}

{% highlight vb %}

'Changes the BackColor of a cell in the 1st row and 3rd column.
GridControl1(1, 3).BackColor = Color.Red

{% endhighlight  %}
{% endtabs %}