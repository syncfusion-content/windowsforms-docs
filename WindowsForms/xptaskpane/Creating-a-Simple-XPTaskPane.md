---
layout: post
title: Getting Started with Windows Forms XPTaskPane | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms XPTaskPane control. Explore setup, features, examples, and customization options.
platform: windowsforms
control: XPTaskPane
documentation: ug
---
# Getting Started with Windows Forms XPTaskPane

This section describes how to add [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control in a Windows Forms application and gives an overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#xptaskpane) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the NuGet packages in a Windows Forms application in the below link:
 
[How to install NuGet packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

To generate the license validated application, refer to the [licensing](https://help.syncfusion.com/windowsforms/licensing/overview) documentation.

## Creating simple application with XPTaskPane

You can create the Windows Forms application with [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via Form Designer](#adding-control-via-form-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)

### Creating the project

Create a new Windows Forms project in Visual Studio to display the [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) with its functionalities.

## Adding control via designer

The [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![Drag and drop the XPTaskPane control into form](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img1.png)

**Adding TaskPane pages**

To add pages into XPTaskPane, click on **Add Page** in the Smart Tags of [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) in designer view. On dropping [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html), [WizardContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardContainer.html) will be automatically added as [TaskPanePageContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPanePageContainer).

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
{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %} 
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

**Step 3** - Create [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html) control instance and add it to the form.
{% capture codesnippet2 %}
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
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

![XPTaskPane control added by code](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img3.png)


**Adding WizardContainer as TaskPanePageContainer**

To add pages into [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html), it is necessary to add a container control for the TaskPanePage. Here [WizardContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.WizardContainer.html) is added as [TaskPanePageContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPanePageContainer).

{% tabs %}

{% highlight C# %}

WizardContainer wizardContainer1 = new WizardContainer();

this.xpTaskPane1.Controls.Add(wizardContainer1);

this.xpTaskPane1.TaskPanePageContainer = wizardContainer1;

{% endhighlight %}

{% highlight VB %}

Dim wizardContainer1 As WizardContainer = New WizardContainer()

Me.xpTaskPane1.Controls.Add(wizardContainer1)

Me.xpTaskPane1.TaskPanePageContainer = wizardContainer1

{% endhighlight %}

{% endtabs %}


**Adding XPTaskPage**

Create an instance of [XPTaskPage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPage.html) class and add it to [TaskPages](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html#Syncfusion_Windows_Forms_Tools_XPTaskPane_TaskPages) collection in [XPTaskPane](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskPane.html).

{% tabs %}

{% highlight C# %}

XPTaskPage xpTaskPage1 = new XPTaskPage();

xpTaskPage1.Title = "New Page";

wizardContainer1.Controls.Add(xpTaskPage1);

this.xpTaskPane1.TaskPages = new XPTaskPage[] {
        xpTaskPage1};

{% endhighlight %}

{% highlight VB %}

Dim xpTaskPage1 As XPTaskPage = New XPTaskPage()

xpTaskPage1.Title = "New Page"

wizardContainer1.Controls.Add(xpTaskPage1)

Me.xpTaskPane1.TaskPages = New XPTaskPage() {
        xpTaskPage1}

{% endhighlight %}

{% endtabs %}

Child controls such as buttons, labels, etc., can be added to each page using its `Controls` collection as shown below.

{% tabs %}

{% highlight C# %}

System.Windows.Forms.Button button1 = new System.Windows.Forms.Button();
button1.Text = "Click Me";

xpTaskPage1.Controls.Add(button1);

{% endhighlight %}

{% highlight VB %}

Dim button1 As New System.Windows.Forms.Button()
button1.Text = "Click Me"

xpTaskPage1.Controls.Add(button1)

{% endhighlight %}

{% endtabs %}

![Task pages added by code](Creating-a-Simple-XPTaskPane_images/XPTaskPane-img4.png)
