---
layout: post
title: How-to-set-conditional-formatting-in-the-GroupingG | Windows Forms | Syncfusion
description: how to set conditional formatting in the groupinggrid
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Set Conditional Formatting in the GroupingGrid

To set up conditional formatting in the GroupingGrid, use the following code.

{% tabs %}
{% highlight c# %}

//Declares conditional format descriptor.
GridConditionalFormatDescriptor gridConditionalFormatDescriptor = new GridConditionalFormatDescriptor();

//Sets some properties.
gridConditionalFormatDescriptor.Appearance.AnyRecordFieldCell.Font.Bold = true;
gridConditionalFormatDescriptor.Appearance.AnyRecordFieldCell.Interior = new BrushInfo(Color.LightGreen);

//Expression which is applied on the table data.
gridConditionalFormatDescriptor.Expression = "[ColumnName] like \'true\'";

//Sets name to the conditional format and adds it to the grid.
gridConditionalFormatDescriptor.Name = "grid";
this.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gridConditionalFormatDescriptor);

{% endhighlight %}

{% highlight vb %}

'Declares conditional format descriptor.
Dim gridConditionalFormatDescriptor As GridConditionalFormatDescriptor = New GridConditionalFormatDescriptor()

'Sets some properties.
gridConditionalFormatDescriptor.Appearance.AnyRecordFieldCell.Font.Bold = True
gridConditionalFormatDescriptor.Appearance.AnyRecordFieldCell.Interior = New BrushInfo(Color.LightGreen)

'Expression which is applied on the table data.
gridConditionalFormatDescriptor.Expression = "[ColumnName] like 'true'"

'Sets name to the conditional format and adds it to the grid.
gridConditionalFormatDescriptor.Name = "gridConditionalFormatDescriptor"
Me.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gridConditionalFormatDescriptor)

{% endhighlight %}
{% endtabs %}
