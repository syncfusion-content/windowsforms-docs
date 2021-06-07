---
layout: post
title: Engineering in Windows Forms Calculation Engine control | Syncfusion
description: Learn about Engineering support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Engineering in Windows Forms Calculation Engine (Calculate)
 



## BESSELI



The `BESSELI` function returns the modified Bessel function `In(X)`, which is equivalent to the Bessel function evaluated for purely imaginary arguments.



**Syntax:**



_BESSELI(X, N)_



**where:**



* X is the value at which the function is to be evaluated.



* N is the positive integer, representing the order of the function. If the N value is represented as decimal, it is truncated as integer.



**Remarks:**



* Returns `#NUM!` , if the supplied value of n is lesser than 0.



* If any of the supplied arguments are non-numeric, it returns `#VALUE!` error.



## BESSELJ



The `BESSELJ` function returns the Bessel function `Jn(X)`.
 


**Syntax:**



_BESSELJ( X, N )_



**where:**



* X is the value at which the function is to be evaluated.



* N is the order of the Bessel function and it must be a positive number.



**Remarks:**



* Returns `#NUM!` if the supplied value of n is lesser than 0.



* If any of the supplied arguments are non-numeric, it returns `#VALUE!` error.



## BESSELK



The `BESSELK` function returns the modified Bessel function `Kn(X)`, which is equivalent to the Bessel function evaluated for purely imaginary arguments.



**Syntax:**



_BESSELK( X, N )_



**where:**



* X is the value at which the function is to be evaluated.



* N is the positive integer which denotes the order of the modified Bessel function.



**Remarks:**



* Returns `#NUM!`, if either N is Lesser than 0 or X is lesser than or equal to 0.



* Returns `#VALUE!`, if any of the supplied argument are non-numeric.



## BESSELY



The `BESSELY` function returns the Bessel function `Yn(X)`. 



**Syntax:**



_BESSELY( X, N )_



**where:**



* X is the value at which the function is to be evaluated.



* N is the positive integer which denotes the order of the Bessel function.



**Remarks:**



* Returns `#NUM!`, if either N is Lesser than 0 or X is lesser than or equal to 0.



* Returns `#VALUE!`, if any of the supplied argument are non-numeric.



## BIN2OCT



The `BIN2OCT` function converts a binary number into an octal number.



**Syntax:**



_BIN2OCT(num, places)_ 



**where:**



* num is the decimal integer you want to convert. 



* places is the number of characters to use.



## BIN2HEX



The `BIN2HEX` function converts a binary number into a hexadecimal.



**Syntax:**



_BIN2HEX(num places)_ 



**where:**



* num is the decimal integer you want to convert. 



* places is the number of characters to use.



**Remarks:**



* `#NUM!` occurs when number is not a valid binary number, when places is negative.



* `#VALUE!` occurs when places is non-numeric.



## BIN2DEC



The `BIN2DEC` function converts a binary number into a decimal number.



**Syntax:**



_BIN2DEC(num)_ 



**where:**


num is the binary number that you want to convert.



**Remarks:**

 `#NUM!` occurs when number is not a valid binary number or when number contains more than 10 characters.



## BITAND


The `BITAND` function returns the bitwise `AND` of two numbers.


**Syntax:**


_BITAND(num1,num2)_



**Where:**


num1 and num2 should be in decimal format.



**Remarks:**



* `#NUM!` - occurs if num1 or num2 is less than zero, if num1 or num2 is a non-integer or is greater than (2^48)-1.



* `#VALUE!` - occurs if num1 or num2 is a non-numeric value.



## BITLSHIFT



The `BITLSHIFT` function returns a number shifted left by specified number of bits.



**Syntax:**



_BITLSHIFT(num1,num2)_



**Where:**



* num1 must be an integer greater than or equal to 0.



* Num2 must be an integer.



**Remarks:**


	
* `#NUM!` - occurs if num1 or num2 is less than zero, if num1 or num2 is a non-integer or is greater than (2^48)-1.



* `#VALUE!` - occurs if num1 or num2 is a non-numeric value.



## BITOR



The `BITOR` function returns a bitwise ‘OR’ of two numbers.



**Syntax:**



_BITOR(num1, num2)_



**Where:**



num1 and num2 should be in decimal format.



**Remarks:**



* `#NUM!` - occurs if num1 or num2 is less than zero, if num1 or num2 is a non-integer or is greater than (2^48)-1.


* `#VALUE!` - occurs if num1 or num2 is a non-numeric value.


## BITRSHIFT


The `BITRSHIFT` function returns a number shifted right by the specified number of bits.



**Syntax:**



_BITRSHIFT(num1,num2)_



**Where:**


* num1 must be an integer greater than or equal to 0.

* Num2 must be an integer.

**Remarks:**

* `#NUM!` - occurs if num1 or num2 is less than zero, if num1 or num2 is a non-integer or is greater than (2^48)-1.

* `#VALUE!` - occurs if num1 or num2 is a non-numeric value.

## BITXOR

The `BITXOR` function returns bitwise `XOR` of two numbers.

**Syntax:**

_BITXOR(num1, num2)_


**Where:**

num1 and num2 should be in decimal format.

**Remarks:**

* `#NUM!` - occurs if num1 or num2 is less than zero, if num1 or num2 is a non-integer or is greater than (2^48)-1.

* `#VALUE!` - occurs if num1 or num2 is a non-numeric value.

## DEC2BIN

The `DEC2BIN` function converts a decimal number into a binary number.

**Syntax:**

_DEC2BIN(num,places)_ 


**where:**

* num is the decimal integer you want to convert. 

* places is the number of characters to use.

**Remarks:**



* `#NUM!` occurs when number < -512 or if number >511 and when places is zero or negative.



* `#VALUE!` occurs when number  or places is non-numeric and when `DEC2BIN` requires more than the number of characters specified in places.


## DEC2OCT


The `DEC2OCT` function converts a decimal number into an octal number.

**Syntax:**

_DEC2OCT(num, places)_ 

**where:**


* num is the decimal integer you want to convert. 



* places is the number of characters to use.



**Remarks:**



* `#NUM!` occurs when number < -512 or if number >511 and when places is zero or negative.



* `#VALUE!` occurs when the number or places is non-numeric and when DEC2OCT requires more than the number of characters specified in places.


## DEC2HEX

The `DEC2HEX` function converts a a decimal number to hexadecimal

**Syntax:**

_DEC2HEX(number, [places])_

**Where:**

* number denotes the decimal integer you want to convert. If number is negative, places is ignored and DEC2HEX returns a 10-character (40-bit) hexadecimal number in which the most significant bit is the sign bit. The remaining 39 bits are magnitude bits. Negative numbers are represented using two's-complement notation.
* places denotes the number of characters to use. If places is omitted, DEC2HEX uses the minimum number of characters necessary. Places is useful for padding the return value with leading 0s (zeros).

**Remarks:**

* If Number is < -549,755,813,888 or if Number is > 549,755,813,887, DEC2HEX returns the #NUM! error value.
* If Number is non-numeric, DEC2HEX returns the #VALUE! error value.
* If the result of DEC2HEX requires more than the number of specified Places characters, it returns the #NUM! error value.
* If Places is not an integer, the value of Places is truncated.
* If Places is non-numeric, DEC2HEX returns the #VALUE! error value.
* If Places is negative, DEC2HEX returns the #NUM! error value.

## OCT2BIN

The `OCT2BIN` function Converts octal number to binary.

**Syntax:**

_OCT2BIN(number, [places])_

**Where:**

* number denotes the octal number you want to convert. Number may not contain more than 10 characters. The most significant bit of number is the sign bit. The remaining 29 bits are magnitude bits. Negative numbers are represented using two's-complement notation.
* places denotes. the number of characters to use. If places is omitted, OCT2BIN uses the minimum number of characters necessary. Places is useful for padding the return value with leading 0s (zeros).

**Remarks:**

If number is not a valid octal number, OCT2BIN returns the #NUM! error value.

## OCT2DEC

The `OCT2DEC` function Converts octal number to a decimal.

**Syntax:**

_OCT2DEC(number)_

**Where:** 

number denotes the octal number you want to convert. Number may not contain more than 10 octal characters (30 bits). The most significant bit of number is the sign bit. The remaining 29 bits are magnitude bits. Negative numbers are represented using two's-complement notation.

**Remark:**

If number is not a valid octal number, OCT2DEC returns the #NUM! error value.

## OCT2HEX

The `OCT2HEX` function Converts octal number to hexadecimal.

**Syntax:**

_OCT2HEX(number, [places])_

**Where:**

* number denotes the octal number you want to convert. Number may not contain more than 10 octal characters (30 bits). The most significant bit of number is the sign bit. The remaining 29 bits are magnitude bits. Negative numbers are represented using two's-complement notation.

* places denotes the number of characters to use. If places is omitted, OCT2HEX uses the minimum number of characters necessary. Places is useful for padding the return value with leading 0s (zeros).

**Remark:**

If number is not a valid octal number, OCT2HEX returns the #NUM! error value.

## HEX2BIN



The `HEX2BIN` function converts a hexadecimal number into a binary number. 



**Syntax:**



_HEX2BIN(num, places)_ 


**where:**

* num is the decimal integer you want to convert. 

* places is the number of characters to use.


**Remarks:**

* `#NUM!` occurs when number is not a valid binary number and when places is negative.

* `#VALUE!` occurs when places is non-numeric.

## HEX2DEC

The `HEX2DEC` function Converts a hexadecimal number to a decimal

**Syntax:**

_HEX2DEC(number)_

**Where:**

Number denotes the hexadecimal number you want to convert. Number cannot contain more than 10 characters (40 bits). The most significant bit of number is the sign bit. The remaining 39 bits are magnitude bits. Negative numbers are represented using two's-complement notation.

**Remark**

If number is not a valid hexadecimal number, HEX2DEC returns the #NUM! error value.

## HEX2OCT


The `HEX2OCT` function converts a hexadecimal number into an octal number. 

**Syntax:**

_HEX2OCT(num, places)_



**where:**

* num is the hexadecimal integer you want to convert. 

* places is the number of characters to use.

**Remarks:**

* `#NUM!` occurs when number is not a valid hexadecimal number and when places is negative.

* `#VALUE!` occurs when places is non-numeric.

## IMABS

The `IMABS` function returns the absolute value (the modulus) of a complex number.

**Syntax:**

_IMABS(inumber)_

**Where:**

inumber denotes a complex number for which you want the absolute value.

## IMAGINARY


The `IMAGINARY` function returns the imaginary coefficient of a complex number.

**Syntax:**

_IMAGINARY(inumber)_

**Where:**

inumber denotes a complex number for which you want the imaginary coefficient.

**Remark:**

Use COMPLEX to convert real and imaginary coefficients into a complex number.

## IMREAL

The function `IMREAL` function returns the real coefficient of a complex number.

**Syntax:**

_IMREAL(inumber)_

**Where:**

inumber denotes a complex number for which you want the real coefficient.

**Remark:**

Use COMPLEX to convert real and imaginary coefficients into a complex number.


## COMPLEX

The function `COMPLEX` converts user-supplied real and imaginary coefficients into a complex number

**Syntax:**

COMPLEX(real_num, i_num, [suffix])

**Where:**

* real_num denotes the real coefficient of the complex number.

* i_num denotes the imaginary coefficient of the complex number.

* suffix denotes the suffix for the imaginary component of the complex number. If omitted, suffix is assumed to be "i".


## IMSUM


The function `IMSUM` calculates the sum of two complex numbers

**Syntax:**

_IMSUM(inumber1, [inumber2], ...)_

**Where:**

Inumber1, [inumber2], ...    Inumber1 is  subsequent numbers are not. 1 to 255 complex numbers to add.

## IMSUB

The function `IMSUB` subtracts two complex numbers

**Syntax:**

_IMSUB(inumber1, inumber2)_

**Where:**

* Inumber1 denotes the complex number from which to subtract inumber2.

* Inumber2 denotes the complex number to subtract from inumber1.


## IMPRODUCT

The function `IMPRODUCT` returns the product of up to 255 supplied complex numbers.

**Syntax:**

IMPRODUCT(inumber1, [inumber2], ...)

**Where:**

inumber1, [inumber2], …     Inumber1 is required, subsequent inumber are not. 1 to 255 complex numbers to multiply.


## IMDIV

The function `IMDIV` returns the quotient of two supplied complex numbers.

**Syntax:**

IMDIV(inumber1, inumber2)

**Where:**

* inumber1 denotes the complex numerator or dividend.

* inumber2 denotes the complex denominator or divisor.


## IMCONJUGATE

The function `IMCONJUGATE` returns the complex conjugate of a complex number.

**Syntax:**

_IMCONJUGATE(inumber)_

**Where:**

inumber denotes a complex number for which you want the conjugate.


## IMSQRT

The function `IMSQRT` returns the square root of a complex number.

**Syntax:**

_IMSQRT(inumber)_

**Where:**

inumber denotes a complex number for which you want the square root.


## IMARGUMENT

The function `IMARGUMENT` returns the argument Θ (an angle expressed in radians) of a complex number.

**Syntax:**

_IMARGUMENT(inumber)_

**Where:**

inumber denotes a complex number for which you want the argument  Theta ..

## IMSIN

The function `IMSIN` returns the sine of a complex number.

**Syntax:**
_IMSIN(inumber)_

**Where:**

inumber denotes a complex number for which you want the sine.


## IMCSC

The function `IMCSC` returns the cosecant of a complex number

**Syntax:**

_IMCSC(inumber)_

**Where:**

inumber denotes a complex number for which you want the cosecant.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, it returns the `#NUM!` error value.

* If inumber is a logical value, IMCSC returns the #VALUE! error value.

## IMCOS

The function `IMCOS` returns the cosine of a complex number

**Syntax:**

_IMCOS(inumber)_


**Where:**

inumber denotes a complex number for which you want the cosine.


## IMSEC

The function `IMSEC` returns the secant of a complex number.

**Syntax:**
_IMSEC(inumber)_

**Where:**

inumber denotes ACOT complex number for which you want the secant.

**Remark:**

Use COMPLEX to convert real and imaginary coefficients into a complex number.

## IMTAN

The function `IMTAN` returns the tangent of a complex number.

**Syntax:**
_IMTAN(inumber)_

**Where:**

inumber denotes a complex number for which you want the tangent.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, IMTAN returns the #NUM! error value.

* If inumber is a logical value, IMTAN returns the #VALUE! error value.

## IMCOT

The function `IMCOT` returns the cotangent of a complex number.

**Syntax:**
_
IMCOT(inumber)_

**Where:**

inumber denotes a complex number for which you want the cotangent.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, IMCOT returns the #NUM! error value.

* If inumber is a logical value, IMCOT returns the #VALUE! error value.

## IMSINH

The function `IMSINH` returns the hyperbolic sine of a complex number.

**Syntax:**

_IMSINH(inumber)_

**Where:**

inumber denotes a complex number for which you want the hyperbolic sine.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, IMSINH returns the #NUM! error value.

* If inumber is a logical value, IMSINH returns the #VALUE! error value.

## IMCSCH

The function `IMCSCH` returns the hyperbolic cosecant of a complex number.

**Syntax:**
_IMCSCH(inumber)_

**Where:**
inumber denotes a complex number for which you want the hyperbolic cosecant

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, IMCSCH returns the #NUM! error value.

* If inumber is a logical value, IMCSCH returns the #VALUE! error value.

## IMCOSH

The function `IMCOSH `returns the hyperbolic cosine of a complex number.

**Syntax:**
_IMCOSH(inumber)_

**Where:**

inumber denotes complex number for which you want the hyperbolic cosine.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, IMCOSH returns the #NUM! error value.

* If inumber is a logical value, IMCOSH returns the #VALUE! error value.


## IMSECH

The function `IMSECH` returns the hyperbolic secant of a complex number.

**Syntax:**

_IMSECH(inumber)_

**Where:**

inumber denotes a complex number for which you want the hyperbolic secant.

**Remarks:**

* Use COMPLEX to convert real and imaginary coefficients into a complex number.

* If inumber is a value that is not in the complex number, it returns the `#NUM!` error value.

* If inumber is a logical value, IMSECH returns the #VALUE! error value.

## IMLOG10

The function `IMLOG10` returns the base-10 logarithm of a complex number.

**Syntax:**

_IMLOG10(inumber)_

**Where:**
inumber denotes a complex number for which you want the common logarithm.


## IMLOG2

The function `IMLOG2` returns the base-2 logarithm of a complex number.

**Syntax:**

_IMLOG2(inumber)_

**Where:**

inumber denotes a complex number for which you want the base-2 logarithm.

## IMLN

The function `IMLN` returns the natural logarithm of a complex number.

**Syntax:**

_IMLN(inumber)_

**Where:**

inumber denotes a complex number for which you want the natural logarithm.

## IMEXP


The function `IMEXP` returns the exponential of a complex number.

**Syntax:**

_IMEXP(inumber)_

**Where:**

inumber denotes a complex number for which you want the exponential.


## IMPOWER

The function `IMPOWER` calculates a complex number raised to a supplied power

**Syntax:**

IMPOWER(inumber, number)

**Where:**

* inumber denotes a complex number you want to raise to a power.

* number denotes a the power to which you want to raise the complex number.

## GESTEP

The function `GESTEP` tests whether a number is greater than a supplied threshold value.

**Syntax:**

_GESTEP(number, [step])_

**Where:**

* number is the value to test against step.

* step denotes the threshold value. If you omit a value for step, GESTEP uses zero.

**Remark:**

If any argument is non-numeric, GESTEP returns the #VALUE! error value.


## DELTA

The function `DELTA` tests whether two supplied numbers are equal

**Syntax:**

_DELTA(number1, [number2])_

**Where:**

* number1 is the first number.

* number2 is the second number. If omitted, number2 is assumed to be zero.

**Remarks:**

* If number1 is non-numeric, DELTA returns the #VALUE! error value

* If number2 is non-numeric, DELTA returns the #VALUE! error value.

## ERF

The function `ERF` returns the error function integrated between two supplied limits

**Syntax:**

_ERF(lower_limit,[upper_limit])_

**Where:**

* lower_limit denotes the lower bound for integrating ERF.

* upper_limit denotes the upper bound for integrating ERF. If omitted, ERF integrates between zero and lower_limit.

**Remarks:**

* If lower_limit is non-numeric, ERF returns the #VALUE! error value.

* If upper_limit is non-numeric, ERF returns the #VALUE! error value.


## ERF.PRECISE

The function `ERF.PRECISE` returns the error function integrated between 0 and a supplied limit

**Syntax:**

_ERF.PRECISE(x)_

**Where:**

x denotes the lower bound for integrating ERF.PRECISE.

**Remark:**

If lower_limit is non-numeric, ERF.PRECISE returns the #VALUE! error value.


## ERFC.PRECISE

The function `ERFC.PRECISE` returns the complementary error function integrated between a supplied lower limit and infinity.

**Syntax:**

_ERFC.PRECISE(x)_

**Where:**

x denotes the lower bound for integrating ERFC.PRECISE.

**Remarks:**

If x is non-numeric, ERFC.PRECISE returns the #VALUE! error value.

## CONVERT

The function `CONVERT` converts a number from one measurement system to another

**Syntax:**

_CONVERT(number,from_unit,to_unit)_

**Where:**

* number is the value in from_units to convert.

* from_unit is the units for number.

* to_unit is the units for the result. CONVERT accepts the following text values (in quotation marks) for from_unit and to_unit.

## ERFC

The function `ERFC` returns the complementary Error Function integrated between two supplied limits (x and infinity).

**Syntax:**

_ERFC(x)_

**Where:**

* X : The lower limit for ERFC integration.

**Remarks:**

If x is non-numeric value, it returns the `#VALUE!` error message.
