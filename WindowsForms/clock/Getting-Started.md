---
layout: post
title: Getting Started | Clock | WindowsForms | Syncfusion
description: This section describes how to add clock control into windows forms application.
platform: WindowsForms
control: Clock
documentation: ug
---

# Getting Started

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#clock) section to get the list of assemblies or NuGet package that needs to be added as a reference to use the control in any application. 

You can find more details about installing the NuGet package in a WF application in the following link: 

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Create a simple application with Clock

You can create a Windows Forms application with the Clock control using the following steps:

## Create a project

Create a new Windows Forms project in Visual Studio to display the Clock control with multiple time zones.

## Add control through designer

The Clock control can be added to an application by dragging it from the toolbox to a designer view. The following required assembly references will be added automatically to the project:

* Syncfusion.Grid.Base
* Syncfusion.Grid.Windows
* Syncfusion.Shared.Base
* Syncfusion.Shared.Windows
* Syncfusion.Tools.Base 
* Syncfusion.Tools.Windows

![wf clock control added by designer](Getting-Started_images/wf-clock-control-added-by-designer.png) 

## Add control manually in code

To add the control manually in C#, follow the given steps:

**1.** Add the following required assembly references to the project:

  * Syncfusion.Grid.Base
  * Syncfusion.Grid.Windows
  * Syncfusion.Shared.Base
  * Syncfusion.Shared.Windows
  * Syncfusion.Tools.Base 
  * Syncfusion.Tools.Windows

**2.** Include the Clock control namespace **Syncfusion.Windows.Forms.Tools;**.

  {% tabs %}
  {% highlight C# %}
  using Syncfusion.Windows.Forms.Tools;
  {% endhighlight %}
  {% highlight VB %}
  Imports Syncfusion.Windows.Forms.Tools
  {% endhighlight %}
  {% endtabs %} 

**3.** Create a Clock control instance, and add it to the form.

  {% tabs %}
  {% highlight C# %}
  Clock clock1 = new Clock();
  this.Controls.Add(clock1);
  {% endhighlight %}
  {% highlight VB %}
  Dim clock1 As New Clock()
  Me.Controls.Add(clock1)
  {% endhighlight %}
  {% endtabs %}

![wf clock control](Getting-Started_images/wf-clock-control.png) 

## Clock type

You can change the analog clock to digital clock by setting the [ClockType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.Clock~ClockType.html) property of the Clock control.

* **Analog Clock:**

![wf clock control](Getting-Started_images/wf-analog-clock.png)

* **Digital Clock:**

![wf clock control](Getting-Started_images/wf-digital-clock.png)