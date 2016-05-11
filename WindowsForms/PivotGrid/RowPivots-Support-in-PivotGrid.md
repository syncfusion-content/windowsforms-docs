---
layout: post
title: RowPivots-Support-in-PivotGrid | Windows Forms | Syncfusion
description: rowpivots support in pivotgrid.
platform: windowsforms
control: PivotGrid
documentation: ug
---

# RowPivots Support in PivotGrid.

PivotGrid is customized and displayed in a 3D structural format. It customizes the PivotRows, PivotColumns and PivotCalculation and displays the customized calculation of these data. This support is reformed by calculating data between PivotRows and PivotCalculations excluding the PivotColumns. 



### Use case scenario

This Support is useful under the following cases etc.


<table>
<tr>
<th>
Use-Case Description</th><th>
Details</th></tr>
<tr>
<td>
For Quick access of small amount of data.</td><td>
Using this support small amount of data is evaluated easily.</td></tr>
<tr>
<td>
For evaluating data in the form of rows and columns.</td><td>
Using this support the PivotItems is evaluated in the form of Grid.<br>({{ '_Rows and columns calculation_' | markdownify }})<br></td></tr>
<tr>
<td>
Filtering and sorting support for the PivotCalculation.</td><td>
The Pivot calculation items acts like PivotColumns and provides sorting and filtering support specifically to individual columns.<br></td></tr>
<tr>
<td>
Context menu support.</td><td>
Providing context menu support helps showcasing user friendly customization.<br></td></tr>
<tr>
<td>
For user friendly Pivot value chooser.</td><td>
This support provides the available PivotCalculation items in a context menu and dynamically populates PivotCalculation items to the Grid.</td></tr>
</table>


### Functionality Support in RowPivotsOnly mode:

The following functionalities are implemented in the RowPivotsOnly mode. 

1. Sorting.
2. Filtering of PivotCalculation.
3. PivotValueChooser.

## Sorting Support


The PivotCalculation item is supported with Sorting. Sorting of the PivotCalculation items is enabled or disabled by AllowSort property.



![](RowPivots-Support-in-PivotGrid_images/RowPivots-Support-in-PivotGrid_img1.png)



## Filtering Support

The PivotCalculation items are supported with Filtering. Whereas the PivotRows is not supported with Filters. This operation is enabled or disabled using AllowFilter Property.

![](RowPivots-Support-in-PivotGrid_images/RowPivots-Support-in-PivotGrid_img2.png)



## Pivot Value Chooser

Pivot Value chooser is a customized dialog that showcases the available Pivot Calculation items in a context menu. From the available PivotCalculation items you can choose the required pivot items.



![](RowPivots-Support-in-PivotGrid_images/RowPivots-Support-in-PivotGrid_img3.png)