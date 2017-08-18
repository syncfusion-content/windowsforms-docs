---
layout: post
title: Array and Table Formulas in Essential Calculate
description: Explains about the support of array and table formulas in Essential Calculate
platform: windowsforms
control: Calculate
documentation: ug
---

# Array and Table Formulas

This section explains about the Array and Table formulas support in Essential Calculate

## Array Formulas

Array formula contains two or more range of values. These array arguments can be cell ranges or array constants. 

For Example:

The SUM formula "=SUM(C2 * D2,C3 * D3,C4 * D4,C5 * D5,C6 * D6,C7 * D7,C8 * D8,C9 * D9,C10 * D10,C11 * D11)" can be written simply in 
Array formula as "{SUM(C2:C11 * D2:D11)}".

Each argument must have the same number of cell ranges. The formulas will be defined within {} braces. A series of data will be returned from the array formula.

{% tabs %}
{% highlight c# %}

CalcData calcData = new CalcData();

calcData.SetValueRowCol(10, 1, 1);
calcData.SetValueRowCol(20, 2, 1);
calcData.SetValueRowCol(30, 3, 1);
calcData.SetValueRowCol(40, 4, 1);

calcData.SetValueRowCol(2, 1, 2);
calcData.SetValueRowCol(3, 2, 2);
calcData.SetValueRowCol(4, 3, 2);
calcData.SetValueRowCol(5, 4, 2);

CalcEngine engine = new CalcEngine(calcData);

string formula = "{=SUM(A1:A4*B1:B4)}";

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

### Array constants

Array constants are a component of array formula.A bunch of values or constants which are associated within {} braces. 
Array constants can contain numbers, text, logical values or error strings.

For Example:
= { 3, 6, 80; 5, TRUE, FALSE }

Cell references cannot be included in array constants. Also, equal range of row values should be included. If you separate the items by using commas, you create
a horizontal array (a row). If you separate the items by using semicolons, you create a vertical array (a column). To create a two-dimensional array, you delimit 
the items in each row by using commas and delimit each row by using semicolons.

For Example:

Single row: {1,2,3,4}
Single column: {1;2;3;4}
Array of two rows and four columns: {1,2,3,4;5,6,7,8}


{% tabs %}
{% highlight c# %}

calcData.SetValueRowCol(10, 1, 1);
calcData.SetValueRowCol(20, 2, 1);
calcData.SetValueRowCol(30, 3, 1);
calcData.SetValueRowCol(40, 4, 1);
CalcEngine engine = new CalcEngine(calcData);

string formula = "MIN(A1:A4, {1,2,3})";

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

## Table Formulas

A table is a collection of data about a specific topic that is stored in rows and columns. These tables are defined with a name and `CalcEngine` supports these table format.

For Example: =SUM(Table1[[#All],[Column1]:[Column2]])

A table needs to be defined with the following protocols,

* All table, column, and special item specifiers must be enclosed in matching brackets [ ]
* Expression cannot be used with these brackets. Column headers should be a text strings.
* The special characters such as comma ,, colon :, period ., left bracket [ , right bracket ], pound sign #, single quotation mark ', double quotation mark ", 
  left brace {, right brace }, dollar sign $, caret ^, ampersand &, asterisk *, plus sign +, equal sign =, minus sign -, greater than symbol >,  less than symbol <, and division sign / can be used.

These table are converted into cell ranges and then it will be evaluated. The data from one row can also be taken with this table structure.

{% tabs %}
{% highlight c# %}

//Creates a new instance for ExcelEngine,

ExcelEngine excelEngine = new ExcelEngine();

//Loads or open an existing workbook through Open method of IWorkbook,

IWorkbook workbook = excelEngine.Excel.Workbooks.Open(@"..\..\Data\Sample.xlsx");

//Accessing the worksheet,
IWorksheet sheet = workbook.Worksheets[0];

//Formula calculation is enabled for the sheet,
sheet.EnableSheetCalculations();

//Create Table,
IListObject table1 = sheet.ListObjects.Create("Table1", sheet["A1:F6"]);

// Fill table data
sheet[1, 1].Text = "Column1";
sheet[1, 2].Text = "Column2";
sheet[1, 3].Text = "Column3";

sheet[2, 1].Number = 3;
sheet[2, 2].Number = 2;
sheet[2, 3].Number = 16.80;

sheet[3, 1].Number = 5;
sheet[3, 2].Number = 3;
sheet[3, 3].Number = 15.60;

sheet[4, 1].Number = 8;
sheet[4, 2].Number = 2;
sheet[4, 3].Number = 20.10;

string result1 = sheet.CalcEngine.ParseAndComputeFormula("=SUM(Table1[Column1])");

string result2 = sheet.CalcEngine.ParseAndComputeFormula("=MIN(Table1[#All])");

{% endhighlight %}
{% endtabs %}
