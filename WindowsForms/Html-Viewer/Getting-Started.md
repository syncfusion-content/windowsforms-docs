---
layout: post
title: Getting Started with Windows Forms HTMLUI | Syncfusion®
description: Learn how to get started with the Syncfusion Windows Forms HTML Viewer control, including setup and loading HTML content.
platform: windowsforms
control: HTMLUI
documentation: ug
---

# Getting Started with WinForms HTML Viewer

This section describes how to configure a `WinForms HTML Viewer Control` in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#htmluicontrol) section to get the list of assemblies or the NuGet package that needs to be added as a reference to use the control in any application.

Find more details on how to install NuGet packages in a Windows Forms application in the [How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) link.

## Creating simple application with WinForms HTML Viewer Control

You can create a Windows Forms application with the WinForms HTML Viewer Control as follows:

1. [Creating the project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)
4. [Loading a file into document](#loading-a-file-into-document)

### Creating the project

Create a new Windows Forms project in Visual Studio to display the WinForms HTML Viewer Control.

## Adding control via designer

The WinForms HTML Viewer Control can be added to the application by dragging it from the toolbox and dropping it in the designer view. The following required assembly references will be added automatically:

* Syncfusion.HTMLUI.Base.dll
* Syncfusion.HTMLUI.Windows.dll
* Syncfusion.Scripting.Base.dll
* Syncfusion.Shared.Base

![Search WinForms HTML Viewer control in the toolbox](Getting-Started_images/GettingStarted-img1.png)

![WinForms HTML Viewer control dragged and dropped onto the application form](Getting-Started_images/GettingStarted-img5.png)

**Configure Title**

The title text can be set using the `Title` property. The visibility of the title can be customized using the `ShowTitle` property.

![Title configured for the WinForms HTML Viewer control](Getting-Started_images/GettingStarted-img4.png)

## Adding control manually using code

To add the control manually in C#, follow the steps:

**Step 1** : Add the following required assembly references to the project:

      * Syncfusion.HTMLUI.Base.dll
      * Syncfusion.HTMLUI.Windows.dll
      * Syncfusion.Scripting.Base.dll
      * Syncfusion.Shared.Base

**Step 2**: Include the namespace `Syncfusion.Windows.Forms.HTMLUI`.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.HTMLUI;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.HTMLUI

{% endhighlight %}

{% endtabs %}

**Step 3** : Create the WinForms HTML Viewer Control instance and add it to the form.

{% tabs %}

{% highlight c# %}

HTMLUIControl htmluiControl1 = new HTMLUIControl();

this.htmluiControl1.Dock = System.Windows.Forms.DockStyle.Fill;

this.htmluiControl1.Text = "htmluiControl1";

this.Controls.Add(this.htmluiControl1);

{% endhighlight %}


{% highlight VB %}

Dim htmluiControl1 As New HTMLUIControl()

Me.htmluiControl1.Dock = System.Windows.Forms.DockStyle.Fill

Me.htmluiControl1.Text = "htmluiControl1"

Me.Controls.Add(Me.htmluiControl1)

{% endhighlight %}

{% endtabs %}

![HTMLUIControl added using code](Getting-Started_images/GettingStarted-img2.png)

**Configure Title**

Title text can be set using [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_Title) property. The visibility of the title can be customized using [ShowTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_ShowTitle) property.

{% tabs %}

{% highlight c# %}

this.htmluiControl1.ShowTitle = true;
this.htmluiControl1.Title = "StartUp Document";

{% endhighlight %}


{% highlight VB %}

Me.htmluiControl1.ShowTitle = True
Me.htmluiControl1.Title = "StartUp Document"

{% endhighlight %}

{% endtabs %}

![Title set for the WinForms HTML Viewer control](Getting-Started_images/GettingStarted-img6.png)


## Loading a file into document

A file can be loaded into the WinForms HTML Viewer Control using the [LoadHTML](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_LoadHTML_System_IO_Stream_) method, with the file path given as a parameter.

{% tabs %}

{% highlight c# %}

this.htmluiControl1.LoadHTML(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.htm");

{% endhighlight %}


{% highlight VB %}

Me.htmluiControl1.LoadHTML(Path.GetDirectoryName(Application.ExecutablePath) + @"\..\..\FileName.htm")

{% endhighlight %}

{% endtabs %}

![WinForms HTML Viewer control loading the specified input file](Getting-Started_images/GettingStarted-img3.png)