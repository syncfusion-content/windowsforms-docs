---
layout: post
title: Add a Syncfusion References| WinForms | Syncfusion
description: Syncfusion Reference Manger extension is add-in to add the Syncfusion references into the WinForms application
platform: windowsforms
control: Syncfusion Extensions
documentation: ug
---

# Add Reference for WinForms

Syncfusion Reference Manager is the Visual Studio Add-In for WinForms platform. It adds the Syncfusion assembly reference to the project, either from the GAC location or Essential Studio® WinForms installed location. It can also migrate the projects that contain the old versions of the Syncfusion assembly reference to newer or specific versions of the Syncfusion assembly reference. It supports Microsoft Visual Studio 2015 or higher. This Visual Studio extension is included from Essential Studio® 2013 Volume 3 release.

N> This Reference Manager can be applied to a project for Syncfusion assembly versions 10.4.0.71 and later.

Follow the given steps to add the Syncfusion references in Visual Studio:

> Before use the Syncfusion WinForms Reference Manager, check whether the **WinForms Extensions - Syncfusion** installed or not in Visual Studio Extension Manager by going to Extensions -> Manage Extensions -> Installed for Visual Studio 2019 or later and for Visual Studio 2017 or lower by going to Tools -> Extensions and Updates -> Installed. If this extension not installed, please install the extension by follow the steps from the [download and installation](https://help.syncfusion.com/windowsforms/visual-studio-integration/visual-studio-extensions/download-and-installation/) help topic.

1. Open a new or existing **WinForms** application.

2. To open Syncfusion Reference Manager Wizard, follow either one of the options below:

   **Option 1:**  
   Click **Extensions->Syncfusion Menu** and choose **Essential Studio® for WinForms > Add References…** or any other Form in **Visual Studio**.

   ![Syncfusion Reference Manager via Syncfusion Menu](Syncfusion-Reference-Manger_images/Syncfusion_Menu_AddReference-latest.png)

   N> In Visual Studio 2017 or lower, you can see the Syncfusion menu directly in the Visual Studio menu.

   [Syncfusion Reference Manager via Syncfusion Menu](Syncfusion-Reference-Manger_images/Syncfusion_Menu_AddReference.png)

   **Option 2:**  
   Right-click the selected project file from Solution Explorer, then select **Syncfusion Reference Manager…** from **Context Menu**. The following screenshot shows this option in Visual Studio.   

   ![Syncfusion Reference Manager add-in](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img1.png)

3. The Syncfusion Reference Manager Wizard that contains the list of Syncfusion WinForms controls that are loaded.

   ![Syncfusion Reference Manger Wizard](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img2.png)

   **Platform Selection:** If launched the Syncfusion Reference Manager from Console/Class Library project, Platform selection option will be appeared as option in Syncfusion Reference Manager. Choose the required platform. 

   ![Platform selection option in Syncfusion Reference Manger](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img3.png)

   **Assembly From:** Choose the assembly location, from where the assembly is added to the project.

   ![Assembly location option in Syncfusion Reference Manger](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img4.png)

   N> The GAC option will not be available, if you have selected WinForms (.NET 8.0, .NET 7.0, .NET 6.0, .NET 5.0, and .NET Core 3.1) application in Visual Studio 2019 or later.

   **Version:** Choose the build version to add the corresponding version assemblies to the project.

   ![Assembly location option in Syncfusion Reference Manger](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger1-img4.png)

   
   N> Window Forms (.NET Core 3.1 and .NET 5.0) application in Visual Studio 2019 is supported from 18.2.0.44 version and .NET 6.0 application in Visual Studio 2022 is supported from 19.4.0.38 and .NET 7.0 application in Visual Studio 2022 is supported from 20.4.0.38 and .NET 8.0 application in Visual Studio 2022 is supported from 23.2.4. Version combobox is not visible for nuget option.
  

4. Choose the required controls that you want to include in the project. Then, click Done to add the required assemblies for the selected controls into the project. The following screenshot shows the list of required assemblies for the selected controls to be added.

   ![Syncfusion Reference Manager new assemblies add information dialog](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img5.png)

5. Click **OK**. The listed Syncfusion assemblies are added to project. Then it notifies “Syncfusion assemblies have been added successfully” in Visual Studio status bar.

   ![Syncfusion Reference Manager success status in Visual Studio status bar](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img6.png)

6. Then, Syncfusion licensing registration required message box will be shown, if you installed the trial setup or NuGet packages since Syncfusion introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio® release. Navigate to the  [help topic](https://help.syncfusion.com/common/essential-studio/licensing/license-key#how-to-generate-syncfusion-license-key), which is shown in the licensing message box to generate and register the Syncfusion license key to your project. Refer to this [blog](https://blog.syncfusion.com/post/Whats-New-in-2018-Volume-2-Licensing-Changes-in-the-1620x-Version-of-Essential-Studio.aspx) post for understanding the licensing changes introduced in Essential Studio®.

   ![Syncfusion license registration required information dialog in Syncfusion Reference Manager](Syncfusion-Reference-Manger_images/Syncfusion-Reference-Manger-img7.png)

N>  Syncfusion provides Reference Manager support for specific .NET Framework, which is shipped (assemblies) in Syncfusion Essential Studio® setup. So, if you try to add Syncfusion assemblies in the project and project framework is not supported with selected Syncfusion version assemblies, the dialog appears along with **“Current build v{version} is not supported this framework v{Framework Version}”** message.






