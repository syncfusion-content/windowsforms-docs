---
layout: post
title: License Activation using Syncfusion .NET CLI | Syncfusion®
description: Learn here about how to activate and view Syncfusion® licenses for Windows Forms projects using the Syncfusion® .NET CLI (sf) license commands.
platform: windowsforms
control: Syncfusion<sup>®</sup> .NET CLI
documentation: UG
---

# Activate Syncfusion<sup>®</sup> licenses

The CLI detects the Syncfusion<sup>®</sup> controls used in a project, downloads the matching license keys from your Syncfusion<sup>®</sup> account, and registers the keys in the project's startup code. For example, when a sample is created with the Chart control, the CLI registers the license for `Syncfusion.SfChart.WinForms` in `Program.cs` so the build runs without a license warning.

N> Open the Command Prompt or Terminal in the target sample's project directory before running the license activation command. The license operation is project-specific, and the command path must point to the intended sample.

## Activate a license through the interactive menu

1. Open the Command Prompt or Terminal in the target sample's project directory.

    {% tabs %}
    {% highlight bash %}
    cd C:\Projects\MyApp
    {% endhighlight %}
    {% endtabs %}

2. Run `sf` to open the main menu.

    {% tabs %}
    {% highlight bash %}
    sf
    {% endhighlight %}
    {% endtabs %}

3. Under **License management**, select **Activate license**. The CLI focuses the **Activate License** entry and shows the navigation hint at the bottom of the screen.

    ![Activate license option in the Syncfusion .NET CLI](images/cli-activate-license.png)

4. If you are not signed in, the CLI opens your default browser to the Syncfusion<sup>®</sup> sign-in page. Complete sign in with your Syncfusion<sup>®</sup> account.

    ![Syncfusion sign-in page in the browser](images/cli-license-sign-in.png)

5. After sign in, the CLI checks your entitlements, downloads the matching keys for the Syncfusion<sup>®</sup> controls in the sample, and registers the keys in `Program.cs` (or `Application.xaml.vb` for VB projects).

    ![License registered successfully in the Syncfusion .NET CLI](images/cli-license-registered.png)

6. Rebuild the application so the newly registered license is applied. The CLI prints the following reminder at the end of the activation output.

    > Note: Rebuild the application so the newly registered license is applied.

## Activate a license using a direct command

Run the activation command from the sample's project directory:

{% tabs %}
{% highlight bash %}
sf license activate
{% endhighlight %}
{% endtabs %}

Pass `--path` to point the CLI at a specific project directory, `.csproj`, or `.vbproj` file:

{% tabs %}
{% highlight bash %}
sf license activate --path ./MyApp
sf license activate --path ./MyApp/MyApp.csproj
{% endhighlight %}
{% endtabs %}

Use `--yes` to accept the trial EULA prompt without asking:

{% tabs %}
{% highlight bash %}
sf license activate --yes
{% endhighlight %}
{% endtabs %}

Use `--file` to activate from an existing key file. With no value, the CLI reads `./syncfusion-license.txt` from the project directory. With an absolute path, the CLI uses the specified file instead:

{% tabs %}
{% highlight bash %}
sf license activate --file
sf license activate --file C:\Keys\syncfusion-license.txt
{% endhighlight %}
{% endtabs %}

N> When a license key is supplied through `--file`, the CLI skips sign in and download and registers the keys already in the file. The file path must be absolute.

## View installed licenses

To see the licenses cached for the current project, run:

{% tabs %}
{% highlight bash %}
sf license view
{% endhighlight %}
{% endtabs %}

The command reads the cached metadata, lists each product, the license type, the status, and the expiry date, and warns when a Syncfusion<sup>®</sup> package in the project is not covered.

![View installed licenses in the Syncfusion .NET CLI](images/cli-view-installed-license-menu.png)

The cached output reports the registered email, platform, major version, and one row per product.

![Installed license details in the Syncfusion .NET CLI](images/cli-view-installed-license.png)

## Sign in and sign out

License activation requires an authenticated Syncfusion<sup>®</sup> session. During activation, if you are not signed in, the CLI opens your default browser to the Syncfusion<sup>®</sup> sign-in page, where you complete sign in with your Syncfusion<sup>®</sup> account. You can also manage the sign-in session directly.

### Sign-in requirements

* A Syncfusion<sup>®</sup> account with an active license or trial entitlement for the packages in the project.
* A browser available on the machine, because sign in is completed in the browser.
* An internet connection, because entitlements and license keys are downloaded from your Syncfusion<sup>®</sup> account.

### Sign in ahead of activation

To sign in without running activation, run:

{% tabs %}
{% highlight bash %}
sf login
{% endhighlight %}
{% endtabs %}

The CLI opens the browser sign-in page. After you complete sign in, the session is cached locally, and the next `sf license activate` skips the browser step.

### Sign out

To clear the local sign-in session, run:

{% tabs %}
{% highlight bash %}
sf logout
{% endhighlight %}
{% endtabs %}

After sign out, the cached session is removed. The next activation prompts for sign in again.

N> The sign-in session is used for license operations. `sf logout` clears the session only; it does not remove the license keys already registered in the project's startup code.

## License options

| Option | Description |
| --- | --- |
| `-p`, `--path` | The project directory or `.csproj`/`.vbproj` to scan for Syncfusion<sup>®</sup> packages. Defaults to the current directory |
| `-y`, `--yes` | Accept the trial EULA prompt automatically during activation |
| `--file` | Activate from an existing key file. With no value, the CLI reads `./syncfusion-license.txt` from the project directory. With an absolute path, the CLI uses the specified file |
| `--json` | Emit one JSON document instead of table output |

## FAQs

**Does the CLI register a license?**

Yes. `sf license activate` scans the project for Syncfusion<sup>®</sup> `PackageReference` entries, downloads the matching license keys from your Syncfusion<sup>®</sup> account, and inserts `SyncfusionLicenseProvider.RegisterLicense(...)` into `Program.cs` for C# projects or `Application.xaml.vb` for VB projects. The CLI signs you in through the browser the first time, or you can sign in ahead with `sf login`. For background information on Syncfusion<sup>®</sup> licensing, refer to the [licensing overview](https://help.syncfusion.com/common/essential-studio/licensing/overview).

**Where does the CLI register the license for Windows Forms?** In `Program.cs` for C# projects and in `Application.xaml.vb` for VB projects. For .NET MAUI, Blazor, WPF, and WinUI, the CLI targets `MauiProgram.cs`, `Program.cs`, `App.xaml.cs`, and `App.xaml.cs` respectively.

**Can I use my own key file?**

Yes. Run `sf license activate --file C:\Keys\syncfusion-license.txt` with an absolute path. The CLI reads the keys from the file and registers them in the project's startup code without contacting the license service.

## See also

* [Create a Windows Forms project](/windowsforms/dotnet-cli/create-project)
* [Manage packages in an existing project](/windowsforms/dotnet-cli/manage-packages)
* [Syncfusion<sup>®</sup> licensing overview](https://help.syncfusion.com/common/essential-studio/licensing/overview)