---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started 
platform: WindowsForms
control: ToggleButton 
documentation: ug
---

# Getting Started 

This section briefly describes how to design a Toggle Button in a .NET application.

## Assembly deployment

Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#togglebutton) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application.

Find more details about installing the nuget packages in a Windows Forms application in the following link: [How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages).

## Creating the project

Create a new Windows Forms Project in Visual Studio to display the ToggleButton with basic functionalities.

## Through designer

The `ToggleButton` control can be added to an application by dragging it from the toolbox to designer view. 

The following required assembly reference will be added automatically.

* Syncfusion.Tools.Windows.dll

![Drag and drop togglebutton from toolbox](Getting-Started_images/Getting-Started_img1.png)

### Configuring the ToggleButton

The most commonly used settings of the Toggle Button Control is configured either through Designer using the Smart tag or through the Properties window or through code behind.

The following screenshot illustrates the Toggle Button Control customization through smart tag.

![togglebutton customization through smart tag](Getting-Started_images/Getting-Started_img2.png)


## Through code

**Step 1**: Create a C# or VB application through Visual Studio.

**Step 2**: Add the following required assembly reference to the project.

	Syncfusion.Tools.Windows.dll

**Step 3**: Include the required namespace.

{% tabs %}

{% highlight c# %}
 
using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

{% endtabs %}
   
**Step 4**: Create an instance of the Toggle Button control and add it to the Form.

{% tabs %}
{% highlight c# %}

ToggleButton togglebutton1;
this.togglebutton1 = new Syncfusion.Windows.Forms.Tools.ToggleButton();
this.Controls.Add(togglebutton1);

{% endhighlight %}

{% highlight vb %}

Dim togglebutton1 As Syncfusion.Windows.Forms.Tools.ToggleButton
Me.ToggleButton1 = New Syncfusion.Windows.Forms.Tools.ToggleButton()
Me.Controls.Add(togglebutton1)

{% endhighlight %}
{% endtabs %}
