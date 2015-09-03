---
layout: post
title: How-to-Change-the-Backcolor-of-a-Single-Cell
description: how to change the backcolor of a single cell
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Change the Backcolor of a Single Cell

## Introduction

The style object holds all the information that affects the cells appearance. One property contained in the style object is its BackColor. Use a two-parameter indexer (rowIndex, colIndex) on your GridControl object to get a reference to that particular cells style, a GridStyleInfo object. 


### Example

{% highlight c# %}



//Changes the BackColor of a cell in the 1st row and 3rd column.

gridControl1[1, 3].BackColor = Color.Red;

{% endhighlight  %}

{% highlight vbnet %}



'Changes the BackColor of a cell in the 1st row and 3rd column.

GridControl1(1, 3).BackColor = Color.Red


{% endhighlight  %}
