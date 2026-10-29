---
layout: post
title: Syncfusion .NET CLI Overview for Windows Forms | Syncfusion®
description: Learn to install and use the Syncfusion® .NET CLI (sf) to create Windows Forms apps, manage Syncfusion WinForms NuGet packages, and register licenses.
platform: windowsforms
control: Syncfusion<sup>®</sup> .NET CLI
documentation: UG
---

# Overview of the Syncfusion<sup>®</sup> .NET CLI

The Syncfusion<sup>®</sup> .NET CLI (`sf`) is a command line tool that creates Windows Forms projects, manages Syncfusion<sup>®</sup> Windows Forms NuGet packages, and registers licenses from a terminal. After you install the CLI, you can run `sf` with no arguments to open an interactive menu, or run a direct command such as `sf new winforms` for scripted, prompt-free creation.

N> The Syncfusion<sup>®</sup> .NET CLI is currently in preview and is installed with the `--prerelease` flag.

You can use the CLI to perform the following actions:

* Create a blank Windows Forms app, or an app containing generated Syncfusion<sup>®</sup> control samples, in C# or VB. For details, refer to [Create a Windows Forms project](/windowsforms/dotnet-cli/create-project).
* Add or update Syncfusion<sup>®</sup> Windows Forms NuGet package references in an existing project. For details, refer to [Manage packages](/windowsforms/dotnet-cli/manage-packages).
* Activate Syncfusion<sup>®</sup> licenses for the controls used in a sample, and view installed licenses. For details, refer to [License activation](/windowsforms/dotnet-cli/licensing).
* Configure an official Syncfusion<sup>®</sup> Model Context Protocol (MCP) server for AI coding clients. For details, refer to [MCP configuration](/windowsforms/dotnet-cli/configure-mcp).
* Install official Syncfusion<sup>®</sup> component skills for AI agents. For details, refer to [AI skills installation](/windowsforms/dotnet-cli/install-skills).

This documentation covers the Windows Forms platform.

## Prerequisites

The following software is required before you install and use the CLI:

* [.NET SDK](https://dotnet.microsoft.com/download). The SDK selected through `PATH` takes precedence, with the running .NET installation as a fallback.
* For modern .NET projects (`.NET 8` and later), the Windows Forms project templates installed with the .NET SDK. The CLI creates modern Windows Forms projects through the installed `winforms` template, and generated projects use Windows TFMs with `EnableWindowsTargeting`.
* For .NET Framework projects (`.NET Framework 4.6.2` and later), Visual Studio MSBuild with the .NET desktop workload. .NET Framework projects use classic MSBuild XML and explicit source/reference items, not modern SDK templates. Microsoft's `Microsoft.NETFramework.ReferenceAssemblies` 1.0.3 supplies the exact reference assemblies, including frameworks absent from the local developer packs.
* An internet connection so package operations can reach [nuget.org](https://www.nuget.org).
* A Syncfusion<sup>®</sup> account to activate licenses. Sign in is performed through the browser during license activation.

N> Building and running Windows Forms applications requires Windows. On macOS or Linux, use `sf new winforms --post-action generate` to generate the project source without restoring or building.

N> Syncfusion<sup>®</sup> packages resolve from the official nuget.org feed, `https://api.nuget.org/v3/index.json`. The CLI accepts only this source through `--source`.

## Installation

The CLI is published as a .NET global tool with the package ID `Syncfusion.DotNet.CLI`.

1. Open a terminal and run the following command. Add `--prerelease` while only preview versions are available.

    ```bash
    dotnet tool install -g Syncfusion.DotNet.CLI --prerelease
    ```

2. Verify the installation and print the CLI version.

    ```bash
    sf --version
    ```

To update the tool to the latest release, run:

```bash
dotnet tool update -g Syncfusion.DotNet.CLI --prerelease
```

To remove the tool, run:

```bash
dotnet tool uninstall -g Syncfusion.DotNet.CLI
```

## Initialize the CLI

Run `sf` in an interactive terminal to open the main menu. The menu shows the current CLI version and groups the available operations.

![Syncfusion .NET CLI main menu](images/cli-main-menu.png)

| Group | Operation | Command reference |
| --- | --- | --- |
| Project creation | Create a new project | `sf new` |
| Package management | Add a package to an existing project | `sf add` |
| Package management | Update a package in an existing project | `sf update` |
| Discovery | List available packages | `sf list <platform> packages` |
| Discovery | List installed packages in an existing project | `sf list <platform> installed` |
| Discovery | Search for packages | `sf search` |
| AI & Skills | Setup Model Context Protocol (MCP) | `sf mcp init` |
| AI & Skills | Add component skills to AI Agent | `sf skills install` |
| License management | Activate license | `sf license activate` |
| License management | View installed licenses | `sf license view` |
| License management | Sign in to Syncfusion | `sf login` |
| License management | Sign out | `sf logout` |
| Help and information | View CLI information | `sf info` |
| Help and information | Show help | `sf help` |
| Exit | Exit | `Ctrl+C` |

N> The `<platform>` text is a usage placeholder. Use `winforms` for Windows Forms.

Use the following keys to navigate the interactive screens:

| Key | Action |
| --- | --- |
| Up / Down | Move through the options |
| Enter | Choose the focused option, or continue |
| Space | Toggle a checkbox in a multi-selection list |
| Escape | Cancel the current question and return to the menu |
| `Ctrl+C` | Exit the interactive session |

Complete direct commands remain usable without opening the menu. `--no-interactive` disables prompts in any command.

## Available commands

| Command | Purpose | For details, refer to |
| --- | --- | --- |
| `sf new winforms` | Create a new Windows Forms project | [Create a Windows Forms project](/windowsforms/dotnet-cli/create-project) |
| `sf add winforms <package>` | Add a Syncfusion<sup>®</sup> package to an existing project | [Manage packages](/windowsforms/dotnet-cli/manage-packages) |
| `sf update winforms <package>` | Update a package in an existing project | [Manage packages](/windowsforms/dotnet-cli/manage-packages) |
| `sf list winforms packages` | List available packages | [Manage packages](/windowsforms/dotnet-cli/manage-packages) |
| `sf list winforms installed` | List installed packages in an existing project | [Manage packages](/windowsforms/dotnet-cli/manage-packages) |
| `sf search winforms <text>` | Search packages | [Manage packages](/windowsforms/dotnet-cli/manage-packages) |
| `sf mcp init winforms` | Configure a project-local Syncfusion<sup>®</sup> MCP client | [MCP configuration](/windowsforms/dotnet-cli/configure-mcp) |
| `sf skills install winforms` | Install Syncfusion<sup>®</sup> component skills for AI agents | [AI skills installation](/windowsforms/dotnet-cli/install-skills) |
| `sf login` | Sign in to Syncfusion through the browser | [License activation](/windowsforms/dotnet-cli/licensing) |
| `sf logout` | Sign out and clear the local session | [License activation](/windowsforms/dotnet-cli/licensing) |
| `sf license activate` | Download the license for the project's packages and register it in the project's startup code | [License activation](/windowsforms/dotnet-cli/licensing) |
| `sf license view` | Show the licenses cached for the project (no network call) | [License activation](/windowsforms/dotnet-cli/licensing) |
| `sf info` | Show CLI information | |
| `sf help winforms` | Show the Windows Forms command map | |
| `sf --version` | Show the CLI version | |

## See also

* [Syncfusion Windows Forms controls](https://www.syncfusion.com/winforms-controls)
* [Syncfusion Windows Forms help documentation](https://help.syncfusion.com/windowsforms/overview)
* [System requirements for Windows Forms](https://help.syncfusion.com/windowsforms/system-requirements)