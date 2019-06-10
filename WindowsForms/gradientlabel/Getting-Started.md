---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: Creating GradientLabel
platform: WindowsForms
control: GradientLabel
documentation: ug
---

# Getting Started

This section briefly describes how to create a new Windows Forms project in Visual Studio, and add the **GradientLabel** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#gradientlabel) section to get the list of assemblies or NuGet package details that need to be added as reference to use the control in any application.

[Click here](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages) to find more details on how to install NuGet packages in a Windows Forms application.

## Adding the GradientLabel control via designer

The following steps describe how to create an **GradientLabel** control via the designer:

1) Create a new Windows Forms application in Visual Studio.

2) The **GradientLabel** control can be added to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

  ![Drag and drop GradientLabel from toolbox](GradientLabel-Images/Overview_img600.jpeg) 

## Adding the GradientLabel control via Code

The following steps illustrate how to create an **GradientLabel** control programmatically:

1) Create a C# or VB application via Visual Studio.

2) Add the following assembly references to the project.

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.windows
* Syncfusion.Tools.Base
* Syncfusion.Tools.Windows

3) Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

4) Create an instance of the **GradientLabel** control and add it to the form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.GradientLabel gradientLabel1;
this.gradientLabel1 = new Syncfusion.Windows.Forms.Tools.GradientLabel();
this.Controls.Add(this.gradientLabel1);
		
{% endhighlight %}

{% highlight vb %}

Private gradientLabel1 As Syncfusion.Windows.Forms.Tools.GradientLabel
Me.gradientLabel1 = New Syncfusion.Windows.Forms.Tools.GradientLabel()
Me.Controls.Add(Me.gradientLabel1)

{% endhighlight %}
{% endtabs %}

## Gradient settings

The **GradientLabel** control's background can be customized using the various options provided by the following properties. The properties are GradientStyle, BackColor and ForeColor.

{% tabs %}

{% highlight C# %}

this.gradientLabel1.Size = new System.Drawing.Size(120, 46);
this.gradientLabel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.Black, System.Drawing.Color.Navy);
this.gradientLabel1.Text = "Syncfusion Control";
this.gradientLabel1.ForeColor = System.Drawing.Color.SeaShell;

{% endhighlight %}

{% highlight vb %}

Me.gradientLabel1.Size = New System.Drawing.Size(120, 46)
Me.gradientLabel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.Black, System.Drawing.Color.Navy)
Me.gradientLabel1.Size = New System.Drawing.Size(120, 46)
Me.gradientLabel1.ForeColor = System.Drawing.Color.SeaShell

{% endhighlight %}

{% endtabs %}

![Windows Forms GradientLabel showing grdient style](GradientLabel-Images\gradientlabel_style.jpeg)
