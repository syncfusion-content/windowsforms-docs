---
layout: post
title: How to Add Custom Calculations to Expression Fields | WindowsForms | Syncfusion
description: How to Add Custom Calculations to Expression Fields
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Add Custom Calculations to Expression Fields?

Essential Grouping lets you add your own functions to a function library which can be used in an expression field. In this manner, you can do custom calculations in expressions. This is a two-step process which is given below:
1. Register the function name and a delegate with the grouping engine.
2. Implement a method that does your calculation.
   In the code given below, we add a method named 'New_Function' that takes two arguments and performs a certain calculation on those arguments.

{% highlight C# %}
 
// Step 1
// Add function named New_Function that uses a delegate named ComputeFunc to define a custom calculation.
ExpressionFieldEvaluator evaluator = this.groupingEngine.TableDescriptor.ExpressionFieldEvaluator;
evaluator.AddFunction("New_Function", new ExpressionFieldEvaluator.LibraryFunction(ComputeFunc));
 
// Sample usage in an Expression column.
this.groupingEngine.TableDescriptor.ExpressionFields.Add("test");
this.groupingEngine.TableDescriptor.ExpressionFields["test"].Expression = "New_Function([Col1], [Col2])";
 
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
' Add function named New_Function that uses a delegate named ComputeFunc to define a custom calculation.
Dim evaluator As ExpressionFieldEvaluator = Me.groupingEngine.TableDescriptor.ExpressionFieldEvaluator
evaluator.AddFunction("New_Function", New ExpressionFieldEvaluator.LibraryFunction(ComputeFunc))
 
' Sample usage in an Expression column.
Me.groupingEngine.TableDescriptor.ExpressionFields.Add("test")
Me.groupingEngine.TableDescriptor.ExpressionFields("test").Expression = "New_Function([Col1], [Col2])"
 
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