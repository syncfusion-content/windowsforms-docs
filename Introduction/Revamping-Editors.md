---
layout: post
title: Revamping Editors | Windows Forms | Syncfusion | WindowsForms | Syncfusion
description: Revamping Editors 
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Overview

DoubleTextBox, IntegerTextBox, PercentTextBox, and CurrencyTextBox has been revamped, details of the revamping and the Changes in the behavior and properties are described here.

## Behavioral Changes

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Behavior</th></tr>
<tr>
<td>
*MinMaxValidation.OnKeyPress</td><td>
Each and every key press is validated to make the value meet the constraints.</td><td>
This is most useful when the MinValue is less than 10.Refer Notes column</td></tr>
<tr>
<td>
*MinMaxValidation.OnLostFocus</td><td>
Validation happens only when the control loses its focus.</td><td>
This allows the user to enter any value and it is validated when the focus is lost.You can make use of OnValidationFailed property to gain control when validation fails.Refer Notes column</td></tr>
<tr>
<td>
MinValue</td><td>
Cannot be greater than MaxValue.</td><td>
Exception will be thrown.MaxValue has to be reset the accordingly.</td></tr>
<tr>
<td>
MaxValue</td><td>
Cannot be lesser than MinValue</td><td>
Exception will be thrown.MinValue  has to be reset the accordingly.</td></tr>
<tr>
<td>
NullString</td><td>
Cannot be a Numeric Value that could break the MinValue or MaxValue constraints.</td><td>
Ex: MinValue 10, MaxValue 100 and NullString as “111” will break the Min Max Values.</td></tr>
</table>

N> * With MinMaxValidation.OnKeyPress and MinValue as 10 set,
N> * Each and every key press will be validated to meet the constraints, so this will not allow you to enter values less than 10, even if you try to enter 11 you cannot input value as every keypress is validated. This behavior is useful when MinValue is less than 10. 
N> * With MinMaxValidation.OnLostFocus, user inputs will be validated only when the control loses its focus. Hence user can input any value.  OnValidationFailed will give you access to what action [SetNullString, SetMinorMax, KeepFocus] has to be done when Validation fails for the input.
N> * With OnValidationFailed.SetNullString set and AllowNull is False,the control will keep its focus. 

## Newly Added API’S

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Behavior</th></tr>
<tr>
<td>
IsNull (Read Only)</td><td>
Returns a Boolean specifying the NullState of the control</td><td>
True when Control.Text equals String.Empty or NullString.</td></tr>
<tr>
<td>
AllowNull</td><td>
Specifies whether the field Can be nulled.</td><td>
Related to NullString.NullString will be set when the field is null.</td></tr>
<tr>
<td>
NullString</td><td>
Specifies the string that will be set when the field is Null.</td><td>
AllowNull must be true to set this string . If it is false, zero or MinValue,  whichever is higher of these will be set. It must be left blank if the field has to be empty</td></tr>
<tr>
<td>
*OnValidationFailed</td><td>
Specifies the action to be performed while validation fails.</td><td>
SetNullString,SeMinOrMax,KeepFocus.refer Notes column</td></tr>
</table>

