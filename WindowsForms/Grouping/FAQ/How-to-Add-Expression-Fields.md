---
layout: post
title: How to Add Expression Fields | WindowsForms | Syncfusion
description: How to Add Expression Fields
platform: WindowsForms
control: Grouping
documentation: ug
---


# How to Add Expression Fields?
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



   

 {% highlight vbnet %}
' Add an expression property that multiplies field B by 2.1 and adds 3.2
Dim efd As New ExpressionFieldDescriptor("MultipleOfB", "2.1 * [B] + 3.2")
Me.groupingEngine.TableDescriptor.ExpressionFields.Add(efd)
 
' Assumes the datasource to be an IList, holding objects of type MyObject.
Dim o As MyObject = CType(Me.groupingEngine.Table.Records(2).GetData(), MyObject)
 
' MultipleOfB is an expression field name and B is a Property in MyObject.
Dim someValue As Object = Me.groupingEngine.Table.Records(2).GetValue("B")
Dim someExpressionValue As Object = Me.groupingEngine.Table.Records(2).GetValue("MultipleOfB")

{% endhighlight %}