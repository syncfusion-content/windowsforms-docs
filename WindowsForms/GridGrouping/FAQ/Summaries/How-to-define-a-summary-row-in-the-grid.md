---
layout: post
title: Define a Summary Row in WinForms GridGroupingControl | Syncfusion®
description: Define a summary row in Syncfusion® WinForms GridGroupingControl, its summary row descriptors, summary columns, aggregate calculations, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Define a Summary Row in WinForms GridGroupingControl

This can be done using the code below.

{% tabs %}
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
this.gridGroupingControl1.TableDescriptor.SummaryRows.Add(new GridSummaryRowDescriptor("Col2", "Total", summaryColumnDescriptor));

{% endhighlight  %}

{% highlight vb %}

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
{% endtabs %}
