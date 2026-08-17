---
layout: post
title: Enable Double Click on Cell in Windows Forms GridControl | Syncfusion®
description: Enable double-click on formula cells in Syncfusion® Windows Forms GridControl using formula cell renderer settings and cell activation behavior and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Enable Double Click on FormulaCell in Windows Forms GridControl

To enable double-click on the formula cell, set ForceEditWhenActivated property to _False_. ActivateCurrentCellBehavior property cannot be achieved in GridFormulaCellRender unless the property is set to _False_. 

{% tabs %}
{% highlight c# %}

this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell;
GridFormulaCellRenderer.ForceEditWhenActivated = false ;

{% endhighlight %}

{% highlight vb %}
Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell
GridFormulaCellRenderer.ForceEditWhenActivated = False

{% endhighlight %}
{% endtabs %}