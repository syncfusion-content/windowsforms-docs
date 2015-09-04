---
layout: post
title: How-to-Change-the-Backcolor-of-a-Column
description: how to change the backcolor of a column
platform: windowsforms
control: Tools
documentation: ug
---

# How to Change the Backcolor of a Column

## Introduction

The GridControl.ColStyles collection contains GridStyleInfo objects that provide column style settings for the GridControl. Changing the properties on a particular column style will affect all the cells in that row (unless a particular cell has a more specific style setting, like a cell style, applied).


### Example



{% highlight c# %}



//Sets the BackColor for the third column.

gridControl1.ColStyles[3].BackColor = Color.Red;

{% endhighlight  %}

{% highlight vbnet %}



'Sets the BackColor for the third column.

GridControl1.ColStyles(3).BackColor = Color.Red

{% endhighlight  %}

