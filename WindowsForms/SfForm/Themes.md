---
layout: post
title: Themes
description: This section explains about the themes in SfForm.
platform: windowsforms
control: SfForm
documentation: ug
---
# Themes
SfForm  offers four six in themes for professional representation as follows.

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black
* Office2019Colorful
* HighContrastBlack

Theme can be applied to `SfForm` by following the below steps:

* `Load theme assembly`
* `Apply theme`

## Load theme assembly
Syncfusion.Office2016Theme.WinForms, Syncfusion.Office2019Theme.WinForms and Syncfusion.HighContrastTheme.WinForms assemblies should be added as reference to set theme for `SfForm` in any application:
Before apply theme to `SfForm`, required theme assembly should be loaded as follows.

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
            SfSkinManager.LoadAssembly(typeof(Office2016Theme).Assembly);
			SfSkinManager.LoadAssembly(typeof(Office2019Theme).Assembly);
            SfSkinManager.LoadAssembly(typeof(HighContrastTheme).Assembly);
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
		Shared Sub Main()
			SfSkinManager.LoadAssembly(GetType(Office2016Theme).Assembly)
			SfSkinManager.LoadAssembly(GetType(Office2019Theme).Assembly)
			SfSkinManager.LoadAssembly(GetType(HighContrastTheme).Assembly)
			Application.EnableVisualStyles()
			Application.SetCompatibleTextRenderingDefault(False)
			Application.Run(New Form1())
		End Sub
End Class
{% endhighlight %}
{% endtabs %}

## Apply theme
Appearance of `SfForm` can be changed by [ThemeName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.WinForms.Controls.SfForm~ThemeName.html) of `SfForm`.

### Office2016Colorful
This option helps to set the Office2016Colorful Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "Office2016Colorful";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "Office2016Colorful"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img1.png)

### Office2016White
This option helps to set the Office2016White Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "Office2016White";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "Office2016White"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img2.png)

### Office2016DarkGray
This option helps to set the Office2016DarkGray Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "Office2016DarkGray";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "Office2016DarkGray"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img3.png)

### Office2016Black
This option helps to set the Office2016Black Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "Office2016Black";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "Office2016Black"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img4.png)

### Office2019Colorful
This option helps to set the Office2019Colorful Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "Office2019Colorful";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "Office2019Colorful"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img5.png)

### HighContrastBlack
This option helps to set the HighContrastBlack Theme.

{% tabs %}
{% highlight c# %}
 sfForm.ThemeName = "HighContrastBlack";
{% endhighlight %}
{% highlight vb %}
 sfForm.ThemeName = "HighContrastBlack"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img6.png)



