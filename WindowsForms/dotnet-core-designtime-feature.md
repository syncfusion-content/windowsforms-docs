---
layout: post
title: .NET Core Design-Time | Windows Forms | Syncfusion®
description: Learn about the Microsoft WinForms Designer SDK package for .NET Core Design-Time features, usage, and key advantages.
platform: windowsforms
control: .NET Core
documentation: ug
---

# .NET Core Design-Time Features

## Overview

We have expanded design-time support in Syncfusion® Windows Forms controls for projects targeting .NET 6 and higher.

The supported design-time features include **Smart Tags**, **Custom Collection Editors**, and **Custom Forms for UITypeEditor**. These features were primarily available only in the .NET Framework in earlier releases.

For modern .NET targets, Microsoft introduced the Microsoft WinForms Designer SDK. Syncfusion® references this SDK from its control packages starting with **Syncfusion® Essential Studio® v26.1.35** to deliver a consistent design-time experience across .NET 6, .NET 7, .NET 8, and later.

N> Some design-time capabilities in modern .NET WinForms are still limited compared with the .NET Framework. See the [Limitations](#limitations) section for details.

## Prerequisites

Before enabling .NET Core design-time features for Syncfusion® Windows Forms, confirm the following:

* A supported version of Microsoft Visual Studio with .NET (Core) WinForms designer support. Refer to the [System Requirements](https://help.syncfusion.com/windowsforms/system-requirements) topic for the current supported Visual Studio versions.
* A .NET SDK that supports the target framework used by your project (.NET 6 or higher).
* [Syncfusion® Essential Studio® Windows Forms](https://help.syncfusion.com/common/essential-studio/download) installed, or a valid Syncfusion® NuGet feed configured. The installer is required only for assembly-based deployment and Visual Studio Toolbox integration; NuGet-based projects do not require the local installer.
* A valid Syncfusion® license key. Register the license key at application startup (for example, in `Program.cs`).

{% capture codesnippet_prereq %}
{% tabs %}

{% highlight C# %}

Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("YOUR_LICENSE_KEY");

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet_prereq | OrderList_Indent_Level_1 }}

## Why We Use the WinForms Designer SDK

Microsoft has introduced the **Microsoft WinForms Designer SDK** to support custom design-time experiences in Visual Studio for .NET 6 and later. The Designer SDK augments and replaces many of the design-time APIs that were tied to the .NET Framework and the Windows operating system, so the same designer extensibility model can be used on modern .NET targets.

### Advantages

The Designer SDK offers the following key advantages:

* It is independent of the operating system.
* It is not reliant on the .NET Framework.
* It is fully integrated with Visual Studio.

It also provides essential extension points and base classes that allow developers to implement advanced design-time features such as **Smart Tags**, **Custom Collection Editors**, and **Custom Forms for UITypeEditor**.

To enable this functionality, Syncfusion® includes the Designer SDK as a dependency in its control NuGet packages starting from Syncfusion® Essential Studio® **v26.1.35**. This ensures a consistent and enhanced design-time experience across modern .NET platforms.

## Installation and Setup

The Designer SDK is referenced automatically when you install one of the supported Syncfusion® control packages. The exact steps depend on whether you use assembly-based deployment or NuGet.

### Install using NuGet

1. Right-click the project in **Solution Explorer** and choose **Manage NuGet Packages...**.
2. Switch to the **Browse** tab, search for the Syncfusion® Windows Forms package required by the control you are using (for example, `Syncfusion.Tools.Windows`), and click **Install**.

The same package can also be installed from the **Package Manager Console** (**Tools > NuGet Package Manager > Package Manager Console**):

{% capture codesnippet_nuget %}
{% tabs %}

{% highlight C# %}

Install-Package Syncfusion.Tools.Windows

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet_nuget | OrderList_Indent_Level_1 }}

### Install using assemblies

If you are using assembly-based deployment, add the assemblies for the required Syncfusion® package from the Syncfusion® Essential Studio® installation location. Refer to the [Deployment](https://help.syncfusion.com/windowsforms/deployment) topic for the installed assembly path.

### Verify the installation

After installing the package:

1. Rebuild the project in Visual Studio.
2. Open the **Reference Manager** (or inspect the `.csproj` file) and confirm that the package reference is present.
3. Open a form in the designer, select a Syncfusion® control, and confirm that the Smart Tag menu is available.

> If the Smart Tag menu does not appear, the Designer SDK dependency may not have been restored. Restore NuGet packages, rebuild the project, and reopen the form.

## Control Package Details

Syncfusion® has added the **Microsoft WinForms Designer SDK** as a dependency in the following control packages. Package names follow the existing Syncfusion® Windows Forms convention: legacy packages use the `.Windows` suffix, while newer Sf* packages use the `.WinForms` suffix. The Designer SDK support applies to the controls contained in the package.

| Control Package name | Designer SDK Dependency Added |
|----------------------|-------------------------------|
| Syncfusion.Tools.Windows | Yes |
| Syncfusion.Shared.Base | Yes |
| Syncfusion.Diagram.Windows | Yes |
| Syncfusion.Gauge.Windows | Yes |
| Syncfusion.Grid.Windows | Yes |
| Syncfusion.Grid.Grouping.Windows | Yes |
| Syncfusion.Maps.Windows | Yes |
| Syncfusion.PivotTable.WinForms | Yes |
| Syncfusion.Core.WinForms | Yes |
| Syncfusion.SfInput.WinForms | Yes |
| Syncfusion.Spreadsheet.Windows | Yes |
| Syncfusion.TreeMap.Windows | Yes |

N> The listed packages reference the Microsoft WinForms Designer SDK to enable the integrated design-time features. Designer SDK dependencies may vary based on the installed Syncfusion® version. Refer to the package-specific documentation for the latest design-time support details, and verify the installed package version in your project dependencies.

## Migration and Compatibility

Custom designers and design-time extensions that were built for .NET Framework WinForms using `System.Windows.Forms.Design` and related legacy APIs continue to load in modern .NET WinForms, but the Designer SDK is the recommended extensibility model for new design-time features targeting .NET 6 and later.

Existing custom designers do not need to be rewritten. The Designer SDK is referenced automatically by the supported Syncfusion® control packages.

> Refer to the Syncfusion® Windows Forms documentation for the latest supported target frameworks, package versions, and control compatibility.

## Limitations

Certain control properties in .NET Core WinForms have known design-time limitations. These issues are largely caused by the out-of-process WinForms Designer architecture, which results in UITypeEditors, collection editors, and smart tags having only limited communication with the design surface. For background on the WinForms design-time architecture, see the [Microsoft Windows Forms designer documentation](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/controls-design/overview).

Some common limitations include:

* UITypeEditors that depend on interactive designer feedback may not render fully in the out-of-process designer.
* Collection editors may have limited support for nested or complex collections.
* Smart Tags may not appear on some controls or properties.

For comprehensive information, refer to the following Knowledge Base article:

[Known Design-Time Limitations in .NET Core WinForms and Syncfusion Controls](https://support.syncfusion.com/kb/article/22154/known-design-time-limitations-in-net-core-winforms-and-syncfusion-controls)

> The KB article is the authoritative source for the current list of limitations. Refer to it for the most recent workarounds and resolution status.

## Troubleshooting

If you encounter any of the following issues, try the suggested steps before contacting support:

* **Smart Tag menu is not visible on a Syncfusion® control.**  
  Confirm that the package is referenced and that the Designer SDK dependency was restored. Rebuild the project and reopen the form in the designer. Verify the installed package version in your project dependencies.

* **The designer fails to load with a "could not load Designer SDK" or similar error.**  
  Restore NuGet packages, confirm the target framework is .NET 6 or later, and ensure the Syncfusion® package version is compatible with the installed Visual Studio version.

* **NuGet restore errors for the Designer SDK dependency.**  
  Clear the NuGet cache and restore packages again, or check whether the package source is configured correctly. Designer SDK dependencies may vary based on the installed Syncfusion® version.

* **UITypeEditor or Collection Editor does not appear as expected.**  
  Review the [Limitations](#limitations) section and the linked Knowledge Base article. Some editors have only limited support in the out-of-process WinForms Designer.

* **License registration message is displayed at runtime.**  
  Generate and register a Syncfusion® license key as described in the [Syncfusion® Windows Forms licensing overview](https://help.syncfusion.com/windowsforms/licensing/overview).

## See Also

* [Installation in Windows Forms](https://help.syncfusion.com/windowsforms/installation)
* [.NET Core Compatibility](https://help.syncfusion.com/windowsforms/dotnet-core-compatibility)
* [Add Syncfusion® Windows Forms Controls](https://help.syncfusion.com/windowsforms/add-syncfusion-controls)
* [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies)
* [Deployment](https://help.syncfusion.com/windowsforms/deployment)
* [System Requirements](https://help.syncfusion.com/windowsforms/system-requirements)
* [Licensing Overview](https://help.syncfusion.com/windowsforms/licensing/overview)
