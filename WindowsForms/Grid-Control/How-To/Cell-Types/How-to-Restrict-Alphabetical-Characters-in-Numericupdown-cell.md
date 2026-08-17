---
layout: post
title: Restrict Alpha Keys in WinForms GridControl | Syncfusion®
description: Restrict alphabetical characters in a NumericUpDown cell in Syncfusion® Windows Forms GridControl using the AcceptAlphaKeys property and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Restrict Alphabetic Input in Windows Forms GridControl

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
