---
layout: post
title: How-to-Restrict-Alphabetical-Characters-in-Numericupdown-cell | Windows Forms | Syncfusion
description: how to restrict alphabetical characters in numericupdown cell
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
