---
layout: post
title: Getting-Started| WindowsForms | Syncfusion
description:  getting started
platform: WindowsForms
control: TabSplitterContainer 
documentation: ug
---
# Getting started

This section describes how to add `TabSplitterContainer` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

The following list of assemblies should be added as reference to use the TabSplitterContainer in any application:

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#tabsplittercontainer) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)


# Creating simple application with TabSplitterContainer

You can create the Windows Forms application with TabSplitterContainer control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the TabSplitterContainer with functionalities.

## Adding control via Form designer

The TabSplitterContainer control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![](GettingStarted-images/TabSplitterContainer_img1.png)

**Adding Pages into TabSplitterContainer**

Add pages into TabSplitterContainer by clicking `Add primary page` and `Add secondary page` from Smart Tags in TabSplitterContainer in DesignView.

![](GettingStarted-images/TabSplitterContainer_img6.png)

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1** : Add the following required assembly references to the project:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

**Step 2** :  Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %} 

**Step 3** :  Create `TabSplitterContainer` control instance and add it to the form.

{% tabs %}

{% highlight C# %}

TabSplitterContainer tabSplitterContainer1 = new TabSplitterContainer();

this.tabSplitterContainer1.Style = TabSplitterContainerStyle.Office2016Colorful;

this.tabSplitterContainer1.Size = new System.Drawing.Size(248, 77);

this.Controls.Add(tabSplitterContainer1);

{% endhighlight %}

{% highlight VB %}

Dim tabSplitterContainer1 As TabSplitterContainer = New TabSplitterContainer()

me.tabSplitterContainer1.Style = TabSplitterContainerStyle.Office2016Colorful

Me.tabSplitterContainer1.Size = New System.Drawing.Size(248, 77)

Me.Controls.Add(tabSplitterContainer1)

{% endhighlight %}

{% endtabs %}

![](GettingStarted-images/TabSplitterContainer_img4.png)


**Adding Pages into TabSplitterContainer**

Create an instance of the required page and Primary and Secondary pages can be added into TabSplitterContainer using `PrimaryPages` and `SecondaryPages` collections respectively.

{% tabs %}

{% highlight C# %}

// Create an instance of TabSplitter

private TabSplitterPage tabSplitterPage1 = new TabSplitterPage();
private TabSplitterPage tabSplitterPage2 = new TabSplitterPage();

this.tabSplitterPage1.Text = "XAML";
this.tabSplitterPage2.Text = "Design";

// Adding it to TabSplitterContainer

this.tabSplitterContainer1.PrimaryPages.AddRange(new TabSplitterPage[] {this.tabSplitterPage1});
this.tabSplitterContainer1.SecondaryPages.AddRange(new TabSplitterPage[] {this.tabSplitterPage2});
this.tabSplitterContainer1.Size = new System.Drawing.Size(443, 115);

{% endhighlight %}

{% highlight VB %}

'' Create an instance of TabSplitter

Private tabSplitterPage1 As New TabSplitterPage()
Private tabSplitterPage2 As New TabSplitterPage()

Me.tabSplitterPage1.Text = "XAML"
Me.tabSplitterPage2.Text = "Design"

'' Adding it to TabSplitterContainer

Me.tabSplitterContainer1.PrimaryPages.AddRange(New TabSplitterPage() {Me.tabSplitterPage1})
Me.tabSplitterContainer1.SecondaryPages.AddRange(New TabSplitterPage() {Me.tabSplitterPage2})
Me.tabSplitterContainer1.Size = New System.Drawing.Size(443, 115)

{% endhighlight %}

{% endtabs %}

![](GettingStarted-images/TabSplitterContainer_img2.png)