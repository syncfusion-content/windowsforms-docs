---
layout: post
title: How to determine whether any two controls are in the same tabbed group | WindowsForms | Syncfusion®
description: How to determine whether any two controls are in the same tabbed group
platform: windowsforms
control: DockingManager
documentation: ug
---



# How to determine whether any two controls are in the same tabbed group?

To determine whether two controls are in same tabbed group `IsSameTabbedGroup` method can be used.

{% tabs %}

{% highlight C# %}


this.dockingManager.IsSameTabbedGroup(this.listBox1,this.listBox2);


{% endhighlight %}

{% highlight VB %}


Me.dockingManager.IsSameTabbedGroup(Me.listBox1,Me.listBox2)

{% endhighlight %}

{% endtabs %}



