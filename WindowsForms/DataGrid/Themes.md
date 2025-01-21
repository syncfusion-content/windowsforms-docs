---
layout: post
title: Theme in winforms datagrid | Syncfusion®
description: Learn about the theme support and load theme assembly in Syncfusion® WinForms SfDataGrid control and more details.
platform: windowsforms
control: SfDataGrid
documentation: ug
---
# Theme in WinForms DataGrid
SfDataGrid offers six built in themes for professional representation as follows.

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black
* Office2019Colorful
* HighContrastBlack

Theme can be applied to SfDataGrid by following the below steps:

* [Load theme assembly](#load-theme-assembly)
* [Apply theme](#apply-theme)

## Load theme assembly

To set theme to `SfDataGrid`, the following assemblies should be added as reference in any application.

<table>
<tr>
<td>
{{'**Assemblies**'| markdownify }}
</td>
<td>
{{'        **Themes**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Office2016Theme.WinForms       
</td>
<td>
Office2016Colorful<br>
Office2016White<br>
Office2016DarkGray<br>
Office2016Black
</td>
</tr>
<tr>
<td>
Syncfusion.Office2019Theme.WinForms
</td>
<td>
Office2019Colorful
</td>
</tr>
<tr>
<td>
Syncfusion.HighContrastTheme.WinForms
</td>
<td>
HighContrastBlack
</td>
</tr>
</table>

Before applying theme to `SfDataGrid`, required theme assembly should be loaded.

{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.Controls;

static class Program
{
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        
        static void Main()
        {
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(DemoCommon.FindLicenseKey());
            SfSkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.Office2016Theme).Assembly);
            SfSkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.Office2019Theme).Assembly);
            SfSkinManager.LoadAssembly(typeof(Syncfusion.HighContrastTheme.WinForms.HighContrastTheme).Assembly);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
}

{% endhighlight %}
{% highlight vb %}
Imports Syncfusion.WinForms.Controls

Friend Module Program
        ''' <summary>
        ''' The main entry point for the application.
        ''' </summary>
        Sub Main()
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(DemoCommon.FindLicenseKey())
            SfSkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2016Theme).Assembly)
            SfSkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2019Theme).Assembly)
            SfSkinManager.LoadAssembly(GetType(Syncfusion.HighContrastTheme.WinForms.HighContrastTheme).Assembly)
            Application.EnableVisualStyles()
            Application.SetCompatibleTextRenderingDefault(False)
            Application.Run(New Form1())
        End Sub
End Module
{% endhighlight %}
{% endtabs %}

## Apply theme
Appearance of SfDataGrid can be changed by [ThemeName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) of SfDataGrid.

## Office2016Colorful
This option helps to set the Office2016Colorful Theme.

{% tabs %}
{% highlight c# %}
// Office2016Colorful
 this.sfDataGrid.ThemeName = "Office2016Colorful";
{% endhighlight %}
{% highlight vb %}
' Office2016Colorful
 Me.sfDataGrid.ThemeName = "Office2016Colorful"
{% endhighlight %}
{% endtabs %}

![Office2016colorful theme applied in winforms datagrid](Themes_images/Themes_img1.png)

## Office2016White
This option helps to set the Office2016White Theme.

{% tabs %}
{% highlight c# %}
// Office2016White
 this.sfDataGrid.ThemeName = "Office2016White";
{% endhighlight %}
{% highlight vb %}
' Office2016White
 Me.sfDataGrid.ThemeName = "Office2016White"
{% endhighlight %}
{% endtabs %}

![Office2016white theme applied in winforms datagrid](Themes_images/Themes_img2.png)

## Office2016DarkGray
This option helps to set the Office2016DarkGray Theme.

{% tabs %}
{% highlight c# %}
// Office2016DarkGray
 this.sfDataGrid.ThemeName = "Office2016DarkGray";
{% endhighlight %}
{% highlight vb %}
' Office2016DarkGray
 Me.sfDataGrid.ThemeName = "Office2016DarkGray"
{% endhighlight %}
{% endtabs %}

![Office2016darkgray theme applied in winforms datagrid](Themes_images/Themes_img3.png)

## Office2016Black
This option helps to set the Office2016Black Theme.

{% tabs %}
{% highlight c# %}
// Office2016Black
 this.sfDataGrid.ThemeName = "Office2016Black";
{% endhighlight %}
{% highlight vb %}
' Office2016Black
 Me.sfDataGrid.ThemeName = "Office2016Black"
{% endhighlight %}
{% endtabs %}

![Office2016black theme applied in winforms datagrid](Themes_images/Themes_img4.png)

## Office2019Colorful
This option helps to set the Office2019Colorful Theme.

{% tabs %}
{% highlight c# %}
// Office2019Colorful
 this.sfDataGrid.ThemeName = "Office2019Colorful";
{% endhighlight %}
{% highlight vb %}
' Office2019Colorful
 Me.sfDataGrid.ThemeName = "Office2019Colorful"
{% endhighlight %}
{% endtabs %}

![Office2019colorful theme applied in winforms datagrid](Themes_images/Themes_img5.png)

## HighContrastBlack
This option helps to set the HighContrastBlack Theme.

{% tabs %}
{% highlight c# %}
// HighContrastBlack
 this.sfDataGrid.ThemeName = "HighContrastBlack";
{% endhighlight %}
{% highlight vb %}
' HighContrastBlack
 Me.sfDataGrid.ThemeName = "HighContrastBlack"
{% endhighlight %}
{% endtabs %}

![Highcontrastblack theme applied in winforms datagrid](Themes_images/Themes_img6.png)
