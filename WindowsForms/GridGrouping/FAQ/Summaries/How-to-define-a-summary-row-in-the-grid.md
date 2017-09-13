---
layout: post
title: How-to-define-a-summary-row-in-the-grid | Windows Forms | Syncfusion
description: how to define a summary row in the grid
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to define a summary row in the grid

This can be done using the code below.

{% highlight c# %}



//Defines a summary column descriptor.

GridSummaryColumnDescriptor summaryColumnDescriptor = new GridSummaryColumnDescriptor();

//Summary for Col2. 

summaryColumnDescriptor.DataMember= "Col2";

//Sets under which column you need to see the total.

summaryColumnDescriptor.DisplayColumn = "Col2";

//Here you specify the format of the field to be displayed.

summaryColumnDescriptor.Format = "{Count}";

//Here you set the type of the summary i.e total or average or count etc...

summaryColumnDescriptor.SummaryType = SummaryType.DistinctCount;

//Here"Total" is the text that occurs as the header.

//Creates a new SummaryRowDescriptor and adds it to the SummaryRows collection.

this.gridGroupingControl1.TableDescriptor.SummaryRows.Add(new GridSummaryRowDescriptor("Col2", "Total", sd));


{% endhighlight  %}
{% highlight vbnet %}



'Defines a summary column descriptor.

Private summaryColumnDescriptor As GridSummaryColumnDescriptor = New GridSummaryColumnDescriptor()

'Summary for Col2. 

summaryColumnDescriptor.DataMember= "Col2"

'Sets under which column you need to see the total.

summaryColumnDescriptor.DisplayColumn = "Col2"

'Here you specify the format of the field to be displayed.

summaryColumnDescriptor.Format = "{Count}"

'Here you set the type of the summary i.e total or average or count etc...

summaryColumnDescriptor.SummaryType = SummaryType.DistinctCount

'Here "Total" is the text that occurs as the header.

'Creates a new SummaryRowDescriptor and adds it to the SummaryRows collection

Me.gridGroupingControl1.TableDescriptor.SummaryRows.Add(New GridSummaryRowDescriptor("Col2", "Total", summaryColumnDescriptor))


{% endhighlight  %}
