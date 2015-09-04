---
layout: post
title: How-to-enable-double-click-on-the-formula-cell
description: how to enable double-click on the formula cell
platform: windowsforms
control: Grid
documentation: ug
---

# How to enable double-click on the formula cell

To enable double-click on the formula cell, set ForceEditWhenActivated property to _False_. ActivateCurrentCellBehavior property cannot be achieved in GridFormulaCellRender unless the property is set to _False_. 

{% highlight c# %}

this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell;

GridFormulaCellRenderer.ForceEditWhenActivated = false ;


{% endhighlight %}

{% highlight vbnet %}

Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell

GridFormulaCellRenderer.ForceEditWhenActivated = False



{% endhighlight %}
