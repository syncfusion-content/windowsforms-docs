---
layout: post
title: Applying Themes in Windows Forms EditorsPackage control | Syncfusion
description: Learn about Applying Themes support in Syncfusion Windows Forms EditorsPackage control, its elements and more details.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Applying Themes in EditorsPackage

The [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabled) property specifies whether XPThemes should be used or not when [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_BorderStyle) is set to `Fixed3D`.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.ThemesEnabled = true;                          

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![Enabled the themes when the border style is set to Fixed3D in WF TextBoxExt](Applying-Themes_images/Applying-Themes_img1.png)

## Themes

The [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) provides the following themes for professional representation.

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black
* Office2019Colorful
* HighContrastBlack

The themes can be applied by following these steps.

* Load theme assembly
* Apply theme

### Load theme assembly

To set theme to `TextBoxExt`, the following assemblies should be added as reference in any application.

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

Before applying theme to `TextBoxExt`, required theme assembly should be loaded.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms;

static class Program
{
    /// <summary>
    /// The main entry point for the application.
    /// </summary>
    [STAThread]
    static void Main()
    {
        SkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.Office2016Theme).Assembly);
        SkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.Office2019Theme).Assembly);
        SkinManager.LoadAssembly(typeof(Syncfusion.HighContrastTheme.WinForms.HighContrastTheme).Assembly);

        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new Form1());
    }
}

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms

Friend NotInheritable Class Program
	''' <summary>
	''' The main entry point for the application.
	''' </summary>
	Private Sub New()
	End Sub
	<STAThread>
	Shared Sub Main()
		SkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2016Theme).Assembly)
		SkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2019Theme).Assembly)
		SkinManager.LoadAssembly(GetType(Syncfusion.HighContrastTheme.WinForms.HighContrastTheme).Assembly)

		Application.EnableVisualStyles()
		Application.SetCompatibleTextRenderingDefault(False)
		Application.Run(New Form1())
	End Sub
End Class

{% endhighlight %}

{% endtabs %}

### Apply theme

You can change the appearance of TextBoxExt control by using [ThemeName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemeName) property.

{% tabs %}

{% highlight C# %}

this.textBoxExt1.ThemeName = "Office2019Colorful";

{% endhighlight %}

{% highlight VB %}

Me.textBoxExt1.ThemeName = "Office2019Colorful"

{% endhighlight %}

{% endtabs %}

![Set the Office2019theme to WF TextBoxExt](Applying-Themes_images/wf-textboxext-theme.png)
