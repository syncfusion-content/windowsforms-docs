---
layout: post
title: Getting Started with Windows Forms FlowLayout | Syncfusion®
description: Learn here about getting started with Syncfusion Windows Forms FlowLayout control, its elements, and more.
platform: windowsforms
control: FlowLayout
documentation: ug
---

# Getting Started with WinForms Flow Layout

This section explains how to add the WinForms Flow Layout control in a Windows Forms application and overviews its basic functionalities.

## Assembly deployment

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#flowlayout) section to get the list of assemblies or details of the NuGet package that needs to be added as a reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.

## Adding the WinForms Flow Layout control via designer

1. Create a new Windows Forms application in Visual Studio.

2. Add the [WinForms Flow Layout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.FlowLayout.html) control to an application by dragging it from the toolbox to design view. The following assembly will be added automatically:

    * Syncfusion.Shared.Base

![WinForms FlowLayout being dragged from the Visual Studio toolbox onto the designer](GettingStarted_images/GettingStarted_img1.jpeg)

3. To add the form as a container control of the WinForms Flow Layout, click **Yes** in the popup, from which it appears automatically when WinForms Flow Layout is added.

![Confirmation dialog asking whether the form should be used as the container control of FlowLayout](GettingStarted_images/GettingStarted_img2.jpeg)

### Adding layout components

The child controls can be added to the layout by dragging them from the toolbox to the design view.

![Child controls added to a WinForms FlowLayout container in the designer](GettingStarted_images/GettingStarted_img3.jpeg)

## Adding the WinForms Flow Layout control via code

To add the control manually in C# or VB, follow the given steps:

1. Create a C# or VB application in Visual Studio.

2. Add the following required assembly reference to the project:

    * Syncfusion.Shared.Base

3. Include the required namespace.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

4. Create a **WinForms Flow Layout** control instance, and then set `ContainerControl` as the form.

{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}
FlowLayout flowLayout1 = new FlowLayout();

flowLayout1.ContainerControl = this;
{% endhighlight %}
{% highlight VB %}
Dim flowLayout1 As FlowLayout = New FlowLayout()

Me.flowLayout1.ContainerControl = Me
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

### Adding layout components

The child controls can be added to the layout by simply adding them to the form since the form is its container control.

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
{% highlight VB %}
Dim buttonAdv1 As ButtonAdv = New ButtonAdv()
Dim buttonAdv2 As ButtonAdv = New ButtonAdv()
Dim buttonAdv3 As ButtonAdv = New ButtonAdv()
Dim buttonAdv4 As ButtonAdv = New ButtonAdv()

Me.buttonAdv1.Text = "buttonAdv1"
Me.buttonAdv2.Text = "buttonAdv2"
Me.buttonAdv3.Text = "buttonAdv3"
Me.buttonAdv4.Text = "buttonAdv4"

Me.Controls.Add(Me.buttonAdv1)
Me.Controls.Add(Me.buttonAdv2)
Me.Controls.Add(Me.buttonAdv3)
Me.Controls.Add(Me.buttonAdv4)
{% endhighlight %}
{% endtabs %}

![Four ButtonAdv child controls added to a WinForms FlowLayout](GettingStarted_images/childcontrol.png)

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

![WinForms FlowLayout showing the child controls arranged in horizontal mode](GettingStarted_images/horizontal.gif)

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

![WinForms FlowLayout showing the child controls arranged in vertical mode](GettingStarted_images/Flowlayout_vertical.png)
