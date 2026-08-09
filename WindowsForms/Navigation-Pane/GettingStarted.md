---
layout: post
title: Getting Started with Windows Forms Navigation Pane | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Navigation Pane (GroupBar) control, its elements, and more.
platform: WindowsForms
control: GroupBar
documentation: ug
---

# Getting Started with Windows Forms Navigation Pane (GroupBar)

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#groupbar) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.
 
You can find more details about installing the NuGet package in a Windows Forms application in the following link: 
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages)

## Create a simple application with GroupBar

You can create a Windows Forms application with the GroupBar control using the following steps:

## Create a project

Create a new Windows Forms project in Visual Studio to display the GroupBar control.

## Add control through designer

The GroupBar control can be added to an application by dragging it from the toolbox to a designer view. The Syncfusion.Shared.Base assembly reference will be added automatically.

![WinForms GroupBar control added in designer](Getting-Started_images/winforms-groupbar-control-added-by-designer.png) 

## Add control manually in code

To add the control manually in C#, follow the given steps:

1. Add the **Syncfusion.Shared.Base** assembly reference to the project.

2. Include the GroupBar control namespace **Syncfusion.Windows.Forms.Tools;**.

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

3. Create a GroupBar control instance, and add it to the form.

{% capture codesnippet2 %}
{% tabs %}
{% highlight C# %}
GroupBar groupBar1 = new GroupBar();
this.Controls.Add(groupBar1);
{% endhighlight %}
{% highlight VB %}
Dim groupBar1 As GroupBar = New GroupBar()
Me.Controls.Add(groupBar1)
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

## Add group bar items

You can add the group bar items inside the GroupBar control using the [GroupBarItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItems) collection property.

{% tabs %}
{% highlight C# %}

GroupBarItem groupBarItem0 = new GroupBarItem();
GroupBarItem groupBarItem1 = new GroupBarItem();
GroupBarItem groupBarItem2 = new GroupBarItem();

this.groupBarItem0.Text = "Windows Forms";
this.groupBarItem1.Text = "Component";
this.groupBarItem2.Text = "General";

this.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
this.groupBarItem0,
this.groupBarItem1,
this.groupBarItem2});

{% endhighlight %}
{% highlight VB %}
Dim groupBarItem0 As GroupBarItem = New GroupBarItem()
Dim groupBarItem1 As GroupBarItem = New GroupBarItem()
Dim groupBarItem2 As GroupBarItem = New GroupBarItem()

Me.groupBarItem0.Text = "Windows Forms"
Me.groupBarItem1.Text = "Component"
Me.groupBarItem2.Text = "General"

Me.groupBar1.GroupBarItems.AddRange(New GroupBarItem[] {
            Me.groupBarItem0,
            Me.groupBarItem1,
            Me.groupBarItem2})
{% endhighlight %}
{% endtabs %}

![WinForms GroupBar control](Getting-Started_images/winforms-groupbar-control.png)

## Add child items to the group bar items

You can add child items to GroupBarItems in the GroupBar by using the [GroupView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html). The following code snippet demonstrates how to add child items to GroupBarItems using the GroupView.

{% tabs %}
{% highlight C# %}

GroupBarItem groupBarItem0 = new GroupBarItem();
GroupBarItem groupBarItem1 = new GroupBarItem();
GroupBarItem groupBarItem2 = new GroupBarItem();

this.groupBarItem0.Text = "Windows Forms";
this.groupBarItem1.Text = "Component";
this.groupBarItem2.Text = "General";

GroupView groupView0 = new GroupView();
this.groupView0.Name = "Windows Forms";
this.groupView0.GroupViewItems.AddRange(new GroupViewItem[] 
{
    new GroupViewItem("Grid", 11, true, null, "Grid"),
    new GroupViewItem("Data Visualization", 11, true, null, "FileSystemWatcher"),
    new GroupViewItem("Editor", 11, true, null, "EventLog"),
    new GroupViewItem("Navigation", 11, true, null, "DirectoryEntry"),
    new GroupViewItem("Notification", 11, true, null, "DirectorySearcher"),
    new GroupViewItem("MessageQueue", 11, true, null, "MessageQueue")
});

GroupView groupView1 = new GroupView();
this.groupView1.Name = "Component";
this.groupView1.GroupViewItems.AddRange(new GroupViewItem[] 
{
    new GroupViewItem("Pointer", 11, true, null, "Pointer"),
    new GroupViewItem("FileSystemWatcher", 22, true, null, "FileSystemWatcher"),
    new GroupViewItem("EventLog", 23, true, null, "EventLog"),
    new GroupViewItem("DirectoryEntry", 24, true, null, "DirectoryEntry"),
    new GroupViewItem("DirectorySearcher", 25, true, null, "DirectorySearcher"),
    new GroupViewItem("MessageQueue", 26, true, null, "MessageQueue")
});

GroupView groupView2 = new GroupView();
this.groupView2.Name = "General";
this.groupView2.GroupViewItems.AddRange(new GroupViewItem[] 
{
    new GroupViewItem("Pointer", 11, true, null, "Pointer"),
    new GroupViewItem("Label", 12, true, null, "Label"),
    new GroupViewItem("LinkLabel", 13, true, null, "LinkLabel"),
    new GroupViewItem("Button", 14, true, null, "Button"),
    new GroupViewItem("TextBox", 15, true, null, "TextBox"),
    new GroupViewItem("MainMenu", 16, true, null, "MainMenu"),
    new GroupViewItem("CheckBox", 17, true, null, "CheckBox"),
    new GroupViewItem("RadioButton", 18, true, null, "RadioButton")
});

this.groupBarItem0.Client = this.groupView0;
this.groupBarItem1.Client = this.groupView1;
this.groupBarItem2.Client = this.groupView2;

this.groupBar1.Controls.Add(this.groupView0);
this.groupBar1.Controls.Add(this.groupView1);
this.groupBar1.Controls.Add(this.groupView2);

this.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
this.groupBarItem0,
this.groupBarItem1,
this.groupBarItem2});

{% endhighlight %}
{% highlight VB %}
Dim groupBarItem0 As GroupBarItem = New GroupBarItem()
Dim groupBarItem1 As GroupBarItem = New GroupBarItem()
Dim groupBarItem2 As GroupBarItem = New GroupBarItem()

Me.groupBarItem0.Text = "Windows Forms"
Me.groupBarItem1.Text = "Component"
Me.groupBarItem2.Text = "General"

Dim groupView0 As GroupView = New GroupView()
Me.groupView0.Name = "Windows Forms"
Me.groupView0.GroupViewItems.AddRange(New GroupViewItem[] 
{
    New GroupViewItem("Grid", 11, true, null, "Grid"),
    New GroupViewItem("Data Visualization", 11, true, null, "FileSystemWatcher"),
    New GroupViewItem("Editor", 11, true, null, "EventLog"),
    New GroupViewItem("Navigation", 11, true, null, "DirectoryEntry"),
    New GroupViewItem("Notification", 11, true, null, "DirectorySearcher"),
    New GroupViewItem("MessageQueue", 11, true, null, "MessageQueue")
})

Dim groupView1 As GroupView = New GroupView()
Me.groupView1.Name = "Component"
Me.groupView1.GroupViewItems.AddRange(New GroupViewItem[] 
{
    New GroupViewItem("Pointer", 11, true, null, "Pointer"),
    New GroupViewItem("FileSystemWatcher", 22, true, null, "FileSystemWatcher"),
    New GroupViewItem("EventLog", 23, true, null, "EventLog"),
    New GroupViewItem("DirectoryEntry", 24, true, null, "DirectoryEntry"),
    New GroupViewItem("DirectorySearcher", 25, true, null, "DirectorySearcher"),
    New GroupViewItem("MessageQueue", 26, true, null, "MessageQueue")
})

Dim groupView2 As GroupView = New GroupView()
Me.groupView2.Name = "General"
Me.groupView2.GroupViewItems.AddRange(New GroupViewItem[] 
{
    New GroupViewItem("Pointer", 11, true, null, "Pointer"),
    New GroupViewItem("Label", 12, true, null, "Label"),
    New GroupViewItem("LinkLabel", 13, true, null, "LinkLabel"),
    New GroupViewItem("Button", 14, true, null, "Button"),
    New GroupViewItem("TextBox", 15, true, null, "TextBox"),
    New GroupViewItem("MainMenu", 16, true, null, "MainMenu"),
    New GroupViewItem("CheckBox", 17, true, null, "CheckBox"),
    New GroupViewItem("RadioButton", 18, true, null, "RadioButton")
})

Me.groupBarItem0.Client = Me.groupView0
Me.groupBarItem1.Client = Me.groupView1
Me.groupBarItem2.Client = Me.groupView2

Me.groupBar1.Controls.Add(Me.groupView0)
Me.groupBar1.Controls.Add(Me.groupView1)
Me.groupBar1.Controls.Add(Me.groupView2)

Me.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
            Me.groupBarItem0,
            Me.groupBarItem1,
            Me.groupBarItem2})

{% endhighlight %}
{% endtabs %}

![WinForms GroupBar control with group bar items](Getting-Started_images/winforms-groupbar-control-with-group-bar-items.png)

## Display mode

You can change the visual mode of the GroupBar control like stack by enabling the [StackedMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_StackedMode) property.

{% tabs %}
{% highlight C# %}
this.groupBar1.StackedMode = true;
{% endhighlight %}
{% highlight VB %}
Me.groupBar1.StackedMode = True
{% endhighlight %}
{% endtabs %}

![WinForms GroupBar control in stack mode](Getting-Started_images/winforms-groupbar-control-in-stack-mode.png)
