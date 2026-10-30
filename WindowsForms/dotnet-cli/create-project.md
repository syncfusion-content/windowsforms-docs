---
layout: post
title: Create Windows Forms Projects using Syncfusion .NET CLI | Syncfusion®
description: Learn here about how to create a Syncfusion® Windows Forms project using the Syncfusion® .NET CLI (sfdotnet) through the interactive wizard or direct commands.
platform: windowsforms
control: Syncfusion<sup>®</sup> .NET CLI
documentation: UG
---

# Create a Windows Forms project

You can create a Windows Forms project through the interactive wizard or a direct command. For CLI installation and the main menu, refer to the [overview](/windowsforms/dotnet-cli/overview).

## Create a project using the interactive wizard

Run `sfdotnet new`, or select **Create a new project**

from the main menu. The Windows Forms creation flow is:

1. **Platform:**

Select **Windows Forms**.

2. **Language:**

Select **C#** or **Visual Basic**. C# is the first option.

3. **Framework:**

Select the target framework.

    * .NET 10 (`net10.0`), the default
    * .NET 9 (`net9.0`)
    * .NET 8 (`net8.0`)
    * .NET Framework 4.8 (`net48`)
    * .NET Framework 4.7 (`net47`)
    * .NET Framework 4.6.2 (`net462`)

4. **Theme:**

Select the project theme. The supported Windows Forms theme is **Office2019 Colorful**.

5. **Location and name:**

Enter the parent directory and the project name. The default locations are `%USERPROFILE%\source\repos` on Windows and `~/Projects` on Linux and macOS. The suggested name is `SyncfusionWinFormsApp`, and the first available numeric suffix is used when the destination name collides.

6. **Setup:**

Select **Blank app** or **Include Syncfusion controls**. Blank app is the first option.

7. **Controls:**

    When you include controls, choose one or more controls from the list. Controls start unchecked, and at least one selection is required. The available controls are listed in the table below the wizard flow.

8. **Post-create:**

    Select **Generate only** or **Build project**.

9. **Confirmation:**

    Review the selected values and confirm to create the project.

### Available controls

The following controls are available in a new Windows Forms project:

| Control | Control ID |
| --- | --- |
| Chart | `chart` |
| DataGrid | `datagrid` |
| Diagram | `diagram` |
| DockingManager | `docking-manager` |
| NavigationDrawer | `navigation-drawer` |

N> A complete direct command does not open the wizard. When a name is missing in an interactive terminal, the wizard supplies a default and collects the remaining unspecified inputs. Missing required values in scripts produce an error.

## Create a project using direct commands

To create a blank project without the wizard:

{% tabs %}
{% highlight bash %}
sfdotnet new winforms -n MyApp
{% endhighlight %}
{% endtabs %}

To create a C# project containing Syncfusion<sup>®</sup> control samples:

{% tabs %}
{% highlight bash %}
sfdotnet new winforms -n MyApp --control datagrid
sfdotnet new winforms -n MyApp --control chart --control datagrid
{% endhighlight %}
{% endtabs %}

To create a VB project that targets .NET Framework 4.8 with the Office2019 Colorful theme and a DataGrid sample:

{% tabs %}
{% highlight bash %}
sfdotnet new winforms --name MyAppVB --language VB --target-framework net48 --theme Office2019Colorful --control datagrid --post-action build
{% endhighlight %}
{% endtabs %}

## Creation options

| Option | Description |
| --- | --- |
| `-n`, `--name` | Project name. Required when prompting is unavailable |
| `-p`, `--path` | Parent directory. Defaults to the current directory |
| `--language` | Project language: `C#` or `VB` |
| `-t`, `--target-framework` | Target framework: `net462`, `net47`, `net48`, `net8.0`, `net9.0`, or `net10.0` |
| `--theme` | Project theme, such as `Office2019Colorful` |
| `--control` | One or more control IDs, or `empty`. Omit to create an empty project |
| `--template` | One or more template IDs; merges with `--control` |
| `--post-action` | Post-create action: `generate` or `build`. Defaults to `build` for direct commands |
| `--dry-run` | Preview the action without making changes |
| `--force` | Allow supported overwrites. Edited control samples and existing project destinations remain protected |
| `--no-restore` | Skip `dotnet restore` after the action |
| `--no-build` | Skip `dotnet build` after the action |
| `--no-interactive` | Disable interactive prompts |
| `--interactive` | Allow interactive prompts (default when stdin is a terminal) |
| `--json` | Emit a JSON document instead of table output |
| `--verbose` | Print detailed diagnostic output |

N> `--post-action build` conflicts with `--no-build`. Neither `--force` nor confirmation authorizes overwriting an existing project destination.

## FAQs

**Which languages are supported?**

C# and VB.

**Which target frameworks are supported?**

.NET Framework 4.6.2 (`net462`), 4.7 (`net47`), 4.8 (`net48`), and .NET 8 (`net8.0`), .NET 9 (`net9.0`), .NET 10 (`net10.0`). Unsupported selections fail validation rather than changing the request.

**Which theme is supported?**

Office2019 Colorful.

## See also

* [Manage packages in an existing project](/windowsforms/dotnet-cli/manage-packages)
* [License activation](/windowsforms/dotnet-cli/licensing)
* [Installing Syncfusion Windows Forms NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)