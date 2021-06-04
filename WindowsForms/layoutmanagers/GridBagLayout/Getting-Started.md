---
layout: post
title: Getting Started with Windows Forms GridBagLayout control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms GridBagLayout control and more details.
platform: windowsforms
control: GridBagLayout
documentation: ug
---

# Getting Started with Windows Forms GridBagLayout

This section explains how to add the `GridBagLayout` control in a Windows Forms application and overview its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#gridbaglayout) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Find more details about installing the nuget packages in a Windows Forms application in the following link: [How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages).

## Creating the project

Create a new Windows Forms project in Visual Studio to display the GridBagLayout with basic functionalities.

## Through designer

The `GridBagLayout` control can be added to an application by dragging it from the toolbox to designer view.

The following required assembly reference will be added automatically.

* Syncfusion.Shared.Base.dll

![Drag and drop GridBagLayout from toolbox](GettingStarted_images/GettingStarted_img1.jpeg)

A pop-up will appear automatically to add the form as a container control of the `GridBagLayout`.

![Alert to add GridBagLayout as container control to form](GettingStarted_images/GettingStarted_img4.jpeg)

### Adding Layout components through designer

The child controls can be added to the layout by dragging it from the toolbox to designer view.

![Adding child controls to GridBagLayout](GettingStarted_images/GettingStarted_img2.jpeg)

## Through code

To add the control manually in C#, follow the given steps:

**Step 1**: Create a C# or VB application through Visual Studio.

**Step 2**: Add the following required assembly reference to the project: 

	Syncfusion.Shared.Base.dll

**Step 3**: Include the required namespace.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

**Step 4**: Create a `GridBagLayout` control instance, and set `ContainerControl` as form.

{% tabs %}

{% highlight c# %}

GridBagLayout gridBagLayout1 = new GridBagLayout();

this.gridBagLayout1.ContainerControl = this;

{% endhighlight %}

{% highlight vb %}

Dim gridBagLayout1 As GridBagLayout = New GridBagLayout()

Me.gridBagLayout1.ContainerControl = Me

{% endhighlight %}

{% endtabs %}

### Adding layout components through code

The child controls can be added to the layout by simply adding it to the form since the form is its container control.

{% tabs %}

{% highlight c# %}

ButtonAdv buttonAdv1 = new ButtonAdv();
ButtonAdv buttonAdv2 = new ButtonAdv();
ButtonAdv buttonAdv3 = new ButtonAdv();

this.buttonAdv1.Text = "buttonAdv1";
this.buttonAdv2.Text = "buttonAdv2";
this.buttonAdv3.Text = "buttonAdv3";

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

Me.Controls.Add(this.buttonAdv1)
Me.Controls.Add(this.buttonAdv2)
Me.Controls.Add(this.buttonAdv3)

{% endhighlight %}

{% endtabs %}

![Adding child controls to GridBagLayout](GettingStarted_images/GettingStarted_img3.jpeg)

