---
layout: post
title: Math Trigonometry in Windows Forms Calculate Control | Syncfusion
description: Learn about Math Trigonometry support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Math Trigonometry in WinForms Calculation Engine (Calculate)



## ABS



Returns the absolute Value of a number. The absolute value of a non-negative number is the number itself. The absolute value of a negative number is 1 times the number.



**Syntax:**



_ABS(number)_



**where:**



* number is the real number for which you want the absolute value.



## ACOT



The `Acot` function retrieves the principal value of the inverse trigonometric cotangent of a number.



To obtain in degrees, use `Degrees` function before `Acot` function.



**Syntax:**



_ACOT(number) or DEGREES ACOT(number)_



**where:**



* number that is the cotangent of the angle. This must be a real number.



**Remarks:**



* `#VALUE!` occurs when the number is a non-numeric value.



* The returned angle when given in radians in the range of 0 (zero) to pi.



## ACOTH



The `Acoth` function retrieves the inverse hyperbolic cotangent of a number.



**Syntax:**



_ACOTH(number)_



**where:**



* number that is to be converted into cotangent.



**Remarks:**



* `#NUM!` occurs when number is lesser than one.



* `#VALUE!` occurs when absolute value of number is lesser than one.



## ARABIC



A Roman numeral is converted into an Arabic numeral.



**Syntax:**



_ARABIC( romannumeral )_



**where:**



* romannumeral is the text given by you to convert it into Arabic numeral.



**Remarks:**



* `#VALUE!` occurs when text is not a valid value.



* `#VALUE!` occurs when text is not a valid Roman numeral.



* Value zero occurs when an empty string is given as an input.



## ACOS



Returns the inverse cosine of a number. Inverse cosine is also referred to as arccosine. The arccosine is the angle whose cosine is the given number. The returned angle is given in radians in the range of 0 to pi.



**Syntax:**



_ACOS(number)_



**where:**



* number is the cosine of the angle that you want and must be between -1 and 1.



## ACOSH



Returns the inverse hyperbolic cosine of a number. The number must be greater than or equal to 1. The inverse hyperbolic cosine is the value whose hyperbolic cosine is the given number.



**Syntax:**



_ACOSH(number)_



**where:**



* number is any real number that is greater than or equal to 1.



## ASIN



Returns the inverse sine of a number. Inverse sine is also referred to as arcsine. The arcsine is the angle whose sine is the given number. The returned angle is given in radians in the range from -pi/2 to +pi/2.



**Syntax**



_ASIN(number)_



**where:**



* number is the sine of the angle that you want and must be between -1 and 1.



## ASINH




The `ASINH` function returns the inverse hyperbolic sine of a number. 




**Syntax:**



_ASINH(number)_



**where:**



* number is any real number which is to be converted.
 


## ATAN



Returns the inverse tangent of a number. Inverse tangent is also known as arctangent. The arctangent is the angle whose tangent is a number. The returned angle is given in radians in the range from -pi/2 to +pi/2.



**Syntax**



_ATAN(number)_



**where:**



* number is the tangent of the angle that you want.



## ATAN2



Returns the inverse tangent of the specified x- and y-coordinates. The arctangent is the angle from the x-axis to a line containing the origin (0, 0) and the point (x_num, y_num). The angle is given in radians between -pi and pi, excluding -pi.



**Syntax:**



_ATAN2(x_num,y_num)_ 



**where:**



* x_num is the X coordinate of the point.



* y_num is the Y coordinate of the point.



**Remarks:**



* A positive result represents counterclockwise angle from the x-axis; and negative result represents clockwise angle.



* `ATAN2(a,b)` equals `ATAN(b/a)` , except that a can equal 0 in ATAN2.



## ATANH



The `ATANH` function returns the inverse hyperbolic tangent of a number.



**Syntax:**



_ATANH(number)_



**where:**



* number is any real number that must be greater than or equal to -1 and lesser than or equal to 1.



## BASE



The `BASE` function converts a number into a text representation with the given radix (base).



**Syntax:**



_BASE(number, radix, [min_length])_



**where:**



* number is the real number which is to be converted. It must be greater than or equal to 0 and lesser than or equal to 2^53.



* radix is the base radix which is to convert a number into base. The value of radix must be greater than or equal to 2 and lesser than or equal to 36.



* min_length is the minimum length of the returned string. It is optional and must be greater than or equal to 0.



**Remarks:**



* If number, radix, or min_length are outside the minimum or maximum constraints, BASE returns the `#NUM!` error value.



* If number is a non-numeric value, BASE returns the `#VALUE!` error value.



* If any non-integer number entered as an argument, it is truncated to an integer.



* The maximum value of min_length is 255.



## COMBIN



Returns the number of combinations for a given number of items. Use `COMBIN` to determine the total possible number of groups for a given number of items.



**Syntax:**



_COMBIN(number, number_chosen)_



**where:**



* number is the number of items.



* number_chosen is the number of items in each combination.



**Remarks:**



* Numeric arguments are truncated to integers.



* A combination is any set or subset of items, regardless of their internal order. Combinations are distinct from permutations where the internal order is significant.



* The number of combinations is as follows, where number = n and number_chosen = k:



## COT



The `Cot` function returns the cotangent of an angle specified in radians.



**Syntax:**



_COT(number)_



**where:**



* number-angle radians to get the cotangent value.



**Remarks:**



* `#NUM!` occurs when the number is out of the range.



* `#VALUE!` occurs when the number is a non-numeric value.



## COTH


The `COTH` function returns the hyperbolic cotangent of a hyperbolic angle.



**Syntax:**



_COTH(number)_



**Where:**



* number - angle radians to get the hyperbolic cotangent value.



**Remarks:**



* `#NUM!` - occurs if the number is outside of its constraints.



* `#VALUE!` - occurs if the number is a non-numeric value.



## CSC



The `CSC` function returns the cosecant of an angle specified in radians.



**Syntax:**



_CSC(number)_ 



**where:**



* number-angle radians to get the cosecant value.



**Remarks:**



* `#NUM!` occurs when the number is outside its constraints.



* `#VALUE!` occurs when the number is a non-numeric value.



## CSCH



The `CSCH` function returns the hyperbolic cosecant of an angle specified in radians.



**Syntax:**



_CSCH(number)_



**where:**



* number-angle radians to get the hyperbolic cosecant value.



**Remarks:**



* `#NUM!` occurs when the number is outside its constraints.



* `#VALUE!` occurs when the number is a non-numeric value.



## COS



Returns the cosine of the given angle.



**Syntax:**



_COS(number)_



**where:**



* number is the angle in radians for which you want the cosine.



## COSH



Returns the hyperbolic cosine of a number.



**Syntax:**



_COSH(number)_



**where:**



* number is any real number for which you want to find the hyperbolic cosine.





## COMBINA



For a given number of items, the `Combina` function returns the number of combinations.



**Syntax:**



_COMBINA(number1, number2)_



**where:**



* number1 is total number of items.



* number2 is total number of items to be chosen.



**Remarks:**



* `#NUM!` occurs when either value is out of range.



* `#VALUE!` occurs when either value is non-numeric.



## CEILING



The `Ceiling` function returns number rounded up, away from zero, to the nearest multiple of significance. For example, if you want to avoid using pennies in your prices and your product is priced at $4.82, use the formula =CEILING(4.82,0.05) to round prices up to the nearest nickel.



**Syntax:**



_CEILING(number, significance)_



**where:**



* number is the value you want to round off.



* significance is the multiple to which you want to round.



**Remarks:**



* Both values must be numeric.



* Regardless of the sign of a number, a value is rounded up when adjusted away from zero. If the number is an exact multiple of significance, no rounding occurs.



## CEILING.Math



The `Ceiling.Math` function returns the number rounded up to a multiple of another number.



**Syntax:**



_CEILING(number, [significance],  [mode])_



**where:**



* number-number that is rounded up to a multiple of significance.



* significance-multiple to which the number is rounded.



* mode is for negative numbers; it controls whether the number is rounded toward or away from zero.



## DECIMAL



A text representation of a number in a given base to be converted into a decimal number.



**Syntax:**



_DECIMAL(text, radix)_ 



**where:**



* text is a string.



* radix is an integer.



**Remarks:**



* `#NUM!` or `#VALUE!` occurs when text or radix is outside the constraints.



## DEGREES



Converts radians into degrees.



**Syntax:**



_DEGREES(angle)_



**where:** 



* angle is the angle in radians that you want to convert.



## EVEN



Returns the number rounded up to the nearest even integer.



**Syntax:**



_EVEN(number)_



**where:**



* number is the value that is to be rounded.



**Remarks:**



* Regardless of the sign of the number a value is rounded up when adjusted away from zero. If the number is an even integer no rounding occurs.



## EXP



Returns e raised to the power of the given number.



**Syntax:**



_EXP(number)_



**where:**



* number is the exponent applied to the base e.



## FACT



Returns the factorial of a number. The factorial of a number is the product of all positive integers <= the given number.



**Syntax:**



_FACT(number)_



**where:**



* number is the non-negative number for which you want the factorial of. If the number is not an integer, it is truncated.



## FACTDOUBLE



`FactDouble` function returns the double factorial of a given value. The given value is an integer value.



**Syntax:**



_FACTDOUBLE (number)_



**where:**



* number-This value is required.



**Remarks:**



* `#NUM!` when the number is lesser than zero (0).



* `#VALUE!` Occurs when any of the given argument is non-numeric



## INT



Rounds a number down to the nearest integer.



**Syntax:**



_INT(number)_



**where:** 



* number is the real number that you want to round down to an integer.



## LN



Returns the natural logarithm of a number. Natural logarithms are based on the constant e (2.718281828459...).     



**Syntax:**



_LN(number)_



**where:**



* number is the positive real number for which, you want the natural logarithm.



**Remarks:**



* LN is the inverse of the EXP function.



## LOG



Returns the logarithm of a number to the base that you specify.



**Syntax:**



_LOG(number, base)_



**where:**



* number is the positive real number for which, you want the logarithm.



* base is the base of the logarithm. If base is omitted, it is assumed to be 10.



## LOG10



Returns the base-10 logarithm of a number.



**Syntax:**



_LOG10(number)_



**where:**



* number is the positive real number for which, you want the base-10 logarithm.



## MMULT



Returns the matrix product of two arrays.



**Syntax:**



_MMULT(array1, array2)_



**where:**



* array1, array 2 are required arrays that needs to be multiplied.



**Remarks:**



* The number of columns in array1 must be the same as the number of rows in array2, and both arrays must contain only numbers.



* array1 and array2 can be given as cell ranges, array constants, or references.



* MMULT returns the #VALUE! error when:



  * Any cells are empty or contain text.



  * The number of columns in array1 is different from the number of rows in array2.



## MOD



The `MOD` function returns the reminder from the division. The result always has the same sign as the divisor.



**Syntax:**



_MOD(number, divisor)_



**where:**



* number is an integer to be divided.



* divisor is an integer by which to divide.



**Remarks:**



* Returns `#DIV!` error when the divisor is zero.



* The `MOD` function will returns the whole number.



## ODD



The `ODD` function returns the number rounded up to the nearest odd integer.



**Syntax:**



_ODD(number)_



**where:**



* number is a value to be rounded.



**Remarks:**



* If the number is non-numeric, it returns the `#VALUE!` error.



* Regardless of the sign of number, a value is rounded up when adjusted away from zero. If number is an odd integer, no rounding occurs.



## POWER



The `POWER` function returns the result of a number raised to power.



**Syntax:**



_POWER(number, power)_



**where:**



* number is the base number. It can be any real number.



* power is the exponent to which the base number is raised.



## RADIANS



The `RADIANS` function converts the degrees into radians.



**Syntax:**



_RADIANS(angle)_



**where:**



* angle is an angle in degree which is to be converted into radian.



## RAND



The `RAND` function returns an evenly distributed random real number that should be greater than or equal to  0 and lesser than or equal to 1.



**Syntax:**



_RAND()_



**Remarks:**



* To generate a random real number between a and b, use the following syntax
 


_RAND()*(b-a)+a_



## SECH



The `SECH` function returns the hyperbolic secant of an angle.



**Syntax:**



_SECH(number)_



**where:**



* number is the angle in radians to calculate the hyperbolic secant.



**Remarks:**



* The absolute value of number must be less than 2^27.



* If number is outside of its constraints, SECH returns the #NUM! error value.



* If number is a non-numeric value, SECH returns the #VALUE! error values.



## SIN



Returns the sine of the given angle.



**Syntax:**



_SIN(number)_



**where:**



* number is the angle in radians for which you want the sine.



## SINH



Returns the hyperbolic sine of a number.



**Syntax:**



_SINH(number)_



**where:**



* number is any real number.



## SEC



The `Sec` function returns the secant of an angle.



**Syntax:**



_SEC(number)_ 



**where:**



* number-angle radians to get the secant value.



**Remarks:**



* `#NUM!` occurs when the number is outside its constraints.



* `#VALUE!` occurs when number is a non-numeric value.



## SUBTOTAL



`Subtotal` function returns a subtotal in a list. Once the subtotal list is created, you can modify it by editing the `Subtotal` function.



**Syntax:**



_SUBTOTAL (function_Number, ref1, (ref2)...)_



**where:**



* A function_Number is required. This specifies which function to use for calculating subtotals within a list. Here is the list of functions supported by Syncfusion:



_Function numbers_



<table>

<tr>

<th>

<b>Function Numbers</b></th><th>

<b>Function Names</b></th></tr>

<tr>

<td>

1</td><td>

AVERAGE</td></tr>

<tr>

<td>

2</td><td>

COUNT</td></tr>

<tr>

<td>

3</td><td>

COUNTA</td></tr>

<tr>

<td>

4</td><td>

MAX</td></tr>

<tr>

<td>

5</td><td>

MIN</td></tr>

<tr>

<td>

6</td><td>

PRODUCT</td></tr>

<tr>

<td>

7</td><td>

STDEV</td></tr>

<tr>

<td>

8</td><td>

STDEVP</td></tr>

<tr>

<td>

9</td><td>

SUM</td></tr>

<tr>

<td>

10</td><td>

VAR</td></tr>

</table>



* ref1-The first named range that is used for the subtotal. This value is required.



* ref2-This value is optional.



## PI



The `PI` function returns the number 3.14159265358979, the mathematical constant pi, accurate to 15 digits.



**Syntax:**



_PI( )_



## PRODUCT



Multiplies all the numbers given as arguments and returns the product.



**Syntax:**



_PRODUCT(number1, number2, ...)_



**where:** 



* number1, number2, ... are numbers that you want to multiply.



## ROUND



Rounds a number to a specified number of digits.



**Syntax:**



_ROUND(number, num_digits)_



**where:**



* number is the numeric value that you want to round.



* num_digits is the number of digits to which you want to round the number argument.



**Remarks:**



* If num_digits is greater than 0 (zero), then number is rounded to the specified number of decimal places.



* If num_digits is 0, the number is rounded to the nearest integer.



* If num_digits is less than 0, the number is rounded to the left of the decimal point.



## ROUNDUP



Rounds a number up, away from zero.



**Syntax:**



_ROUNDUP(number, num_digits)_



**where:**



* number is any real number that you want rounded up.



* num_digits is the number of digits to which you want to round number.



**Remarks:**



* ROUNDUP behaves like ROUND, except that it always rounds a number up.



* If num_digits is greater than 0 (zero), then number is rounded up to the specified number of decimal places.



* If num_digits is 0, then number is rounded up to the nearest integer.



* If num_digits is less than 0, then number is rounded up to the left of the decimal point.




## ROUNDDOWN



Rounds a number down, toward zero.



**Syntax:**



_ROUNDDOWN(number, num_digits)_



**where:**



* number is any real number that you want rounded down.



* num_digits is the number of digits to which you want to round number.



**Remarks:**



* ROUNDDOWN behaves like ROUND, except that it always rounds a number down.



* If num_digits is greater than 0 (zero), then number is rounded down to the specified number of decimal places.



* If num_digits is 0, then number is rounded down to the nearest integer.



* If num_digits is less than 0, then number is rounded down to the left of the decimal point.



## SQRT



The `SQRT` function returns a positive square root.



**Syntax:**



_SQRT(number)_



**where:**



* number is the number for which you want the square root.



**Remarks:**



* Number must be >= 0.



## SUMIF



Adds the cells specified by a given criteria.



**Syntax:**



_SUMIF(range, criteria, sum_range)_ 



**where:**



* range is the range of cells you want evaluated.



* criteria is the criteria in the form of a number, expression, or text that defines the cells to be added. For example, criteria can be expressed as ">32" or some other logical expression.



* Sum_range is the actual cells to sum.



**Remarks:**



* The cells in sum_range are summed only if their corresponding cells in range match the criteria.



* If sum_range is omitted, the cells in range are summed.



## SUMPRODUCT



Returns the sum of the products of corresponding array components in given arrays.



**Syntax:**



_SUMPRODUCT(array1, [array2], [array3], ...)_



**where:**



* array1 is an argument whose components you want to multiply and then add.



* array2, array3… are array arguments 2 to 255 whose components you want to multiply and then add.



**Remarks:**



* `#VALUE!` Occurs when the array arguments are not in the same dimensions.



* SUMPRODUCT treats array entries that are not numeric as if they were zeros.



## TAN



Returns the tangent of a number.



**Syntax:**



_TAN(number)_



**where:**



* number is the tangent of the angle that you want.



## TRUNC



The `Trunc` function truncates a supplied number to a specified number of decimal places.



**Syntax:**



_TRUNC( number, [num_digits] )_



**where:**



* number is the initial number that is truncated.



* [num_digits] is an optional argument that specifies the number of decimal places to truncate the supplied number to. The default value is 0.



## ISTEXT



The `IsText` function returns a Boolean value after determining that the provided value is a string.



**Syntax:**



_ISTEXT(text)_



**where:**



* text is the value you want to test if it is a string or not.



## SIGN



THe `SINGN` function returns the sign of the supplied numerical argument. Returns 1 if the number is positive, zero (0) if the number is 0, and -1 if the number is negative.



**Syntax:**



_SIGN(number)_



**where:**



* number is any real number to get the sign.



## TANH



THe `TANH` function calculate the hyperbolic tangent of a supplied number.



**Syntax:**



_TANH(number)_



**where:**



* number is any real number that you want to calculate the hyperbolic tangent. 



## Sumsq



THe `Sumsq` function returns the sum of the squares of a series of values.



**Syntax:**



_SUMSQ(number1, [number2], ...)_



**where:**



* Number1, number2, ...  : Number1 is required, subsequent numbers are optional. A series of numeric values that are to be squared and then summed together.



**Remarks:**



* Arguments can either be numbers or names, arrays, or references that contain numbers.


* Numbers, logical values, and text representations of numbers that you type directly into the list of arguments are counted.



* The argument is an array or reference, only numbers in that array or reference are counted. Empty cells, logical values, text, or error values are ignored.



* Arguments that are error values or text that cannot be translated into numbers cause errors.



## SUMX2MY2  



THe `SUMX2MY2` function calculate the sum of the difference of squares between two arrays.



**Syntax:**



_SUMX2MY2(array_x, array_y)_



**where:**



* Array_x :The first array or range of values used in the calculation.



* Array_y  :The second array or range of values used in the calculation.



**Remarks:**



* The arguments should be numbers or names, arrays, or references that contain numbers.


* The argument contains text, logical values, or empty cells, those values are ignored. The cells with the value zero are included.


* The arguments (array_x and array_y) have a different lengths(different numbers of values). it returns the `#N/A` error message.



## Sumx2py2  



THe `Sumx2py2` function returns the sum of squares of corresponding values in two arrays and returns the sum of the results.



**Syntax:**



_SUMX2PY2(array_x, array_y)_



**where:**



* Array_x :The first array or range of values used in the calculation.



* Array_y  :The second array or range of values used in the calculation.



**Remarks:**



* The arguments should be numbers or names, arrays, or references that contain numbers.


* If argument contains text, logical values, or empty cells, those values are ignored.The cells with the value zero are included.


* The argument(array_x and array_y) have a different lengths(number of values), it returns the `#N/A` error message.



## SUMXMY2  



THe `SUMXMY2` function returns the sum of squares of differences of corresponding values in two arrays and returns the sum of the results.



**Syntax:**



_SUMXMY2(array_x, array_y)_



**where:**



* Array_x :The first array or range of values used in the calculation.



* Array_y  :The second array or range of values used in the calculation.



**Remarks:**



* The arguments should be numbers or names, arrays, or references that contain numbers.


* The argument contains text, logical values, or empty cells, those values are ignored.The cells with the value zero are included.


* The arguments(array_x and array_y) have a different lengths(number of values), it returns the `#N/A` error message.



## MULTINOMIAL   



THe `MULTINOMIAL` function calculates the ratio of the factorial of a sum of values to the product of factorials of those values.



**Syntax:**



_MULTINOMIAL(number1, [number2], ...)_



**where:**


 
* Number1, number2, ... :   Number1 is required, subsequent numbers are optional. This is one or more arguments which you want to calculate the
multinomial.


**Remarks:**



* The argument is non-numeric, it returns the `#VALUE!` error message


* The argument is less than zero, it returns the `#NUM!` error message.



## MROUND    



THe `MROUND` function rounds a number up or down, depending on the nearest multiple of given number.



**Syntax:**



_MROUND(number, multiple)_



**where:**



* Number  :  The value hat should be rounded.



* Multiple : The multiple to to use when round a number.



**Remarks:**



* it rounds up, away from zero, if the remainder of dividing number by multiple is greater than or equal to half the value of multiple.


* The arguments (Number and Multiple) must have the same sign. If not, it returns a `#NUM!` error message.



## RANDBETWEEN    



THe `RANDBETWEEN` function returns a random integer number between given numbers. A new random integer number is returned each time when worksheet is recalculated.



**Syntax:**



_RANDBETWEEN(bottom, top)_



**where:**



* Bottom   : The smallest integer value that the function will return.



* Top   :  The largest integer value that the function will return.



## SQRTPI     



THe `SQRTPI` function returns the square root of a given number multiplied by the mathematical constant, π.



**Syntax:**



_SQRTPI(number)_



**where:**


  
* Number : The number is the positive numeric value that you want to multiplied by pi.



**Remarks:**



* The argument(number) is greater than 0, it returns the `#NUM!` error message.



## QUOTIENT      



THe `QUOTIENT` function calculates the integer portion of a division. This function is used to discard the remainder of a division.



**Syntax:**



_QUOTIENT(numerator, denominator)_



**where:**



* Numerator     : This is a number.The dividend  value.



* Denominator   :This is a number.The divisor value.



**Remarks:**



* The argument is non-numeric, it returns the `#VALUE!` error message.



## GCD       



THe `GCD` function returns the greatest common divisor of two or more integers. The greatest common divisor is the largest integer that that goes into all given numbers without a remainder.



**Syntax:**



_GCD(number1, [number2], ...)_



**where:**



* Number1, number2, ...    Number1 is required, subsequent numbers are optional. 1 to 255 values.



**Remarks:**



* The argument is non-numeric, it returns the `#VALUE!` error message.



* The argument is less than zero, it returns the `#NUM!` error message.



* One divides any value evenly.



* A prime number has only itself and one as even divisors.



## LCM        



THe `LCM ` function returns the least common multiple of integers. The least common multiple is the smallest positive integer that is a multiple of all given numbers.



**Syntax:**



_LCM(number1, [number2], ...)_



**where:**



* Number1, number2, ...    Number1 is required, subsequent numbers are optional. The argument(numbers) are upto 255 numeric values for which you want to calculate the least common multiple. If any value is not an integer, it is truncated.



**Remarks:**



* The argument is non-numeric, it returns the `#VALUE!` error message.



* The argument is less than zero, it returns the `#NUM!` error message.



## ROMAN         



THe `ROMAN` function converts an Arabic numeral to roman numeral as text.



**Syntax:**



_ROMAN(number, [form])_



**where:**



* Number :   The Arabic numeral you want to convert to Roman numeral.



* Form (Optional) :A number specifying the type of roman numeral you want.



**Remarks:**



* The argument (number) is negative, it returns the `#VALUE!` error message. 



* The argument (number) is greater than 3999, it returns the `#VALUE!` error  error message. 



## SUMIFS          



THe `SUMIFS` function sum all numbers in a range of cells, based on a single or multiple criteria.



**Syntax:**



_SUMIFS(sum_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)_



**where:**



* Sum_range     :   The range of cells to sum.



* Criteria_range1 :The first range(Criteria_range1) to evaluate.



* Criteria1  : It used to find which cells to add. Criteria1 is applied against Criteria_range1 .  



Criteria_range2, criteria2, …(optional)::The first range(Criteria_range2) to evaluate.Additional ranges and their associated criteria. 



## MDETERM           



THe `MDETERM` function returns the matrix determinant of a given array.



**Syntax:**



_MDETERM(array)_



**where:**



* Array  : The array argument is an array of numeric values  A numeric array with an equal number of rows and columns.



## MINVERSE           



THe `MINVERSE` function calculate the inverse of a square matrix of a given array.



**Syntax:**



_MINVERSE(array)_



**where:**



* Array  :  the array argument is an array of values representing a square matrix A numeric array with an equal number of rows and columns.



**Remarks:**



* The argument(Array) can be given as a cell range, such as A1:C3; as an array constant, such as {1,2,3;4,5,6;7,8,9}; or as a name for either of these.



* The cells in array are empty or contain text, it returns a `#VALUE!` error message



* It returns a `#VALUE!` error message if array does not have an equal number of rows and columns.



## MUNIT           



THe `MUNIT` function calculates the unit matrix for the specified dimension.



**Syntax:**



_MUNIT(dimension)_



**where:**



* Dimension is an integer value that specifies the dimension of the unit matrix. It returns an array. The dimension has to be greater than zero.



**Remarks:**



* The argument (dimension) is a value that’s equal to or smaller than zero (0), it returns the `#VALUE!` error value.



## SERIESSUM            



THe `SERIESSUM` function returns the sum of a power series.



**Syntax:**



_SERIESSUM(x, n, m, coefficients)_



**where:**



* X :The input value to the power series.



* N :The first power to which you want to raise x.



* M:The step by which to increase n for each term in the series.



* Coefficients : An array of coefficients that multiplied by each successive power of x. The number of values in coefficients determines the number of terms in the power series.   



**Remarks:**



* The argument is non-numeric, it returns the `#VALUE!` error message.



## XLOOKUP



The `XLOOKUP` function allows you to search for a value in a range and return a corresponding value from another range, based on a specified search term.   



For example, you can look up the price of an item by its ID or find an employee's name by their employee ID.   

<<<<<<< HEAD

=======
 
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891

**Syntax:**



_XLOOKUP(lookup_value, lookup_array, return_array, [if_not_found], [match_mode], [search_mode])_   



**where:**



* lookup_value: The value to search for. If omitted, `XLOOKUP` returns blank cells in lookup_array.  



* lookup_array: The range or array to search for lookup_value.



* return_array: The range or array from which to return a corresponding value.



* [if_not_found] (Optional):  The value to return if no match is found. If omitted, `#N/A` is returned.   



* [match_mode] (Optional): Specifies the match type:   



  * 0 - Exact match (default).



  * -1 - Exact match or next smaller item.   



  * 1 - Exact match or next larger item.



  * 2 - Wildcard using `*`, `?`, and `~`.  



* [search_mode] (Optional): Specifies the search order:


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
  * 1 - Search from the first item (default).  



  * -1 - Search from the last item.



  * 2 -  Binary search in ascending order (requires sorted data).   



  * -2 - Binary search in descending order (requires sorted data). 



**Remarks:**



* `XLOOKUP` provides a more versatile alternative to older functions like `VLOOKUP`, `HLOOKUP`, and `LOOKUP`.   



* The function can search both vertically and horizontally across your data, allowing for more flexible data retrieval.   



* If no match is found and [if_not_found] is omitted, `XLOOKUP` will return a `#N/A` error.   



* The [match_mode] argument allows for control over exact, approximate, and wildcard matches.   



* The [search_mode]  controls the search order, optimizing performance on larger datasets.   



## XMATCH



The `XMATCH` function returns the relative position of an item in a range, similar to `MATCH`, but with additional capabilities for exact and approximate matches.   



**Syntax:**



_XMATCH(lookup_value, lookup_array, [match_mode], [search_mode])_    



**where:**



* lookup_value: The value to search for.  



* lookup_array: The array or range to search.   



* [match_mode] (Optional): Specifies the match type:   



  * 0 - Exact match (default).   



  * -1 - Exact match or next smallest item.   



  * 1 - Exact match or next largest item.   



  * 2 - Wildcard match using `*`, `?`, and `~`.



* [search_mode] (Optional): Specifies the search order:   



  * 1 - Search from first to last (default).   



  * -1 - Search from last to first.   



  * 2 - Binary search in ascending order (data must be sorted).  

<<<<<<< HEAD

=======
  
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891

  * -2 - Binary search in descending order (data must be sorted).


<<<<<<< HEAD

=======
    
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
**Remarks:**


* `XMATCH` is useful for retrieving the position of a value within a range, with more flexibility than `MATCH`.



* It supports both normal and reverse search directions, as well as wildcard matching.



## FLOOR.MATH



The `FLOOR.MATH` function rounds a number down to the nearest integer or a specified multiple of significance.



**Syntax:**



_FLOOR.MATH(number, significance, mode)_



**where:**



* number: The number to be rounded down.



* significance (Optional):  The multiple to which to round down. Defaults to 1.



* mode (Optional): Controls rounding of negative numbers. If omitted, negative numbers are rounded away from zero.



**Remarks:**



* By default, positive numbers are rounded down to the nearest integer (e.g., 6.3 becomes 6).



* Negative numbers are rounded away from zero unless the mode argument is used (e.g., -6.7 becomes -7, but with mode set to -1, -6.3 becomes -6).



* The significance argument defines the multiple to which the number is rounded down. For example, rounding 7.5 with a significance of 3 results in 6.



* If number divided by significance has a remainder, the result is rounded down.



## FLOOR.PRECISE


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
The `FLOOR.PRECISE` function rounds a number down to the nearest integer or a specified multiple of significance, regardless of the sign.



**Syntax:**



_FLOOR.PRECISE(number, [significance])_



**where:**



* number: The number to be rounded down.



* significance (Optional): The multiple to which the number should be rounded. Defaults to 1.


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
**Remarks:**



* The absolute value of significance is used, meaning `FLOOR.PRECISE` always rounds down, regardless of whether the number is positive or negative.



* If either the number or significance is zero, the function returns zero.



* The rounding behavior remains consistent regardless of the signs of the number or significance.



## ISO.CEILING



The `ISO.CEILING` function rounds a number up to the nearest integer or a specified multiple of significance. It always rounds up, regardless of whether the number is positive or negative. If the number or significance is zero, it returns zero.



**Syntax:**



_ISO.CEILING(number, [significance])_



**where:**



* number: The value to be rounded up.



* significance (Optional): The multiple to which number is to be rounded. If omitted, it defaults to 1.



**Remarks:**



* The absolute value of the multiple is used, meaning `ISO.CEILING` always rounds up, regardless of the sign of the number or significance.



* If either number or significance is zero, the function returns zero.



## CEILING.PRECISE


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
The `CEILING.PRECISE` function rounds a number up to the nearest integer or a specified multiple of significance. Like ISO.CEILING, it always rounds up regardless of whether the number is positive or negative. If the number or significance is zero, it returns zero.



**Syntax:**



_CEILING.PRECISE(number, [significance])_



**where:**



* number: The value to be rounded up.



* significance (Optional): The multiple to which the number is rounded. If omitted, it defaults to 1.



**Remarks:**


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
* `CEILING.PRECISE` uses the absolute value of the multiple, ensuring that the function rounds up regardless of the signs of the number or significance.



* If the number or significance is zero, the result is zero.



## HSTACK



The `HSTACK` function combines arrays horizontally (side by side) to form a larger array.



**Syntax:**



_HSTACK(array1, [array2], ...)_



**where:**



* array: The arrays to be appended horizontally.



**Remarks:**


<<<<<<< HEAD

=======
>>>>>>> 664175cf483e78a9bac155018dbdc92b8216b891
* `HSTACK` returns an array where each input array is appended in a column-wise fashion.



  * Rows: The number of rows in the result will be the maximum number of rows across all input arrays.



  * Columns: The number of columns will be the sum of the columns from all input arrays.



* If an array has fewer rows than the maximum row count, `#N/A` will fill the missing rows. You can use the `IFERROR` function to handle these errors.



* `HSTACK` returns a `#N/A` error in the additional rows. Use `HSTACK` inside the `IFERROR` function to replace `#N/A` with the value of your choice.



## VSTACK



The function `VSTACK` appends arrays vertically (one below the other) to return a larger array.



**Syntax:**



_VSTACK(array1, [array2], ...)_



**where:**



* array: The arrays to be appended vertically.



**Remarks:**



* `VSTACK` returns an array where each input array is appended in a row-wise fashion.



  * Rows: The result will have the combined number of rows from all input arrays.



  * Columns: The result will have the maximum column count of the input arrays.



* If an array has fewer columns than the maximum width of the selected array.



* `VSTACK` returns a `#N/A` error in the additional columns. Use `VSTACK` inside the `IFERROR` function to replace `#N/A` with the value of your choice.



## PHI



The `PHi` function returns the value of the probability density function for the standard normal distribution for a given number.



**Syntax:**



_PHIL(x)_



**where:**



* x: The number for which the  probability density is calculated.



**Remarks:**



* If x is not a valid numeric value, `PHI` will return the `#NUM!` error.



* If x of an invalid data type, `PHI` will return the `#VALUE!` error. 



## EUROCONVERT



The `EUROCONVERT` function converts a currency between the Euro and member currencies or among member currencies using Euro as the base currency, based on fixed EU (European Union) exchange rates.



**Syntax**



*EUROCONVERT(number, source, target, full_precision, triangulation_precision)*



**Where:**



* number: The currency value you want to convert, or a reference to a cell containing the value.



* source: A three-letter string, or reference to a cell containing the string, corresponding to the ISO (International Organization for Standardization) code for the source currency. 



* target: A three-letter string, or reference to a cell containing the string, corresponding to the ISO (International Organization for Standardization) code of the target currency.



* full_precision: A logical value that specifies how to display the result:



  * FALSE: Display with currency-specific rounding rules (default).



  * TRUE: Display with all significant digits.



* triangulation_precision: An integer (greater than or equal to 3) that specifies the number of significant digits for the intermediate Euro value when converting between two Euro member currencies.



**Remarks:**


* Any trailing zeros in the return value are truncated.



* If the source and target ISO codes are the same, the original value is returned.



* Invalid parameters return `#VALUE!`.



* The function `EUROCONVERT` does not apply a number format.



* The function `EUROCONVERT` cannot be used in array formulas.



* To use the function `EUROCONVERT` , the Euro Currency Tools Add-in need to be activated.