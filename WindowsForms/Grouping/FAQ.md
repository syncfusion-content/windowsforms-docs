---
layout: post
title: Overview
description: overview
platform: WindowsForms
control: Grouping
documentation: ug
---

# FAQ

This section covers information on Essential Grouping, its key features, prerequisites to use the control, its compatibility with various OS and browsers, and finally the documentation details complimentary with the product. It comprises the following subsections:

## How to Access the Value of a Record Or Field?

The groupingEngine.Table.Records property will allow you to access the records (items) in your IList and particular fields (properties) in the records.

{% highlight C# %}

// Assumes the datasource is an IList holding objects of type MyObject.
// Retrieves the third object in the list.

MyObject o = this.groupingEngine.Table.Records[2].GetData() as MyObject;
 
// A is a public property of MyObject, so "A" is treated as a field.
object someValue = this.groupingEngine.Table.Records[2].GetValue("A");

{% endhighlight %}

{% highlight vbnet %}
 
' Assumes the datasource is an IList holding objects of type MyObject.
' Retrieves the third object in the list.
Dim o As MyObject = CType(Me.groupingEngine.Table.Records(2).GetData(), MyObject)
 
' A is a public property of MyObject, so "A" is treated as a field.
Dim someValue As Object = Me.groupingEngine.Table.Records(2).GetValue("A")

{% endhighlight %}

> Note:

  1. The groupingEngine.Table.Records collection will give you access to the raw data in your datasource through the GroupingEngine.
  2. If you have applied filters or have sorted the data and want to access the sorted or filtered data, then you must use the GroupingEngine.Table.FilteredRecords collection.
  3. This collection reflects the visible state of the data in the GroupingEngine.

## How to Add Custom Calculations to Expression Fields?

Essential Grouping lets you add your own functions to a function library which can be used in an expression field. In this manner, you can do custom calculations in expressions. This is a two-step process which is given below:
1. Register the function name and a delegate with the grouping engine.
2. Implement a method that does your calculation.
   In the code given below, we add a method named 'Func' that takes two arguments and performs a certain calculation on those arguments.

{% highlight C# %}
 
// Step 1
// Add function named Func that uses a delegate named ComputeFunc to define a custom calculation.
ExpressionFieldEvaluator evaluator = this.groupingEngine.TableDescriptor.ExpressionFieldEvaluator;
evaluator.AddFunction("Func", new ExpressionFieldEvaluator.LibraryFunction(ComputeFunc));
 
// Sample usage in an Expression column.
this.groupingEngine.TableDescriptor.ExpressionFields.Add("test");
this.groupingEngine.TableDescriptor.ExpressionFields["test"].Expression = "Func([Col1], [Col2])";
 
//...
 
// Step 2
// Define ComputeFunc that returns the absolute value of the 1st arg minus 2 * the 2nd arg.
public string ComputeFunc(string s)
{
// Get the list delimiter (for en-us, it is a comma).
char comma = Convert.ToChar(this.gridGroupingControl1.Culture.TextInfo.ListSeparator);
string[] ss = s.Split(comma);
if(ss.GetLength(0) != 2)
throw new ArgumentException("Requires 2 arguments.");
 
double arg1, arg2;
if(double.TryParse(ss[0], System.Globalization.NumberStyles.Any, null, out arg1)
&& double.TryParse(ss[1], System.Globalization.NumberStyles.Any, null, out arg2))
{
return Math.Abs(arg1 - 2 * arg2).ToString();
}
return "";
}
 
{% endhighlight %}

{% highlight vbnet %}
 
' Step 1
' Add function named Func that uses a delegate named ComputeFunc to define a custom calculation.
Dim evaluator As ExpressionFieldEvaluator = Me.groupingEngine.TableDescriptor.ExpressionFieldEvaluator
evaluator.AddFunction("Func", New ExpressionFieldEvaluator.LibraryFunction(ComputeFunc))
 
' Sample usage in an Expression column.
Me.groupingEngine.TableDescriptor.ExpressionFields.Add("test")
Me.groupingEngine.TableDescriptor.ExpressionFields("test").Expression = "Func([Col1], [Col2])"
 
' Step 2
' Define ComputeFunc that returns the absolute value of the 1st arg minus 2 * the 2nd arg.
Public Function ComputeFunc(ByVal s As String) As String
 
' Get the list delimiter (for en-us, it is a comma).
Dim comma As Char = Convert.ToChar(Me.gridGroupingControl1.Culture.TextInfo.ListSeparator)
Dim ss As String() = s.Split(comma)
If ss.GetLength(0) <> 2 Then
Throw New ArgumentException("Requires 2 arguments.")
End If
Dim arg1, arg2 As Double
If Double.TryParse(ss(0), System.Globalization.NumberStyles.Any, Nothing, arg1) AndAlso _
Double.TryParse(ss(1), System.Globalization.NumberStyles.Any, Nothing, arg2) Then
Return Math.Abs((arg1 - 2 * arg2)).ToString()
End If
Return ""
 
' ComputeFunc
End Function  

{% endhighlight %}

## How to Add Custom Calculations to Expression Fields?
To add an expression field to the data in the Grouping Engine, you must first create an instance of an ExpressionFieldDescriptor and add it to the ExpressionFields collection in the TableDescriptor. The ExpressionFieldDescriptor will allow you to specify a string that holds an algebraic expression using any of the other fields that are in the record.

The following code snippet illustrates this.

{% highlight C# %}

// Add an expression property that multiplies field B by 2.1 and adds 3.2
ExpressionFieldDescriptor efd = new ExpressionFieldDescriptor("MultipleOfB", "2.1 * [B] + 3.2");
this.groupingEngine.TableDescriptor.ExpressionFields.Add(efd);
 
// Assumes the datasource to be an IList, holding objects of type MyObject.
MyObject o = this.groupingEngine.Table.Records[2].GetData() as MyObject;
       
// MultipleOfB is an expression field name and B is a property in MyObject.
object someValue = this.groupingEngine.Table.Records[2].GetValue("B");
object someExpressionValue = this.groupingEngine.Table.Records[2].GetValue("MultipleOfB");

{% endhighlight %}

## How to Add Expression Fields?
To add an expression field to the data in the Grouping Engine, you must first create an instance of an ExpressionFieldDescriptor and add it to the ExpressionFields collection in the TableDescriptor. The ExpressionFieldDescriptor will allow you to specify a string that holds an algebraic expression using any of the other fields that are in the record.

The following code snippet illustrates this.

{% highlight C# %}

[C#]
 
// Add an expression property that multiplies field B by 2.1 and adds 3.2
ExpressionFieldDescriptor efd = new ExpressionFieldDescriptor("MultipleOfB", "2.1 * [B] + 3.2");
this.groupingEngine.TableDescriptor.ExpressionFields.Add(efd);
 
// Assumes the datasource to be an IList, holding objects of type MyObject.
MyObject o = this.groupingEngine.Table.Records[2].GetData() as MyObject;
       
// MultipleOfB is an expression field name and B is a property in MyObject.
object someValue = this.groupingEngine.Table.Records[2].GetValue("B");
object someExpressionValue = this.groupingEngine.Table.Records[2].GetValue("MultipleOfB");

{% endhighlight %}

## How to Add Expression Fields?
To add an expression field to the data in the Grouping Engine, you must first create an instance of an ExpressionFieldDescriptor and add it to the ExpressionFields collection in the TableDescriptor. The ExpressionFieldDescriptor will allow you to specify a string that holds an algebraic expression using any of the other fields that are in the record.

The following code snippet illustrates this.

{% highlight C# %}

 
// Add an expression property that multiplies field B by 2.1 and adds 3.2
ExpressionFieldDescriptor efd = new ExpressionFieldDescriptor("MultipleOfB", "2.1 * [B] + 3.2");
this.groupingEngine.TableDescriptor.ExpressionFields.Add(efd);
 
// Assumes the datasource to be an IList, holding objects of type MyObject.
MyObject o = this.groupingEngine.Table.Records[2].GetData() as MyObject;
       
// MultipleOfB is an expression field name and B is a property in MyObject.
object someValue = this.groupingEngine.Table.Records[2].GetValue("B");
object someExpressionValue = this.groupingEngine.Table.Records[2].GetValue("MultipleOfB");

{% endhighlight %}

## How to Add Summary Items?
Essential Grouping lets you summarize data by adding SummaryDescriptor objects to the schema information stored in the Engine.TableDescriptor.Summaries collection. You can have multiple summaries by adding several SummaryDescriptors.

{% highlight C# %}

// Create a summary that computes the Int32Aggregate calculations on field B.
SummaryDescriptor sdBInt32Agg = new SummaryDescriptor("BInt32Agg", "B", SummaryType.Int32Aggregate);
       
// Add this summary to the Summaries collection.
groupingEngine.TableDescriptor.Summaries.Add(sdBInt32Agg);
{% endhighlight %}

{% highlight vbnet %}

' Create a summary that computes the Int32Aggregate calculations on property B.
Dim sdBInt32Agg As New SummaryDescriptor("BInt32Agg", "B", SummaryType.Int32Aggregate)
 
' Add this summary to the Summaries collection.
groupingEngine.TableDescriptor.Summaries.Add(sdBInt32Agg)

{% endhighlight %}

> Note: There are several overloads of the constructor for the SummaryDescriptor. We are using the overload that accepts a SummaryType enum as the third argument. This SummaryType will allow you to pick out some predefined calculations such as the Int32Aggregate functions like Max, Min, Sum and Average. There are enums that specify double, boolean, and other aggregate types. Here we choose Int32 as that is the type of value we see in the B property in the data.
## How to Bind a Datasource to the Grouping Engine?
Essential Grouping can use any IList object holding objects and a common System.Type as its datasource. The public properties of the common type can be used to group, sort and summarize the data in the IList.

### Example

The following code shows how to set an IList object to be the data source of a GroupingEngine object. Within Essential Grouping, the items in your IList datasource are referred to as records.

{% highlight C# %}
 
using Syncfusion.Grouping;
 
// Create a Grouping.Engine object.
Engine groupingEngine = new Engine();
 
// Set its datasource.
groupingEngine.SetSourceList(list);
{% endhighlight %}

{% highlight vbnet %}

 Imports Syncfusion.Grouping
 
' Create a Grouping.Engine object.
Dim groupingEngine As New Engine()
 
' Set its datasource.
groupingEngine.SetSourceList(list)
 Syncfusion Logo Essential Studio Windows Forms - v. 13.2.0.29 Class Reference Demo Support
 
 {% endhighlight %}
 
## How to Clear a Filter?
To clear all filters, call the groupingEngine.TableDescriptor.RecordFilters.Clear method.

{% highlight C# %}

// Removes all the filters associated with the table.
this.gridGroupingControl1.TableDescriptor.RecordFilters.Clear(); 
 
// Removes the Filter associated by sending the argument as RecordFilterDescriptor.name
this.gridGroupingControl1.TableDescriptor.RecordFilters.Remove(RecordFilterDescriptor.Name); 
 
// Removes the RecordFilter associated by mentioning as index.
this.gridGroupingControl1.TableDescriptor.RecordFilters.RemoveAt();
{% endhighlight %}

{% highlight vbnet %}

' Removes all the filters associated with the table.
Me.gridGroupingControl1.TableDescriptor.RecordFilters.Clear()
 
' Removes the Filter associated by sending the argument as RecordFilterDescriptor.name
Me.gridGroupingControl1.TableDescriptor.RecordFilters.Remove()
 
' Removes the RecordFilter associated by mentioning as index.
Me.gridGroupingControl1.TableDescriptor.RecordFilters.RemoveAt()

{% endhighlight %}

> Note: To remove a particular filter, use the groupingEngine.TableDescriptor.RecordFilters.Remove or groupingEngine.TableDescriptor.RecordFilters.RemoveAt. To use Remove, you will need a reference to the RecordFilterDescriptor object that you want to delete or your RecordFilterDescriptor object would have to be named (setting the RecordFilterDescriptor.Name property or by passing a name string into its overloaded constructor).

## How to Clear a Grouping?
To clear all grouping, call the groupingEngine.TableDescriptor.GroupedColumns.Clear method.

{% highlight C# %}

// Removes the grouping of all the grouped columns.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Clear(); 
 
// Removes grouping of the column mentioned as an argument.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Remove(Name); 
 
// Removes grouping of the column mentioned as column index.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.RemoveAt(index);
{% endhighlight %}

{% highlight vbnet %}

' Removes the grouping of all the grouped columns.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Clear() 
 
' Removes grouping of the column mentioned as an argument.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Remove();
 
' Removes grouping of the column mentioned as column index.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.RemoveAt()

{% endhighlight %}

> Note: To remove a particular grouping, use groupingEngine.TableDescriptor.GroupedColumns.Remove or groupingEngine.TableDescriptor.SortedColumns.RemoveAt.

## How to Clear a Sort?

To clear all sorts, call the groupingEngine.TableDescriptor.SortedColumns.Clear method.

{% highlight C# %}

// Removes all the sorting associated with the table.
this.gridGroupingControl1.TableDescriptor.SortedColumns.Clear();
 
// Removes the sorting of the column mentioned as argument.
this.gridGroupingControl1.TableDescriptor.SortedColumns.Remove(Name of the column);  

// Removes the sorting of the column mentioned as column index.
this.gridGroupingControl1.TableDescriptor.SortedColumns.RemoveAt(index);

{% endhighlight %}

{% highlight vbnet %}

 
' Removes all the sorting associated.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.Clear()
 
' Removes the sorting of the column mentioned as argument.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.Remove()
 
' Removes the sorting of the column mentioned as column index.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.RemoveAt()

{% endhighlight %}

> Note: To remove a particular sort, use groupingEngine.TableDescriptor.SortedColumns.Remove or groupingEngine.TableDescriptor.SortedColumns.RemoveAt.

## How to Filter a Collection?

To add a filter condition, add a RecordFilterDescriptor to the Engine.TableDescriptor.RecordFilters collection. The constructor on the RecordFilterDescription takes an expression, "[D] LIKE 'd1'". This expression will be True only for those items in the list where the string property D has the value d1. Here are some other valid expressions where B is an integer property:

* "[B] = 5 OR [B] < 0"

* "[D] LIKE 'd1' OR [B] = 2"

{% highlight C# %}

// Filter on [D] = d1
RecordFilterDescriptor rfd = new RecordFilterDescriptor("[D] LIKE 'd1'");
this.groupingEngine.TableDescriptor.RecordFilters.Add(rfd);

{% endhighlight %}

{% highlight vbnet %}

 
' Filter on [D] = d1
Dim rfd As New RecordFilterDescriptor("[D] LIKE 'd1'")
Me.groupingEngine.TableDescriptor.RecordFilters.Add(rfd)

{% endhighlight %}

## How to Group a Collection?

To sort your data, add the name of the property you want to sort to the Engine.TableDescriptor.GroupedColumns collection. 

{% highlight C# %}

// Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A");

{% endhighlight %}
 
{% highlight vbnet %}
 
' Group column A.
groupingEngine.TableDescriptor.GroupedColumns.Add("A")
{% endhighlight %}


## How to Retrieve Summary Item Values?

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

## How to Sort a Collection?

To sort your data, add the name of the property that you want to sort to the Engine.TableDescriptor.SortedColumns collection.

{% highlight C# %}
 
// Sort column A.
groupingEngine.TableDescriptor.SortedColumns.Add("A");
 
{% endhighlight %}

{% highlight vbnet %}
 
' Sort column A.
groupingEngine.TableDescriptor.SortedColumns.Add("A")

{% endhighlight %}