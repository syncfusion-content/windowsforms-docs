---
layout: post
title: Named Ranges in Windows Forms Calculation Engine| Syncfusion
description: Learn about Named Ranges support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Named Ranges in Windows Forms Calculation Engine (Calculate)

Defining a name for a cell, range of cells, formulas, constants, or tables is called a Named Range. By using names, users can easily identify the purpose of cell references and make the formulas much easier to understand and maintain.

For example, a name can be assigned to the cell range "A1:D1" as "SUMRANGE".

## Syntax to define a name

* A name must start with a letter or underscore (_).
* A name must not be a single letter.
* A name must not equal a cell reference (for example, A1).
* A name must not contain spaces and cannot be an empty string.
* A name can contain up to 255 characters.
* Names are case-insensitive and do not distinguish between uppercase and lowercase characters.

## Add Named Ranges

A name can be added for a cell or range of cells using [AddNamedRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_AddNamedRange_System_String_System_String_) method of [CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html).

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

//Adding the name to the named range collection,
engine.AddNamedRange("GROUPCELLS", "A1:C4");

//Using the name for computing formulas,
string formula = "SUM(GROUPCELLS)";

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

## Remove Named Ranges

A name can be removed from a cell or range of cells using [RemoveNamedRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_RemoveNamedRange_System_String_) method of [CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html).

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

//Removing the range from the NamedRanges collection,
engine.RemoveNamedRange("GROUPCELLS");

{% endhighlight %}
{% endtabs %}

## Manage Named Ranges

The names are maintained in a collection called [NamedRanges](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_NamedRanges). The range of a particular named range can also be changed or replaced using this collection.

{% tabs %}
{% highlight c# %}

//Class derived from ICalcData,
CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

//Get the total count of named ranges,
int count = engine.NamedRanges.Count;

//Changing the range of a particular named range,
engine.NamedRanges["GROUPCELLS"] = "A3:A8";

{% endhighlight %}
{% endtabs %}

Download the [Calculation with NamedRange demo on GitHub](https://github.com/SyncfusionExamples/calculate-named-ranges-example).
