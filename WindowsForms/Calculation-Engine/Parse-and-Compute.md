---
layout: post
title: Parse and Compute in WinForms Calculation Engine | Syncfusion
description: Learn about Parse and Compute support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Parse and Compute in Windows Forms Calculation Engine (Calculate)

 This section describes the parse and compute functions in Essential Calculate.

## Parsing

Essential Calculate has a built-in formula parser that parses a formula into a well-formed version for internal computation.

### Parse Formula

The built-in formula parser will parse the formula into Reverse Polish Notation expression using [ParseFormula](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseFormula_System_String_) method of `CalcEngine` for computing it.
The parser uses tokens to identify the operators and operands. It recognizes and replaces the `NameRanges` with their corresponding values. The parser also recognizes library functions and tokenizes them.

`ParseFormula` method accepts a string formula and checks whether it is a valid formula that `CalcEngine` can understand.
After that, it returns a string that represents a parsed version of the formula that can be more readily computed.

For example,

Formula:  2+3*1

Parsed Formula in RPN format: `n2n3n1ma`

In this, `n` denotes a value, `m` denotes multiplication, and `a` denotes addition.

Using ICalcData,

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

string formula = "2+3*1";

string parsedFormula = engine.ParseFormula(formula);

{% endhighlight %}
{% endtabs %}

Using CalcQuickBase,

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();

string formula = "2+3*1";

string parsedFormula = calcQuick.Engine.ParseFormula(formula);

{% endhighlight %}
{% endtabs %}

### Parsing Order

The parsed formula is a Reverse Polish Notation expression using tokens to compactly represent the entered formula. 

All operands are pushed onto a stack and popped for calculation. Stack entries may be functions, references, operators, or constants.
Parsing proceeds from left to right, with the following operator precedence:

1. E+ E- (handles exponential notation; `1.2e+1` is normalized to `1.2e1`)
2. ^ 
3. / *
4. +(plus), -(minus)
5. < > = <= >= <>
6. & 

## Computation

Essential Calculate provides support to compute formulas using various methods.

### ComputeFormula

[ComputeFormula](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ComputeFormula_System_String_) method of `CalcEngine` computes the parsed formula from the `ParseFormula` method and returns the computed value.
It uses a stack-oriented technique to evaluate the parsed formula.

Using ICalcData,

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

string formula = "2+3*1";

string parsedFormula = engine.ParseFormula(formula);

string result = engine.ComputeFormula(parsedFormula);

{% endhighlight %}
{% endtabs %}

Using CalcQuickBase,

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();

string formula = "2+3*1";

string parsedFormula = calcQuick.Engine.ParseFormula(formula);

string result = calcQuick.Engine.ComputeFormula(parsedFormula);

{% endhighlight %}
{% endtabs %}

### ParseAndCompute

The [ParseAndCompute](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_ParseAndCompute_System_String_) method of `CalcQuickBase` parses and computes the given formula string and returns the computed value.

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();   

//Computing Expressions,

string formula = "(5+25) *2";
string result = calcQuick.ParseAndCompute(formula);

//Computing In-Built formulas,

string formula = "SUM(5,5)";
string result = calcQuick.ParseAndCompute(formula);

{% endhighlight %}
{% endtabs %}

### ParseAndComputeFormula

The [ParseAndComputeFormula](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseAndComputeFormula_System_String_) method of `CalcEngine` parses and computes the given formula string passed in and returns the computed value.

Using ICalcData,

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

//Computing Expressions,

string formula = "(5+25) *2";
string result = engine.ParseAndComputeFormula(formula);

//Computing In-Built formulas,

string formula = "SUM(4,5,6)";
string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

Using CalcQuickBase,

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();

//Computing Expressions,

string formula = "(5+25) *2";
string result = calcQuick.Engine.ParseAndComputeFormula(formula);

//Computing In-Built formulas,

string formula = "SUM(4,5,6)";
string result = calcQuick.Engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

## Error Messages

The error messages displayed by Essential Calculate are stored in the string arrays [ErrorStrings](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ErrorStrings) and [FormulaErrorStrings](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_FormulaErrorStrings) of `CalcEngine`.
After a `CalcEngine` object has been created, the text of error messages in these arrays can be changed by altering the array values.

* `ErrorStrings` of `CalcEngine` gets or sets the list of error strings which are recognized by Excel such as "#N/A", "#VALUE!", "#REF!", "#DIV/0!", "#NUM!", "#NAME?", "#NULL!".

* `FormulaErrorStrings` of `CalcEngine` holds the list of error strings used internally by Essential Calculate. Users can change these internal error strings from their default values by assigning new strings to the corresponding position. Call `ReloadErrorStrings` to reset or modify the internal error strings.

Below shows the list of `FormulaErrorStrings` which are used internally,

"binary operators cannot start an expression",	
"cannot parse",									
"bad library",									
"invalid char in front of",						
"number contains 2 decimal points",				
"expression cannot end with an operator",		
"invalid characters following an operator",		
"invalid character in number",					
"mismatched parentheses",						
"unknown formula name",							
"requires a single argument",					
"requires 3 arguments",							
"invalid Math argument",					
"requires 2 arguments",						
"#NAME?",
"too complex",									
"circular reference: ",							
"missing formula",								
"improper formula",							
"invalid expression",							
"cell empty",									
"bad formula",									
"empty expression",								
"",                                             
"mismatched string quotes",                             
"wrong number of arguments",                   
"invalid arguments",								
"iterations do not converge",                       
"Control named '{0}' is already registered",          
"Calculation overflow",								
"Missing sheet"

## Formatting the Computed Results

By default, values are returned as an object after computation. This value can be converted to a string using the `ToString` method to format the results.

To format the result, the computed value can be parsed using any of the formatting methods.

**For example,**

int.Parse     ->    For converting to integer
double.Parse  ->    For converting to double
decimal.Parse ->    For converting to decimal  

Using ICalcData,

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

string formula = "SUM(4,5,6)";

//Formatted as decimal value,
string result = decimal.Parse(engine.ParseAndComputeFormula(formula)).ToString("0.00");

//Formatted as double value,
string result1 = double.Parse(engine.ParseAndComputeFormula(formula)).ToString("0.00%");

{% endhighlight %}
{% endtabs %}

Using CalcQuickBase,

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();

string formula = "SUM(4,5,6)";

//Formatted as decimal value,
string result = decimal.Parse(calcQuick.ParseAndCompute(formula)).ToString("0.00");

//Formatted as double value,
string result1 = double.Parse(calcQuick.ParseAndCompute(formula)).ToString("0.00%");

{% endhighlight %}
{% endtabs %}
