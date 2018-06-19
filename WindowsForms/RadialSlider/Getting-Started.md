---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: RadialSlider 
documentation: ug
---

# Getting started

This section describes how to add a `RadialSlider` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

The following list of assemblies should be added as reference to use the RadialSlider in any application:

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Base.dll
</td>
<td>
Syncfusion.Grid.Base contains classes that contains fundamentals and base classes of GridControl.
</td>
</tr>
<tr>
<td>
Syncfusion.Grid.Windows.dll
</td>
<td>
Syncfusion.Grid.Windows contains classes that handles all UI operations, fundamentals and base classes of GridControl which are used in the RadialSlider control.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Base.dll
</td>
<td>
Syncfusion.Shared.Base contains style related properties of RadialSlider and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Shared.Windows.dll
</td>
<td>
Syncfusion.Shared.Windows contains style related properties of RadialSlider and various editor controls.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Base.dll
</td>
<td>
Syncfusion.Tools.Base contains base class which used for RadialSlider control.
</td>
</tr>
<tr>
<td>
Syncfusion.Tools.Windows.dll
</td>
<td>
Syncfusion.Tools.Windows contains the class that handles all UI operations and contains helper class of RadialSlider control.
</td>
</tr>
</table>

## Installing NuGet Packages

To use RadialSlider control in Windows Forms application via nuget, the following packages should be installed.
 
<table>
<tr>
<td>{{'**S.No**'| markdownify }}
</td>
<td>{{'**Framework version**'| markdownify }}
</td>
<td>{{'**NuGet Packages**'| markdownify }}
</td>
</tr>
<tr>
<td> 1
</td>
<td> 2.0
</td>
<td> Syncfusion.Tools.Windows20
</td>
</tr>
<tr>
<td> 2
</td>
<td> 3.5
</td>
<td> Syncfusion.Tools.Windows35
</td>
</tr>
<tr>
<td> 3
</td>
<td> 4.0
</td>
<td> Syncfusion.Tools.Windows40
</td>
</tr>
<tr>
<td> 4
</td>
<td> 4.5
</td>
<td> Syncfusion.Tools.Windows45
</td>
</tr>
<tr>
<td> 5
</td>
<td> 4.5.1
</td>
<td>Syncfusion.Tools.Windows451
</td>
</tr>
<tr>
<td> 6
</td>
<td> 4.6
</td>
<td>Syncfusion.Tools.Windows46
</td>
</tr>
</table>
 
Please find more details regarding how to install the nuget packages in windows form application in the below link:
 
[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating simple application with RadialSlider

You can create the Windows Forms application with RadialSlider control as follows:

1. [Creating project](#creating-the-project)
2. [Adding control via designer](#adding-control-via-designer)
3. [Adding control manually using code](#adding-control-manually-using-code)
4. [Configure SliderStyle](#configure-sliderstyle)

### Creating the project

Create a new Windows Forms project in the Visual Studio to display the RadialSlider with basic information.

## Adding control via designer

RadialSlider control can be added to the application by dragging it from the toolbox and dropping it in a designer view. The following required assembly references will be added automatically:

* Syncfusion.Grid.Base.dll
* Syncfusion.Grid.Windows.dll
* Syncfusion.Shared.Base.dll
* Syncfusion.Shared.Windows.dll
* Syncfusion.Tools.Base.dll
* Syncfusion.Tools.Windows.dll

![](Getting-Started_images/RadialSlider-img1.png) 

![](Getting-Started_images/RadialSlider-img4.png) 

## Adding control manually using code

To add control manually in C#, follow the given steps:

**Step 1:**  Add the following required assembly references to the project:

 * Syncfusion.Tools.Base.dll
 * Syncfusion.Tools.Windows.dll
 * Syncfusion.Shared.Base.dll
 * Syncfusion.Shared.Windows.dll
 * Syncfusion.Grid.Base.dll
 * Syncfusion.Grid.Windows.dll

**Step 2:**  Include the namespaces **Syncfusion.Windows.Forms.Tools**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}

**Step 3:**  Create `RadialSlider` control instance and add it to the form.

{% tabs %}

{% highlight C# %}

RadialSlider radialSlider1 = new RadialSlider();

this.radialSlider1.Size = new System.Drawing.Size(282, 282);

this.Controls.Add(radialSlider1);

{% endhighlight %}

{% highlight VB %}

Dim radialSlider1 As RadialSlider = New RadialSlider

Me.radialSlider1.Size = New System.Drawing.Size(282, 282)

Me.Controls.Add(radialSlider1)

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/RadialSlider-img2.png) 

## Configure SliderStyle

Slider appearance can be modified using `SliderStyle` property in RadialSlider. It consist of two style such as Default and Frame.

{% tabs %}

{% highlight C# %}

this.radialSlider1.SliderStyle = SliderStyles.Frame;

{% endhighlight %}

{% highlight VB %}

Me.radialSlider1.SliderStyle = SliderStyles.Frame

{% endhighlight %}

{% endtabs %}

![](Getting-Started_images/RadialSlider-img3.png) 