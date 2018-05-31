---
layout: post
title: Creating-a-Simple-XPTaskPane | WindowsForms | Syncfusion
description: creating a simple xptaskpane
platform: WindowsForms
control: XPTaskPane
documentation: ug
---
# Getting started

This section describes how to add `XPTaskPane` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

The following list of assemblies should be added as reference to use the XPTaskPane in any application:

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Base.dll
</td>
<td>
Syncfusion.Grid.Base contains classes that contains fundamentals and base classes of GridControl.
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Windows.dll
</td>
<td>
Syncfusion.Grid.Windows contains classes that handles all UI operations, fundamentals and base classes of GridControl which are used in the XPTaskPane control.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Base.dll
</td>
<td>
Syncfusion.Shared.Base contains style related properties of XPTaskPane and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Windows.dll
</td>
<td>
Syncfusion.Shared.Windows contains style related properties of XPTaskPane and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Base.dll
</td>
<td>
Syncfusion.Tools.Base contains base class which used for XPTaskPane control.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Windows.dll
</td>
<td>
Syncfusion.Tools.Windows contains the class that handles all UI operations and contains helper class of XPTaskPane control.
</td>
</tr>
</table>


## Installing NuGet Packages

To use XPTaskPane control in Windows Forms application via nuget, the following packages should be installed.
 
<table>
<tr>
<td>{{'**S.No**'| markdownify }}
</td>
<td>{{'**Framework version**'| markdownify }}
</td>
<td>{{'**NuGet Packages**'| markdownify }}
</td>
</tr>
<tr>
<td> 1
</td>
<td> 2.0
</td>
<td> Syncfusion.Tools.Windows20
</td>
</tr>
<tr>
<td> 2
</td>
<td> 3.5
</td>
<td> Syncfusion.Tools.Windows35
</td>
</tr>
<tr>
<td> 3
</td>
<td> 4.0
</td>
<td> Syncfusion.Tools.Windows40
</td>
</tr>
<tr>
<td> 4
</td>
<td> 4.5
</td>
<td> Syncfusion.Tools.Windows45
</td>
</tr>
<tr>
<td> 5
</td>
<td> 4.5.1
</td>
<td>Syncfusion.Tools.Windows451
</td>
</tr>
<tr>
<td> 6
</td>
<td> 4.6
</td>
<td>Syncfusion.Tools.Windows46
</td>
</tr>
</table>
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)


# Creating simple application with XPTaskPane

You can create the Windows Forms application with XPTaskPane control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the XPTaskPane with  functionalities.

## Adding control via designer

The XPTaskPane control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img1.png)

**Adding TaskPane pages**

To add pages into XPTaskPane, Click on `Add Page` in Smart Tags of XPTaskPane in designer view. On dropping XPTaskPane, WizardContainer will be automatically added as `TaskPanePageContainer`.

![](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img2.png)

## Adding control manually in code

To add control manually in C#, follow the given steps:

1. Add the following required assembly references to the project:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

2. Include the namespaces **Syncfusion.Tools.Windows**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Tools.Windows;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Tools.Windows

{% endhighlight  %}

{% endtabs %} 

2. Create `XPTaskPane` control instance and add it to the form.

{% tabs %}

{% highlight C# %}

XPTaskPane xpTaskPane1 = new XPTaskPane();

this.Controls.Add(xpTaskPane1);

{% endhighlight %}

{% highlight VB %}

Dim xpTaskPane1 As XPTaskPane = New XPTaskPane()

Me.Controls.Add(xpTaskPane1)

{% endhighlight %}

{% endtabs %}

![](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img3.png)


**Adding WizardContainer as TaskPanePageContainer**

To added pages into XPTaskPane, it is necessary to added a Container control for TaskPanePage. Here WizardContainer is added as TaskPanePageContainer.

{% tabs %}

{% highlight C# %}

WizardContainer wizardContainer1 = new WizardContainer();

this.xpTaskPane1.Controls.Add(this.wizardContainer1);

this.xpTaskPane1.TaskPanePageContainer = this.wizardContainer1;

{% endhighlight %}

{% highlight VB %}

Dim wizardContainer1 As WizardContainer = New WizardContainer()

Me.xpTaskPane1.Controls.Add(Me.wizardContainer1);

Me.xpTaskPane1.TaskPanePageContainer = Me.wizardContainer1;

{% endhighlight %}

{% endtabs %}


**Adding XPTaskPage**

Create an instance of XPTaskPage class and add it to `TaskPages` collection in XPTaskPane.

{% tabs %}

{% highlight C# %}

XPTaskPage xpTaskPage1 = new XPTaskPage();

this.xpTaskPage1.Title = "New Page";

this.wizardContainer1.Controls.Add(this.xpTaskPage1);

this.xpTaskPane1.TaskPages = new XPTaskPage[] {
        this.xpTaskPage1};

{% endhighlight %}

{% highlight VB %}

Dim xpTaskPage1 As XPTaskPage = New XPTaskPage()

Me.xpTaskPage1.Title = "New Page"

Me.wizardContainer1.Controls.Add(me.xpTaskPage1)

Me.xpTaskPane1.TaskPages = New XPTaskPage[] {
        Me.xpTaskPage1};

{% endhighlight %}

{% endtabs %}

![](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img4.png)