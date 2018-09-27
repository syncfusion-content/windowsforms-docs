---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Getting started

This section describes how to add a `RangeSlider` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#rangeslider) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating simple application with RangeSlider

You can create the Windows Forms application with RangeSlider control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Configuring slider range](#configure-slider-range)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the RangeSlider with basic information.

## Adding control via designer

RangeSlider control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![](Getting-Started_images/RangeSlider-img1.png) 

![](Getting-Started_images/RangeSlider-img5.png) 

## Adding control manually in code

To add control manually in C#, follow the given steps:

**Step 1** : Add the following required assembly references to the project:

 * Syncfusion.Tools.Base.dll
 * Syncfusion.Tools.Windows.dll
 * Syncfusion.Shared.Base.dll
 * Syncfusion.Shared.Windows.dll
 * Syncfusion.Grid.Base.dll
 * Syncfusion.Grid.Windows.dll

**Step 2** : Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

**Step 3** : Create `RangeSlider` control instance and add it to the form.

{% tabs %}

{% highlight C# %}

RangeSlider rangeSlider1 = new RangeSlider();

this.rangeSlider1.VisualStyle = RangeSlider.RangeSliderStyle.Office2016Colorful;

this.Controls.Add(rangeSlider1);

{% endhighlight %}

{% highlight VB %}

Dim rangeSlider1 As RangeSlider = New RangeSlider

Me.rangeSlider1.VisualStyle = RangeSlider.RangeSliderStyle.Office2016Colorful

Me.Controls.Add(rangeSlider1)

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/RangeSlider-img2.png) 

## Configuring slider range

Minimum and Maximum value can be set to the RangeSlider programmatically using `SliderMin` and `SliderMax` properties.

{% tabs %}

{% highlight C# %}

this.rangeSlider1.SliderMin = 4;

this.rangeSlider1.SliderMax = 7;

{% endhighlight %}

{% highlight VB %}

Me.rangeSlider1.SliderMin = 4

Me.rangeSlider1.SliderMax = 7

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/RangeSlider-img4.png) 