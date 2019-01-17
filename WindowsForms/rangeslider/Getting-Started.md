---
layout: post
title: Getting Started | RangeSlider | WindowsForms | Syncfusion
description: This section describes how to add range slider control into winforms application.
platform: WindowsForms
control: RangeSlider 
documentation: ug
---

# Getting started

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#rangeslider) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application.

You can find more details about installing the NuGet packages in a Windows Forms application in the following link: 

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Create a simple application with RangeSlider

You can create a Windows Forms application with the RangeSlider control using the following steps:

## Create a project

Create a new Windows Forms project in Visual Studio to display the RangeSlider control with its functionalities.

## Add control through designer

The RangeSlider control can be added to an application by dragging it from the toolbox to a designer view. The following required assembly references will be added automatically to the project.

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![wf range slider control added by designer](Getting-Started_images/wf-range-slider-control-added-by-designer.png) 

## Add control manually using code

To add the control manually in C#, follow the given steps:

1.	Add the following required assembly references to the project: 

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

2.	Include the **Syncfusion.Windows.Forms.Tools** namespace. 

{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools
{% endhighlight %}
{% endtabs %}

3. Create a RangeSlider instance, and add it to the window.

{% tabs %}
{% highlight C# %}
RangeSlider rangeSlider1 = new RangeSlider();
this.Controls.Add(rangeSlider1);
{% endhighlight %}
{% highlight VB %}
Dim rangeSlider1 As RangeSlider = New RangeSlider
Me.Controls.Add(rangeSlider1)
{% endhighlight %}
{% endtabs %}

![wf range slider control value range](Getting-Started_images/wf-range-slider-control.png)

## Minimum and maximum values

You can set the minimum and maximum values programmatically using the [SliderMin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMin.html) and [SliderMax](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~SliderMax.html) properties of RangeSlider.

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

![wf range slider control value range](Getting-Started_images/wf-range-slider-control-value-range.png) 

## Horizontal and vertical orientations

You can change the layout of range slider to horizontal or vertical by setting the [orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.RangeSlider~Orientation.html) property of RangeSlider.

{% tabs %}
{% highlight C# %}
rangeSlider.Orientation=Orientation.Vertical;
{% endhighlight %}
{% highlight VB %}
rangeSlider.Orientation=Orientation.Vertical
{% endhighlight %}
{% endtabs %}

* **Horizontal**

![wf range slider control horizontal orientation](Getting-Started_images/wf-range-slider-horizontal-orientation.png) 

* **Vertical**

![wf range slider control horizontal orientation](Getting-Started_images/wf-range-slider-vertical-orientation.png) 