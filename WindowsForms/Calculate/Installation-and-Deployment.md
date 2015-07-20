---
layout: post
title: Installation-and-Deployment
description: installation and deployment
platform: WindowsForms
control: Calculate
documentation: ug
---

## Installation and Deployment

This section covers information on the install location, samples, licensing, patches update and updation of the recent version of Essential Studio. It comprises the following subsections:

### Installation

For step-by-step installation procedure for the installation of Essential Studio, refer to the Installation topic under Installation and Deployment in the Common UG.

See Also

For licensing, patches and information on adding or removing selective components refer the following topics in Common UG under Installation and Deployment.

* Licensing
* Patches
* Add/Remove Components
### Samples and Installation


Where to Find Samples?

This section covers the location of the installed samples and describes the procedure to run the samples through the sample browser and online. It also lists the location of utilities, assemblies, and source code.



Sample Installation Location

The Windows Forms Calculate samples are installed in the following location, locally on the disk:

[Install Location]:\...\Syncfusion\Essential Studio\[Version Number]\Windows\Calculate.Windows\Samples\2.0



The Calculate Web samples are installed in the following location, locally on the disk:

[Install Location]:\...\Syncfusion\Essential Studio\[Version Number]\Web\Calculate.Web\Samples\3.5



Viewing Samples

To view the samples: 

1. Click StartAll ProgramsSyncfusionEssential Studio <version number>Dashboard.



Essential Studio UI Edition Samples are listed by default.

{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img1.png)' | markdownify }}
{:.image }


2. Select Reporting edition.



{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img2.png)' | markdownify }}
{:.image }




3. The steps to view the Calculate samples in various platforms are discussed below:



Windows Forms

1. In the Dashboard window, click Run Samples for Windows Forms under Reporting Edition panel. 
> 


> {{ '![C:/Documents and Settings/jananit/Desktop/Dataicon.jpg](Installation-and-Deployment_images/Installation-and-Deployment_img3.jpeg)' | markdownify }}
{:.image }
 _Note: You can view the samples in any of the following three ways:_

* Run Samples – Click to view the locally installed samples.
* Online Samples – Click to view online samples.
* Explore Samples – Explore Windows Forms samples on disk.



{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img4.png)' | markdownify }}
{:.image }


The Windows Forms Sample Browser window is displayed.

{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img5.png)' | markdownify }}
{:.image }


2. Click Calculate in the Contents tab on the bottom-left pane.  The Calculate samples are displayed.

{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img6.png)' | markdownify }}
{:.image }


3. Select any sample and browse through the features.





ASP.NET

1. In the Dashboard window, click Run Samples for ASP.NET under Reporting Edition panel. The ASP.NET Sample Browser window is displayed.
> 
{{ '![C:/Documents and Settings/jananit/Desktop/Dataicon.jpg](Installation-and-Deployment_images/Installation-and-Deployment_img7.jpeg)' | markdownify }}
{:.image }
 _Note: You can view the samples in any of the three options displayed._



{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img8.png)' | markdownify }}
{:.image }


2. Click Calculate from the bottom-left pane. The Calculate samples are displayed.



{{ '![](Installation-and-Deployment_images/Installation-and-Deployment_img9.png)' | markdownify }}
{:.image }


3. Select any sample and browse through the features.



Source Code Location

Windows Forms Source Code

The default location of the Windows Forms Calculate source code is:

[System Drive]:\Program Files\Syncfusion\Essential Studio\[Version Number]\Windows\Calculate.Windows\Src



ASP.NET Source Code

The default location of the ASP.NET Calculate source code is:

[System Drive]:\Program Files\Syncfusion\Essential Studio\[Version Number]\Web\Calculate.Web\Src

### Deployment Requirements

This section elaborates on the deployment requirements for using Essential Calculate in various applications. It comprises the following topics:

#### DLLs

The following dlls need to be referenced in your application for the usage of Essential Calculate.

* Syncfusion.Core.dll
* Syncfusion.Calculate.Base.dll
* Syncfusion.Calculate.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Web.dll
#### Web Application Deployment


Web application by default is deployed in full trust mode. This section discusses the deployment in medium or partial trust scenarios.

Deploying in Medium Trust or Partial Trust Scenarios

There are two such scenarios in which Syncfusion assemblies might be deployed.

Example 1

If the Syncfusion Assemblies are in GAC (Global Assembly Cache), and the Web Application is running in _medium_ trust, then the Syncfusion assemblies actually runs in full trust. Hence this scenario is fully supported and there are no additional steps necessary for deployment.

Example 2

Say, the Syncfusion Assemblies are present in the application's bin folder and the Web Application is running in _medium_ trust, then the Syncfusion assemblies will run in medium trust. 

Essential Calculate allows working in medium trust by using following assemblies. 

* Syncfusion.Core.dll
* Syncfusion.Compression.Base.dll
* Syncfusion.Calculate.Web.dll
