---
layout: post
title: How-to-Select-All-Text-in-a-Grid-After-Clicking-a-
description: how to select all text in a grid after clicking a cell
platform: windowsforms
control: Tools
documentation: ug
---

# How to Select All Text in a Grid After Clicking a Cell

### Introduction

ActivateCurrentCellBehavior property controls the activation behavior as a cell becomes current by being clicked or through the cursor keys. If you want the cell text to be fully selected when a cell becomes the current cell, then use the following property.

The following code illustrates how to set Cell Activation behavior to SelectAll in GridControl:

{% highlight c# %}



//Sets Cell Activation behavior to 'SelectAll'.

this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;


{% endhighlight %}

{% highlight vbnet %}



'Sets Cell Activation behavior to 'SelectAll'.

Me.Grid.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll


{% endhighlight %}

The following code illustrates how to set Cell Activation behavior to SelectAll in GridGrouping control:

{% highlight c# %}



this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;


{% endhighlight %}

N> Other options range from None (no activation at all) to ClickOnCell, DblClickOnCell or SetCurrent.

