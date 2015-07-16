---
layout: post
title: Pivot-Value-Chooser
description: pivot value chooser
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Pivot Value Chooser

The Pivot Value Chooser is used to list all the pivot fields in the data source when the pivot grid is in RowPivotsOnly mode. This window enables you to select a pivot calculation and add it to the pivot grid, drag and drop the grid fields, and rearrange the calculation column in the PivotGrid control at run time.



Use Case Scenario

This feature enables you to show or hide particular pivot calculations in the Pivot Grid at run time.



{ ![](Pivot-Value-Chooser_images/Pivot-Value-Chooser_img1.png) | markdownify }
{:.image }


Properties

<table>
<tr>
<td>
Property</td><td>
Description</td><td>
Type</td><td>
Data Type</td></tr>
<tr>
<td>
ShowPivotValueChooser</td><td>
Hides or shows a computation value column chooser dialog that allows you to hide, show, or reorder the pivot calculations in the Pivot Grid.</td><td>
Dependency Property</td><td>
Boolean</td></tr>
<tr>
<td>
PossiblePivotCalculations</td><td>
Gets or sets a collection of possible pivot calculations that appears in the PivotGrid control and lists them in the PivotValueChooser.</td><td>
Dependency Property</td><td>
ObservableCollectionOf type PivotComputationInfo</td></tr>
</table>


## Showing the Pivot Value Chooser in an Application

You can show or hide the Pivot Value Chooser by setting the ShowPivotValueChooser property to ‘true’ or ‘false’, respectively. The RowPivotsOnly mode is enabled in the Pivot Grid for this feature.

> { ![C:/Users/labuser/Desktop/note.jpg](Pivot-Value-Chooser_images/Pivot-Value-Chooser_img2.jpeg) | markdownify }
{:.image }
_Note:__PossiblePivotCalculations__is a collection where you can define which fields should appear in the Pivot Value Chooser window. If it is not defined, then this collection is automatically generated from the PivotGrid control’s__ItemSource._

Showing the Pivot Value Chooser with Possible Pivot Calculations

[C#]

ObservableCollection<PivotComputationInfo> possibleComputations = newObservableCollection<PivotComputationInfo>()

            {

                //Add computation collection.

            };

this.pivotGridControl1.PossiblePivotCalculations = possibleComputations;

this.pivotGridControl1.RowPivotsOnly = true;

this.pivotGridControl1.ShowPivotValueChooser = true;



Showing Pivot Value Chooser without Possible Pivot Calculations

<table>
<tr>
<td>
[C#]this.pivotGridControl1.RowPivotsOnly = true;this.pivotGridControl1.ShowPivotValueChooser = true;</td></tr>
<tr>
<td>
 [VB]Me.pivotGridControl1.RowPivotsOnly = TrueMe.pivotGridControl1.ShowPivotValueChooser = True</td></tr>
</table>


