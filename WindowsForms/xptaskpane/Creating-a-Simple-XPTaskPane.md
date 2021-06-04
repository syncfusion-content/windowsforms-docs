---
layout: post
title: Getting Started in Windows Forms xptaskpane control | Syncfusion
description: Learn about Getting Started support in Syncfusion Windows Forms xptaskpane (XPTaskPane) control and more details.
platform: WindowsForms
control: XPTaskPane
documentation: ug
---
# Getting Started in Windows Forms xp task pane (XPTaskPane)

This section describes how to add [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#xptaskpane) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages)


## Creating simple application with XPTaskPane

You can create the Windows Forms application with [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via Form Designer](#adding-control-via-form-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) with functionalities.

## Adding control via Form designer

The [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![Drag and drop the XPTaskPane control into form](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img1.png)

**Adding TaskPane pages**

To add pages into XPTaskPane, Click on [Add Page](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Wizard.html#Syncfusion_Windows_Forms_Tools_Wizard_AddPage_Syncfusion_Windows_Forms_Tools_WizardPage_) in Smart Tags of [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) in designer view. On dropping [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html), [WizardContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardContainer.html) will be automatically added as [TaskPanePageContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPanePageContainer).

![Task pages added by designer](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img2.png)

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1** - Add the following required assembly references to the project:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

**Step 2** - Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %} 

**Step 3** - Create [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control instance and add it to the form.

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

![XPTaskPane control added by code](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img3.png)


**Adding WizardContainer as TaskPanePageContainer**

To added pages into [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html), it is necessary to added a Container control for TaskPanePage. Here [WizardContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardContainer.html) is added as [TaskPanePageContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPanePageContainer).

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

Create an instance of [XPTaskPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPage.html) class and add it to [TaskPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPages) collection in [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html).

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

![Task pages added by code](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img4.png)
