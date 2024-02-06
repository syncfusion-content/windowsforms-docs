---
layout: post
title: Syncfusion Item Template | WinForms | Syncfusion
description: Syncfusion Item Templates provides to add the predefined forms with Syncfusion component in Windows Forms application.
platform: windowsforms
control: Syncfusion Extensions
documentation: ug
---

# Add Syncfusion Components to the WinForms Application

Syncfusion supports Visual Studio Item Templates to add Syncfusion WinForms Components to a WinForms application with Syncfusion WinForms references. 

I> The Syncfusion Windows Forms item templates are available from v13.1.0.21.

The following steps will guide you in adding the Syncfusion WinForms components to your Visual Studio WinForms application.

> Check whether the **WinForms Extensions - Syncfusion** are installed or not in Visual Studio Extension Manager by going to **Extensions -> Manage Extensions -> Installed** for Visual Studio 2019 or later and Visual Studio 2017 or lower by going to **Tools -> Extensions and Updates -> Installed**. If this extension is not installed, please install the extension by following the steps from the [download and installation](https://help.syncfusion.com/windowsforms/visual-studio-integration/download-and-installation) help topic.

## Add Components using Syncfusion Item Template

1.	Open a new or existing WinForms application.

	**Option 1:**

2.	From the **Solution Explorer, right-click** on the WinForms application. Choose **Add Syncfusion Item...**.

	![Choose Add Syncfusion Item option from right click project](Item-Template-images/Add-syncfusion-item.png)

	**Option 2:**

3.	Click **Extensions > Essential Studio for WinForms > Add Syncfusion Item…** in Visual Studio.

	![Choose Add Syncfusion Item option from menu](Item-Template-images/Add-item.png)


4.	The Syncfusion WinForms Item Template wizard will be launched as follows.

	![Syncfusion WinForms Item template Components](Item-Template-images/Add-syncfusion-ui.png)

5.	Select the WinForms Components from the Component list within your WinForms Item Template. The features associated with the selected Component will be presented. From here, 		choose the specific features that are essential for your project.

6.	Choose an assembly reference option such as GAC location, Essential Studio installed location, or NuGet packages to specify where the required Syncfusion assemblies 	are added to the project.

	N> If the Syncfusion Essential WindowsForm build is installed, the Installed location and GAC options will be enabled. Without installing the Syncfusion Essential WindowsForm setup, use the NuGet option. The GAC option will not be available when using the Syncfusion WinForms Components in a .NET Core application. The Version drop-down lists the installed WinForms versions.

7.  Click **Add**, and a pop-up will appear providing information about adding Component **files** and **NuGet/Assemblies** details.

	![Syncfusion WinForms Item template details](Item-Template-images/Add-syncfusion-item-3.png)	

8.	Click **OK** to incorporate the chosen Components into the WinForms application, along with the necessary Syncfusion assemblies.

	![Syncfusion WinForms Item template Gallery](Item-Template-images/Add-syncfusion-item-details.png)

9.	Then, Syncfusion licensing registration required message box will be shown if you installed the trial setup or NuGet packages since Syncfusion introduced the 			licensing system from 2018 Volume 2 (v16.2.0.41) Essential Studio release. Navigate to the [help topic](https://help.syncfusion.com/common/essential-studio/			licensing/license-key#how-to-generate-syncfusion-license-key), which is shown in the licensing message box to generate and register the Syncfusion license key to 		your project. Refer to this [blog](https://blog.syncfusion.com/post/Whats-New-in-2018-Volume-2-Licensing-Changes-in-the-1620x-Version-of-Essential-Studio.aspx) post 	 for understanding the licensing changes introduced in Essential Studio.

    ![Syncfusion WinForms Item template Gallery](Item-Template-images/Syncfusion-Item-Template-Gallery-7.png)