---
layout: post
title: Themes
description: This section explains about the themes in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---
## Themes
SfDataGrid offers four built in themes for professional representation as follows.

* Office2016Colorful
* Office2016White
* Office2016DarkGray
* Office2016Black

Theme can be applied to SfDataGrid by following the below steps:

* [Load theme assembly](#load-theme-assembly)
* [Apply theme](#apply-theme)

### Load theme assembly
Syncfusion.Office2016Theme.WinForms assembly should be added as reference to set theme for SfDataGrid in any application:
Before apply theme to SfDataGrid, required theme assembly should be loaded as follows.

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
            SfSkinManager.LoadAssembly(GetType(Office2016Theme).Assembly)
            Application.EnableVisualStyles()
            Application.SetCompatibleTextRenderingDefault(False)
            Application.Run(New Form1())
        End Sub
End Module
{% endhighlight %}
{% endtabs %}

### Apply theme
Appearance of SfDataGrid can be changed by `ThemeName` of SfDataGrid.

### Office2016Colorful
This option helps to set the Office2016Colorful Theme.

{% tabs %}
{% highlight c# %}
// Office2016Colorful
 this.sfDataGrid.ThemeName = "Office2016Colorful";
{% endhighlight %}
{% highlight vb %}
' Office2016Colorful
 this.sfDataGrid.ThemeName = "Office2016Colorful"
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img1.png)

### Office2016White
This option helps to set the Office2016White Theme.

{% tabs %}
{% highlight c# %}
// Office2016White
 this.sfDataGrid.ThemeName = " Office2016White ";
{% endhighlight %}
{% highlight vb %}
' Office2016White
 this.sfDataGrid.ThemeName = " Office2016White "
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img2.png)

### Office2016DarkGray
This option helps to set the Office2016DarkGray Theme.

{% tabs %}
{% highlight c# %}
// Office2016DarkGray
 this.sfDataGrid.ThemeName = " Office2016DarkGray ";
{% endhighlight %}
{% highlight vb %}
' Office2016DarkGray
 this.sfDataGrid.ThemeName = " Office2016DarkGray "
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img3.png)

### Office2016Black
This option helps to set the Office2016Black Theme.

{% tabs %}
{% highlight c# %}
// Office2016DarkGray
 this.sfDataGrid.ThemeName = " Office2016Black ";
{% endhighlight %}
{% highlight vb %}
' Office2016DarkGray
 this.sfDataGrid.ThemeName = " Office2016Black "
{% endhighlight %}
{% endtabs %}

![](Themes_images/Themes_img4.png)

