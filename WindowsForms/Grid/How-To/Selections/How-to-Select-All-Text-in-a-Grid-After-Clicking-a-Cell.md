---
layout: post
title: How-to-Select-All-Text-in-a-Grid-After-Clicking-a- | Windows Forms | Syncfusion
description: how to select all text in a grid after clicking a cell
platform: windowsforms
control: Grid
documentation: ug
---

# How to select all text in a Grid after clicking a cell

ActivateCurrentCellBehavior property controls the activation behavior as a cell becomes current by being clicked or through the cursor keys. If you want the cell text to be fully selected when a cell becomes the current cell, then use the following property.

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

{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;
{% endhighlight %}
{% endtabs %}

N> Other options range from None (no activation at all) to ClickOnCell, DblClickOnCell or SetCurrent.

