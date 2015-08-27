---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---


# Newly Added API’S

_Table_ _380__: Property Table_

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