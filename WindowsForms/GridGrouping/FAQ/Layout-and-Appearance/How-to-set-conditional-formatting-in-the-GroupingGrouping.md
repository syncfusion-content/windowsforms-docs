---
layout: post
title: How-to-set-conditional-formatting-in-the-GroupingG | Windows Forms | Syncfusion
description: how to set conditional formatting in the groupinggrid
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to set conditional formatting in the GroupingGrid

To set up conditional formatting in the GroupingGrid, use the following code.

{% highlight c# %}



//Declares conditional format descriptor.

GridConditionalFormatDescriptor des = new GridConditionalFormatDescriptor();



//Sets some properties.

des.Appearance.AnyRecordFieldCell.Font.Bold = true;

des.Appearance.AnyRecordFieldCell.Interior = new BrushInfo(Color.LightGreen);



//Expression which is applied on the table data.

des.Expression = "[ColumnName] like \'true\'";



//Sets name to the conditional format and adds it to the grid.

des.Name = "grid";

this.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(des);


{% endhighlight %}
{% highlight vbnet %}



'Declares conditional format descriptor.

Dim des As GridConditionalFormatDescriptor = New GridConditionalFormatDescriptor()



'Sets some properties.

des.Appearance.AnyRecordFieldCell.Font.Bold = True

des.Appearance.AnyRecordFieldCell.Interior = New BrushInfo(Color.LightGreen)



'Expression which is applied on the table data.

des.Expression = "[ColumnName] like 'true'"



'Sets name to the conditional format and adds it to the grid.

des.Name = "des"

Me.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(des)

{% endhighlight %}

