---
layout: post
title: How-to-set-style-properties-of-a-nested-table | WindowsForms | Syncfusion
description: how to set style properties of a nested table
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to set style properties of a nested table

This can be done using the code below.



{% highlight C# %}


//1. Changes the backcolor of all the record field cells in the child table.



//Gets the child table descriptor for a particular relation.

GridTableDescriptor child_tabledescriptor = this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   

child_tabledescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.BackColor = Color.Pink;



//2. Changes the cell property of all the record field cells in the child table.



//Gets the child table descriptor for a particular relation.

GridTableDescriptor child_tabledescriptor = this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   

child_tableDescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.CellType="ComboBox";

{% endhighlight %}



{% highlight vbnet %}


'1. Changes the backcolor of all the record field cells in the child table.



'Gets the child table descriptor for a particular relation

Dim child_tabledescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.              

child_tabledescriptor.Columns("Des").Appearance.AnyRecordFieldCell.BackColor = Color.Pink



'2. Changes the cell property of all the record field cells in the child table.

'Gets the child table descriptor for a particular relation.

Dim child_tabledescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.   

child_tabledescriptor.Columns("Des").Appearance.AnyRecordFieldCell.CellType="ComboBox"
{% endhighlight %}


