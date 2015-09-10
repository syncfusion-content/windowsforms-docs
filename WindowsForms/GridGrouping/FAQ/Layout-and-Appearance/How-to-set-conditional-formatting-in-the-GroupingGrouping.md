---
layout: post
title: How-to-set-conditional-formatting-in-the-GroupingG | WindowsForms | Syncfusion
description: how to set conditional formatting in the groupinggrid
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to set conditional formatting in the GroupingGrid

To set up conditional formatting in the GroupingGrid, use the following code.

{% highlight c# %}



//Declares conditional format descriptor.

GridConditionalFormatDescriptor gcfd = new GridConditionalFormatDescriptor();



//Sets some properties.

gcfd.Appearance.AnyRecordFieldCell.Font.Bold = true;

gcfd.Appearance.AnyRecordFieldCell.Interior = new BrushInfo(Color.LightGreen);



//Expression which is applied on the table data.

gcfd.Expression = "[ColumnName] like \'true\'";



//Sets name to the conditional format and adds it to the grid.

gcfd.Name = "gcfd";

this.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gcfd);


{% endhighlight %}
{% highlight vbnet %}



'Declares conditional format descriptor.

Dim gcfd As GridConditionalFormatDescriptor = New GridConditionalFormatDescriptor()



'Sets some properties.

gcfd.Appearance.AnyRecordFieldCell.Font.Bold = True

gcfd.Appearance.AnyRecordFieldCell.Interior = New BrushInfo(Color.LightGreen)



'Expression which is applied on the table data.

gcfd.Expression = "[ColumnName] like 'true'"



'Sets name to the conditional format and adds it to the grid.

gcfd.Name = "gcfd"

Me.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gcfd)

{% endhighlight %}

