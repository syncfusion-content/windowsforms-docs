---
layout: post
title: Getting Started with Windows Forms FlowLayout | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms FlowLayout control, its elements, and more.
platform: windowsforms
control: FlowLayout
documentation: ug
---

# Getting Started with Windows Forms FlowLayout

This section explains how to add the FlowLayout control in a Windows Forms application and overview its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#flowlayout) section to get the list of assemblies or details of NuGet package that needs to be added as a reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.

## Adding the FlowLayout control via designer

1. Create a new Windows Forms application via designer.

2. Add the [FlowLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FlowLayout.html) control to an application by dragging it from the toolbox to design view. The following assembly will be added automatically:

    * Syncfusion.Shared.Base

![Drag and drop flow layout from toolbox](GettingStarted_images/GettingStarted_img1.jpeg)

3. To add the form as a container control of the FlowLayout, click **Yes** in a popup, from which it appears automatically when FlowLayout is added.

![Alert message to add Flow layout as container control of form](GettingStarted_images/GettingStarted_img2.jpeg)

### Adding layout components

The child controls can be added to layout by dragging it from the toolbox to design view.

![Adding child controls to flow layout](GettingStarted_images/GettingStarted_img3.jpeg)

## Adding the FlowLayout control via code

To add control manually in C#, follow the given steps:

1. Create a C# or VB application via Visual Studio.

2. Add the following required assembly reference to the project: 

    * Syncfusion.Shared.Base

3. Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4. Create a **FlowLayout** control instance, and then set `ContainerControl` as form.

{% capture codesnippet2 %}
{% tabs %}

{% highlight c# %}

FlowLayout flowLayout1 = new FlowLayout();

flowLayout1.ContainerControl = this;

{% endhighlight %}

{% highlight vb %}

Dim flowLayout1 As FlowLayout = New FlowLayout()

Me.flowLayout1.ContainerControl = Me

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

### Adding layout components

The child controls can be added to a layout by simply adding it to the form since the form is its container control.

{% tabs %}

{% highlight c# %}

ButtonAdv buttonAdv1 = new ButtonAdv();
ButtonAdv buttonAdv2 = new ButtonAdv();
ButtonAdv buttonAdv3 = new ButtonAdv();
ButtonAdv buttonAdv4 = new ButtonAdv();

this.buttonAdv1.Text = "buttonAdv1";
this.buttonAdv2.Text = "buttonAdv2";
this.buttonAdv3.Text = "buttonAdv3";
this.buttonAdv4.Text = "buttonAdv4";

this.Controls.Add(this.buttonAdv1);
this.Controls.Add(this.buttonAdv2);
this.Controls.Add(this.buttonAdv3);
this.Controls.Add(this.buttonAdv4);

{% endhighlight %}

{% highlight vb %}

Dim buttonAdv1 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()
Dim buttonAdv4 As ButtonAdv = New ButtonAdv()

Me.buttonAdv1.Text = "buttonAdv1"
Me.buttonAdv2.Text = "buttonAdv2"
Me.buttonAdv3.Text = "buttonAdv3"
Me.buttonAdv4.Text = "buttonAdv3"

Me.Controls.Add(this.buttonAdv1)
Me.Controls.Add(this.buttonAdv2)
Me.Controls.Add(this.buttonAdv3)
Me.Controls.Add(this.buttonAdv4)

{% endhighlight %}

{% endtabs %}

![Adding child controls to flow layout](GettingStarted_images/childcontrol.png)

## Layout mode

To change the layout of child controls either horizontally or vertically, use the [LayoutMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FlowLayout.html#Syncfusion_Windows_Forms_Tools_FlowLayout_LayoutMode) property.

* Horizontal

{% capture codesnippet3 %}
{% tabs %}
{% highlight c# %}

flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Horizontal;

{% endhighlight %}
{% highlight VB %}

flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Horizontal

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

![Windows Forms FlowLayout shows the child control in horizontal mode](GettingStarted_images/horizontal.gif)

* Vertical

{% capture codesnippet4 %}
{% tabs %}
{% highlight c# %}

flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical;

{% endhighlight %}
{% highlight VB %}

flowLayout1.LayoutMode = Syncfusion.Windows.Forms.Tools.FlowLayoutMode.Vertical

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet4 | OrderList_Indent_Level_1 }}

![Windows Forms FlowLayout](GettingStarted_images/Flowlayout_vertical.png)
