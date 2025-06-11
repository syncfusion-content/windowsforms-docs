---
layout: post
title: How to change the dock tab alignment | WindowsForms | Syncfusion®
description: How to change the dock tab alignment
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to change the dock tab alignment?

The tabs of the Docked window are placed at the bottom, by default. To place the tabs of the docked window at different sides set the property `DockTabAlignment` with desired values such as Top, Bottom, Left, and Right.

{% tabs %}

{% highlight C# %}

//To set the Tab alignment as Right.

this.dockingManager.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right;

{% endhighlight %}


{% highlight VB %}

'To set the Tab alignment as Right.

Me.dockingManager.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right;
 
{% endhighlight %}

{% endtabs %}



