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

![wf group bar control added in designer](Getting-Started_images/wf-group-bar-control-added-by-designer.png) 

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

## Add child items in group bar

You can add the group bar items inside the Groupbar control using the [GroupBarItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupBar.html#Syncfusion_Windows_Forms_Tools_GroupBar_GroupBarItems) collection property.

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

Me.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
            Me.groupBarItem0,
            Me.groupBarItem1,
            Me.groupBarItem2})
{% endhighlight %}
{% endtabs %}

![wf group bar control added in designer](Getting-Started_images/wf-group-bar-control.png)

## Add sub child items in group bar
You can add the sub child items in group bar inside the GroupbarItems.

{% tabs %}
{% highlight C# %}

GroupBarItem groupBarItem0 = new GroupBarItem();
GroupBarItem groupBarItem1 = new GroupBarItem();
GroupBarItem groupBarItem2 = new GroupBarItem();
GroupView groupview0 = new GroupView();

this.groupBarItem0.Text = "Windows Forms";
this.groupBarItem0.Client = this.groupview0;
this.groupBarItem1.Text = "Component";
this.groupBarItem2.Text = "General";

this.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
this.groupBarItem0,
this.groupBarItem1,
this.groupBarItem2});

this.groupview0.Name = "Windows Forms";
this.groupBar1.Controls.Add(this.groupview0);
this.groupview0.GroupViewItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupViewItem[] {
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Grid", 11, true, null, "Grid"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Data Visualization", 11, true, null, "Data Visualization"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Editor", 11, true, null, "Editor"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Navigation", 11, true, null, "Navigation"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Notification", 11, true, null, "Notification"));

{% endhighlight %}
{% highlight VB %}
Dim groupBarItem0 As GroupBarItem = New GroupBarItem()
Dim groupBarItem1 As GroupBarItem = New GroupBarItem()
Dim groupBarItem2 As GroupBarItem = New GroupBarItem()
Dim groupview0 As GroupView = New GroupView()

Me.groupBarItem0.Text = "Windows Forms"
Me.groupBarItem0.Client = this.groupview0;
Me.groupBarItem1.Text = "Component"
Me.groupBarItem2.Text = "General"

Me.groupBar1.GroupBarItems.AddRange(new GroupBarItem[] {
            Me.groupBarItem0,
            Me.groupBarItem1,
            Me.groupBarItem2})


Me.groupBar1.Controls.Add(this.groupview0);
Me.groupview0.Name = "Windows Forms";
Me.groupview0.GroupViewItems.AddRange(new Syncfusion.Windows.Forms.Tools.GroupViewItem[] {
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Grid", 11, true, null, "Grid"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Data Visualization", 11, true, null, "Data Visualization"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Editor", 11, true, null, "Editor"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Navigation", 11, true, null, "Navigation"),
new Syncfusion.Windows.Forms.Tools.GroupViewItem("Notification", 11, true, null, "Notification"))
{% endhighlight %}
{% endtabs %}

![wf group bar control added in designer](Getting-Started_images/wf-group-bar-control-default-mode.png)

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

![wf group bar control added in designer](Getting-Started_images/wf-group-bar-control-display-mode.png)

