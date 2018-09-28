---
layout: post
title: Adding-Clock-to-an-Application | WindowsForms | Syncfusion
description: adding clock to an application
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

# Getting Started

This section describes how to design a `Clock` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#clock) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

Find more details regarding how to install the nuget packages in windows form application in the below link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

## Adding through Visual Studio

Follow the steps given below to add the Clock control to an application through Visual Studio:

1. Create a new Windows Form application in Visual Studio.
2. Drag Clock from the Toolbox tab to the designer.

   ![](Overview_images/Overview_img94.png)

3. Clock control is added.
4. Customize the properties of Clock in the Properties Window.

## Adding through code

Follow the steps given below to add the Clock control to an application through code:

1. Include the Tools Windows namespace as given in the following code:

   
    {% tabs %}

    {% highlight C# %}

        using Syncfusion.Windows.Forms.Tools;

    {% endhighlight %}
   
    {% highlight VB %}

        Imports Syncfusion.Windows.Forms.Tools

    {% endhighlight %}

    {% endtabs %}

2. Create an instance of Clock control and add it to the form as given in the following code:

    {% tabs %}

    {% highlight C# %}

        Syncfusion.Windows.Forms.Tools.Clock clock1;

		this.clock1 = new Syncfusion.Windows.Forms.Tools.Clock();

		this.Controls.Add(clock1);

    {% endhighlight %}
   
    {% highlight VB %}

        Dim clock1 As Syncfusion.Windows.Forms.Tools.clock

		Me.clock1 = New Syncfusion.Windows.Forms.Tools.clock()

		Me.Controls.Add(clock1)

    {% endhighlight %}

    {% endtabs %}

