---
layout: post
title: Getting Started with Windows Forms TabbedMDI control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: WindowsForms
control: TabbedMDIManager 
documentation: ug
---

# Getting Started with Windows Forms TabbedMDI

This section explains how to design a **TabbedMDIManager** control in a Windows Forms application and overview its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#tabbedmdimanger) section to get the list of assemblies or details of NuGet package that needs to be added as reference to use the control in any application.

Refer to [NuGet Packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to learn how to install nuget packages in a Windows Forms application.

## Adding TabbedMDIManger control via designer

1) Create a new Windows Forms project in Visual Studio.

2) Add the [TabbedMDIManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) control to an application by dragging it from the toolbox to a designer view. The following dependent assemblies will be added automatically:

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

![Windows Forms TabbedMDI drag and drop from toolbox](GettingStarted_images/Search.png)

As soon as the control is dropped, the Form1's `IsMDIContainer` property will be set to `true` and it is changed to an MDIContainer. Also, the [AttachedTo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_AttachedTo) property of the TabbedMDIManager will be set to Form1.

![Windows Forms TabbedMDI added into the form](GettingStarted_images/ControlAdded.png)
 
## Adding control manually in code

To add the control manually in C#, follow the given steps:

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project:

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

3) Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight  %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4) Create an instance of the [TabbedMDIManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) control. 

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

TabbedMDIManager tabbedMDIManager = new TabbedMDIManager();

{% endhighlight  %}

{% highlight VB %}

Dim tabbedMDIManager As TabbedMDIManager = New TabbedMDIManager()

{% endhighlight  %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

## Add Form as Tabbed MDI child

We can attach the `Form1` to TabbedMDIManager container by using its [AttachToMdiContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_AttachToMdiContainer_System_Windows_Forms_Form_) function. Make sure whether the `IsMdIContainer` property of Form1 is set to `true`. Now the TabbedMDI mode will be turned on and any new MDIChildren created will be grouped as Tabs. Then, create a new Form and displays it in Form1.

{% tabs %}

{% highlight C# %}

this.IsMdiContainer = true;

// Use the [AttachToMdiContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_AttachToMdiContainer_System_Windows_Forms_Form_) function only when the `AttachedTo` property of TabbedMDIManager is not set to Form1. 

this.tabbedMDIManager.AttachToMdiContainer(this);
this.tabbedMDIManager.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);

Form form = new Form();
form.MdiParent = this;
form.Text = "Tab1";
form.Show();

Form form1 = new Form();
form1.Text = "Tab2";
form1.MdiParent = this;
form1.Show();

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

Dim form1 As New Form()
form1.Text = "Tab2"
form1.MdiParent = Me
form1.Show()

{% endhighlight  %}

{% endtabs %}

The following screenshot illustrates new form will be tabbed inside form1.

![Windows Forms TabbedMDI with forms added as its child](GettingStarted_images/TabbedMDIManager.png)

## Create tab group

The `TabbedMDIManager` provides support to create a tab group horizontally or vertically.

[CreateNewHorizontalGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_CreateNewHorizontalGroup) function helps to create a new tab group horizontally in TabbedMDIManager. 

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

![Horizontal tab group created in Tabbed MDI Manager](GettingStarted_images/TabGroupHorizontal.png)

[CreateNewVerticalGroup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_CreateNewVerticalGroup) function helps to create a new tab group vertically in TabbedMDIManager. 

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

![Vertical tab group created in Tabbed MDI Manager](GettingStarted_images/TabGroupVertical.png)
