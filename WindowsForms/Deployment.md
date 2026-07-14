---
layout: post
title: Assembly deployment in Windows Forms Controls | Syncfusion
description: Learn here about how to install and deploy the Syncfusion Essential Studio Windows Forms components.
platform: WindowsForms
control: Deployment
documentation: ug
---

# Deployment in Windows Forms Controls

This document describes the supported ways to deploy Syncfusion Windows Forms applications. Choose a deployment method based on your application requirements, target framework, and distribution strategy. The following table summarizes the commonly used deployment methods.

| Deployment Method | Typical Use |
|-------------------|-------------|
| Copy Local | Simple xcopy-style deployment for .NET Framework and .NET applications that ship assemblies alongside the executable. |
| Installed Location | Referencing assemblies from the Syncfusion installation directory on the developer or client machine. |
| GAC | Centralized assembly sharing for .NET Framework applications on the client machine. |
| NuGet | Package-based deployment using NuGet feeds for .NET Framework and .NET applications. |
| ClickOnce | Self-updating, low-touch deployment of Windows Forms applications. |
| MSI / Installer | Full installer-based deployment using the Syncfusion Essential Studio Windows Forms installer. |

> Deployment requirements may vary depending on the installed Syncfusion version and the target framework. Refer to the Syncfusion Windows Forms documentation for the latest deployment guidance.

## Prerequisites

Before deploying a Syncfusion Windows Forms application, ensure the following prerequisites are in place:

- Syncfusion Essential Studio Windows Forms must be installed, or the required Syncfusion assemblies must be available through NuGet.
- A supported version of Visual Studio and the corresponding Windows Forms project template must be available.
- Administrator permissions are required when deploying assemblies to the GAC.
- A valid Syncfusion license key must be registered in the application before using Syncfusion controls.
- Refer to the corresponding control documentation for additional deployment dependencies.

> Refer to the [Syncfusion Windows Forms System Requirements](System-Requirements.md) page for supported framework versions.

## Copy Local

Copy Local deployment is supported through the Syncfusion assembly reference in the **Solution Explorer**. Set the **Copy Local** property of the reference to `True` so that the Syncfusion assemblies are copied to the `bin\Release` and `bin\Debug` folders during build.

This deployment consists of copying the EXE, assemblies, and XML files to the client machines, similar to a manual xcopy deployment.

### Steps to enable Copy Local

1. Open the project in Visual Studio.
2. In **Solution Explorer**, expand the project node and the **References** or **Dependencies** node.
3. Select the Syncfusion assembly reference.
4. Open the **Properties** window.
5. Set the **Copy Local** property to `True`.
6. Build the project.

The Syncfusion assemblies will be copied to the `bin\Release` or `bin\Debug` folder based on the selected build configuration.

### Verifying Copy Local deployment

After building the project, verify that the required Syncfusion assemblies are present in the output folder:

- For the **Release** configuration, check the `bin\Release` folder.
- For the **Debug** configuration, check the `bin\Debug` folder.

Refer to the Syncfusion Windows Forms documentation for the list of assemblies required by your application.

Installation-And-Deployment_images/Deployment_img1.jpg

## Installed Location

The following table represents the assemblies, samples, and their installed locations.

<table>
<tr>
<th>
Assemblies / Samples</th><th>
Installed location</th></tr>
<tr>
<td>
GAC</td><td>
C:\Windows\Microsoft.NET\assembly\GAC_MSIL</td></tr>
<tr>
<td>
Assemblies</td><td>
C:\Program Files (x86)\Syncfusion\Essential Studio\Windows\{{ site.releaseversion }}\Assemblies</td></tr>
<tr>
<td>
Precompiled Assemblies</td><td>
C:\Program Files (x86)\Syncfusion\Essential Studio\Windows\{{ site.releaseversion }}\precompiledassemblies</td></tr>
<tr>
<td>
Samples</td><td>
C:\Users\Public\Documents\Syncfusion\Windows\{{ site.releaseversion }}</td></tr>
</table>

> The table above uses the latest Essential Studio version. Users can refer to their installed Essential Studio version instead of the mentioned version.

The installed samples can be explored through the Syncfusion Windows Forms Sample Browser. Refer to the [Featured Samples](Featured-Samples.md) page for more information.

N> The `C:\Windows\Microsoft.NET\assembly\GAC_MSIL` path is the default location for .NET Framework assemblies. For .NET Core and modern .NET applications, assemblies are resolved from the application's output folder or from the shared runtime location and are not deployed to the GAC.

## GAC

Through the Syncfusion installer, Syncfusion assemblies are installed in the GAC of the developer machines. Additionally, the Syncfusion [AssemblyManager](https://help.syncfusion.com/common/essential-studio/utilities#assembly-manager) utility helps to add or remove the Syncfusion assemblies to or from the GAC.

### Steps to use AssemblyManager

1. Launch the **Syncfusion Assembly Manager** from the Syncfusion Essential Studio program group.
2. Select the **Windows Forms** platform and the installed version.
3. Choose **Install** to add the Syncfusion assemblies to the GAC, or **Uninstall** to remove them.
4. Confirm the action.

Administrator permissions are required for GAC operations.

### Verifying GAC deployment

You can verify that the Syncfusion assemblies are present in the GAC by:

- Browsing the `C:\Windows\Microsoft.NET\assembly\GAC_MSIL` folder.
- Using the `gacutil -l` command from the Visual Studio Developer Command Prompt.

### GAC limitations

- GAC deployment applies to .NET Framework applications.
- .NET Core and modern .NET applications do not use the GAC.
- Assemblies deployed to the GAC must be strong-name signed.
- Strong-name signing requirements and supported framework versions may vary by Syncfusion release.

## NuGet Deployment

Syncfusion Windows Forms controls are also available as NuGet packages, which simplifies versioning and continuous integration scenarios.

### Steps to deploy using NuGet

1. Add the required Syncfusion Windows Forms NuGet packages to your project using the NuGet Package Manager or the Package Manager Console.
2. Restore the NuGet packages.
3. Register the Syncfusion license key in the application before using Syncfusion controls.
4. Build and publish the application.

The NuGet packages will be restored and copied as part of the standard build output.

## ClickOnce Deployment

ClickOnce is a supported deployment option for Windows Forms applications that require self-updating, low-touch installation.

### Steps to deploy using ClickOnce

1. In **Solution Explorer**, right-click the project and choose **Publish**.
2. Configure the publish profile, including the installation folder, update settings, and prerequisites.
3. Ensure all required Syncfusion assemblies are included in the application files.
4. Register the Syncfusion license key during application startup.
5. Publish the application and distribute the published artifacts to the client machines.

## MSI / Installer Deployment

The Syncfusion Essential Studio Windows Forms installer can be used to distribute the Syncfusion assemblies and related utilities to client machines. This method is recommended when the application depends on assemblies that are installed system-wide.

### Steps to deploy using the Syncfusion installer

1. Run the Syncfusion Essential Studio Windows Forms installer on the target machine.
2. Follow the installer prompts to install the required Syncfusion assemblies and utilities.
3. Deploy the application EXE and any additional required files to the client machine.
4. Ensure the Syncfusion license key is registered in the application before any Syncfusion controls are created.

## License Registration

Syncfusion Windows Forms applications require a valid license key to be registered at runtime. Register the license key during application startup before creating any Syncfusion controls.

Refer to the [Syncfusion® licensing overview](https://help.syncfusion.com/common/essential-studio/licensing/overview) for details on registering the license key in your application.

## Troubleshooting

The following table lists common deployment issues and the recommended actions.

| Issue | Possible Cause | Recommended Action |
|-------|----------------|--------------------|
| Missing Syncfusion assembly at runtime | Copy Local is not enabled or the assembly is not referenced correctly | Verify the project references and confirm that Copy Local is set to True. |
| License-related runtime warning or error | License key is not registered before using Syncfusion controls | Register the Syncfusion license key during application startup. |
| Assembly load failure | Incorrect assembly version or missing binding redirect | Verify the assembly version and add a binding redirect in `app.config`, if required. |
| GAC deployment fails | Insufficient permissions | Run the deployment step as an Administrator. |
| Missing native dependency | Third-party native binaries are not deployed | Refer to the corresponding control documentation for additional deployment dependencies. |

## See Also

- [Syncfusion® Windows Forms Installation](https://help.syncfusion.com/windowsforms/installation)
- [Syncfusion® Licensing Overview](https://help.syncfusion.com/common/essential-studio/licensing/overview)
- [Syncfusion® Windows Forms System Requirements](https://help.syncfusion.com/windowsforms/system-requirements)
- [Syncfusion® Windows Forms Featured Samples](https://help.syncfusion.com/windowsforms/featured-samples)

## Summary

Choose the deployment method that best matches your application and target environment. For most .NET Framework scenarios, Copy Local or GAC deployment is sufficient. For .NET Core and modern .NET applications, NuGet-based deployment is recommended.

When system-wide installation is required, use the Syncfusion Essential Studio Windows Forms installer. Always ensure that the required Syncfusion assemblies, binding redirects, and license key registration are included with the deployed application.

> Refer to the Syncfusion Windows Forms documentation for the latest deployment guidance and supported frameworks.