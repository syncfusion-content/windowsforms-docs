---
layout: post
title: System Requirements in Windows Forms - Syncfusion®
description: Checkout and learn here all about the system requirements needed to use Syncfusion® Windows Forms Components.
platform: windowsforms
control: General
documentation: ug
---


# System Requirements in Windows Forms controls

This document describes the system requirements needed to develop applications that use Syncfusion<sup>®</sup> Windows Forms controls. The requirements listed here apply to the Syncfusion<sup>®</sup> Windows Forms components. Support for specific operating systems, frameworks, and tooling may vary depending on the installed Syncfusion<sup>®</sup> version. Refer to the Syncfusion<sup>®</sup> Windows Forms documentation and the release notes for the latest platform compatibility information.
## Operating Systems

Syncfusion<sup>®</sup> Windows Forms controls are supported on the following operating systems:

### Client Operating Systems

* Windows 2000
* Windows XP
* Windows Vista
* Windows 7
* Windows 8
* Windows 10
* Windows 11

### Server Operating Systems

* Windows Server 2003 and later

> **Note:** Operating system support may vary depending on the installed Syncfusion<sup>®</sup> version, target framework, and application deployment environment. Refer to the [System Requirements](https://help.syncfusion.com/windowsforms/system-requirements) and https://help.syncfusion.com/windowsforms/dotnet-framework-compatibility documentation for the latest compatibility details.

## Hardware Environment

* **Processor:** x86 or x64
* **RAM:** 512 MB (minimum), 1 GB (recommended)
* **Hard disk:** Up to 4 GB of free space may be required for development and build output. Even if you install the application on a different drive, at least 400 MB of free space is required on the system drive.

For recommended display resolution and DPI guidance, see [High DPI Support in Windows Forms Controls](https://help.syncfusion.com/windowsforms/highdpi-support).

## Development Environment

### .NET Framework

The following .NET Framework versions are supported by Syncfusion<sup>®</sup> Windows Forms controls:

* **Minimum supported framework:** .NET Framework 4.6.2
* **Compatible target frameworks:** .NET Framework 4.6.2, 4.7, 4.7.1, 4.7.2, and 4.8

When you build a Syncfusion<sup>®</sup> Windows Forms application, the application's target framework must be supported by the installed Syncfusion<sup>®</sup> version. Syncfusion<sup>®</sup> assemblies are versioned independently of the .NET Framework. Refer to the Syncfusion<sup>®</sup> release notes for the minimum Syncfusion<sup>®</sup> version that supports your target framework.

### Modern .NET (.NET 5 and later)

The following modern .NET versions are supported by current Syncfusion<sup>®</sup> Windows Forms releases:

* .NET 6.0
* .NET 8.0
* .NET 9.0

> Support for specific .NET versions may vary depending on the installed Syncfusion<sup>®</sup> version. Refer to the [Syncfusion<sup>®</sup> Windows Forms release notes](https://help.syncfusion.com/windowsforms/release-notes) for the latest framework compatibility information.

### Required Visual Studio Components

When developing with .NET Framework 4.6.2 or higher, the following Visual Studio components are required:

* Microsoft Visual Studio 2015, 2017, 2019, or 2022

When developing with modern .NET (.NET 6.0, .NET 8.0, or .NET 9.0), ensure that the following Visual Studio workload is installed:

* **.NET desktop development** workload

The required disk space for a full Syncfusion<sup>®</sup> Essential Studio Windows Forms installation may vary depending on the Syncfusion<sup>®</sup> version and the components selected during installation. Refer to the [Syncfusion<sup>®</sup> Windows Forms installation documentation](https://help.syncfusion.com/windowsforms/installation) for the latest disk-space requirements.

## Verify the Environment

You can verify that the development environment meets the requirements by running the following commands from a command prompt or terminal.

### Verify the Installed .NET SDK

{% capture codesnippet_dotnet_list %}
{% tabs %}

{% highlight bash %}

dotnet --list-sdks

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet_dotnet_list | OrderList_Indent_Level_1 }}

### Verify Visual Studio Installation

{% capture codesnippet_vswhere %}
{% tabs %}

{% highlight bash %}

"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -latest -property installationName

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet_vswhere | OrderList_Indent_Level_1 }}

### Verify the Syncfusion<sup>®</sup> Windows Forms Installation

The Syncfusion<sup>®</sup> Essential Studio Windows Forms installer registers the installed version and location. Refer to the [Syncfusion<sup>®</sup> Windows Forms installation documentation](https://help.syncfusion.com/windowsforms/installation) for the exact registration steps, registry keys, or Dashboard location for your installed Syncfusion<sup>®</sup> version.

## Installation

For setup instructions, including the Essential Studio platform installer, NuGet packages, and command-line installation, see [Installation in Windows Forms Controls](https://help.syncfusion.com/windowsforms/installation).

## Troubleshooting

If you encounter any of the following issues, try the suggested steps before contacting support:

* **Controls do not render correctly or are missing at design time.**  
  Confirm that a supported .NET Framework or modern .NET version is installed and that the target framework of the project matches a framework supported by the installed Syncfusion<sup>®</sup> version. Restart Visual Studio after changing the target framework.

* **Build errors about missing Syncfusion<sup>®</sup> assemblies or namespaces.**  
  Reinstall the Syncfusion<sup>®</sup> Windows Forms package through NuGet or the Essential Studio installer, or re-add the assembly references from the local installation path. Confirm that the project's target framework is supported by the installed Syncfusion<sup>®</sup> version.

* **"Target framework not supported" warnings.**  
  Update the Syncfusion<sup>®</sup> Windows Forms installation to a version that supports the selected target framework, or change the project to a target framework supported by the installed Syncfusion<sup>®</sup> version.

* **Visual Studio does not recognize Windows Forms projects or templates.**  
  Open the Visual Studio Installer, modify the installation, and confirm that the **.NET desktop development** workload is selected. Restart Visual Studio after the workload is added.

* **Syncfusion<sup>®</sup> controls do not appear in the Visual Studio Toolbox.**  
  Confirm that the Syncfusion<sup>®</sup> Visual Studio extension is installed and enabled for the current Visual Studio version. Reinstall the extension if needed. Refer to the [Syncfusion<sup>®</sup> WinForms Visual Studio extension installation guide](https://help.syncfusion.com/windowsforms/visual-studio-integration/download-and-installation).

For issues not listed above, refer to the [Syncfusion<sup>®</sup> Windows Forms documentation](https://help.syncfusion.com/windowsforms/system-requirements) or contact Syncfusion<sup>®</sup> support.

## See Also

* [Windows Forms Installation](https://help.syncfusion.com/windowsforms/installation)
* [Deployment in Windows Forms Controls](https://help.syncfusion.com/windowsforms/deployment)
* [ARM support in Windows Forms Controls](https://help.syncfusion.com/windowsforms/arm-support)
* [High DPI Support in Windows Forms Controls](https://help.syncfusion.com/windowsforms/highdpi-support)
* [Compatibility with the NIST MBARK Framework](https://help.syncfusion.com/windowsforms/dotnet-framework-compatibility)
* [Syncfusion<sup>®</sup> Windows Forms Documentation](https://help.syncfusion.com/windowsforms/system-requirements)

