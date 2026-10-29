---
layout: post
title: Manage Syncfusion WinForms NuGet Packages using .NET CLI | Syncfusion®
description: Learn here about how to add, update, list, and search Syncfusion® Windows Forms NuGet packages in an existing project using the Syncfusion® .NET CLI (sf).
platform: windowsforms
control: Syncfusion<sup>®</sup> .NET CLI
documentation: UG
---

# Manage packages in an existing project

Package operations change NuGet references only. They do not generate control files. In a CLI-generated project, control aliases such as `chart` and `datagrid` also integrate their sample files, assets, and welcome navigation through `sf add`.

`<package>` accepts a canonical package alias, a canonical package ID, or an exact unambiguous package display name:

```bash
sf add winforms datagrid -p ./MyApp
sf add winforms Syncfusion.SfDataGrid.WinForms -p ./MyApp
```

## Update packages

To update a package in an existing project:

```bash
sf update winforms datagrid --path /full/path/MyApp.csproj --version 35.1.40 --build
```

## List packages

To list the available and installed packages:

```bash
sf list winforms packages
sf list winforms installed --path /full/path/MyApp.vbproj
```

![List of available packages in the Syncfusion .NET CLI](images/cli-list-of-available-packages.png)

## Search packages

To search the package catalog:

```bash
sf search winforms grid
```

Existing-project commands accept `-p/--path` with a project file (`.csproj` or `.vbproj`), a project directory, or a supported subdirectory. Discovery stops at the nearest project or repository boundary. `--json` emits one JSON document for script use.

N> Update preserves sample source and aligns managed Syncfusion<sup>®</sup> release versions to avoid dependency downgrades. Shared dependencies remain installed for other controls. Edited or unowned sample source blocks destructive changes, and failed operations roll back files, metadata, project references, and central versions.

## Package operation options

| Option | Description |
| --- | --- |
| `-p`, `--path` | The project directory, `.csproj` file, `.vbproj` file, or a supported subdirectory |
| `-v`, `--version` | The Syncfusion<sup>®</sup> NuGet package version |
| `--source` | Package source; Syncfusion<sup>®</sup> packages require `https://api.nuget.org/v3/index.json` |
| `--configfile` | The NuGet configuration file to use |
| `--dry-run` | Preview the action without making changes |
| `--force` | Allow supported overwrites |
| `--no-restore` | Skip `dotnet restore` after the action |
| `--build` | Build the project after the action |
| `--json` | Emit one JSON document |

## See also

* [Create a Windows Forms project](/windowsforms/dotnet-cli/create-project)
* [License activation](/windowsforms/dotnet-cli/licensing)
* [Installing Syncfusion Windows Forms NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)