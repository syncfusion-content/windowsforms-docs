---
layout: post
title: How to Change ComboBox Size in Windows Forms GridControl | Syncfusion®
description: Change the size of a combo box button in Syncfusion® Windows Forms GridControl using the ButtonBarSize property of the ComboBox cell model and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Change Combo Box Button Size in Windows Forms GridControl

Change the size of the combobox button by changing the ButtonBarSize in the CellModel for the control. 

{% tabs %}
{% highlight c# %}

//Creates Combobox Cell model object.
GridComboBoxCellModel model = this.grid.Model.CellModels["ComboBox"] as GridComboBoxCellModel;

//Assigns a new value to its ButtonBarSize property. 
model.ButtonBarSize = new Size(8, 8);

{% endhighlight %}

{% highlight vb %}

'Creates Combobox Cell model object.
Dim model As GridComboBoxCellModel = CType(Me.Grid.Model.CellModels("ComboBox"), GridComboBoxCellModel)

'Assigns a new value to its ButtonBarSize property.
model.ButtonBarSize = New Size(8, 8)

{% endhighlight %}
{% endtabs %}