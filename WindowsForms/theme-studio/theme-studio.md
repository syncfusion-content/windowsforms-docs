
---
layout: post
title: Getting Started With Windows Forms Theme Studio | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Theme Studio, its elements, and more.
platform: windowsforms
control: ThemeStudio
documentation: ug
---

# Getting Started With Windows Forms Theme Studio

Theme Studio helps deliver a rich appearance for Syncfusion<sup>®</sup> Windows Forms controls that best suits your application. You can use Theme Studio to create a new theme from an existing built-in theme and apply it to Syncfusion<sup>®</sup> Windows Forms controls in your application.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Customizing Theme Colors Using Theme Studio](#customizing-theme-colors-using-theme-studio)
3. [Exporting the Customized Theme](#exporting-the-customized-theme)
4. [Using the Customized Theme in a Windows Forms Application](#using-the-customized-theme-in-a-windows-forms-application)
5. [API Reference](#api-reference)
6. [Troubleshooting / FAQ](#troubleshooting--faq)
7. [See Also](#see-also)

## Prerequisites

Before you begin, ensure that the following prerequisites are met:

1. **Syncfusion<sup>®</sup> Windows Forms suite** is installed on your machine. For installation steps, refer to the [Windows Forms Installation documentation](https://help.syncfusion.com/windowsforms/installation).
2. A supported development environment such as **Visual Studio** with the Windows Forms development workload is available.
3. The required **Syncfusion<sup>®</sup> Windows Forms NuGet packages** are restored in the target project (for example, the package that provides the `SfDataGrid` control and the assembly that contains `SkinManager`).
4. A valid **Syncfusion<sup>®</sup> license key** is available. License registration is required in the application before Syncfusion<sup>®</sup> controls are used.

> **Note:** The exact package names and minimum supported versions may vary based on the installed Syncfusion<sup>®</sup> Windows Forms version. Refer to the [Windows Forms Installation documentation](https://help.syncfusion.com/windowsforms/installation) for the latest setup instructions.

## Customizing Theme Colors Using Theme Studio

In Theme Studio, each theme provides a set of **Color Variables**. When you change a Color Variable, the new color is applied to all Syncfusion<sup>®</sup> Windows Forms controls whose styles are derived from that variable. The Color Variables panel on the left of Theme Studio is used to customize theme-based colors.

The following steps describe how to launch and use Theme Studio.

1. **Launch Theme Studio**

   After installing the Syncfusion<sup>®</sup> Windows Forms suite, open the Syncfusion<sup>®</sup> Dashboard and select **Theme Studio** from the start-up panel.

   ![Theme Studio for Windows Forms](ThemeStudio_images/Built-In-Themes.png)

2. **Select a base theme**

   In Theme Studio, choose the built-in theme that you want to use as the base. The Color Variables and the preview are updated to reflect the selected theme. The available Color Variables may differ based on the selected base theme.

   ![Theme Studio for Windows Forms](ThemeStudio_images/theme-studio.png)

3. **Customize colors**

   Click the color pickers in the **Color Variables** section to select the desired color.

   ![Choose color in Theme Studio for Windows Forms](ThemeStudio_images/color-selected-in-theme-studio.png)

4. **Preview the changes**

   The preview section reflects the newly selected color in the Syncfusion<sup>®</sup> Windows Forms controls.

   ![Color reflected in controls loaded inside Theme Studio for Windows Forms](ThemeStudio_images/color-reflected-theme-studio.png)

5. **Save the customized theme**

   Save the customized theme within Theme Studio before exporting. This ensures the latest Color Variable values are included in the exported assembly.

## Exporting the Customized Theme

You can export the customized theme as a theme assembly (`.dll`) and use it in your Windows Forms application.

1. **Open the Export dialog**

   Click the **Export** button in the bottom-left corner of the Theme Studio window.

   ![Export option in Theme Studio for Windows Forms](ThemeStudio_images/Export-Theme-studio.png)

2. **Select the controls to include**

   The Export dialog appears with an option to select either all controls or specific control(s). This option is useful when you have integrated a selective list of Syncfusion<sup>®</sup> Windows Forms controls in your application. Theme Studio will filter only the selected controls and generate the output assembly for those controls alone, reducing the final output assembly size.

   ![Export dialog in Theme Studio for Windows Forms](ThemeStudio_images/Export-dialog-theme-studio.png)

3. **Choose the output location and assembly name**

   Choose the output folder and enter the **assembly name** for the exported theme. The exported theme is saved to the selected folder as an assembly (`.dll`) file that contains the color codes for the selected Syncfusion<sup>®</sup> Windows Forms controls. The assembly name you provide is used as the custom theme name when you reference it in your Windows Forms application.

   ![Export Theme assembly from Theme Studio for Windows Forms](ThemeStudio_images/Theme-Assembly-Theme-studio.png)

### What Gets Exported

The exported theme assembly contains the following:

- Color codes for the selected Syncfusion<sup>®</sup> Windows Forms controls.
- The generated theme namespace and class (the class name typically matches the assembly name).
- Theme resources for the controls that were selected in the Export dialog.

> **Note:** Dependent assemblies or theme resources may vary based on the selected controls and the installed Syncfusion<sup>®</sup> Windows Forms version.

### Export Output Details

| Item               | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| Assembly name      | The name you provide in the Export dialog. Also used as the custom theme name. |
| Output file type   | `.dll` (theme assembly)                                                     |
| Theme name         | Same as the assembly name.                                                  |
| Generated class    | A theme class generated by Theme Studio inside the exported assembly.       |
| Output folder      | The folder you select in the Export dialog.                                 |

## Using the Customized Theme in a Windows Forms Application

You can now add the exported assembly in your Windows Forms application and set the custom theme to the appropriate controls. In this illustration, we are going to witness the custom theme set for SfDataGrid. 

**Step 1:**

Attach the exported assembly (*.dll) in your Windows Forms project.

![Export dialog in Theme Studio for Windows Forms](ThemeStudio_images/Export-dialog-theme-studio.png)

**Step 2:**

Load the Theme assembly in Program.cs of your application and the initialize a SfDataGrid control in the main form and set it’s "ThemeName" property exactly to the assembly name.

{% tabs %}
{% highlight c# %}

    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
			Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(DemoCommon.FindLicenseKey());
            SkinManager.LoadAssembly(typeof(VioletTheme).Assembly);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
	
sfDataGrid1.ThemeName = "VioletTheme";
	
{% endhighlight %}
{% highlight vb %}

Module Program
    <STAThread>
    Private Sub Main()
        Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(DemoCommon.FindLicenseKey())
        SkinManager.LoadAssembly(GetType(VioletTheme).Assembly)
        Application.EnableVisualStyles()
        Application.SetCompatibleTextRenderingDefault(False)
        Application.Run(New Form1())
    End Sub
End Module

sfDataGrid1.ThemeName = "VioletTheme"

{% endhighlight %}
{% endtabs %}

**Step 3:**

Compile and run the Windows Forms application and you can now witness the custom theme applied to SfDataGrid control at run-time. 

![Theme applied in SfDataGrid](ThemeStudio_images/Theme-applied-SfDataGrid.png)

## API Reference

| API | Namespace | Description |
|-----|-----------|-------------|
| `SyncfusionLicenseProvider.RegisterLicense` | `Syncfusion.Licensing` | Registers the Syncfusion<sup>®</sup> license key before using Syncfusion controls. |
| `SkinManager.LoadAssembly` | `Syncfusion.WinForms.Styles` | Loads the exported custom theme assembly. |
| `ThemeName` | Control property, such as `SfDataGrid.ThemeName` | Applies the custom theme to the control. The value must exactly match the exported theme name. |

> **Note:** Load the exported theme assembly using `SkinManager.LoadAssembly` before opening the form. The `ThemeName` value is case-sensitive and must match the exported assembly/theme name.

## Troubleshooting / FAQ

- **Custom theme is not applied at run time.**
  - Ensure the exported theme `.dll` is added as a project reference.
  - Set **Copy Local = True** for the theme assembly.
  - Call `SkinManager.LoadAssembly` before the form is created.
  - Ensure `ThemeName` exactly matches the exported theme name.

- **Theme assembly is not found.**
  - Verify that the exported `.dll` exists in the output folder, such as `bin\Debug` or `bin\Release`.
  - Rebuild the project after setting **Copy Local = True**.

- **Generated theme class is not recognized.**
  - Add the correct `using` or `Imports` namespace generated by the exported theme assembly.
  - Check the namespace and class name using Visual Studio IntelliSense or Object Browser.

- **License warning is displayed.**
  - Register the Syncfusion<sup>®</sup> license during application startup before creating Syncfusion controls.

- **Theme is applied to some controls only.**
  - Re-export the theme and include all required controls in the Export dialog.

## See Also

- [Windows Forms Installation](https://help.syncfusion.com/windowsforms/installation)
- [Syncfusion<sup>®</sup> Windows Forms Documentation](https://help.syncfusion.com/windowsforms/overview)
- [SfDataGrid Documentation](https://help.syncfusion.com/windowsforms/datagrid/overview)
