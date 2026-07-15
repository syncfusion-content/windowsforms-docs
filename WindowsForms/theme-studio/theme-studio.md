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

Add the exported assembly (*.dll) as a reference in your Windows Forms project (for example, right-click the project in **Solution Explorer** and choose **Add** → **Reference** → **Browse**, then select the exported DLL).

**Note:** Close Theme Studio before referencing the exported DLL to avoid file-lock errors.

![Attach exported assembly in Windows Forms project](ThemeStudio_images/Export-dialog-theme-studio.png)

**Step 2:**

Load the theme assembly in `Program.cs` of your application and then initialize the SfDataGrid control in the main form. Set the `ThemeName` property of the SfDataGrid exactly to the exported assembly name. The exported assembly name and the class name follow the convention `Syncfusion.YourThemeName.Theme` (for example, `Syncfusion.VioletTheme.Theme`).

**C# — Program.cs**

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
using System;
using System.Windows.Forms;
using Syncfusion.Licensing;
using Syncfusion.WinForms.Themes;

namespace ThemeStudioDemo
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // Replace with your actual Syncfusion license key.
            // See https://help.syncfusion.com/windowsforms/licensing for details.
            SyncfusionLicenseProvider.RegisterLicense("YOUR_LICENSE_KEY");

            // Load the exported theme assembly before any Syncfusion control is created.
            SkinManager.LoadAssembly(typeof(Syncfusion.VioletTheme.Theme).Assembly);

            Application.EnableVisualStyles();
            // SetCompatibleTextRenderingDefault must be called before any control is created.
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

**C# — Form1.cs**

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}
using System.Windows.Forms;
using Syncfusion.WinForms.DataGrid;

namespace ThemeStudioDemo
{
    public partial class Form1 : Form
    {
        private SfDataGrid sfDataGrid1;

        public Form1()
        {
            InitializeComponent();

            // The ThemeName must match the exported assembly name.
            sfDataGrid1 = new SfDataGrid();
            sfDataGrid1.ThemeName = "VioletTheme";
            this.Controls.Add(sfDataGrid1);
        }
    }
}
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

**VB — Program.vb**

{% capture codesnippet3 %}
{% tabs %}
{% highlight vb %}
Imports System
Imports System.Windows.Forms
Imports Syncfusion.Licensing
Imports Syncfusion.WinForms.Themes

Module Program
    <STAThread>
    Private Sub Main()
        ' Replace with your actual Syncfusion license key.
        ' See https://help.syncfusion.com/windowsforms/licensing for details.
        SyncfusionLicenseProvider.RegisterLicense("YOUR_LICENSE_KEY")

        ' Load the exported theme assembly before any Syncfusion control is created.
        SkinManager.LoadAssembly(GetType(Syncfusion.VioletTheme.Theme).Assembly)

        Application.EnableVisualStyles()
        ' SetCompatibleTextRenderingDefault must be called before any control is created.
        Application.SetCompatibleTextRenderingDefault(False)
        Application.Run(New Form1())
    End Sub
End Module
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

**VB — Form1.vb**

{% capture codesnippet4 %}
{% tabs %}
{% highlight vb %}
Imports System.Windows.Forms
Imports Syncfusion.WinForms.DataGrid

Public Class Form1
    Private sfDataGrid1 As SfDataGrid

    Public Sub New()
        InitializeComponent()

        ' The ThemeName must match the exported assembly name.
        sfDataGrid1 = New SfDataGrid()
        sfDataGrid1.ThemeName = "VioletTheme"
        Me.Controls.Add(sfDataGrid1)
    End Sub
End Class
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet4 | OrderList_Indent_Level_1 }}

**Step 3:**

Compile and run the Windows Forms application. The custom theme is applied to the SfDataGrid control at run-time. 

![Theme applied in SfDataGrid](ThemeStudio_images/Theme-applied-SfDataGrid.png)