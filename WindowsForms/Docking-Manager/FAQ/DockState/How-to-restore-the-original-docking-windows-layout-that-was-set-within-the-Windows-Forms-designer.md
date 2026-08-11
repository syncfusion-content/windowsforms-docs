---
layout: post
title: How to restore original layout in Windows Forms Docking Manager | Syncfusion®
description: Learn how to restore the original docking windows layout set within the designer in Syncfusion Windows Forms Docking Manager.
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to restore original layout in Windows Forms Docking Manager

Calling `LoadDesignerDockState()` method at run time, will restore the docking windows layout that was set in the Designer.


{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDesignerDockState();

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

{% endtabs %}


