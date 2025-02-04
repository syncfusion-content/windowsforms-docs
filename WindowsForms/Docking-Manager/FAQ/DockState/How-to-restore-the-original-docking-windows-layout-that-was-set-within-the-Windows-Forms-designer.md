---
layout: post
title: How to restore the original docking windows layout that was set within the Windows Forms designer | WindowsForms | Syncfusion®
description: How to restore the original docking windows layout that was set within the Windows Forms designer
platform: windowsforms
control: DockingManager
documentation: ug
---


# How to restore the original docking windows layout that was set within the Windows Forms designer?

Calling `LoadDesignerDockState()` method at run time, will restore the docking windows layout that was set in the Designer.


{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDesignerDockState();

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

{% endtabs %}


