---
layout: post
title: Docking-Window | WindowsForms | Syncfusion
description: docking window
platform: WindowsForms
control: DockingManager 
documentation: ug
---


# Docking Window

DockingManager lets you dock the control on any of the four sides of the container control.


![](Images/DockingWindow_img1.jpeg)


## Configuring Window in Different Sides

DockingManager lets you specify the type of docking and the bounds of the docked control using the `DockControl` method.

The five sides that can be docked are

* Left
* Right
* Top
* Bottom
* Tabbed
* Fill

{% tabs %}

{% highlight C# %}

//To dock the panel1 on left side of the form.

 this.dockingManager1.DockControl(this.panel1, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Left, 100);

{% endhighlight %}


{% highlight VB %}

'To dock the panel1 on left side of the form.

Me.dockingManager1.DockControl(Me.panel1, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Left, 100)

{% endhighlight %}

{% endtabs %}

![](Images/DockingWindow_img2.jpeg)


## Enabling or Disabling the Dock Functionality

Docking functionality can be enabled or disabled by setting the Boolean value as true or false in the **SetEnableDocking** method.

{% tabs %}

{% highlight C# %}

//To enable the docking functionality.

 this.dockingManager1.SetEnableDocking(this.panel1, true);

{% endhighlight %}


{% highlight VB %}

'To enable the docking functionality.

 Me.dockingManager1.SetEnableDocking(Me.panel1, true)
 
{% endhighlight %}

{% endtabs %}

## Enabling or Disabling the Caption Visibility

**ShowCaption** is an attached property, which is used to hide the Caption of the DockWindow. Default value of **ShowCaption** is true, to hide the Caption turn its value to false.

{% tabs %}

{% highlight C# %}

//To disable the caption of the dock window.

 this.dockingManager1.ShowCaption = false;

{% endhighlight %}


{% highlight VB %}

'To disable the caption of the dock window.

Me.dockingManager1.ShowCaption = false
 
{% endhighlight %}

{% endtabs %}

![](Images/DockingWindow_img3.jpeg)


