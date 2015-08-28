---
layout: post
title: FAQs
description: FAQs
platform: windowsforms
control: Control Name undefined
documentation: ug
---

# FAQs

Essential Tools is a 100% Native .NET UI library that provides several packages for building modern Windows applications using Microsoft .NET framework. Our control and framework packages can be used in any .NET environment, including C#, VB.NET and managed C++. Here are some of the most common questions that may arise, regarding the usage and functionality of Essential Tools-Windows:

* How to modify the existing source code given by Syncfusion and use the modified code in my application?

All the Syncfusion dlls are signed with the Syncfusion's private key. Hence, to use a modified source code, the Syncfusion Source code has to be built with your company private key, for all the dependencies.

Example: For Tools.Windows, you will be using the following dll list:

1.   Syncfusion.Core
2.   Syncfusion.Shared.Base
3.   Syncfusion.Grid.Base
4.   Syncfusion.Tools.Base
5.   Syncfusion.Shared.Windows
6.   Syncfusion.Grid.Windows
7.   Syncfusion.Tools.Windows

Source of the dlls listed above can be found under the following path:
${install_drive}:\Program Files\Syncfusion\Essential Studio\${version}

## Modifying AssemblyInfo.cs files

Make the following modifications to the AssemblyInfo.cs files of each source:

{% highlight C# %}
<i>
[assembly: AssemblyDelaySign(false)]
[assembly: AssemblyKeyFile(@"c:\keys\my_company_pri_key.snk")]
</i>
{% endhighlight %}


> Note:*Source for Syncfusion.Core is not available as it is a licensing dll built with a separate private key. This pre-built dll can be shipped to any machine without  modification, hence building this dll can be ignored. This dll can be used to build other dlls.
* All the dlls that to be used in the project should be built using the modifications mentioned above.
* The process should be started from Syncfusion.Shared.Base dll and continued in order.
 
Any of the following two approaches can be used to build the Tools.Windows related Syncfusion assembly references:

## Approach 1-Manual Approach

Follow the procedure below to build the assemblies for Tools.Windows dll dependencies:

1. Open Dashboard --> Assembly Management --> Run Assembly Manager.       
   
   > Note: The Syncfusion Assembly Manager (Version) window is displayed.

2. Under the Actions group box, click Remove all versions.

3. Click Perform Action.                     
   
   > Note: All the Syncfusion assemblies saved on your system are cleared.

4. Drag and drop the Syncfusion.Core dll to the GAC.          
   
   > Note: Syncfusion.Core dll can be used from the current shipping assembly saved under the path-C:\Program Files\Syncfusion\Essential Studio\7.3.0.20\precompiledassemblies\7.3.0.20\3.5.

5. Let us take building Syncfusion.Shared.Base dll as an example.

6. Modify the AssemblyInfo.cs settings in all the source files. For details, refer Modifying AssemblyInfo.cs files topic.

7. Build the Syncfusion.Shared.Base project.            

   > Note: Following two projects are available in the project folder: *_2005.csproj – Will be useful when used in Visual Studio 2005. *_2008.csproj – Will be useful when used in Visual Studio 2008.

8. Move the Syncfusion.Shared.Base dll to a separate location.

9.  Drag and drop the dll in the GAC.

10.  Select the PublicKeyToken check box.                      
 
> Note: The  public key token should have been changed, based on your company private key.

The Syncfusion.Shared.Base dll is successfully built.

Steps 6-9 mentioned above can be repeated to build all the Tools.Windows related Syncfusion assembly references (refer the dll list) required for the project, in order.

## Approach 2-Using Build Manager

The dlls can also be built using a Build Manager. This avoids the need to create the dlls one by one. Follow the instructions provided below to build dlls using Build Manager:

* Modify the AssemblyInfo.cs settings in all the source files. For details, refer Modifying AssemblyInfo.cs files topic.

* Open Dashboard --> Assembly Management --> Run Assembly Manager.
  > Note: The Syncfusion Assembly Manager (Version) window is displayed.

* Under the Actions group box, click Remove all versions.

* Click Perform Action.
  > Note: All the Syncfusion assemblies saved on your system are cleared.

* Open Dashboard --> Run Build Manager.
  > Note: The Syncfusion Build Manager (Version) window is displayed.

* Under the Framework Version group box, click the required .NET Framework.

* Under the Product group box, select the required product from the drop-down list box.

* Under the Assembly Type group box, click the required assembly type.

* Click Perform Build.
  > Note: All the required Syncfusion assemblies are built in order.

The set of assemblies built can now be used in your project.
>  Note: If the private key setting of any one of the assemblies is modified, the rest of the assemblies (to be used in the project) should be built with the same key.

## MS Visual Studio Crashes after Upgrading to the Newest Version of Essential Studio

Visual Studio designer crashes only occur when the application refers to the older version of the assemblies even after upgrading to a higher version.

Try the following steps to resolve this issue:

* Open the Essential studio Dashboard.

* Run the AssemblyManager with the RemoveAllversion option. If you find Syncfusion assemblies in the GAC, remove the assemblies manually.

* Install the assemblies {required version}. For example, if your Target Framework version is 4.5.1, then remove 4.5, 4.0, 3.5 and 2.0 Syncfusion assemblies from the GAC and Assemblies folder and vice versa.

* Check for the required framework assemblies only in the GAC (c:\windows\assembly) and also in the Assemblies folder (C:\Program Files\Syncfusion\Essential Studio\[Target version]\Assemblies\4.5.1).

* Open the Essential studio Dashboard.

* Run the Multi Target Framework targeting 4.5.1.

* Click OK once operation is completed successfully.
 Remove the older version DLL from your application found in the ReportLib project folder that causes the error on handling the form in the designer mode. Ensure also that the older assembly is not reflected anywhere in the project.

## Use the following steps for upgraded projects.

* Remove the Bin and Obj folders from the Project path.

* Open the Visual studio IDE and open a project.

* Rebuild your project.

Check once again if the project refers to the Syncfusion assemblies of version [Target version]. Refer to the following help link if needed.

Link: [http://help.syncfusion.com/ug/common/documents/assemblymanager.htm](http://help.syncfusion.com/ug/common/documents/assemblymanager.htm)

## VB samples are missing in Essential Studio v 11.2.0.25

In the Essential Studio v11.2.0.25, VB samples are not available from the Dashboard, instead it is provided only on demand. So, make use of the samples from the following sample link:

[http://www.syncfusion.com/downloads/support/directtrac/general/VBSampleWF_011027922609.zip](http://www.syncfusion.com/downloads/support/directtrac/general/VBSampleWF_011027922609.zip)
