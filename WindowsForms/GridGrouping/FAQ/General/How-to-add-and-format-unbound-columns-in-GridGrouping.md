---
layout: post
title: How-to-add-and-format-unbound-columns-in-GridGroup | Windows Forms | Syncfusion
description: how to add and format unbound columns in gridgrouping control
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to add and format unbound columns in GridGrouping control

The unbound columns can be added and formatted using the below code.



{% highlight C# %}



//Adds unbound column in GridGroupingControl.

this.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1");



//Formats the Unbound column.

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.CellType = "CheckBox";

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue;

{% endhighlight %}




{% highlight vbnet %}


'Adds an Unbound column in a  GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1")



'Formats an Unbound column in GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.CellType = "CheckBox"

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue

{% endhighlight %}

