---
layout: post
title: ARM support | Windows Forms | Syncfusion
description: Learn here about the details of ARM64 device compatibility support for Syncfusion Windows Forms controls.
platform: windowsforms
control: ARM support
documentation: ug
---

# ARM support in Windows Forms Controls

Syncfusion Windows Forms components are compatible with ARM64 devices. You can build and run Windows Forms applications that use Syncfusion Windows Forms components on ARM64 devices.

The following components or features are currently not supported on ARM64 devices. Support for these features may be considered in a future release based on feasibility.

## Limitations

### ARM64 compatibility notes

| Component or library | Feature with limited ARM64 availability |
|----------------------|------------------------------------------|
| PDF library | HTML to PDF conversion |
| PDF library | OCR processing |
| PDF library | PDF to image conversion |


## Prerequisites

The following prerequisites are required to build and run Syncfusion Windows Forms applications on ARM64 devices:

1. Install a supported .NET SDK for ARM64. Select the ARM64 installer from the official [.NET download page](https://dotnet.microsoft.com/en-us/download).

2. Install Visual Studio with the required ARM64 components on an ARM64 development machine. For more information, see [Visual Studio on Arm-powered devices](https://learn.microsoft.com/en-us/visualstudio/install/visual-studio-on-arm-devices?view=visualstudio).

3. Install the Syncfusion Windows Forms package required for the controls used in your application. For setup details, see the Syncfusion Windows Forms [installation documentation](https://help.syncfusion.com/windowsforms/installation).

## Build and publish for ARM64

Use the following project settings to target ARM64 in your Windows Forms application:

* Target a supported Windows target framework, such as `net8.0-windows` or another framework supported by your installed Syncfusion Windows Forms version.
* Enable Windows Forms in the project file by setting `<UseWindowsForms>true</UseWindowsForms>`.
* Add the `win-arm64` runtime identifier in the project file.

A minimal `.csproj` example for an ARM64-ready Windows Forms project is shown below:


{% capture codesnippet1 %}
{% tabs %}

{% highlight XML %}

<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>WinExe</OutputType>
    <TargetFramework>net8.0-windows</TargetFramework>
    <UseWindowsForms>true</UseWindowsForms>
    <RuntimeIdentifiers>win-x64;win-arm64</RuntimeIdentifiers>
  </PropertyGroup>
</Project>

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

Publish the application for ARM64 using the following command:

{% capture codesnippet2 %}
{% tabs %}

{% highlight bash %}

dotnet publish -c Release -r win-arm64 --self-contained false

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

After publishing, run the application on an ARM64 device to verify that the Syncfusion Windows Forms controls load and function as expected.

## Troubleshooting

| Issue or error | Possible cause | Suggested action |
|----------------|----------------|------------------|
| `BadImageFormatException` at startup | The application or a referenced assembly was built for a different architecture. | Build or publish the application for the `win-arm64` runtime identifier and ensure that all referenced assemblies are compatible with the target platform. |
| `win-arm64` runtime identifier is not recognized | A supported .NET SDK is not installed. | Install a supported .NET SDK for ARM64 from the official .NET download page. |
| Architecture mismatch warnings or errors | The project or one of its dependencies is targeting a different architecture. | Confirm that the project includes `win-arm64` in `RuntimeIdentifiers` and that all dependencies support the target platform. |
| Missing Syncfusion assembly | The required Syncfusion Windows Forms package is not installed. | Install the Syncfusion Windows Forms package required for the control used in your application. |
| Unsupported PDF feature on ARM64 | The selected PDF feature is not currently supported on ARM64 devices. | Use the feature on a supported architecture or check the Syncfusion Windows Forms release notes for future updates. |

## Version compatibility

Refer to the Syncfusion Windows Forms [release notes](https://help.syncfusion.com/windowsforms/release-notes) for product updates, and refer to the [system requirements](https://help.syncfusion.com/windowsforms/system-requirements) and [.NET compatibility](https://help.syncfusion.com/windowsforms/dotnet-core-compatibility) documentation for currently supported frameworks and development environments.

## Related links

* [Syncfusion Windows Forms Installation](https://help.syncfusion.com/windowsforms/installation)
* [Syncfusion Windows Forms System Requirements](https://help.syncfusion.com/windowsforms/system-requirements)
* [Register Syncfusion License Key in Windows Forms Application](https://help.syncfusion.com/windowsforms/licensing/how-to-register-in-an-application)
* [Syncfusion Windows Forms .NET Compatibility](https://help.syncfusion.com/windowsforms/dotnet-core-compatibility)
* [Syncfusion Windows Forms Release Notes](https://help.syncfusion.com/windowsforms/release-notes)
* [.NET download page](https://dotnet.microsoft.com/en-us/download)
* [Visual Studio on Arm-powered devices](https://learn.microsoft.com/en-us/visualstudio/install/visual-studio-on-arm-devices?view=visualstudio)