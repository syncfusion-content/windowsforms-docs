---
layout: post
title: Properties Deprecated
description: Properties Deprecated
platform: windowsforms
control: Editors Package
documentation: ug
---


# Properties Deprecated

Table 379 : Property Table

<table>
<tr>
<th>
Property</th><th>
Alternatives</th><th>
Comments</th></tr>
<tr>
<td>
NullState</td><td>
IsNull</td><td>
Deprecated as it should have Getter alone.</td></tr>
<tr>
<td>
UseNullString</td><td>
AllowNull</td><td>
This behavior is incorporated with AllowNull; previously both AllowNull and UseNullString existed. Removed for better clarity.</td></tr>
<tr>
<td>
IsNullValue</td><td>
IsNull</td><td>
IsNullValue means the same as NullState and IsNull, and it has been deprecated for better clarity.</td></tr>
<tr>
<td>
MaxLength</td><td>
MaxValue,NumberDecimalDigits</td><td>
Max length is removed as there is a conflict. Hence use MaxValue and NumberDecimalDigits as alternatives.</td></tr>
<tr>
<td>
EnforceMinMaxDuringValidating</td><td>
OnValidationFailed.KeepFocus</td><td>
No need for a separate propertyas MinMaxValidation already existsThe same behavior can be achieved with the alternative.</td></tr>
</table>