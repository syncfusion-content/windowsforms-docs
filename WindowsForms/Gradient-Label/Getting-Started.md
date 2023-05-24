---
layout: post
title: Getting Started with Windows Forms Gradient Label | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Gradient Label control, its elements, and more details.
platform: WindowsForms
control: GradientLabel
documentation: ug
---

# Getting Started with Windows Forms Gradient Label

This section briefly describes how to create a new Windows Forms project in Visual Studio and add the **GradientLabel** control with its basic functionalities.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#gradientlabel) section to get the list of assemblies or the details of NuGet package that needs to be added as reference to use the control in any application.

Refer to this [documentation](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages) to find more details about installing NuGet packages in a Windows Forms application.

## Adding the GradientLabel control via designer

The following steps describe how to create a **GradientLabel** control via designer:

1. Create a new Windows Forms application in Visual Studio.

2. Add the [GradientLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientLabel.html) control to an application by dragging it from the toolbox to the design view. The following dependent assemblies will be added automatically:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

![Drag and drop GradientLabel from toolbox](gradientlabel-images/windowsforms-gradient-label-toolbox.jpeg) 

## Adding the GradientLabel control via code

The following steps describe how to create the **GradientLabel** control programmatically:

1. Create a C# or VB application via Visual Studio.

2. Add the following assembly references to the project:

    * Syncfusion.Grid.Base
    * Syncfusion.Grid.Windows
    * Syncfusion.Shared.Base
    * Syncfusion.Shared.windows
    * Syncfusion.Tools.Base
    * Syncfusion.Tools.Windows

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

4. Create an instance of the [GradientLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientLabel.html) control, and add it to the form.

{% capture codesnippet2 %}
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
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }} 

## Gradient settings

The background of the [GradientLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GradientLabel.html) control can be customized using the various options provided by the following properties: GradientStyle, BackColor, and ForeColor.

{% tabs %}

{% highlight C# %}

this.gradientLabel1.Size = new System.Drawing.Size(120, 46);
this.gradientLabel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.Red, System.Drawing.Color.MediumBlue);
this.gradientLabel1.Text = "Syncfusion Control";
this.gradientLabel1.ForeColor = System.Drawing.Color.SeaShell;

{% endhighlight %}

{% highlight vb %}

Me.gradientLabel1.Size = New System.Drawing.Size(120, 46)
Me.gradientLabel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.Red, System.Drawing.Color.MediumBlue)
Me.gradientLabel1.ForeColor = System.Drawing.Color.SeaShell

{% endhighlight %}

{% endtabs %}

![Windows Forms GradientLabel shows grdient style](gradientlabel-images/windowsforms-gradientlabel_style.jpeg)
