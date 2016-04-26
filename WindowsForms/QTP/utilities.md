---
layout: post
title: Utilities | Windows Forms | Syncfusion
description: utilities
platform: windowsforms
control: QTP
documentation: ug
---

# Utilities

## Configuring the Swfconfig file

An XML file in QTP called Swfconfig is the configuration file located at (Installed location of Essential QuickTest Professional)\Config\<version-2.0, 3.5, or 4.0>\Swfconfig, that contains all the mapping information for QTP to recognize Syncfusion controls. Using the Swfconfig utility, you can easily configure the Swfconfig.xml file in HP QTP.

### Steps to Configure the Swfconfig.xml File



1) Open the Syncfusion Essential QTP Configuration located at (Installed location of Essential QuickTest Professional)\Utilities\SwfConfigUtility\SwfConfigUtility.exe. Enter the QTP assemblies’ location in the QTP Assemblies Location textbox and the Essential Studio version with Framework in the Product Version textbox. After entering the details, click Check & Configure. It creates the Swfconfig.xml file for that particular version. Refer to the following image.
   
   ![](Utilities_images/Utilities_img1.png)
   
   



2) Then Essential QTP Configuration shows the dialog box for appending the Swfconfig.xml file. Click Yes to append the Swfconfig.xml file in the QTP machine.
   
   ![](Utilities_images/Utilities_img2.png) 
   
   



3) When your system already has a Swfconfig.xml file, then another dialog box appears asking to replace the existing Swfconfig.xml. Click Yes to replace the old Swfconfig.xml file with the current Framework Swfconfig.xml file on your machine. When you want to keep both files in the same folder, click No.
   
   ![](Utilities_images/Utilities_img3.png)
   
   

4) After generating the Swfconfig.xml file, the system asks you whether you want to open it. Click Yes to save and open the new Swfconfig.xml file.
   
   ![](Utilities_images/Utilities_img4.png)
   
   
   



5) Restart QTP once the Swfconfig.xml file is saved to refresh the mappings to the required controls before starting the test.



