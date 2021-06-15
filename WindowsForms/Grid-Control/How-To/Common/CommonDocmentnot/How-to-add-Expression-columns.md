---
layout: post
title: Add Expression columns in WinForms GridGroupingControl | Syncfusion
description: Learn here all about how to add expression columns of Syncfusion Windows Forms GridGroupingControl and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to add Expression columns in Windows Forms GridGroupingControl

Expression fields allows you to add a column that holds calculated values based on other fields in the same record. These expression columns can be used in grouping and sorting. This also can be employed as summary fields for summary rows.

 
{% highlight c# %}

using  Syncfusion.Grouping;
using  Syncfusion.Windows.Forms.Grid;
using  Syncfusion.Windows.Forms.Grid.Grouping;

//Declares an ExpressionFieldDescriptor.
ExpressionFieldDescriptor expression1 = new ExpressionFieldDescriptor();
expression1.Name = "Sum of all columns";

//Simple expression to add the values in the columns. 
//For all the valid Expression syntax, refer to the 
//EssentialGrid UserGuide --> Essential Grid Tutorials ---> 
//AddsvExpression Fields ---> Valid Expression Syntax 
expression1.Expression = "[Col0] + [Col1] + [Col2] + [Col3]";

//Adds the Expression column to the grid.
this.gridGroupingControl1.TableDescriptor.ExpressionFields.Add(expression1);

{% endhighlight  %}

{% highlight vb %}

Imports Syncfusion.Grouping
Imports Syncfusion.Windows.Forms.Grid
Imports Syncfusion.Windows.Forms.Grid.Grouping

'Declares an ExpressionFieldDescriptor.
Dim expression1 As New ExpressionFieldDescriptor()
expression1.Name = "Sum of all columns"

'Simple expression to add the values in the columns 
'For all the valid Expression syntax, refer the 
'EssentialGrid UserGuide --> Essential Grid Tutorials ---> 
'Adds Expression Fields ---> Valid Expression Syntax 
expression1.Expression = "[Col0] + [Col1] + [Col2] + [Col3]"

'Adds the Expression column to the grid.
Me.gridGroupingControl1.TableDescriptor.ExpressionFields.Add(expression1)

{% endhighlight  %}