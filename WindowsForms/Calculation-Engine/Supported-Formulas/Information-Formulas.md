---
layout: post
title: Information Formulas in Calculation Engine | Syncfusion
description: Learn about Information Formulas support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculation Engine
documentation: ug
---

# Information Formulas in Windows Forms Calculation Engine



## CELL



The `Cell` function returns information about a given cell. This can be information in relation to the contents, formatting, or location of the cell. 



**Syntax:**



_CELL( infoType, reference)_



**where:**



* infoType argument is a text string that specifies the type of information to be returned.



* reference is the cell for which the information is to be returned. 





## ERROR.TYPE



`Error.Type` function returns an integer for the given error value that denotes the type of given error.



**Syntax:**



_= ERROR.TYPE(value)_



* Value-The given value is required.



Here is the: 



_Return Value of Function_



<table>

<tr>

<th>

<b>Given Value</b></th><th>

<b>Return Value Of Function</b></th></tr>

<tr>

<td>

#NULL!</td><td>

1</td></tr>

<tr>

<td>

#DIV/0!</td><td>

2</td></tr>

<tr>

<td>

#VALUE!</td><td>

3</td></tr>

<tr>

<td>

#REF!</td><td>

4</td></tr>

<tr>

<td>

#NAME?</td><td>

5</td></tr>

<tr>

<td>

#NUM!</td><td>

6</td></tr>

<tr>

<td>

#N/A</td><td>

7</td></tr>

<tr>

<td>

#GETTING_DATA</td><td>

8</td></tr>

<tr>

<td>

Anything else</td><td>

#N/A</td></tr>

</table>



## ISBLANK



The `IsBlank` function checks for blank or null values.



**Syntax:**



_ISBLANK(value)_



**where:**



* value is the value that you want to test. When the value is blank, this function returns `true`. When the value is not blank, the function returns `false`.



## ISERR



The `IsErr` function checks whether a value is an error.



**Syntax:**



_ISERR( value )_



**where:**



* value is the value that you want to test. When the value is an error value `except #N/A`, this function returns `true/false` to indicate whether a value is an error or not.



## ISERROR



Returns `true` when the value is a string that starts with a `#`.



**Syntax:**



_ISERROR(value)_



**where:**



* value is the value that is to be tested.



## ISLOGICAL



The `IsLogical` function checks whether a value is a logical value and returns `true` or `false`.



**Syntax:**



_ISLOGICAL( value )_



 **where:**



* This value is the value that you want to test. When the value is a `true` or `false` value, this function returns `true`. Otherwise, it returns `false`.



## ISNA



The `IsNA` function returns a Boolean value after determining that the provided value is `#NA` error value.



**Syntax:**



_ISNA(value)_ 



**where:**



* value is the function that is tested.



## ISNONTEXT



The `IsNonText` function returns the Boolean value after determining that the provided value is not a string.



**Syntax:**



IsNonText(text)



**where:**



* text is the value you want to test whether it is a string or not.



## ISNUMBER



Returns `true` when the value parses as a numeric value.



**Syntax:**



_ISNUMBER(value)_



**where:**



* value is the value that is to be tested.



## INFO



The `Info` function returns a text string containing information about the current operating environment.



**Syntax:**



_INFO(infoType)_ 



**where:**



* infoType argument is a text string that specifies the type of information to be returned. 



## ISFORMULA



The `IsFormula` function returns `true` or `false` when there is a reference to a cell that contains a formula.



**Syntax:**



_ISFORMULA (reference)_



**where:**



* Reference is a reference to the cell you want to test.



**Remark:**



`* #VALUE!`-occurs when reference is not a valid data type.



## ISODD



`IsOdd` function returns `true` when the given number is an odd number and returns `false` when the given number is even.



**Syntax:**



_= ISODD (value)_



* The given value must be a numeric value. When it is a non-integer value, the value is rounded down.



## ISEVEN



The `ISEVEN` function returns `TRUE` if given number is an even number and returns `FALSE` if the given number is an odd number.



**Syntax:**



_ISEVEN (value)_



**where:** 



* value must be a numeric value. If it is non-integer value, the value is rounded down.



**Remarks:**          



* If the given value is non-numeric, ISEVEN function returns `#VALUE!` error value.



## ISREF



The `ISREF` function returns the logical value `TRUE` if the given value is a reference value; otherwise, the function returns `FALSE`.



**Syntax:**



_ISREF(given_value)_



* given_value: Required. The value that is to be tested. The value argument can be a blank (empty cell), error, logical value, text, number, or reference value, or a name referring to any of these.



## MATCH


The `MATCH` function searches for a specified item in a range of cells, and then returns the relative position of that item in the range.



**Syntax:**



_MATCH(lookup_value, lookup_array, [match_type])_



**Where:**



* lookup_value is the value that you want to match in lookup_array.



* lookup_array is the range of cells being searched.



* match_type specifies how Excel matches lookup_value with values in lookup_array. The default value for this argument is 1.
 
  <table>

	<tr>

	<th>

	<b>Match_type</b></th><th>

	<b>Behavior</b></th></tr>

	<tr>

	<td>

	0 or omitted</td><td>

	MATCH finds the largest value that is less than or equal to lookup_value. The lookup_array argument must be placed in ascending order.</td></tr>

	<tr>

	<td>

	0</td><td>

	MATCH finds the first value that is exactly equal to lookup_value. The lookup_array argument can be in any order.</td></tr>

	<tr>

	<td>

	-1</td><td>

	MATCH finds the smallest value that is greater than or equal to lookup_value. The lookup_array argument must be placed in descending order.</td></tr>

  </table>



## N



The `N` function converts the given value into a numeric value.



**Syntax:**



_N (value)_



* A value is required.



* Numeric values are converted as numeric values. A date value is converted as a serial number. The Logic operator `TRUE` returns a value of `1`. The other values are returned as `0`.



## NA



The `NA` function returns the `#N/A` error. This error message is produced when a formula is unable to find a value that it needs. This error message denotes 'value not available'.



**Syntax:**



_NA()_



* The NA function syntax has no arguments.



**Remarks:**



* The function does not have any arguments.



## SHEET



The `Sheet` function returns the sheet number of the reference sheet.



**Syntax:**



_SHEET(value)_ 



**where:**



* value is an optional argument with the name of a sheet for which you want the sheet number.



 **Remarks:**



* `#REF!` - occurs if value argument is not a valid value.



* `#N/A` - occurs if value argument is a sheet name that is not valid.



## SHEETS



`SHEETS` function returns the number of sheets in a reference.



**Syntax:**



_SHEETS(reference)_



**where:**



* reference is an optional argument with the name of a sheet for which you want to know the number of sheets.



**Remarks:**



* `#REF!` - occurs if reference is not a valid value.



## TYPE



The `TYPE` function receives a value and returns an integer that represents the supplied value's data type.



**Syntax:**



_TYPE( value )_



**where:**



* value can be input either directly, as a value returned from a formula, or as a reference to a cell that contains a value.



## ROW



The `ROW` function returns the first row number within a supplied reference, or if no reference is supplied, the function returns the number of the current row in the currently active spreadsheet..



_ROW( [reference] )_



**where:**



* reference is an optional argument that you want to return the row number of. If [reference] is omitted, the function returns the row number of the current cell (i.e. the cell that the function is entered into).



## ROWS



The `ROWS` function takes a range and returns the number of rows that are contained within the range.



**Syntax:**



_ROWS( array )_



**where:**



* array argument is the range in which you want to count the number of rows.
