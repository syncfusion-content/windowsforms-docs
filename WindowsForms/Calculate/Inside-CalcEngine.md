---
layout: post
title: Inside-CalcEngine
description: inside calcengine 
platform: WindowsForms
control: Calculate
documentation: ug
---

# Inside CalcEngine 

Following are the topics discussed in this section.

## Tracking the Information

To track information used during calculations, CalcEngine manages several hash tables. Here is a table of the public hash tables in CalcEngine and a description of their keys and values:

_Table_ _12_: _Hash Table_

<table>
<tr>
<th>
Hash Table</th><th>
Key</th><th>
Value</th><th>
Description</th></tr>
<tr>
<td>
FormulaInfoTable</td><td>
Cell reference</td><td>
FormulaInfo object</td><td>
Tracks formula/value information for this cell.</td></tr>
<tr>
<td>
DependentCells</td><td>
Cell reference</td><td>
Hashtable object</td><td>
Tracks cells that depend on this cell.</td></tr>
<tr>
<td>
DependentFormulaCells</td><td>
Formula cell reference</td><td>
Hashtable object</td><td>
Tracks cells that the formula cell depends upon.</td></tr>
<tr>
<td>
NamedRanges</td><td>
Name string</td><td>
Value string</td><td>
Associates the named range with its value.</td></tr>
<tr>
<td>
LibraryFunctions</td><td>
Function name</td><td>
LibraryFunction delegate</td><td>
Associates the function name with its method.</td></tr>
</table>


Within CalcEngine, all data is assumed to be part of a rectangular array reference through cell coordinates like A1, C18, and so on. Even CalcQuickBase does not require or use such cell-type notation internally on the user side. When it communicates with CalcEngine, it converts its [name]-type notation into cell references that CalcEngine can understand. It is these cell references that are used as keys for the first three listed hash tables.

## Parsing

This section discusses the Parse function available for the CalcEngine.

CalcEngine.Parse method does the following:

* Accepts a string formula, for example = A2 + 5. 
* Checks whether it is a valid formula that CalcEngine can understand 
* Returns a string that represents a parsed version of the formula that can be more readily computed. 

The parsed formula is a Reverse Polish Notation expression using tokens to compactly represent the entered formula. The parsing recognizes and replaces NamedRanges with their corresponding value. The parsing also recognizes library functions and tokenises them as well.

## Calculating

This section discusses the Calculate function available for the CalcEngine.

CalcEngine.Calculate is the method that actually performs calculations. It does the following: 

* It accepts a parsed formula 
* Uses a stack oriented calculation technique to convert the parsed formula into the value that it represents. 
N> The value returned is a string holding the computed quantity.

## How Things Work

1. What happens when you enter the formula = A1 + 5 into a cell in a CalcSheet object? 
2. Here lets assume that CalcSheet is using its own internal data storage to hold values, so that it makes it simple to understand what is going on within CalcEngine. If the data is being held in some other object (like a DataGrid with a DataTable datasource) things will look the same from within the CalcEngine. 
3. Here is a sketch of the major steps taken within the library code when you enter a formula into a cell assuming CalcEngine.UseDependencies is True. The actual processing is more involved; these steps should give you an outline of what happens:
4. The string is tested to see whether it begins with an equal sign. If not, CalcSheet stores the entered string in its internal memory so that it will be available if needed. A check is made to see if this cell is a key in the DependentCells collection. If it is, then all cells depending upon this cell are recomputed. This recomputing is a recursive process as changing a cell, that depends upon the changed cell which triggers the recomputing needs of the newly changed cell and so on.
5. If the entered string does begin with an equal sign, the CalcEngine sees this as an entered formula. At this point, the CalcEngine checks to see if the cell is a key in the FormulaInfoTable. 
6. If the cell is a key in the FormulaInfoTable, the corresponding FormulaInfo object is retrieved and updated. This amounts to the following: 
   * Parsing the string.
   * Computing the string.
   * Saving the original formula, the parsed formula and the computed value in the FormulaInfo object.
7. If the cell is not a key in the FormulaInfoTable, a new FormulaInfo object is created. This new FormulaInfo object is populated from the entered string. This amounts to the following: 
   * Parsing the string.
   * Computing the string.
   * Saving the original formula, the parsed formula and the computed value in the FormulaInfo object.

There are several other scenarios that must be handled in the CalcEngine. They include things like the newly entered string changes from an existing formula cell to a non-formula cell. In this situation, the CalcEngine uses the DependFormulaCells collection to remove dependencies that are no longer needed.

All this dependent tracking is done conditionally depending upon CalcEngine.UseDependencies. Additionally, you can turn off formula calculations using CalcEngine.CalculatingSuspended.

## Error Messages

The error messages that are displayed by Essential Calculate can be found in this string array in the CalcEngine. After a CalcEngine object has been created, you can change the text of these messages by changing the array values.

{% highlight c# %}

public string[] FormulaErrorStrings = new string[]

{

        "binary operators cannot start an expression",        //0

        "cannot parse",                                       //1

        "bad library",                                        //2

        "invalid char in front of",                           //3

        "number contains 2 decimal points",                   //4

        "expression cannot end with an operator",             //5

        "invalid characters following an operator",           //6

        "invalid character in number",                        //7

        "mismatched parentheses",                             //8

        "unknown formula name",                               //9

        "requires a single argument",                         //10

        "requires 3 arguments",                               //11

        "invalid Math argument",                              //12

        "requires 2 arguments",                               //13

        "#NAME?",                                             //14

        "too complex",                                        //15

        "circular reference: ",                               //16

        "missing formula",                                    //17

        "improper formula",                                   //18

        "invalid expression",                                 //19

        "cell empty",                                         //20

        "bad formula",                                        //21

        "empty expression",                                   //22

        "",                                                   //23

        "mismatched string quotes",                           //24

        "wrong number of arguments",                          //25

        "invalid arguments",                                  //26

        "iterations do not converge",                         //27

        "Control named '{0}' is already registered"           //28

};

{% endhighlight %}

## Properties

### UseDatesInCalculations

Essential Calculate provides support to compute the date values similar to Excel. Using UseDatesInCalculations property in Calculate control, you can compute DateTime related calculations in your application.

You can compute and get the correct values of DateTime in arithmetic signs and formulas using this property.

_Table_ _13_: _Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Data Type</th></tr>
<tr>
<td>
UseDatesInCalculations</td><td>
Used to compute the DateTime formulas and values.</td><td>
Boolean</td></tr>
</table>


The following code examples illustrate UseDatesInCalculations property.

{% highlight c# %}

//Create a CalcEngine object, tie it to the gridDataBoundGrid that implements ICalcData:

            Syncfusion.Calculate.CalcEngine engine = new Syncfusion.Calculate.CalcEngine(this.gridDataBoundGrid1);



            // for DateTime value computation.

            engine.UseDatesInCalculations = true;

{% endhighlight %}

{% highlight vbnet %}

'Create a CalcEngine object, tie it to the gridDataBoundGrid that implements ICalcData:

Dim engine As New Syncfusion.Calculate.CalcEngine(Me.gridDataBoundGrid1)

' for DateTime value computation.

engine.UseDatesInCalculations = True

{% endhighlight %}

The following screenshot displays the calculation when UseDatesInCalculations propertyis set to “False”.

![C:/Users/labuser/Desktop/b.png](Inside-CalcEngine_images/Inside-CalcEngine_img2.png)

The following screenshot shows a Grid when UseDatesInCalculations propertyis set to “True”.

![C:/Users/labuser/Desktop/c.png](Inside-CalcEngine_images/Inside-CalcEngine_img3.png)