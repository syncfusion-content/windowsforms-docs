---
layout: post
title: Add Unbound Columns in Windows Forms GridGroupingControl | Syncfusion®
description: Add and format unbound columns in Syncfusion® Windows Forms GridGroupingControl, its column customization, cell types, appearance settings, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Add Unbound Columns in Windows Forms GridGroupingControl

The unbound columns can be added and formatted using the below code.

{% tabs %}
{% highlight C# %}

//Adds unbound column in GridGroupingControl.
this.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1");

//Formats the Unbound column.
this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.CellType = "CheckBox";
this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue;

{% endhighlight %}

{% highlight vb %}

'Adds an Unbound column in a  GridGroupingControl.
Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1")

'Formats an Unbound column in GridGroupingControl.
Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.CellType = "CheckBox"
Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue

{% endhighlight %}
{% endtabs %}
