---
layout: post
title: Logical Formulas in WinForms Calculation Engine | Syncfusion
description: Learn about Logical Formulas support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Logical Formulas in WinForms Calculation Engine (Calculate)



## AND



Returns `true` when all the arguments have a logical value of `True` and returns `false` when at least one argument is `False`.



**Syntax:**



_AND(logical1, logical2, ...)_



**Parameters:**



* `logical1, logical2 ...`: Multiple conditions to be tested for `true` or `false`.



**Remarks:**



* The arguments must evaluate to logical values (True or False).



* When an argument does not evaluate to True or false, those values are ignored.



* There must be at least one value in the argument list.



## FALSE



The `False` function returns the logical value for the `false`.



**Syntax:**



_FALSE(stringvalue)_



**Parameters:**



* `stringvalue`: To provide an empty string.



## IF



Returns one value when a condition you specify evaluates to `True` and another value when it evaluates to `False`.



Use `If` to conduct conditional tests on values and formulas.



**Syntax:**



_IF(logical_test, value_if_true, value_if_false)_



**Parameters:**



* `logical_test`: Any value or expression that can be evaluated to `True` or `False`.



* `value_if_true`: The value that is returned if a logical_test is `True`.



* `value_if_false`: The value that is returned if a logical_test is `False`.



**Remarks:**



* Countif and Sumif are additional methods that provide conditional calculations.



## IFERROR



`IfError` function tests when an initial given value (or expression) returns an error, and then, this function returns a second given argument. Otherwise, the function returns the initial tested value.



**Syntax:**



_IFERROR (value, value_error)_



**Parameters:**



* `value` (required): To check the error.



* `value_error` (required): Returns when the value has an error.



* `value_error` (required): When empty cell, then the function takes the error value as empty string.  



## IFNA



`IFNA` function returns the value specified when the formula returns the #N/A error value; otherwise, it returns the result of the given formula.



**Syntax:**



_IFNA (Formula_value, value_if_na)_



**Parameters:** 



* `Formula_value` (required): The argument that is checked for the #N/A error value.



* `value_if_na` (required): The value returned when the formula evaluates to the #N/A error value. 



## LET



The `LET` function assigns names to calculation results, which allows storing intermediate calculations, values, or define names inside a formula. This helps make formulas more readable and easier to maintain by breaking complex calculations into named parts.



**Syntax:**



_LET(name1, value1, [name2, value2], ..., calculation)_



**Parameters:**



* `name1` (required): The name to assign to the first value. Must be a valid name and not conflict with existing names in the workbook.



* `value1` (required): The value or expression that the name is assigned to.



* `name2, value2` (optional): Additional name-value pairs. You can define up to 126 name-value pairs in a single LET function.



* `calculation` (required): The formula that uses the names defined in the LET function.



**Remarks:**



* Names defined in LET are local to that formula and cannot be used outside of it.



* Names must follow Excel naming rules: they must start with a letter or underscore, and can contain letters, numbers, and underscores.



* The same name cannot be defined more than once in a single LET function.



* LET function helps improve formula performance by calculating values only once instead of multiple times in a complex formula.



## NOT



The `Not` function reverses the value of its argument.



**Syntax:**



_NOT(logical)_



**Parameters:**



* `logical`: A value or expression that can be evaluated to `True` or `False`.



## TRUE



The `True` function returns the logical value for `True`.



**Syntax:**



_TRUE(stringvalue)_



**Parameters:**



* `stringvalue`: To provide an empty string.



## OR



Returns `True` when any argument is `True` returns `False` when all arguments are `False`.



**Syntax:**



_OR(logical1, logical2, ...)_



**Parameters:**



* `logical1, logical2 ...`: Conditions to test that can be either `True` or `False`.



**Remarks:**



* The arguments must evaluate to logical values such as `True` or `False` or in arrays or references that contain logical values.



## XOR



`XOR` function returns the exclusive `OR` for the given arguments.



**Syntax:**



_XOR (logical_value1, logical_value2…)_



**Parameters:**



* `Logical_value1` (required): Can be either `true` or `false`, and can be logical values, arrays, or references.



* `Logical_value1, logical_value2…` (required): When the given arguments do not have the logical values, `XOR` returns the `#VALUE!` error value.



## IFS



The `IFS` function runs multiple test, and returns a value that corresponds to the first TRUE condition. `IFS` can take the place of multiple nested IF statements, and is allows shorter, easier to read formulas.It used to test multiple conditions and return first true result.



**Syntax:**



_IFS(logical_test1, value_if_true1, [logical_test2, value_if_true2], [logical_test3, value_if_true3],…)_



**Parameters:**



* `logical_test1` (required): The first logical test that evaluates to `TRUE` or `FALSE`.



* `value_if_true1` (required): Result to be returned if the first logical test (logical_test1) evaluates to `TRUE`. This can be empty string.



* `logical_test2…logical_test127` (optional): The second logical test that evaluates to `TRUE` or `FALSE`.



* `value_if_true2…value_if_true127` (optional): Result to be returned if logical_testN evaluates to `TRUE`. Each value_if_trueN corresponds with a condition logical_testN. This can be empty string.


**Remarks:**



* To specify a default result, enter `TRUE` for your final logical_test argument. If none of the other conditions are met `TRUE`, the corresponding value will be returned. 



* The argument (logical_test) is supplied without a corresponding value_if_true, this function shows a `You've entered too few arguments for this function` error message.



*  The argument (logical_test) is evaluated and resolves to a value other than `TRUE` or `FALSE`, this function returns a `#VALUE!` error message.



*  If no `TRUE` value found, this function returns `#N/A` error message.



## SWITCH



The `SWITCH` function compares one value against a list of values, and returns the result corresponding to the first match.It return default value when there is no match found.



**Syntax:**



_SWITCH(expression, value1, result1, [default or value2, result2],…[default or value3, result3])_



**Parameters:**



* `expression` (required): The value or expression (number, date or some text) that will be compared against list of values.



* `value1…value126`: A list of values that will be compared against expression.



* `result1…result126`: The value to be returned when the corresponding list of values matches expression. ResultN must be supplied for each corresponding valueN argument.



* `default` (optional): The value to return in case no matches are found when compare the list of values against expression. The default argument is identified by having no corresponding resultN expression. Default must be the final argument in the function.


