---
layout: post
title: How to Retrieve Summary Item Values | Windows Forms | Syncfusion
description: How to Retrieve Summary Item Values
platform: windowsforms
control: Grouping
documentation: ug
---

# How to Retrieve Summary Item Values?

Summaries are calculated on groups of records. The TopLevelGroup is the collection of all records in the IList data source. If you have added additional grouping through the groupingEngine.TableDescriptor.GroupedColumns.Add, then in addition to the top level group, there will be additional groups available to you. Each group will have an associated summary value. So to retrieve a summary value, you need to specify the group associated with the summary.

For example, the code below assumes that you have grouped the table on field "C" and are looking for the summary associated with the group whose records have field "C" equal to the value "c1". It also shows the same summary value for the TopLevelGroup.

{% highlight C# %}
 
// To simplify notation, set this using the statement at the top of your code file.
using ISummary = Syncfusion.Collections.BinaryTree.ITreeTableSummary;
    
// Now get the Summary value for the TopLevelGroup group.
ISummary groupSummary = groupingEngine.Table.TopLevelGroup.GetSummary("BInt32Agg");
Int32AggregateSummary int32Summary = (Int32AggregateSummary) groupSummary;
 
Console.WriteLine("whole table {0}, {1}, {2}", int32Summary.Sum, int32Summary.Average, int32Summary.Maximum);
       
// Value for "c1" group.
groupSummary = groupingEngine.Table.TopLevelGroup.Groups["c1"].GetSummary("BInt32Agg");
int32Summary = (Int32AggregateSummary) groupSummary;
 
Console.WriteLine("c1-group {0}, {1}, {2}", int32Summary.Sum, int32Summary.Average, int32Summary.Maximum);
 
{% endhighlight %}

{% highlight vbnet %}

 
' To simplify notation, set this using the statement at the top of your code file.
Imports ISummary = Syncfusion.Collections.BinaryTree.ITreeTableSummary
 
' Now get the Summary value for the TopLevelGroup group.
Private groupSummary As ISummary = groupingEngine.Table.TopLevelGroup.GetSummary("BInt32Agg")
Private int32Summary As Int32AggregateSummary = CType(groupSummary, Int32AggregateSummary)
 
Console.WriteLine("whole table {0}, {1}, {2}", int32Summary.Sum, int32Summary.Average, int32Summary.Maximum)
 
' Value for "c1" group.
Private groupSummary = groupingEngine.Table.TopLevelGroup.Groups("c1").GetSummary("BInt32Agg")
Private int32Summary = CType(groupSummary, Int32AggregateSummary)
 
Console.WriteLine("c1-group {0}, {1}, {2}", int32Summary.Sum, int32Summary.Average, int32Summary.Maximum)
{% endhighlight %}
