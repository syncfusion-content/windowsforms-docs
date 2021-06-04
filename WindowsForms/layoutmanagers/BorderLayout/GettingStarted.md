---
layout: post
title: Getting Started with Windows Forms LayoutManagers control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: BorderLayout
documentation: ug
---

# Getting Started with Windows Forms LayoutManagers

This section explains how to add the `BorderLayout` control in a Windows Forms application and overview its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#borderlayout) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Find more details about installing the nuget packages in a Windows Forms application in the following link: [How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages).

## Creating the project

Create a new Windows Forms project in Visual Studio to display the `BorderLayout` with basic functionalities.

## Adding the BorderLayout control through designer

The `BorderLayout` control can be added to an application by dragging it from the toolbox to designer view. The following required assembly reference will be added automatically.

* Syncfusion.Shared.Base.dll

![Drag and drop BorderLayout from toolbox](GettingStarted_images/GettingStarted_img1.jpeg)

To add the form as a container control of the `BorderLayout`, click `Yes` in pop up, from which it appears automatically before BorderLayout is added.

![Alert to add BorderLayout to form](GettingStarted_images/GettingStarted_img2.jpeg)


### Adding layout components

The child controls can be added to layout by dragging it from the toolbox to designer view.

![Adding controls into BorderLayout](GettingStarted_images/GettingStarted_img3.jpeg)

## Adding the BorderLayout control through code

The `BorderLayout` control can be created programmatically as described below.

**Step 1**: Create a C# or VB.NET application through Visual Studio.

**Step 2**: Add the following required assembly references to the project
	
	Syncfusion.Shared.Base.dll

**Step 3**: Include the required namespace.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

**Step 4**: Create an instance of the `BorderLayout` control, and set container control as form.

{% tabs %}
{% highlight c# %}

BorderLayout borderLayout1 = new BorderLayout();

this.borderLayout1.ContainerControl = this;

{% endhighlight %}

{% highlight vb %}

Dim borderLayout1 As BorderLayout = New BorderLayout()

Me.borderLayout1.ContainerControl = Me

{% endhighlight %}
{% endtabs %}

### Adding layout components

The child controls can be added to layout by simply adding it to form since the form is its container control.

{% tabs %}
{% highlight c# %}

ButtonAdv buttonAdv1 = new ButtonAdv();
ButtonAdv buttonAdv2 = new ButtonAdv();
ButtonAdv buttonAdv3 = new ButtonAdv();

this.buttonAdv1.Text = "buttonAdv1";
this.buttonAdv2.Text = "buttonAdv2";
this.buttonAdv3.Text = "buttonAdv3";

this.buttonAdv1.Dock = System.Windows.Forms.DockStyle.Top;
this.buttonAdv2.Dock = System.Windows.Forms.DockStyle.Left;
this.buttonAdv3.Dock = System.Windows.Forms.DockStyle.Right;

this.Controls.Add(this.buttonAdv1);
this.Controls.Add(this.buttonAdv2);
this.Controls.Add(this.buttonAdv3);

{% endhighlight %}

{% highlight vb %}

Dim buttonAdv1 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()

Me.buttonAdv1.Text = "buttonAdv1"
Me.buttonAdv2.Text = "buttonAdv2"
Me.buttonAdv3.Text = "buttonAdv3"

Me.buttonAdv1.Dock = System.Windows.Forms.DockStyle.Top
Me.buttonAdv2.Dock = System.Windows.Forms.DockStyle.Left
Me.buttonAdv3.Dock = System.Windows.Forms.DockStyle.Right

Me.Controls.Add(this.buttonAdv1)
Me.Controls.Add(this.buttonAdv2)
Me.Controls.Add(this.buttonAdv3)

{% endhighlight %}
{% endtabs %}

![Applying dock style to the controls](GettingStarted_images/GettingStarted_img4.jpeg)
