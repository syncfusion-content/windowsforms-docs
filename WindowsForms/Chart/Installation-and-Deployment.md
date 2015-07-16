---
layout: post
title: Installation-and-Deployment
description: installation and deployment
platform: WindowsForms
control: Chart
documentation: ug
---

## Installation and Deployment

This section covers information on the install location, samples, licensing, patches update and updation of the recent version of Essential Studio. It comprises the following sub-sections:

### Installation

For step-by-step installation procedure for the installation of Essential Studio, refer to the Installation topic under Installation and Deployment in the Common UG.

See Also

For licensing, patches and information on adding or removing selective components refer the following topics in Common UG under Installation and Deployment.

* Licensing
* Patches
* Add / Remove Components
### Sample and Location


This section covers the location of the installed samples and describes the procedure to run the samples through the sample browser. It also lists the location of source code.

Sample Installation Location

The Chart Windows Forms samples are installed in the following location:

...\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0

Viewing Samples

To view the samples, follow the steps below

1. Click Start-->All Programs-->Syncfusion-->Essential Studio &lt;version number&gt; -->Dashboard.



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img1.png) | markdownify }
{:.image }


_Figure_ _2__: Syncfusion Essential Studio Dashboard_



2. In the Dashboard window, click Run Samples for Windows Forms under UI Edition. The UI Windows Forms Sample Browser window is displayed.



> { ![](Installation-and-Deployment_images/Installation-and-Deployment_img2.jpeg) | markdownify }
{:.image }
_Note: You can view the samples in any of the following three ways:_

* _Run Samples - Click to view the locally installed samples._
* _Online Samples - Click to view online samples._
* _Explore Samples - Explore BI Web samples on disk._



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img3.png) | markdownify }
{:.image }


_Figure_ _3__: User Interface Edition Windows Forms Sample Browser_



3. Select Chart frombottom-left pane. Chart samples will be displayed.



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img4.png) | markdownify }
{:.image }


_Figure_ _4__: Chart Samples for Windows_



4. Select any sample and browse through the features.

Source Code Location

The default location of the Chart Windows source code is 

[Install Drive]:\Program Files\Syncfusion\Essential Studio\[Version Number]\Windows\Chart.Windows\Src

### Deployment Requirements

Toolbox Entries

* ChartControl
* Sparkline 

Dll List

While deploying an application that references SyncfusionEssentialChart assembly, the following dependencies must be included in the distribution.

* Syncfusion.Chart.Windows
* Syncfusion.Chart.Base
* Syncfusion.Shared.Base
* Syncfusion.Core
