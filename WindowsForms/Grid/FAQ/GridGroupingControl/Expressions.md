---
layout: post
title: Expressions
description: expressions
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## Expressions

#### How to add Expression columns

Expression fields allows you to add a column that holds calculated values based on other fields in the same record. These expression columns can be used in grouping and sorting. This also can be employed as summary fields for summary rows.

[C#]



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



[VB]



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

#### What are the various ExpressionColumn options

The following code illustrates various expression column options.

[C#]



//1. Sets the operators in the expression.

//The computations are performed with level one operations done first.

//Alpha constants used with match and like should be enclosed in apostrophes ('). 

// *, / ,+, - ,&lt;, &gt;, =, &lt;=, &gt;=,match, like, in, between ,or, and 

// * operator used here.

ExpressionFieldDescriptor exp= new ExpressionFieldDescriptor("Expr1","[ColumnName] *2", "System.Int32");



//2. Sets the output/view type.

//Output in double type.

ExpressionFieldDescriptor exp= new ExpressionFieldDescriptor("Expr1","[ColumnName] *2", "System.Double");



[VB]



' 1. Sets the operators in the expression. 

' Sets operators in the expression.  

' The computations are performed with level one operations done first.                      

' Alpha constants used with match and like should be enclosed in apostrophes ('). 

' *, / ,+, - ,&lt;, &gt;, =, &lt;=, &gt;=,match, like, in, between ,or, and 

' * operator used here.

Dim exp As ExpressionFieldDescriptor = New ExpressionFieldDescriptor("Expr1", "[Id] *2", "System.Int32")



' 2. Sets the output in double type.

Dim exp2 As ExpressionFieldDescriptor = New ExpressionFieldDescriptor("Expr2", "[Expr1] *2", "System.Double")



