---
layout: post
title: Toolbox Configuration | WinForms | Syncfusion
description: This section provides information regarding all the Syncfusion Essential Studio® utilities and its usage
platform: windowsforms
control: Essential Studio®
documentation: ug
---

# Toolbox Configuration

The Syncfusion® Toolbox utility adds the Syncfusion® WinForms controls into the Visual Studio .NET toolbox.

N> Visual Studio Express Edition does not support toolbox configuration. However, you can manually configure the Syncfusion® controls into the Visual Studio Express Toolbox. To do so, refer the [Manual Toolbox Configuration](https://help.syncfusion.com/common/faq/how-to-configure-the-toolbox-of-visual-studio-manually).

Syncfusion<sup>®</sup> controls will be automatically configured in the Visual Studio Toolbox during the installation of the Syncfusion<sup>®</sup> Windows Forms installer, provided the <b>“Configure Syncfusion<sup>®</sup> Controls in Visual Studio”</b> checkbox is selected in the installer UI.

Use the following steps to add the Syncfusion® WinForms controls through the Syncfusion® Toolbox Installer:

1. To launch Toolbox configuration utility, follow either one of the options below:

   **Option 1:**   
   To open the Syncfusion Control Panel, click **Add On and Utilities > Toolbox Installer**.
   
   ![Add On and Utilities](Toolbox-Configuration_images/Toolbox-Configuration_img1.png)
   
   **Option 2:**  
   Click **Syncfusion menu** and choose **Essential Studio® for WinForms > Toolbox Configuration...** in **Visual Studio**.

   ![Toolbox Installer via Syncfusion menu](Toolbox-Configuration_images/Syncfusion_Menu_Toolbox.png)

   N> From Visual Studio 2019, Syncfusion menu is available under Extensions in Visual Studio menu.

2. Toolbox Installer will be opened.

   ![Toolbox Installer](Toolbox-Configuration_images/Toolbox-Configuration_img2.png)

   The following options are available in Toolbox Configuration:

   * Install VS2015 – Configures Framework 4.6.2 Syncfusion controls in VS 2015 toolbox.
   * Install VS2017 – Configures Framework 4.6.2 Syncfusion controls in VS 2017 toolbox.
   * Install VS2019 – Configures Framework 4.6.2 Syncfusion controls in VS 2019 toolbox.
   * Install VS2022 – Configures Framework 4.6.2 Syncfusion controls in VS 2022 toolbox.

    N> You can also configure Syncfusion® controls from a lower version Framework assembly to higher version of Visual Studio.
   
3. The successful configuration of Toolbox is indicated by an Information message. Click **OK**.

   ![Toolbox Installer](Toolbox-Configuration_images/Toolbox-Configuration_img3.png)
   
   
   N> * If your installed controls are not reflected properly in the Visual Studio Toolbox, you'll have to reset the Toolbox. 
   * This tool configures only the controls that are located under {Installed Location}\Assemblies\{Framework version}.
   
## Configuring toolbox for .NET Framework in Visual Studio 2022   

Starting with the 2021 Volume 3 release, Syncfusion<sup>®</sup> began providing toolbox support for .NET Framework projects in the Visual Studio 2022 Toolbox. After installing the Syncfusion<sup>®</sup> Windows Forms installer, Syncfusion<sup>®</sup> controls will be automatically configured in the Visual Studio 2022 Toolbox for Windows Forms .NET Framework projects.

## Configuring toolbox for Windows Forms .NET 8.0\9.0 projects from NuGet packages

Starting with the 2021 Volume 3 release, Syncfusion<sup>®</sup> introduced toolbox support for Windows Forms .NET 8.0 and 9.0 projects. To enable Syncfusion<sup>®</sup> WinForms controls in the .NET 8.0/9.0 Toolbox, install the corresponding Syncfusion<sup>®</sup> WinForms NuGet packages in your project. Once the packages are installed, the controls will automatically appear in the Visual Studio Toolbox for .NET 8.0/9.0 WinForms projects.

Refer [this](https://help.syncfusion.com/windowsforms/add-syncfusion-controls) documentation link to find Syncfusion® WinForms nuget packages for the appropriate controls.
