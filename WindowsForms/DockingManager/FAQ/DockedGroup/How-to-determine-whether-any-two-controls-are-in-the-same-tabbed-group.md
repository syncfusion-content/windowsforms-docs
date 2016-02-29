---
layout: post
title: How to determine whether any two controls are in the same tabbed group | Windows Forms | Syncfusion
description: How to determine whether any two controls are in the same tabbed group
platform: windowsforms
control: DockingManager
documentation: ug
---



# How to determine whether any two controls are in the same tabbed group?

This can be done by calling the IsSameTabbedGroup method.
{% highlight C# %}





this.dockingManager.IsSameTabbedGroup(this.listBox1,this.listBox2);
{% endhighlight %}

{% highlight vbnet %}





Me.dockingManager.IsSameTabbedGroup(Me.listBox1,Me.listBox2)
{% endhighlight %}



