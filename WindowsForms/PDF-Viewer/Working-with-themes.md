---
layout: post
title: Working with themes in Windows Forms PDF Viewer | Syncfusion&reg;
description: Learn about Working with themes support in Syncfusion&reg; Windows Forms PDF Viewer (PdfViewerControl) control and more details.
platform: windowsforms
control: PdfViewerControl
documentation: ug
---

# Working with themes in Windows Forms PDF Viewer (PdfViewerControl)

PDF Viewer provides support for various built-in themes, using which the default appearance of elements that are present in the control can be customized. This can be achieved using the [ThemeName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Core.BaseControl.html#Syncfusion_Windows_Forms_Core_BaseControl_ThemeName) property of [PdfViewerControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PdfViewer.PdfViewerControl.html).

## Assembly requirements

To set a theme to `PdfViewerControl`, the theme assemblies should be added as a reference in the application, in addition to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#pdf-viewer). Refer to the following table for the additional assembly details.

<table>
	<tr>
		<th>
		Themes
		</th>
		<th>
		Assemblies required
		</th>
	</tr>
	<tr>
		<td>
		Office2016Colorful<br>
		Office2016Black<br>
		Office2016DarkGray<br>
		Office2016White
		</td>
		<td>
		No additional assemblies are required as the themes are included in the control assembly itself.
		</td>
	</tr>
	<tr>
		<td>
		Office2019Colorful
		</td>
		<td>
		Syncfusion.Office2019Theme.WinForms
		</td>
	</tr>
	<tr>
		<td>
		HighContrastBlack
		</td>
		<td>
		Syncfusion.HighContrastTheme.WinForms
		</td>
	</tr>
</table>

## Office 2016 themes

It provides support for applying Office 2016 themes to `PdfViewerControl` and its associated elements. Following are the Office 2016 themes that are supported in the PDF Viewer control:

* Office2016Colorful
* Office2016Black
* Office2016DarkGray
* Office2016White

Refer to the following code to apply Office 2016 dark gray theme to the `PdfViewerControl`.

{% tabs %}
{% highlight c# %}

this.pdfViewerControl1.ThemeName = "Office2016DarkGray";
{% endhighlight %}

{% highlight vb %}

Me.pdfViewerControl1.ThemeName = "Office2016DarkGray"

{% endhighlight %}
{% endtabs %}

The following image illustrates the appearance of the control after Office 2016 dark gray theme is applied.

![Office2016 Dark Gray](Themes_images/pv_darkgray.png)

N> You can follow a similar step for all the other Office 2016 themes.

## Office 2019 theme

It provides support for applying Office 2019 theme to `PdfViewerControl` and its associated elements. Before applying this theme to the control, the `Office2016Theme` assembly should be loaded in the main entry point of the application. Refer to the following code to load the assembly using [SkinManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SkinManager.html).

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
        SkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.Office2019Theme).Assembly); 
        Application.EnableVisualStyles(); 
        Application.SetCompatibleTextRenderingDefault(false); 
        Application.Run(new Form1()); 
    } 
}

{% endhighlight %}

{% highlight vb %}

Module Program
    ''' <summary> 
    ''' The main entry point for the application. 
    ''' </summary> 
    <STAThread> 
    Private Sub Main()
        SkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.Office2019Theme).Assembly) 
        Application.EnableVisualStyles()
        Application.SetCompatibleTextRenderingDefault(False) 
        Application.Run(New Form1()) 
    End Sub 
End Class

{% endhighlight %}
{% endtabs %}

After loading the theme assembly, set the `ThemeName` to `Office2019Colorful` as explained in the following code.

{% tabs %}
{% highlight c# %}

this.pdfViewerControl1.ThemeName = "Office2019Colorful";
	
{% endhighlight %}

{% highlight vb %}

Me.pdfViewerControl1.ThemeName = "Office2019Colorful"

{% endhighlight %}
{% endtabs %}

The following image illustrates the appearance of the control after this theme is applied.

![Office2019 Colorful](Themes_images/pv_office2019colorful.png)

## High Contrast theme

It provides support for applying high contrast theme to `PdfViewerControl` and its associated elements. Before applying this theme to the control, the `Office2016Theme` assembly should be loaded in the main entry point of the application. Refer to the following code to load the assembly using [SkinManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SkinManager.html).

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
        SkinManager.LoadAssembly(typeof(Syncfusion.WinForms.Themes.HighContrastTheme).Assembly); 
        Application.EnableVisualStyles(); 
        Application.SetCompatibleTextRenderingDefault(false); 
        Application.Run(new Form1()); 
    } 
}

{% endhighlight %}

{% highlight vb %}

Module Program
    ''' <summary> 
    ''' The main entry point for the application. 
    ''' </summary> 
    <STAThread> 
    Private Sub Main()
        SkinManager.LoadAssembly(GetType(Syncfusion.WinForms.Themes.HighContrastTheme).Assembly) 
        Application.EnableVisualStyles()
        Application.SetCompatibleTextRenderingDefault(False) 
        Application.Run(New Form1()) 
    End Sub 
End Class

{% endhighlight %}
{% endtabs %}

After loading the theme assembly, set the `ThemeName` to `HighContrastBlack` as explained in the following code.

{% tabs %}
{% highlight c# %}

this.pdfViewerControl1.ThemeName = "HighContrastBlack";

{% endhighlight %}

{% highlight vb %}

Me.pdfViewerControl1.ThemeName = "HighContrastBlack"

{% endhighlight %}
{% endtabs %}

The following image illustrates the appearance of the control after this theme is applied.

![High Contrast Black](Themes_images/pv_highcontrastblack.png)


## Default theme

To clear the existing theme and set default theme to the control, set the `ThemeName` to `Default` as explained in the following code.

{% tabs %}
{% highlight c# %}

this.pdfViewerControl1.ThemeName = "Default";

{% endhighlight %}

{% highlight vb %}

Me.pdfViewerControl1.ThemeName = "Default"

{% endhighlight %}
{% endtabs %}

Find the sample from this [GitHub](https://github.com/syncfusion/file-formats-windows-forms-demos/tree/master/pdfviewer/Visual%20Styles/PDF%20Viewer%20Visual%20Styles) location.
