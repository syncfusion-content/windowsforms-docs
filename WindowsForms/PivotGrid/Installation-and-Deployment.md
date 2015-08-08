---
layout: post
title: Installation-and-Deployment
description: installation and deployment
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Installation and Deployment

This section covers information on the install location, samples, licensing, patch updates and updates of the current version of Essential Studio. It is comprised of the following subsections:



## Installation

For step-by-step installation procedures for installing Essential Studio, refer to the Installation topic under Installation and Deployment in the Common UG.



See Also

For licensing, patches and information on adding or removing selective components refer to the following topics in Common UG under Installation and Deployment.



* Licensing
* Patches
* Add/Remove Components

## Samples and Location


This section covers the location of the installed samples and describes the procedure to run the samples through the Sample Browser and online. It also provides the location of the source code.



### Samples Installation Location

The PivotGrid samples are installed in the following location locally on the disk:



#### Windows XP:

C:\Syncfusion\Essential Studio&lt;version number&gt;\Windows\PivotGrid.Windows\Samples



#### Windows 7/Vista:

C:\Users\&lt;username&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;version number&gt;\Windows\PivotGrid.Windows\Samples



#### Viewing Samples

To view the samples, follow the steps below:



1. Click Start > All Programs > Syncfusion > Essential Studio<version number> > Dashboard. 

   ![](Installation-and-Deployment_images/Installation-and-Deployment_img1.png)

2. In the Dashboard window, click Run Samples for Windows Forms under UI Edition. The UI Windows Forms Sample Browser window will be displayed.
   
   > Note: You can view the samples in any of the following three ways:
   > * Run Samples - Click to view the locally installed samples.
   > * Online Samples - Click to view online samples.
   > * Explore Samples - Explore UI Windows Forms on disk.

   ![](Installation-and-Deployment_images/Installation-and-Deployment_img3.png)
   
3. Click PivotGrid from the bottom-left pane. The PivotGrid samples are displayed.
   
   ![](Installation-and-Deployment_images/Installation-and-Deployment_img4.png)
    
   _Figure_ _4_: _PivotGrid samples_

4. Select any sample and browse through the features.

#### Source Code Location

The default location of the PivotGrid source code is:

[System Drive]:\Program Files\Syncfusion\Essential Studio\[Version Number]\UI\PivotGrid\Src



## Deployment Requirements

The following assemblies need to be referenced in your application to use Essential PivotGrid for WF.



* Syncfusion.Core
* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Linq.Base
* Syncfusion.Shared.Windows
* Syncfusion.PivotAnalysis.Base
* Syncfusion.PivotAnalysis.Windows

## Properties Table for PivotGrid

_Table_ _5_: _Properties Table_

<table>
<tr>
<th>
Property Name</th><th>
Type</th><th>
Description</th></tr>
<tr>
<td>
DeferLayoutUpdate</td><td>
bool</td><td>
Gets or sets a value to specify whether the layout should be updated immediately after updating the pivoting info, or if it should wait for a {{ '_Refresh()_' | markdownify }}
 call.</td></tr>
<tr>
<td>
FreezeHeaders</td><td>
bool</td><td>
Gets or sets a value to specify whether headers of a grid has to be frozen or not.</td></tr>
<tr>
<td>
DataSource</td><td>
object</td><td>
Gets or sets the source of data for a pivot table. This object should be an IEnumerable or IQueryable list.</td></tr>
<tr>
<td>
PivotCalculations</td><td>
Hashtable</td><td>
Gets the collection of Pivot Calculations.</td></tr>
<tr>
<td>
PivotColumns</td><td>
Hashtable</td><td>
Gets the collection of pivot columns.</td></tr>
<tr>
<td>
PivotEngine</td><td>
PivotEngine</td><td>
Gets or sets the pivot engine for a grid.</td></tr>
<tr>
<td>
PivotRows</td><td>
Hashtable</td><td>
Gets the collection of pivot rows.</td></tr>
<tr>
<td>
ShowCalculationsAsColumns</td><td>
bool</td><td>
Gets or sets a value to specify whether calculations should appear as rows or columns. The default behavior is for calculations to appear as columns.</td></tr>
<tr>
<td>
ShowGrandTotals</td><td>
bool</td><td>
Gets or sets a value to specify whether grand total calculations should be computed by the engine.</td></tr>
<tr>
<td>
PivotCellInfo</td><td>
PivotCellInfo</td><td>
Gets or sets the PivotCellInfo in order to check the cell type.</td></tr>
</table>