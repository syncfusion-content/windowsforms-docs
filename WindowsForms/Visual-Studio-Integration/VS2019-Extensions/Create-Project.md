---
layout: post
title: Project Templates for Windows Forms | WinForms | Syncfusion
description: Syncfusion Project Templates Extension creates the Syncfusion Windows Forms Application by adding the required assemblies.
platform: windowsforms
control: Syncfusion Extensions
documentation: ug
---


# Create WinForms application

Syncfusion provides the Visual Studio Project Template for the Syncfusion WinForms platform to create the Syncfusion WinForms Application by adding the required Syncfusion assemblies and forms. 

I> The Syncfusion Windows Forms templates are available from v14.3.0.49. 

Use the following steps to create the Syncfusion Windows Forms project through the Visual Studio Project Template. 

> Before use the Syncfusion WinForms Project Template, check whether the **WinForms Extensions - Syncfusion** installed or not in Visual Studio Extension Manager by clicking on the Tools -> Extensions and Updates -> Installed for Visual Studio 2017 or lower and for Visual Studio 2019 by clicking on the Extensions -> Manage Extensions -> Installed.If this extension not installed, please install the extension by follow the steps from the [download and installation](https://help.syncfusion.com/windowsforms/visual-studio-integration/vs2019-extensions/download-and-installation/) help topic.

1. To create a Syncfusion Windows Forms project, follow either one of the options below:  
    
   **Option 1:**  
   Click **Extensions >Syncfusion Menu** and choose **Essential Studio for WinForms > Create New Syncfusion Project…**  in **Visual Studio**.

   ![Choose Syncfusion Windows Forms Application via Syncfusion menu](Project-Template-images\Syncfusion_Menu_ProjectTemplate.png)

   N> In Visual Studio 2017 or lower, you can see the Syncfusion menu directly in the Visual Studio menu.

   **Option 2:**  
    Choose **File -> New -> Project**. Opens a new dialog to create a new project. You can obtain the templates provided by Syncfusion for WinForms by filtering the project type with Syncfusion or by using the Syncfusion keyword in the search option

   ![Choose Syncfusion Windows Forms Application from Visual Studio new project dialog](Project-Template-images\Syncfusion-Project-Template-Gallery2019-1.png)

   In Visual Studio 2017 or lower, Select File > New > Project and navigate to Syncfusion > Windows > Syncfusion Windows Forms Application in Visual Studio.

   ![Choose Syncfusion Windows Forms Application from Visual Studio new project dialog](Project-Template-images\Syncfusion-Project-Template-Gallery-1.png)

2. Name the **Project**, choose the destination location when required, select the project type, and choose the reference from where the assembly is added to the project then click **OK**.  

   N> Minimum target Framework is 3.5 for Syncfusion WinForms project templates. 

3. Choose the options to configure the Syncfusion WinForms Application by using the following Project Configuration Wizard.  
  
   ![Syncfusion Windows Forms project configuration wizard](Project-Template-images\Syncfusion-Project-Template-Gallery2019-2.png)

   In Visual Studio 2017 or lower, Syncfusion Windows Forms Application project configuration wizard.

   ![Syncfusion Windows Forms project configuration wizard](Project-Template-images\Syncfusion-Project-Template-Gallery-2.png)
                                                     
   **Project Configurations**

   **Project Type:** Select the project type, either .NET Framework or .NET Core.

   N> Project type selection option will be available only from Visual Studio 2019 and later in Syncfusion Windows Forms Project template configuration. The .NET Core 3.1 and .NET 5.0 option will be listed in project type only when the .NET Core 3.1 and .NET 5.0 setup has been installed.

   **Language:** Select the language, either CSharp or VB.

   **Reference From:** Choose the assembly location such as NuGet, GAC Location, or Essential Studio installed location, from where the assembly is added to the project.

   N> Installed location and GAC option will be available only when the Syncfusion Essential Windows Forms setup has been installed. You can use NuGet option without installing the Syncfusion Essential Windows Forms setup. Also, the GAC option will not be available when you choose .NET 5.0 and .NET Core 3.1 from project type option in Visual Studio 2019.

   **Installed ES Build Version:** Choose the build version to add the corresponding version assemblies to the project.

   N> Installed ES build version option will be available only when you install the Syncfusion Essential Windows Forms setup and choose the assembly location as Installed Location or GAC.

   **Select Window:** Choose the window as required for application.
      
4. After the Project Configuration Wizard is done, the Syncfusion WinForms project is created with required references and forms. 

   ![Syncfusion Windows Forms project created with required references](Project-Template-images\Syncfusion-Project-Template-Gallery-6.png)

   ![Syncfusion Windows Forms project created with required forms](Project-Template-images\Syncfusion-Project-Template-Gallery-7.png)

   ![Syncfusion Windows Forms project created with readme](Project-Template-images\Syncfusion-Project-Template-Gallery-9.PNG)

5. Then, the Syncfusion licensing registration required message box will be shown, if you installed the trial setup or NuGet packages since Syncfusion introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio release. Navigate to the [help topic](https://help.syncfusion.com/common/essential-studio/licensing/license-key#how-to-generate-syncfusion-license-key), which is shown in the licensing message box to generate and register the Syncfusion license key to your project. Refer to this [blog](https://blog.syncfusion.com/post/Whats-New-in-2018-Volume-2-Licensing-Changes-in-the-1620x-Version-of-Essential-Studio.aspx) post to learn more the licensing changes introduced in Essential Studio.

   ![Syncfusion license registration required information dialog in Syncfusion Windows Forms Project](Project-Template-images\Syncfusion-Project-Template-Gallery-8.png)   