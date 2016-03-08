---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: RadialMenu 
documentation: ug
---

# Getting Started

This section briefly describes how to design a Radial Menu control in a Windows Forms application.

* Adding a Radial Menu Control
* Configuring the Radial Menu Control

## Adding a Radial Menu Control

1. Create a new Windows Forms Application Project in VS IDE through New ProjectWizard.
2. Drop a Radial Menu Control in the Form.

![](Getting-Started_images/Getting-Started_img1.png)



##  Configuring the Radial Menu Control

The most commonly used settings of the Radial Menu Control are configured either through Designer using the Smart tag or through the Properties window or through code.

The following screenshot displays the Radial Menu Control customization through smart tag.

 ![](Getting-Started_images/Getting-Started_img2.png)



To add Radial Menu control to a Windows Forms Application through code, you can include the following Windows Forms Tools namespace:

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vbnet %}
Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}

Create an instance of the Radial Menu control and add it to the form as given in the following code:

 {% highlight c# %}

Syncfusion.Windows.Forms.Tools.RadialMenu radialMenu1;

this.radialMenu1= new Syncfusion.Windows.Forms.Tools.RadialMenu();

this.Controls.Add(radialMenu1);

{% endhighlight %}

{% highlight vbnet %}

Dim radialMenu1 As Syncfusion.Windows.Forms.Tools.RadialMenu

radialMenu1 = New Syncfusion.Windows.Forms.Tools.RadialMenu()

Me.Controls.Add(radialMenu1)

{% endhighlight %}









