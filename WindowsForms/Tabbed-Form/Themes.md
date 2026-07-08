---
layout: post
title: Themes in Windows Forms Tabbed Form control | Syncfusion®
description: Learn about Themes support in Syncfusion® Windows Forms Tabbed Form (SfTabbedForm) control, its elements and more details.
platform: windowsforms
control: SfTabbedForm
documentation: ug
---

# Themes in Windows Forms Tabbed Form (SfTabbedForm)

[Windows Forms Tabbed Form](https://www.syncfusion.com/winforms-ui-controls/tabbed-form) (SfTabbedForm) offers the following built-in themes for professional representation:

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black
* Office2019Colorful
* HighContrastBlack

Themes can be applied to `SfTabbedForm` by following these steps:

* `Load theme assembly`
* `Overriding theme style`
* `Apply theme`
* `Apply theme to entire application`

## Load theme assembly

To set theme to `SfTabbedForm`, the following assemblies should be added as reference in any application.

<table>
<tr>
<td>
{{'**Assemblies**'| markdownify }}
</td>
<td>
{{'        **Themes**'| markdownify }}
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

Before applying theme to `SfTabbedForm`, required theme assembly should be loaded.

{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.Controls;

static class Program
{
    /// <summary>
    /// The main entry point for an application.
    /// </summary>
    [STAThread]
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

Friend NotInheritable Class Program
	''' <summary>
	''' The main entry point for the application.
	''' </summary>
	Private Sub New()
	End Sub
	<STAThread>
	Shared Sub Main()
		Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(DemoCommon.FindLicenseKey())
		SfSkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2016Theme).Assembly)
		SfSkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2019Theme).Assembly)
		SfSkinManager.LoadAssembly(GetType(Syncfusion.HighContrastTheme.WinForms.HighContrastTheme).Assembly)
		Application.EnableVisualStyles()
		Application.SetCompatibleTextRenderingDefault(False)
		Application.Run(New Form1())
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

## Overriding theme style

By default, the appearance customization settings done at the control level will not be overridden by the theme. To allow the theme to override these customizations, set the [CanOverrideStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfTabbedForm.html#Syncfusion_WinForms_Controls_SfTabbedForm_CanOverrideStyle) property to `true`.

{% tabs %}
{% highlight c# %}
 CanOverrideStyle = true;
 this.ThemeName = "Office2019Colorful";
{% endhighlight %}
{% highlight vb %}
 CanOverrideStyle = True
 Me.ThemeName = "Office2019Colorful"
{% endhighlight %}
{% endtabs %}

## Apply theme

The appearance of `SfTabbedForm` can be changed using [ThemeName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfTabbedForm.html#Syncfusion_WinForms_Controls_SfTabbedForm_ThemeName) of `SfTabbedForm`.

### Office2016Colorful

This option helps to set the Office2016Colorful theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "Office2016Colorful";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "Office2016Colorful"
{% endhighlight %}
{% endtabs %}

![Office2016Colorful theme applied in winforms SfTabbedForm](Themes_images/Themes_img1.png)

### Office2016White

This option helps to set the Office2016White theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "Office2016White";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "Office2016White"
{% endhighlight %}
{% endtabs %}

![Office2016White theme applied in winforms sfform](Themes_images/Themes_img2.png)

### Office2016DarkGray

This option helps to set the Office2016DarkGray theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "Office2016DarkGray";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "Office2016DarkGray"
{% endhighlight %}
{% endtabs %}

### Office2016Black

This option helps to set the Office2016Black theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "Office2016Black";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "Office2016Black"
{% endhighlight %}
{% endtabs %}

![Office2016Black theme applied in winforms sfform](Themes_images/Themes_img4.png)

### Office2019Colorful

This option helps to set the Office2019Colorful theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "Office2019Colorful";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "Office2019Colorful"
{% endhighlight %}
{% endtabs %}

![Office2019Colorful theme applied in winforms sfform](Themes_images/Themes_img5.png)


### HighContrastBlack

This option helps to set the HighContrastBlack theme.

{% tabs %}
{% highlight c# %}
 this.ThemeName = "HighContrastBlack";
{% endhighlight %}
{% highlight vb %}
 Me.ThemeName = "HighContrastBlack"
{% endhighlight %}
{% endtabs %}

![Highcontrastblack theme applied in winforms sfform](Themes_images/Themes_img6.png)

## Apply theme to entire application

Skin manager allows to apply theme for all the controls and forms in an application by setting the [ApplicationVisualTheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SkinManager.html#Syncfusion_Windows_Forms_SkinManager_ApplicationVisualTheme) property. It allows you to theme entire application using single `ApplicationVisualTheme` property. 

{% tabs %}
{% highlight c# %}

static void Main() 
{ 
    SfSkinManager.ApplicationVisualTheme = "Office2019Colorful";
    Application.EnableVisualStyles(); 
    Application.SetCompatibleTextRenderingDefault(false); 
    Application.Run(new Form1()); 
} 

{% endhighlight %}
{% endtabs %}

N> Set the `ApplicationVisualTheme` property before main form is initialized.
