---
layout: post
title: Localization-and-Globalization | WindowsForms | Syncfusion
description: localization and globalization
platform: WindowsForms
control: Edit
documentation: ug
---

# Localization and Globalization

In the age of globalization, the market for all goods become more and more internationalized, enforcing the need to provide information in a variety of languages. This is especially true for the software market, where the product itself consists of exclusive localizable information. Translation and customization of software involves a variety of specialists such as programmers, translators, localization engineers, quality assurance (QA) specialists and project managers. International users of computer software expect their software to talk to them in their own language. This is not only a matter of convenience or of national pride, but a matter of productivity. Users who understand a product fully will be more skilled in handling it, and will avoid making mistakes. So, users will prefer applications in their language and adapted to their cultural environment.

The following images shows how the Find dialog in Edit Control is localized to French and Spanish.



![](Localization-and-Globalization_images/Localization-and-Globalization_img1.jpeg)



![](Localization-and-Globalization_images/Localization-and-Globalization_img2.jpeg)




Edit Control supports complete localization of all the dialog boxes associated with it to any desired language. The Neutral Resource files for the Edit Control is available in the directory - \Edit.Windows\Src\LocalizationSet. Follow the steps below to localize the Neutral Resources files.



1. The neutral resource of every Syncfusion Edit Control is present in the Localization folder of Edit.Windows source code. Assume that C:\Program Files\ is the installation path for the Syncfusion components. Here is the path:
   
   _C:\Program Files\Syncfusion\Essential Studio\x.x.x.x\Windows\Edit.Windows\Src\LocalizationSet v1.1_



2. Inside the LocalizationSet folder, there will be a number of resource files corresponding to the various dialog boxes of the Edit Control package. These resources will contain the form representation of English (Default & Neutral) culture.



3. Open WinRes from the following location:
   
   C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\bin\winRes.exe



4. WinRes is used to work with the Windows Forms resources. The ResEdit tool cannot be used to edit Windows Forms resources because it can be used to work with image and string based resources only.



5. Open the resources using the WinRes utility, and replace the English strings with the culture equivalent.
   
   For example, the following figure shows the Syncfusion.Windows.Forms.Edit.Dialogs.frmFindDialog.resources file that is opened in the WinRes tool, showing strings in German (strings are converted using some language converter).
   
   ![](Localization-and-Globalization_images/Localization-and-Globalization_img3.jpeg)




6. Click File --> SaveAs, and select the Culture to be localized (in this case German - German). Now, a new resource file with the name Syncfusion.Windows.Forms.Edit.Dialogs.frmFindDialog.de-DE.resources will be added to the source path.



7. Similarly, repeat the process for other resources and save them.



8. Now, in the Visual Studio.NET 2005 Command Prompt, type the following command, and then press ENTER. Make sure that you have the sf.publicsnk file from the Localization folder.
   
   al /t:lib /culture:de-DE /out:Syncfusion.Edit.Windows.resources.dll /v:1.0.0.0 /delay+ /keyf:sf.publicsnk /embed: Syncfusion.Windows.Forms.Edit.Dialogs.frmFindDialog.de-DE.resources



9. Press ENTER. Make sure that you have the sf.publicsnk file from the Localization folder.



10. The version (1.0.0.0) that you specify for these assemblies in the above all command, should be based on the SatelliteContractVersionAttribute setting in the product AssemblyInfo.cs file in Edit source. Note that the incorrect version won't localize the assembly properly.



11. On successful execution, an Assembly file named Syncfusion.Edit.Windows.resources.dll will be created.



12. Finally, mark this satellite assembly for verification skipping (since it is has not been signed with the same strong-name as the product assembly), as follows.



    sn –Vr Syncfusion.Edit.Windows.resources.dll



13. Now, drop this assembly into an appropriate subdirectory under your EXE's directory (bin\Debug\), based on the naming conventions that are enforced in .NET. You should create a folder named “de-DE” under bin/Debug if this assembly contains resources from the German (Germany) culture.



14. Finally, you should specify your application to fetch the German resources during run time. To change the UI culture of the current thread, add the following code in the Forms constructor before the InitializeComponent().



    System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE"); 



15. Now, run your application that contains the Syncfusion Edit Control, and open the Find dialog box. You will see the dialog box in German.



    ![](Localization-and-Globalization_images/Localization-and-Globalization_img4.jpeg)




