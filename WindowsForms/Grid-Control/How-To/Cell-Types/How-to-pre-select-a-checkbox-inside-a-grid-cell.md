---
layout: post
title: Pre-Select a Checkbox in Windows Forms GridControl | Syncfusion®
description: Pre-select a checkbox inside a grid cell in Syncfusion® Windows Forms GridControl using CheckBoxOptions and cell value settings and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Pre-Select a Checkbox in Windows Forms GridControl

You need to set a style member called CheckBoxOptions for a particular grid cell, for this purpose. CheckBoxOptions.CheckedValue is used to specify what value should be given in the CellValue to make the checkbox checked. 

If you want "true" to be checked and "false" to be unchecked state then use the below code.

{% tabs %}
{% highlight c# %}
//Sets the cell type as Checkbox.
this.gridControl1[1,1].CellType = "CheckBox"; 

//Sets the Checked and Unchecked values for the checkbox.
this.gridControl1[1,1].CheckBoxOptions.CheckedValue = "true"; 
this.gridControl1[1,1].CheckBoxOptions.UncheckedValue = "false"; 

//Sets the type of the cell value as bool.
this.gridControl1[1,1].CellValueType = typeof(bool); 

//Sets the Cell value.
this.gridControl1[1,1].CellValue = true;

{% endhighlight  %}

{% highlight vb %}

'Sets the cell type as Checkbox.
Me.gridControl1(1, 1).CellType = "CheckBox" 

'Sets the Checked and Unchecked values for the checkbox.
Me.gridControl1(1, 1).CheckBoxOptions.CheckedValue = "true" 
Me.gridControl1(1, 1).CheckBoxOptions.UncheckedValue = "false" 

'Sets the type of the cell value as bool.
Me.gridControl1(1, 1).CellValueType = GetType(Boolean) 

'Sets the Cell value.
Me.gridControl1(1, 1).CellValue = True

{% endhighlight  %}
{% endtabs %}