---
layout: post
title: Syncfusion Component Compatibility with the NIST MBARK Framework
description: Syncfusion components has the Compatibility with the NIST MBARK Framework. It helps to develop a large database of face, fingerprint and iris images.
platform: WindowsForms
control: Introduction
documentation: ug
---

# Compatibility with the NIST MBARK Framework

The [NIST MBARK](https://mbark.nist.gov/) framework, also known as the Multimodal Biometric Application Resource Kit, is public domain source code published by NIST for developing biometric and personal identity verification applications.

MBARK is designed for multimodal biometric applications involving biometric data such as face, fingerprint, and iris. It also provides middleware capabilities for sensor interoperability, workflow configuration, and biometric application development.

Syncfusion Windows Forms controls can be used in MBARK-based Windows Forms applications as user interface components. MBARK handles the biometric acquisition and processing workflow, while Syncfusion Windows Forms controls can be used to design and display the application UI, such as workflow status, sensor status, image previews, logs, and results.

> NIST indicates that some MBARK information may be outdated. Always verify the latest MBARK package, documentation, licensing, and build requirements from the official NIST pages before using it in a production application.

## Prerequisites

To build a Windows Forms application that uses Syncfusion controls with MBARK, you need the following:

* **NIST MBARK package**  
  Download the MBARK source code or demo package from the official [NIST MBARK page](https://mbark.nist.gov/).

* **.NET Framework**  
  The MBARK public build is based on .NET Framework 3.5 SP1. Use a .NET Framework version that is supported by both the MBARK package and the Syncfusion Windows Forms version used in your application.

* **Visual Studio**  
  Use a Visual Studio version that supports Windows Forms development and the target .NET Framework version.

* **Syncfusion Windows Forms controls**  
  Install the required Syncfusion Windows Forms assemblies through NuGet or the Essential Studio installer.

* **MBARK virtual sensors**  
  MBARK provides virtual sensors that can be used for development and testing without physical biometric hardware.

## Compatibility notes

The compatibility of an MBARK-based application depends on the exact versions of MBARK, Syncfusion Windows Forms controls, .NET Framework, Visual Studio, Windows, and the biometric sensor SDKs used in the project.

| Component | Notes |
|---|---|
| MBARK source/demo | Based on .NET Framework 3.5 SP1. |
| Syncfusion Windows Forms controls | Use a Syncfusion version that supports the target .NET Framework version. |
| .NET Framework | Use a version supported by both MBARK and Syncfusion Windows Forms. |
| Visual Studio | Use a version that supports Windows Forms development and the selected .NET Framework version. |
| Biometric sensor SDK | Use the SDK version that matches the sensor hardware and MBARK integration requirements. |

## Usage in Windows Forms applications

In an MBARK-based Windows Forms application, Syncfusion controls can be used to create the user interface for:

* Workflow status
* Sensor status
* Face, fingerprint, or iris image previews
* Capture logs and diagnostic messages
* Verification results
* Configuration screens

The biometric capture, sensor communication, and processing logic are handled by MBARK and the related sensor SDKs.

## Basic integration steps

1. Download the MBARK package from the official [NIST MBARK page](https://mbark.nist.gov/).
2. Install Syncfusion Windows Forms controls through NuGet or the Essential Studio installer.
3. Create a Windows Forms project in Visual Studio.
4. Target a .NET Framework version supported by both MBARK and Syncfusion Windows Forms.
5. Add references to the required MBARK assemblies.
6. Add references to the required Syncfusion Windows Forms assemblies.
7. Install the required biometric sensor drivers if physical sensors are used.
8. Design the Windows Forms UI using Syncfusion controls.
9. Connect MBARK capture, status, and result events to the Windows Forms UI.
10. When updating UI controls from background operations, marshal the update to the Windows Forms UI thread using `Control.Invoke` or `Control.BeginInvoke`.

## Troubleshooting

| Issue | Possible cause | Suggested action |
|---|---|---|
| Missing MBARK assemblies | MBARK package is not installed or not referenced. | Install MBARK and add the required references to the project. |
| Missing Syncfusion assemblies | Required Syncfusion assemblies are not referenced. | Install the required Syncfusion package or add the required assemblies. |
| Sensor not detected | Sensor driver or vendor SDK is missing. | Install the driver and SDK from the sensor manufacturer. |
| Target framework error | The selected .NET Framework version is not supported. | Use a .NET Framework version supported by both MBARK and Syncfusion Windows Forms. |
| Platform mismatch | MBARK, sensor SDK, or project platform target does not match. | Confirm whether the project should target x86, x64, or Any CPU. |
| UI does not update after capture | Callback is raised from a background thread. | Use `Control.Invoke` or `Control.BeginInvoke` before updating Windows Forms controls. |

## License and redistribution

MBARK is described by NIST as public domain source code. Before redistributing or deploying an application that includes MBARK, verify the current license and disclaimer details from the official [NIST MBARK page](https://mbark.nist.gov/).

Syncfusion Windows Forms controls are licensed separately. Make sure your application follows the Syncfusion licensing requirements for the version and controls used in your project.

## See also

* [NIST MBARK official page](https://mbark.nist.gov/)
* [NIST MBARK overview](https://www.nist.gov/itl/mbark-multimodal-biometric-application-resource-kit)
* [Syncfusion Windows Forms overview](https://help.syncfusion.com/windowsforms/overview)
* [Syncfusion Windows Forms system requirements](https://help.syncfusion.com/windowsforms/system-requirements)
* [Microsoft .NET Framework downloads](https://dotnet.microsoft.com/en-us/download)