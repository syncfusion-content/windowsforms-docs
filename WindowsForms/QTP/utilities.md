---
layout: post
title: Utilities | WindowsForms | Syncfusion
description: utilities
platform: WindowsForms
control: QTP
documentation: ug
---

# Utilities

## Configuring the SwfConfig file

An XML file in QTP called SwfConfig is the configuration file located at (Installed location of Essential QuickTest Professional)\Config\<version-2.0, 3.5, or 4.0>\swfconfig, that contains all the mapping information for QTP to recognize Syncfusion controls. Using the SwfConfig utility, you can easily configure the SwfConfig.xml file in HP QTP.

### Steps to Configure the SwfConfig.xml File



1) Open the Syncfusion Essential QTP Configuration located at (Installed location of Essential QuickTest Professional)\Utilities\SwfConfigUtility\SwfConfigUtility.exe. Enter the QTP assemblies’ location in the QTP Assemblies Location textbox and the Essential Studio version with framework in the Product Version textbox. After entering the details, click Check & Configure. It creates the swfconfig.xml file for that particular version. Refer to the following image.
   
   ![](Utilities_images/Utilities_img1.png)
   
   



2) Then Essential QTP Configuration shows the dialog box for appending the swfconfig.xml file. Click Yes to append the swfconfig.xml file in the QTP machine.
   
   ![](Utilities_images/Utilities_img2.png) 
   
   



3) When your system already has a swfconfig.xml file, then another dialog box appears asking to replace the existing swfconfig.xml. Click Yes to replace the old swfconfig.xml file with the current framework swfconfig.xml file on your machine. When you want to keep both files in the same folder, click No.
   
   ![](Utilities_images/Utilities_img3.png)
   
   

4) After generating the swfconfig.xml file, the system asks you whether you want to open it. Click Yes to save and open the new swfconfig.xml file.
   
   ![](Utilities_images/Utilities_img4.png)
   
   
   



5) Restart QTP once the SwfConfig.xml file is saved to refresh the mappings to the required controls before starting the test.



