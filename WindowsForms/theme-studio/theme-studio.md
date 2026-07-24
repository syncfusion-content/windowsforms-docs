---
layout: post
title: Getting Started With Windows Forms Theme Studio | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Theme Studio, its elements, and more.
platform: windowsforms
control: ThemeStudio
documentation: ug
---

# Getting Started With Windows Forms Theme Studio

Theme Studio for WinForms can be used to create and apply a new theme for Syncfusion<sup>®</sup> controls from an existing theme. The primary goal here is to deliver appearance-rich Syncfusion<sup>®</sup> controls that best suit every user application, based on the application's needs.

## Customizing Theme Color in Theme Studio

In the Theme Studio utility, each theme has a unique common variable list. When the user changes a common variable's color code value, it will reflect in all the Syncfusion<sup>®</sup> WinForms controls. All Syncfusion<sup>®</sup> WinForms control styles are derived from these theme-based common variables.

The following steps describe how to launch and work with the Theme Studio utility.


**Step 1:**

After installing the "Syncfusion<sup>®</sup> Windows Forms" suite, launch and select "Theme Studio" from the start-up panel.

![Theme Studio for Windows Forms](ThemeStudio_images/Built-In-Themes.png)


**Step 2:**

The Theme Studio window is divided into two sections: a controls preview on the right and a theme-customization panel on the left.

![Theme Studio for Windows Forms](ThemeStudio_images/theme-studio.png)


**Step 3:**

Click a color picker in the theme-customization section to select a color.

![Choose color in Theme Studio for Windows Forms](ThemeStudio_images/color-selected-in-theme-studio.png)


**Step 4:**

The Syncfusion<sup>®</sup> WinForms controls render with the newly selected colors in the preview section. 

![Color reflected in controls loaded inside Theme Studio for Windows Forms](ThemeStudio_images/color-reflected-theme-studio.png)


## Export the Customized Theme
 
You can export the custom theme after changing the theme colors.


**Step 1:**

Click the Export button in the bottom left corner of the Theme Studio application. 

![Export option in Theme Studio for Windows Forms](ThemeStudio_images/Export-Theme-studio.png)


**Step 2:**

Now the export dialog appears with an option to select either all controls or just the desired control(s). This option is useful when you have integrated a selective list of Syncfusion<sup>®</sup> WinForms controls in your application. The Theme Studio will filter only the selected controls and customize the final output for those controls alone, thereby reducing the final output assembly size. 

![Export dialog in Theme Studio for Windows Forms](ThemeStudio_images/Export-dialog-theme-studio.png)


**Step 3:**

The exported theme is delivered as an assembly (*.dll) file that contains color codes for the selected Syncfusion<sup>®</sup> WinForms controls. 

![Export Theme assembly from Theme Studio for Windows Forms](ThemeStudio_images/Theme-Assembly-Theme-studio.png)


**Note:** You can enter the assembly name of your own choice while exporting. But remember that the assembly (*.dll) name will be the custom theme name, when you refer to it in your WinForms application.


## Using the Customized Theme in a Windows Forms Application

You can now add the exported assembly to your Windows Forms application and set the custom theme to the appropriate controls. In the following example, the custom theme is applied to the SfDataGrid control. 

**Step 1:**

Add the exported assembly (*.dll) as a reference in your Windows Forms project (for example, right-click the project in **Solution Explorer** and choose **Add** → **Reference** → **Browse**, select the exported assembly file).

**Note:** Close Theme Studio before referencing the exported assembly file to avoid file locking errors.

![Export dialog in Theme Studio for Windows Forms](ThemeStudio_images/Export-dialog-theme-studio.png)

**Step 2:**

Load the exported theme assembly and apply the custom theme to the SfDataGrid control.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;
using System;
using System.Reflection;
using System.Windows.Forms;

namespace ThemeStudioDemo
{
    static class Program
    {
        [STAThread]
        static void Main()
        {
            SkinManager.LoadAssembly(Assembly.LoadFrom("VioletTheme.dll"));

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms
Imports System.Reflection
Imports System.Windows.Forms

Module Program
    <STAThread()>
    Sub Main()
        SkinManager.LoadAssembly(Assembly.LoadFrom("VioletTheme.dll"))

        Application.EnableVisualStyles()
        Application.SetCompatibleTextRenderingDefault(False)
        Application.Run(New Form1())
    End Sub
End Module

{% endhighlight %}

{% endtabs %}

**Step 3:**

Set the exported theme name to the `ThemeName` property of the SfDataGrid control.

{% tabs %}

{% highlight C# %}

public Form1()
{
    InitializeComponent();

    sfDataGrid1.ThemeName = "VioletTheme";
}

{% endhighlight %}

{% highlight VB %}

Public Sub New()
    InitializeComponent()

    sfDataGrid1.ThemeName = "VioletTheme"
End Sub

{% endhighlight %}

{% endtabs %}

N> The `sfDataGrid1` control should already be added to the form through the designer or created in code.

**Step 4:**

Compile and run the Windows Forms application. The custom theme is applied to the SfDataGrid control at run-time. 

![Theme applied in SfDataGrid](ThemeStudio_images/Theme-applied-SfDataGrid.png)

N> Replace `VioletTheme` with the actual name used while exporting the custom theme assembly from Theme Studio. Ensure that the exported theme assembly, such as `VioletTheme.dll`, is added to the project and copied to the application output directory.