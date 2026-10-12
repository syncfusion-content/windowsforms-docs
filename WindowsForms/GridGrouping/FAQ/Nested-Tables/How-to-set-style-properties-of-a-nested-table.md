---
layout: post
title: Set NestedTable Styles in WinForms GridGroupingControl | Syncfusion®
description: Set style properties for nested tables in Syncfusion® WinForms GridGroupingControl, its table descriptors, cell appearance customization, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Set NestedTable Styles in WinForms GridGroupingControl

This can be done using the code below.

{% tabs %}
{% highlight C# %}

//1. Changes the backcolor of all the record field cells in the child table.

//Gets the child table descriptor for a particular relation.
GridTableDescriptor tableDescriptor= this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   
tableDescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.BackColor = Color.Pink;

//2. Changes the cell property of all the record field cells in the child table.

//Gets the child table descriptor for a particular relation.
GridTableDescriptor tableDescriptor = this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   
tableDescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.CellType="ComboBox";

{% endhighlight %}

{% highlight vb %}

'1. Changes the backcolor of all the record field cells in the child table.

'Gets the child table descriptor for a particular relation
Dim tableDescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.              
tableDescriptor.Columns("Des").Appearance.AnyRecordFieldCell.BackColor = Color.Pink

'2. Changes the cell property of all the record field cells in the child table.

'Gets the child table descriptor for a particular relation.
Dim tableDescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.   
tableDescriptor.Columns("Des").Appearance.AnyRecordFieldCell.CellType="ComboBox"

{% endhighlight %}
{% endtabs %}

