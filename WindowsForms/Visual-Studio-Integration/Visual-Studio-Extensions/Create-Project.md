---
layout: post
title: Project Templates for Windows Forms | windowsforms | Syncfusion
description: Syncfusion Project Templates Extension creates the Syncfusion Windows Forms Application by adding the required assemblies.
platform: windowsforms
control: Syncfusion Extensions
documentation: ug
---


# Syncfusion Project Templates

Syncfusion provides the Visual Studio Project Template for the Syncfusion WinForms platform to create the Syncfusion WinForms Application by adding the required Syncfusion assemblies and forms. 

I> The Syncfusion Windows Forms templates are available from v14.3.0.49. 

Use the following steps to create the Syncfusion Windows Forms project through the Visual Studio Project Template. 

1. To create a Syncfusion Windows Forms project, follow either one of the options below:  
    
   **Option 1:**  
   Click **Syncfusion Menu** and choose **Essential Studio for WinForms > Create New Syncfusion Project…** in **Visual Studio**.

   ![Choose Syncfusion Windows Forms Application via Syncfusion menu](Project-Template-images\Syncfusion_Menu_ProjectTemplate.png)

   N> In Visual Studio 2019, Syncfusion menu is available under Extension in Visual Studio menu.

   **Option 2:**  
    Choose **File > New > Project** and navigate to **Syncfusion > Windows > Syncfusion Windows Forms Application** in **Visual Studio**.

   ![Choose Syncfusion Windows Forms Application from Visual Studio new project dialog](Project-Template-images\Syncfusion-Project-Template-Gallery-1.png)

2. Name the Project, choose the destination location when required, and set the .NET Framework of the project, then click OK.  

   N> Minimum target Framework is 3.5 for Syncfusion WinForms project templates. 

3. Choose the options to configure the Syncfusion WinForms Application by using the following Project Configuration Wizard.  
  
   ![Syncfusion Windows Forms project configuration wizard](Project-Template-images\Syncfusion-Project-Template-Gallery-2.png)
                                                     
   **Project Configurations**

   **Language:** Select the language, either C# or VB. 

   ![Choose the language in Syncfusion Windows Forms project configuration wizard](Project-Template-images\Syncfusion-Project-Template-Gallery-3.png)

   **Assemblies From:** Choose the assembly location from, where the assembly is added to the project. 

   ![Choose the assembly location from where assemblies to be added to the project](Project-Template-images\Syncfusion-Project-Template-Gallery-4.png)

   N> Installed location and GAC option will be available only when the Syncfusion Essential Windows Forms setup has been installed. You can use NuGet option without installing the Syncfusion Essential Windows Forms setup.

   **Installed ES Build Version:** Choose the build version to add the corresponding version assemblies to the project.

   ![Choose version to add the corresponding version assemblies to the project](Project-Template-images\Syncfusion-Project-Template-Gallery-5.png)

   N> Installed ES build version option will be available only when you install the Syncfusion Essential Windows Forms setup and choose the assembly location as Installed Location or GAC.

   **Select Control:** Choose the control as required. 

   ![Choose the required control in Syncfusion Windows Forms project configuration wizard](Project-Template-images\Syncfusion-Project-Template-Gallery-6.png)
      
4. After the Project Configuration Wizard is done, the Syncfusion WinForms project is created with required references and forms. 

   ![Syncfusion Windows Forms project created with required references](Project-Template-images\Syncfusion-Project-Template-Gallery-7.png)

   ![Syncfusion Windows Forms project created with required forms](Project-Template-images\Syncfusion-Project-Template-Gallery-8.png)

5. Then, Syncfusion licensing registration required message box will be shown, if you installed the trial setup or NuGet packages since Syncfusion introduced the licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio release. Navigate to the  [help topic](https://help.syncfusion.com/common/essential-studio/licensing/license-key#how-to-generate-syncfusion-license-key), which is shown in the licensing message box to generate and register the Syncfusion license key to your project. Refer to this [blog](https://blog.syncfusion.com/post/Whats-New-in-2018-Volume-2-Licensing-Changes-in-the-1620x-Version-of-Essential-Studio.aspx) post for understanding the licensing changes introduced in Essential Studio.

   ![Syncfusion license registration required information dialog in Syncfusion Windows Forms Project](Project-Template-images\Syncfusion-Project-Template-Gallery-9.png)   