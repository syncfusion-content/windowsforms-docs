---
layout: post
title: Supported Formulas of Calculate for Syncfusion Essential windowsforms
description: supported formulas
platform: windowsforms
control: Calculate
documentation: ug
---

# Logical Formulas



## AND



Returns `true` when all the arguments have a logical value of `True` and returns `false` when at least one argument is `False`.



**Syntax:**



_AND(logical1, logical2, ...)_



**where:**



* logical1, logical2 ... are multiple conditions to be tested for `true` or `false`.



**Remarks:**



* The arguments must evaluate to logical values (True or False).



* When an argument does not evaluate to True or false, those values are ignored.



* There must be at least one value in the argument list.



## FALSE



The `False` function returns the logical value for the `false`.



**Syntax:**



_FALSE(stringvalue)_



**where:**



* stringvalue is to provide an empty string.



## IF



Returns one value when a condition you specify evaluates to `True` and another value when it evaluates to `False`.



Use `If` to conduct conditional tests on values and formulas.



**Syntax:**



_IF(logical_test, value_if_true, value_if_false)_



**where:**



* logical_test is any value or expression that can be evaluated to `True` or `False`.



* value_if_true is the value that is returned if a logical_test is `True`.



* value_if_false is the value that is returned if a logical_test is `False`.



**Remarks:**



* Countif and Sumif are additional methods that provide conditional calculations.



## IFERROR



`IfError` function tests when an initial given value (or expression) returns an error, and then, this function returns a second given argument. Otherwise, the function returns the initial tested value.



**Syntax:**



_IFERROR (value, value_error)_



**where:**



* `value` is the required to check the error.



* `value_error` is the required and returns when the value has an error.



* When the value_error is an empty cell, then the function takes the error value as empty string.  



## IFNA



`IFNA` function returns the value specified when the formula returns the #N/A error value; otherwise, it returns the result of the given formula.



**Syntax:**



_IFNA (Formula_value, value_if_na)_



**where:** 



* `Formula_value`: This value is required and the argument that is checked for the #N/A error value.



* `value_if_na`: This value is required and the value returned when the formula evaluates to the #N/A error value. 



## NOT



The `Not` function reverses the value of its argument.



**Syntax:**



_NOT(logical)_



**where:**



* logical is a value or expression that can be evaluated to `True` or `False`.



## TRUE



The `True` function returns the logical value for `True`.



**Syntax:**



_TRUE(stringvalue)_



**where:**



* stringvalue is to provide an empty string.



## OR



Returns `True` when any argument is `True` returns `False` when all arguments are `False`.



**Syntax:**



_OR(logical1, logical2, ...)_



**where:**



* logical1, logical2 ... are conditions to test that can be either `True` or `False`.



**Remarks:**



* The arguments must evaluate to logical values such as `True` or `False` or in arrays or references that contain logical values.



## XOR



`XOR` function returns the exclusive `OR` for the given arguments.



**Syntax:**



_XOR (logical_value1, logical_value2…)_



**where:**



* Logical_value1: This is a required value and can be either `true` or `false`, and can be logical values, arrays, or references.



* When the given arguments do not have the logical values, `XOR` returns the `#VALUE!` error value.