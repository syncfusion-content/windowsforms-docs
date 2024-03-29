---
layout: post
title: Working with CalcQuickBase in Windows Forms Calculate | Syncfusion
description: Learn about Working with CalcQuickBase support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Working with CalcQuickBase in WinForms Calculation Engine

The simplest way to use Essential Calculate is through an instance of its [CalcQuickBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html) class. This class provides options to directly parse and compute a formula, or register variable names that can later be used in more complex formulas involving these variables. 
After registering the variables,it provides options to perform manual or automatic calculations. `CalcQuickBase` is predefined derived class from `ICalcData` interface.

## Compute using values

The [ParseAndCompute](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_ParseAndCompute_System_String_) method of `CalcQuickBase` parses and computes the given formula string and returns the computed value.

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();   

//Computing Expressions,

string formula = "(5+25)*2";
string result = calcQuick.ParseAndCompute(formula);

//Computing In-Built formulas,

string formula = "SUM(5,5)";
string result = calcQuick.ParseAndCompute(formula);

{% endhighlight %}
{% endtabs %}

## Compute using Variables

 Computation using variables is performed by evaluating the formulas or expressions with the `CalcQuickBase` registered variable key values.

### Register variable names

To register the variables in `CalcQuickBase`, it must be enclosed within square brackets "[ ]". Eg. [A]. These registered variable names are indexer keys.
A variable name must begin with an alphabetical character and can contain only letters and digits. It is not case-sensitive. To register a string as a variable name and 
simply index the `CalcQuickBase` object with the name. To set its value, assign the value or formula to the registered variable name.  

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11";

{% endhighlight %}
{% endtabs %}

### Evaluation 

#### Compute directly with variables

If the user wants the variable to hold a string which is a formula or be treated as a formula, then begin that string with [FormulaCharacter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_FormulaCharacter) of `CalcQuickBase`. The default value of this `FormulaCharacter` is “=”. 
so, that it is parsed and computed through the indexing code.

Below example shows the computation of formula or expressions directly with registered variable keys.

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11";

//Computing expressions,

calcQuick["result"] = "=([A]+[B])/[C]";

//Computing In-Built formulas,

calcQuick["result"] = "=SUM([A],[B])"

{% endhighlight %}
{% endtabs %}

Download Calculation with values and variables demo from [GitHub](https://github.com/SyncfusionExamples/calculation-with-variables-and-values-example)

#### Compute using ParseAndCompute method

The [ParseAndCompute](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_ParseAndCompute_System_String_) method of `CalcQuickBase` parses and computes the given formula string and returns the computed value.
Any string that is passed in `ParseAndCompute` method of `CalcQuickBase` directly will be treated as a formula, whether or not it begins with FormulaCharacter.

Below example shows the computation of formula or expressions using `ParseAndCompute` method of `CalcQuickBase`.

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11";   

//Computing expressions,

calcQuick["result"]  = calcQuick.ParseAndCompute("([A]+[B])/[C]");

//Computing in built formulas,

calcQuick["result"]  = calcQuick.ParseAndCompute("SUM([A],[B])");

{% endhighlight %}
{% endtabs %}

For more information regarding `ParseAndCompute` method, refer [here](https://help.syncfusion.com/windowsforms/calculation-engine/parse-and-compute#parse-and-compute).

## Automatic calculations

By default, `CalcQuickBase` does not try to track any dependencies among the variables. To enable automatic recalculation of dependent variables,
set the [AutoCalc](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_AutoCalc) property of `CalcQuickBase` to `True`. Once this is done, the `CalcQuickBase` object maintains the required dependency information.

[RefreshAllCalculations](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_RefreshAllCalculations) method of `CalcQuickBase` forces the recalculation of all variables registered with the `CalcQuickBase` object. 
This has to be done after the `AutoCalc` property has been set to `True`, so that the dependencies between variables can be monitored.

Below example shows the computation of formula or expressions using `ParseAndCompute` method of `CalcQuickBase`

{% tabs %}
{% highlight c# %}

//Initialize,
CalcQuickBase calcQuick = new CalcQuickBase();

//Registering keys with values,
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11";   

//Computing in built formulas,
calcQuick["result"]  = calcQuick.ParseAndCompute("SUM([A],[B],[C])");

//Setting the Auto calculation mode,
calcQuick.AutoCalc = true;

//To recompute formulas stored in CalcQuickBase object,
calcQuick.RefreshAllCalculations();

//Changing the variable "C" value to "3",
calcQuick["C"] = "3"; 

//Output result after the change of variable "C",
var Output = calcQuick["result"];

{% endhighlight %}
{% endtabs %}

Below example shows the computation of formula or expressions without using `ParseAndCompute` method of `CalcQuickBase`

{% tabs %}
{% highlight c# %}

//Initialize,
CalcQuickBase calcQuick = new CalcQuickBase();

//Registering keys with values,
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11";

//Computing in built formulas,
calcQuick["result"] = "=[A]+[B]+[C]";

//Setting the Auto calculation mode,
calcQuick.AutoCalc = true;

//Changing the variable "C" value to "3",
calcQuick["C"] = "3";

//To recompute formulas stored in CalcQuickBase object,
calcQuick.RefreshAllCalculations();

//Output result after the change of variable "C",
var Output = calcQuick["result"];

{% endhighlight %}
{% endtabs %}

## Reset keys

Registered variables or indexer keys registered with `CalcQuickBase` object can be cleared or reset by using [ResetKeys](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_ResetKeys) method of `CalcQuickBase` class.

{% tabs %}
{% highlight c# %}

//Initialize,
CalcQuickBase calcQuick = new CalcQuickBase();

//Registering keys with values,
calcQuick["A"] = "5";
calcQuick["B"] = "6";
calcQuick["C"] = "11"; 

//Clears the registered keys,
calcQuick.ResetKeys();

{% endhighlight %}
{% endtabs %}
