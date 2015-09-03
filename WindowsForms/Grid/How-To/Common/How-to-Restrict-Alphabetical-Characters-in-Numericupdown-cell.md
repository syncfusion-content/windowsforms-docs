---
layout: post
title: How-to-Restrict-Alphabetical-Characters-in-Numericupdown-cell
description: how to restrict alphabetical characters in numericupdown cell
platform: windowsforms
control: Tools
documentation: ug
---

# How to Restrict Alphabetical Characters in NumericUpDown Cell

NumericUpDown cell can be customized to allow only numeric characters by setting the AcceptAlphaKeys property to false. This property can be derived from GridNumericUpDownCellModel class.

{% highlight c# %}

GridNumericUpDownCellModel model = this.gridControl1.CellModels[GridCellTypeName.NumericUpDown] as GridNumericUpDownCellModel;

model.AcceptAlphaKeys = false;


{% endhighlight %}

{% highlight vbnet %}

Dim model As GridNumericUpDownCellModel = TryCast(Me.gridControl1.CellModels(GridCellTypeName.NumericUpDown), GridNumericUpDownCellModel)

model.AcceptAlphaKeys = False


{% endhighlight %}

