---
layout: post
title: Restrict alphabetical characters in numericupdown cell | Syncfusion
description: Learn here all about how to restrict alphabetical characters in numericupdown cell of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to restrict alphabetical characters in NumericUpDown cell

NumericUpDown cell can be customized to allow only numeric characters by setting the AcceptAlphaKeys property to false. This property can be derived from GridNumericUpDownCellModel class.

{% tabs %}
{% highlight c# %}

GridNumericUpDownCellModel model = this.gridControl1.CellModels[GridCellTypeName.NumericUpDown] as GridNumericUpDownCellModel;
model.AcceptAlphaKeys = false;

{% endhighlight %}

{% highlight vb %}

Dim model As GridNumericUpDownCellModel = TryCast(Me.gridControl1.CellModels(GridCellTypeName.NumericUpDown), GridNumericUpDownCellModel)
model.AcceptAlphaKeys = False

{% endhighlight %}
{% endtabs %}
