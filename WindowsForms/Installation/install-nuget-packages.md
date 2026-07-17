---
layout: post
title: Install Syncfusion Windows Forms NuGet packages - Syncfusion
description: Learn here about the how to install Syncfusion Windows Forms NuGet packages from Package manager and NuGet manager.
platform: windowsforms
control: Extension
documentation: ug

---

# Install Syncfusion WinForms NuGet packages

## Overview

**NuGet** is a Package management system for Visual Studio. It makes it easy to add, update and remove external libraries in our application. Syncfusion publishes all WinForms NuGet packages in [nuget.org](https://www.nuget.org/packages?q=Tags%3A%22Winforms%22+syncfusion). The Syncfusion WinForms NuGet packages can be used without installing the Syncfusion Essential Studio setup. You can simply use the Syncfusion WinForms NuGet packages in a WinForms application to develop with the Syncfusion WinForms components.

> From v16.2.0.46 (2018 Volume 2 Service Pack 1) onwards, all the Syncfusion WinForms components are available as NuGet packages at nuget.org. The current major package naming uses the `Syncfusion.WinForms.<Component>` convention; older packages may still be published under the legacy `Syncfusion.<Component>.Windows` naming.

## Supported Frameworks and Visual Studio

The Syncfusion WinForms NuGet packages support the following project target frameworks:

| Target Framework | Supported |
|------------------|-----------|
| .NET Framework 4.5 - 4.8 | Yes |
| .NET Core 3.0 - 3.1 | Yes |
| .NET 5.0 - 8.0 | Yes |
| .NET Standard 2.0+ | Yes |

The Package Manager UI and Package Manager Console require **Visual Studio 2019 or later** with the .NET desktop development workload installed.

## Available NuGet Packages

The complete list of Syncfusion WinForms NuGet packages is available on [nuget.org](https://www.nuget.org/packages?q=Tags%3A%22winforms%22+syncfusion). Commonly used packages include:

- `Syncfusion.WinForms.Grid`
- `Syncfusion.WinForms.Charts`
- `Syncfusion.WinForms.Diagram`
- `Syncfusion.WinForms.Ribbon`
- `Syncfusion.WinForms.Scheduler`

## Installation using Package Manager UI

The NuGet **Package Manager UI** allows you to search, install, uninstall, and update Syncfusion WinForms NuGet packages in your applications and solutions. You can find and install the Syncfusion WinForms NuGet packages in your Visual Studio WinForms application and this process is easy with the steps below:

1. Right-click on the WinForms application or solution in the Solution Explorer, and choose **Manage NuGet Packages...**

    ![Manage NuGet Packages add-in](Platform_images/manage-nuget.png)

    As an alternative, after opening the WinForms application in Visual Studio, go to the **Tools** menu and after hovering **NuGet Package Manager**, select **Manage NuGet Packages for Solution...**

    > You need Visual Studio 2019 or later with the .NET desktop development workload installed to use the Package Manager UI.

2. The Manage NuGet Packages window will open. Navigate to the **Browse** tab, then search for the Syncfusion WinForms NuGet packages using a term like **"Syncfusion.WinForms"** (or the legacy **"Syncfusion.Grid.Windows"** package for the specific control shown in the examples below) and select the appropriate Syncfusion WinForms NuGet package for your development.

    > The [nuget.org](https://api.nuget.org/v3/index.json) package source is selected by default in the Package source drop-down. If your Visual Studio does not have nuget.org configured, follow the instructions in the [Microsoft documents](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-visual-studio#package-sources) to set up the nuget.org feed URL.

    ![WinForms NuGet Packages Search](Platform_images/NuGetsearch.png)

3. When you select a package, the right side panel will provide more information about it.

4. By default, the package is selected with the latest version. You can choose the required version and click the **Install** button and accept the license terms. The package will be added to your WinForms application.

    ![WinForms NuGet Packages Install](Platform_images/InstallNuGet.png)

5. After installation, register your Syncfusion license key in the WinForms application as described in the [Licensing overview](https://help.syncfusion.com/windowsforms/licensing/overview).

## Installation using Dotnet (.NET) CLI

The [dotnet Command Line Interface (CLI)](https://learn.microsoft.com/en-us/nuget/consume-packages/install-use-packages-dotnet-cli), allows you to add, restore, pack, publish, and manage packages without making any changes to your application files. [Dotnet add package](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-add-package?tabs=netcore2x) adds a package reference to the application file, then runs [dotnet restore](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-restore?tabs=netcore2x) to install the package.

Follow the below instructions to use the dotnet CLI command to install the Syncfusion WinForms NuGet packages.

1. Open a command prompt and navigate to the directory where your Syncfusion WinForms project file is located using the `cd` command. For example:

    `cd C:\Projects\MyWinFormsApp`

2. To install a NuGet package, run the following command.

    `dotnet add package <Package name>`

    **For Example:**
    dotnet add package Syncfusion.Grid.Windows

    > If you don’t provide a version flag, this command will be upgrading to the latest version by default. To specify a version, add the -v parameter: dotnet add package Syncfusion.Grid.Windows -v 34.1.31

3. Examine the Syncfusion WinForms project file after the command has completed to ensure that the Syncfusion WinForms package was installed. To see the added reference, open the .csproj file.

    ![Winforms Package Entry ](Platform_images/packageentry.png)

4. Then run  [dotnet restore](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-restore?tabs=netcore2x) command to restores all the packages listed in the application file.

    > Restoring is done automatically with **dotnet build** and **dotnet run** in .NET Core 2.0 and later.

5. At this point, your application has all the required Syncfusion assemblies, and you will be ready to start building high-performance, responsive app with [Syncfusion WinForms components](https://www.syncfusion.com/winforms-ui-controls). Also, you can refer to the [Syncfusion WinForms help document](https://help.syncfusion.com/windowsforms/overview) for development.

## Installation using Package Manager Console

The **Package Manager Console** saves NuGet packages installation time since you don't have to search for the Syncfusion WinForms NuGet package which you want to install, and you can just type the installation command to install the appropriate Syncfusion WinForms NuGet package. Follow the instructions below to use the Package Manager Console to reference the Syncfusion WinForms component as NuGet packages in your WinForms application.

1. To show the Package Manager Console, open your WinForms application in Visual Studio and navigate to **Tools -> NuGet Package Manager -> Package Manager Console**. In the **Default project** dropdown, select the project in which you want to install the package.

    ![Package Manager Console ](Platform_images/console.png)

2. The **Package Manager Console** will be shown at the bottom of the screen. You can install the Syncfusion WinForms NuGet packages by entering the following NuGet installation commands.

    **Install specified Syncfusion WinForms NuGet package.**

    The below command will install the Syncfusion WinForms NuGet package in the default WinForms application.

    `Install-Package <Package Name>`

    **For example:** Install-Package Syncfusion.Grid.Windows

    > You can find the list of Syncfusion WinForms NuGet packages which are published in nuget.org from [here](https://www.nuget.org/packages?q=Tags%3A%22winforms%22+syncfusion)

    **Install specified Syncfusion WinForms NuGet package in specified WinForms application**

    The below command will install the Syncfusion WinForms NuGet package in the given WinForms application.

    `Install-Package <Package Name> -ProjectName <Project Name>`

    **For example:** Install-Package Syncfusion.Grid.Windows -ProjectName SyncfusionWinformsApp

3. By default, the package will be installed with the latest version. You can give the required version with the -Version term like below to install the Syncfusion WinForms NuGet packages in the appropriate version.

    ```Install-Package Syncfusion.Grid.Windows -Version 34.1.31```

    ![Package Manager Console Output ](Platform_images/ConsoleInstallationOutput.png)

4. The NuGet package manager console will install the Syncfusion WinForms NuGet package as well as the dependencies it has. When the installation is complete, the console will show that your Syncfusion WinForms package has been successfully added to the application.

5. After installation, register your Syncfusion license key in the WinForms application as described in the [Licensing overview](https://help.syncfusion.com/windowsforms/licensing/overview).

## Post-installation

After installing the Syncfusion WinForms NuGet packages by any of the methods above, your application has all the required Syncfusion assemblies. You are now ready to start building high-performance, responsive apps with [Syncfusion WinForms components](https://www.syncfusion.com/winforms-ui-controls). For more information, refer to the [Syncfusion WinForms help document](https://help.syncfusion.com/windowsforms/overview).

You can add Syncfusion WinForms controls to your application by referring to the [Add Syncfusion controls](https://help.syncfusion.com/windowsforms/add-syncfusion-controls) topic.