---
layout: post
title: Appearance in GridControl
description: how to change the backcolor of a single cell
platform: windowsforms
control: Grid
documentation: ug
---

# How to Change the BackColor of a Single Cell

## Introduction

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