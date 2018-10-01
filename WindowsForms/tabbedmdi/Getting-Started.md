---
layout: post
title: Getting Started with Syncfusion TabbedMDIManager control for Windows Forms
description: How to add TabbedMDIManager and enable its basic features.
platform: WindowsForms
control: TabbedMDIPackage 
documentation: ug
---

# Getting started

This section explains how to design a `TabbedMDIManager` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#tabbedmdimanger) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Please find more details regarding how to install the nuget packages in windows form application in the below link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating simple application with TabbedMDIManager

You can create the Windows Forms application with TabbedMDIManager control as follows:

1. [Creating the project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Add Form as Tabbed MDI child](#add-form-as-tabbed-mdi-child)
5. [Create tab group](#create-tab-group)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the TabbedMDIManager.

## Adding control via designer

The TabbedMDIManager control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

   * Syncfusion.Grid.Base.dll
   * Syncfusion.Grid.Windows.dll
   * Syncfusion.Shared.Base.dll
   * Syncfusion.Shared.Windows.dll
   * Syncfusion.Tools.Base.dll
   * Syncfusion.Tools.Windows.dll

![](GettingStarted_images/Search.png)

As soon as the control is dropped, the Form1’s `IsMDIContainer` property will be set to `true` and it changes to an MDIContainer. Also, the `AttachedTo` property of the TabbedMDIManager will be set to Form1.

![](GettingStarted_images/ControlAdded.png)
 
## Adding control manually in code

To add control manually in C#, follow the given steps:

**Step1:** Add the following required assembly references to the project:

   * Syncfusion.Grid.Base.dll
   * Syncfusion.Grid.Windows.dll
   * Syncfusion.Shared.Base.dll
   * Syncfusion.Shared.Windows.dll
   * Syncfusion.Tools.Base.dll
   * Syncfusion.Tools.Windows.dll

**Step2:** Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %}

**Step3:** Create the TabbedMDIManager control instance. 

{% tabs %}

{% highlight C# %}

TabbedMDIManager tabbedMDIManager = new TabbedMDIManager();

{% endhighlight  %}

{% highlight VB %}

Dim tabbedMDIManager As TabbedMDIManager = New TabbedMDIManager()

{% endhighlight  %}

{% endtabs %}

## Add Form as Tabbed MDI child

We can attach the `Form1` to TabbedMDIManager container by using its `AttachToMdiContainer` function. Make sure whether the `IsMdIContainer` property of Form1 is set to `true`. Now the TabbedMDI mode will be turned on and any new MDIChildren created will be grouped as Tabs. Then, create a new Form and displays it in Form1.

{% tabs %}

{% highlight C# %}

this.IsMdiContainer = true;

// Use `AttachToMdiContainer` function only when `AttachedTo` property of TabbedMDIManager is not set to Form1. 

this.tabbedMDIManager.AttachToMdiContainer(this);

this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);

Form form = new Form();

form.MdiParent = this;

form.Text = "Tab1";

form.Show();

{% endhighlight  %}

{% highlight VB %}

Me.IsMdiContainer = True

' Use `AttachToMdiContainer` function only when `AttachedTo` property of TabbedMDIManager is not set to Form1. 

Me.tabbedMDIManager.AttachToMdiContainer(Me)

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful)

Dim form As Form = New Form

form.MdiParent = Me

form.Text = "Tab1"

form.Show()

{% endhighlight  %}

{% endtabs %}

The following screenshot illustrates new form will be tabbed inside form1.

![](GettingStarted_images/TabbedMDIManager.png)

## Create tab group

The `TabbedMDIManager` provides support to create a tab group horizontally or vertically.

`CreateNewHorizontalGroup` function helps to create a new tab group horizontally in TabbedMDIManager. 

{% tabs %}

{% highlight C# %}

Form form = new Form();

form.MdiParent = this;

form.Text = "Tab1";

form.Show();


Form form1 = new Form();

form1.MdiParent = this;

form1.Text = "Tab2";

form1.Show();

this.tabbedMDIManager.CreateNewHorizontalGroup();

{% endhighlight %}


{% highlight VB %}

Dim form As Form = New Form

form.MdiParent = Me

form.Text = "Tab1"

form.Show()


Dim form1 As Form = New Form

form1.MdiParent = Me

form1.Text = "Tab2"

form1.Show()

Me.tabbedMDIManager.CreateNewHorizontalGroup()

{% endhighlight %}

{% endtabs %}

![](GettingStarted_images/TabGroupHorizontal.png)

`CreateNewVerticalGroup` function helps to create a new tab group vertically in TabbedMDIManager. 

{% tabs %}

{% highlight C# %}

Form form = new Form();

form.MdiParent = this;

form.Text = "Tab1";

form.Show();


Form form1 = new Form();

form1.MdiParent = this;

form1.Text = "Tab2";

form1.Show();

this.tabbedMDIManager.CreateNewVerticalGroup();

{% endhighlight %}


{% highlight VB %}

Dim form As Form = New Form

form.MdiParent = Me

form.Text = "Tab1"

form.Show()


Dim form1 As Form = New Form

form1.MdiParent = Me

form1.Text = "Tab2"

form1.Show()

Me.tabbedMDIManager.CreateNewVerticalGroup()

{% endhighlight %}

{% endtabs %}

![](GettingStarted_images/TabGroupVertical.png)