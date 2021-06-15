---
layout: post
title: How to select all text in a grid after clicking a cell | Syncfusion
description: Learn here all about how to select all text in a grid after clicking a cell in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Select All Text in a Grid After Clicking a Cell

### Introduction

ActivateCurrentCellBehavior property controls the activation behavior as a cell becomes current by being clicked or through the cursor keys. If you want the cell text to be fully selected when a cell becomes the current cell, then use the following property.

The following code illustrates how to set Cell Activation behavior to SelectAll in GridControl:

{% tabs %}
{% highlight c# %}

//Sets Cell Activation behavior to 'SelectAll'.
this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;

{% endhighlight %}

{% highlight vb %}

'Sets Cell Activation behavior to 'SelectAll'.
Me.Grid.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll

{% endhighlight %}
{% endtabs %}

The following code illustrates how to set Cell Activation behavior to SelectAll in GridGrouping control:

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;
{% endhighlight %}
{% endtabs %}

N> Other options range from None (no activation at all) to ClickOnCell, DblClickOnCell or SetCurrent.

