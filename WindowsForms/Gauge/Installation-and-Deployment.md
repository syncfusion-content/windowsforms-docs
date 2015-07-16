---
layout: post
title: Installation-and-Deployment
description: installation and deployment
platform: WindowsForms
control: Gauge
documentation: ug
---

## Installation and Deployment

This section covers information on installation, the process of viewing samples through the sample browser, and the locations of samples and source code. 

### Installation

For step-by-step installation procedure for the installation of Essential Studio, refer to the Installation topic under Installation and Deployment in the Common UG.

See Also

For licensing, patches, and information on adding or removing selective components, refer to the following topics in Common UG under Installation and Deployment:

* Licensing
* Patches 
* Add/Remove Components
### Samples and Location


This section covers the location of the installed samples and describes the procedure to run the samples through the Sample Browser and online. It also provides the location of the source code.

#### Samples Installation Location

The Gauge samples are installed in the following location locally on the disk:

Windows XP:

C:\Syncfusion\Essential Studio<version number>\Windows\Gauge.Windows\Samples

Windows 7/Vista:

C:\Users\&lt;user name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;version number&gt;\Windows\Gauge.Windows\Samples 

#### Viewing Samples

Use the following steps to view the samples:

1.  Click Start > All Programs > Syncfusion > Essential Studio &lt;version number&gt; >Dashboard.

The Essential Studio Enterprise Edition window will be displayed.

{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img1.png) | markdownify }
{:.image }


2. In the Dashboard window, click Run Samples for Windows Forms under UI Edition. The UI Windows Forms Sample Browser window will be displayed.
> 


> { ![](Installation-and-Deployment_images/Installation-and-Deployment_img2.png) | markdownify }
{:.image }
 _Note: You can view the samples in any of the following three ways:_

> _• Run Samples - Click to view the locally installed samples._

> _• Online Samples - Click to view online samples._

> _• Explore Samples - Explore the UI for Windows Forms on disk._

> _The User Interface Edition panel is displayed by default._



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img3.png) | markdownify }
{:.image }




3. Click the Gauge tile under Data Visualization. The Gauge samples will be displayed.



{ ![](Installation-and-Deployment_images/Installation-and-Deployment_img4.png) | markdownify }
{:.image }




4. Select any sample and browse through the features. 
#### Source Code Location


 The default location of the Windows Forms Gauge control source code is:

C:\Program Files\Syncfusion\Essential Studio\[VersionNumber]\Windows\Gauge.Windows\Src

### Deployment Requirements

DLL List

While deploying an application that references a Syncfusion Windows Forms Gauge control assembly, the following dependencies must be included in the distribution:

* Syncfusion.Gauge.Windows.dll
* Syncfusion.Shared.base.dll
