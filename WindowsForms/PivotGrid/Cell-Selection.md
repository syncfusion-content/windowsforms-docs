---
layout: post
title: Cell-Selection
description: cell selection
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Cell Selection

The PivotGrid for Windows Forms supports cell selection where you can select grid value cells similar to Microsoft Excel. On cell selection, an event called PivotGridSelectionChanged will be triggered and the PivotGridSelectionChangedEventArgs will return an IEnumerable collection of column, row and value of the corresponding selected cell.



Use Case Scenarios

Using the cell selection support, you can select the cells that can be copied to clipboard or notepad. You can perform custom operation on cell selection and also bind any control based on the selected cell values.



Adding Cell Selection 

The following code snippets show how to create a PivotGrid and specify cell selection.

<table>
<tr>
<td>
[C#]// Instantiating PivotGridControlPivotGridControl pivotGridControl1 = new PivotGridControl();// Adding PivotRowspivotGridControl1.PivotRows.Add(new PivotItem { FieldHeader = "Product" });pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Date" });// Adding PivotColumnspivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "Country" });pivotGridControl1.PivotColumns.Add(new PivotItem { FieldHeader = "State" });// Adding PivotCalculationspivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName="Amount" , Format="C"});pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Quantity", Format = "#,##0" });// Enabling cell selectionthis.pivotGridControl1.AllowSelection = false;</td></tr>
<tr>
<td>
 [VB]' Instantiating PivotGridControlDim pivotGridControl1 As PivotGridControl = New PivotGridControl()' Adding PivotRowspivotGridControl1.PivotRows.Add(New PivotItem With {.FieldHeader = "Product"})pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Date"})' Adding PivotColumnspivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "Country"})pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldHeader = "State"})' Adding PivotCalculationspivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName="Amount", .Format="C"})pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Quantity", .Format = "#,##0"})' Enabling cell selectionMe.pivotGridControl1.AllowSelection = False</td></tr>
</table>


{ ![C:/Users/dwarageshmb/Desktop/Vol 4 Docs/Images/PivotGrid Cell Selection.png](Cell-Selection_images/Cell-Selection_img1.png) | markdownify }
{:.image }




