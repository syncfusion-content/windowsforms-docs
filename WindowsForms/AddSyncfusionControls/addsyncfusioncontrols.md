---
layout: post
title: Add Syncfusion Controls | WindowsForms | Syncfusion
description: Steps to Add syncfusion controls
platform: WindowsForms
control: Introduction
documentation: ug
---

# Add Syncfusion Controls 

## Through Drag and Drop

The following steps helps to add required Essential Windows Forms control through drag and drop. for example: DockingManager.

1) Create a Windows Forms project in Visual Studio.<br/><br/>
2) Find DockingManager control by typing the name of the DockingManager in the search box.<br/><br/>
![docking](ThroughDragandDrop_images/ThroughDragandDrop_img1.png)

3) Drag DockingManager and drop it in the designer.<br/><br/>

## Through C# / VB

The following steps helps to add required Essential Windows Forms control through code. For example: DockingManager.

1) Create a Windows Forms project in Visual Studio and refer to the following assemblies.

 * Syncfusion.Tools.Base
 * Syncfusion.Tools.Windows
 * Syncfusion.Shared.Base
 * Syncfusion.Shared.Windows
 * Syncfusion.Grid.Base
 * Syncfusion.Grid.Windows

2) Add the following namespace.

{% tabs %}

{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools
Imports Syncfusion.Windows.Forms

{% endhighlight %}

{% endtabs %}

3) Create an instance of Docking Manager.

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components);

{% endhighlight %}

{% highlight vb %}

private Syncfusion.Windows.Forms.Tools.DockingManager DockingManager = New Syncfusion.Windows.Forms.Tools.DockingManager(Me.components)

{% endhighlight %}

{% endtabs %}
