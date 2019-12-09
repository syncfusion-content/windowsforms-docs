---
layout: post
title: How-to-create-multiple-rows-per-record-in-a-GridGr | Windows Forms | Syncfusion
description: how to create multiple rows per record in a gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Create Multiple Rows per Record in a GridGroupingControl

This can be done by using ColumnSets property of GridGrouping control.

{% tabs %}
{% highlight c# %}

//Creates GridColumnSpanDescriptor and initializes to a column  and mentions its location to display,. 
GridColumnSpanDescriptor columnSpanDescriptor1 = new GridColumnSpanDescriptor("Name","R0C0"); 

//Creates GridColumnSetDescriptor. 
GridColumnSetDescriptor columnSetDescriptor1 = new GridColumnSetDescriptor();

//Adds GridColumnSpanDescriptor to the GridColumnSetDescriptor. 
columnSetDescriptor1.ColumnSpans.Add(columnSpanDescriptor1);

//Adds GridColumnSetDescriptor to the ColumnSet of the GridGroupingControl through TableDescriptor.
this.gridGroupingControl1.TableDescriptor.ColumnSets.Add(columnSetDescriptor1);

{% endhighlight %}

{% highlight vb %}

'Creates GridColumnSpanDescriptor and initializes to a column  and mentions its location to display. 
Dim columnSpanDescriptor1 As GridColumnSpanDescriptor = New GridColumnSpanDescriptor("Name", "R0C0")

'Creates GridColumnSetDescriptor. 
Dim columnSetDescriptor1 As GridColumnSetDescriptor = New GridColumnSetDescriptor()

'Add GridColumnSpanDescriptor to the GridColumnSetDescriptor. 
columnSetDescriptor1.ColumnSpans.Add(columnSpanDescriptor1)

'Adds GridColumnSetDescriptor to the ColumnSet of GridGroupingControl through TableDescriptor.
Me.gridGroupingControl1.TableDescriptor.ColumnSets.Add(columnSetDescriptor1)

{% endhighlight %}
{% endtabs %}
