---
layout: post
title: Filtering-support-for-Calculation-Columns
description: filtering support for calculation columns
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Filtering support for Calculation Columns

Pivot Grid allows you to restrict the display of records using Filters. Filter enables you to extract a subset of records that meets certain Filter criteria. You can apply Filters to one or more columns.

## FilterDialog

The FilterDialog is designed to have a look and feel like Excel Filter. The Filter Dialog encompasses of the following functionalities.

1. Context Items for sorting the columns.
2. Smart sifting is done within the collection displayed using SearchTextBox.
3. The filtered column is cleared using the Clear Filter option available in the Dialog.



{ ![](Filtering-support-for-Calculation-Columns_images/Filtering-support-for-Calculation-Columns_img1.png) | markdownify }
{:.image }





{ ![](Filtering-support-for-Calculation-Columns_images/Filtering-support-for-Calculation-Columns_img2.png) | markdownify }
{:.image }


_Figure_ _29__: Filtered Image showing PivotSummaries are being updated._



{ ![](Filtering-support-for-Calculation-Columns_images/Filtering-support-for-Calculation-Columns_img3.png) | markdownify }
{:.image }




_Figure_ _30__: SmartSearch using searchTextBox._



Methods

The following methods perform Filtering on Pivot Columns.



<table>
<tr>
<td>
Method</td><td>
Prototype</td><td>
Description</td></tr>
<tr>
<td>
ClearFilters</td><td>
void ClearFilters()</td><td>
This method clears thecurrent filtered state andredraws the pivot display.</td></tr>
<tr>
<td>
</td><td>
void ClearFilters(bool refresh)</td><td>
This method clears the current filtered state and optionally redraws the Pivot display.</td></tr>
</table>
Properties 

The following properties perform Filtering on Pivot Columns.


<table>
<tr>
<td>
Property</td><td>
Description</td></tr>
<tr>
<td>
AllowFilter</td><td>
Specifies whether the PivotGridControl allows you to set filter on Calculation column.</td></tr>
<tr>
<td>
RowPivotOnly</td><td>
Specifies whether the PivotGridControl is used to pivot only rows or both rows and columns. The default value is set to allow pivoting both rows and columns.Set this property to ‘true’  to make the following changes:1. ShowGroupBar property is automatically set to ‘false’.2. The TopLeft covered cell that normally appears in a PivotGrid is replaced with individual header cells that have the same appearance as that of Calculationheader cells.</td></tr>
</table>



Events 

The following event performs Filtering on Pivot Columns. 

<table>
<tr>
<td>
Event</td><td>
Parameters</td><td>
Description</td></tr>
<tr>
<td>
FilterActionCompleted</td><td>
 object sender, FilterActionCompletedEventArgs e</td><td>
This event is triggered when the Filter action is completed.</td></tr>
</table>


