---
layout: post
title: How-to-pre-select-a-checkbox-inside-a-grid-cell | WindowsForms | Syncfusion
description: how to pre-select a checkbox inside a grid cell
platform: WindowsForms
control: Grid
documentation: ug
---

# How to pre-select a checkbox inside a grid cell

You need to set a style member called CheckBoxOptions for a particular grid cell, for this purpose. CheckBoxOptions.CheckedValue is used to specify what value should be given in the CellValue to make the checkbox checked. 

## Example

If you want "true" to be checked and "false" to be unchecked state then use the below code.

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

{% highlight vbnet %}



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
