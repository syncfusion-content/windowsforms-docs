---
layout: post
title: PivotComputationInfo
description: pivotcomputationinfo
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# PivotComputationInfo

This class holds the information needed for calculations that appear in PivotGrid. For each calculation, there is an associated PivotComputationInfo object that is added to the PivotCalculations collection. The properties available in the PivotComputationInfo are listed in the following table.



_Table_ _7__: Properties Table for PivotComputationInfo_

<table>
<tr>
<td>
Property Name</td><td>
Description</td><td>
Type</td><td>
Value it Accepts</td><td>
Reference link</td></tr>
<tr>
<td>
CalculationName</td><td>
Gets or sets what is displayed in the pivot table if more than one calculation is included in the PivotGrid.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
Description</td><td>
Gets or sets a description of the calculation.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
FieldName</td><td>
Gets or sets the name of the property to be used in this calculation.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
Format</td><td>
Gets of sets the format string to be used to format the calculation results in the PivotGrid.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
Summary</td><td>
Gets or sets the SummaryBase object that is used to define this calculation. This value is automatically set when you specify any non-custom value of SummaryType; if you specify SummaryType.Custom, then you are required to set Summary to be an instance of your custom SummaryBase-derived object.</td><td>
SummaryBase</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
SummaryType</td><td>
Gets or sets the SummaryType enumeration for this calculation. Setting it to any value of than Custom will also properly set Summary.</td><td>
SummaryType</td><td>
DoubleTotalSumDoubleAverageDoubleMaximumDoubleMinimumDoubleStandardDeviationDoubleVarianceCountDecimalTotalSumIntTotalSumCustom</td><td>
-</td></tr>
</table>
## Defining PivotComputationInfo and Code-Behind

The__PivotComputationInfo can be defined in C# or VB code.

<table>
<tr>
<td>
[C#]// Defining PivotComputationInfoPivotComputationInfo m_PivotComputationInfo = new PivotComputationInfo() { CalculationName="Amount", FieldName="Amount", SummaryType= SummaryType.Count };// Adding PivotComputationInfo to PivotCalculationsthis.pivotGrid1.PivotCalculations.Add(m_PivotComputationInfo);</td></tr>
<tr>
<td>
 [VB]' Defining PivotComputationInfoDim m_PivotComputationInfo As PivotComputationInfo = New PivotComputationInfo() With {.CalculationName="Amount", .FieldName="Amount", .SummaryType= SummaryType.Count}' Adding PivotComputationInfo to PivotCalculationsMe.pivotGrid1.PivotCalculations.Add(m_PivotComputationInfo)</td></tr>
</table>
## Format String in PivotComputationInfo

The PivotComputationInfo property replaces each format specification in a specified string with the textual equivalent of a corresponding value.

<table>
<tr>
<td>
[C#]// Decimal FormatPivotComputationInfo m_PivotComputationInfo = new PivotComputationInfo() { CalculationName="Total", FieldName="Quantity", SummaryType= SummaryType.Count, Format="0.00"};</td></tr>
<tr>
<td>
 [VB]' Decimal FormatDim m_PivotComputationInfo As PivotComputationInfo = New PivotComputationInfo() With {.CalculationName="Total", .FieldName="Quantity", .SummaryType= SummaryType.Count, .Format="0.00"}</td></tr>
</table>


The following table lists the different types of format settings.



_Table_ _8__: Types of format settings_

<table>
<tr>
<td>
Format</td><td>
Description</td></tr>
<tr>
<td>
0.00</td><td>
Decimal</td></tr>
<tr>
<td>
C</td><td>
Currency</td></tr>
<tr>
<td>
#,##0</td><td>
Thousand Separator</td></tr>
<tr>
<td>
# ' degrees'</td><td>
Literal String Specifier</td></tr>
<tr>
<td>
D</td><td>
Long Date</td></tr>
</table>


