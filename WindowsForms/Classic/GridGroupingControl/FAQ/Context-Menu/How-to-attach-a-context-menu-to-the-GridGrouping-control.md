---
layout: post
title: How-to-attach-a-context-menu-to-the-GridGrouping-Control | Windows Forms | Syncfusion
description: how to attach a context menu to the gridgrouping control
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Attach a Context Menu to the GridGrouping Control

This can be done using the code snippet below.

{% tabs %}
{% highlight c# %}

//Adds items to context menu.
this.contextMenu1.MenuItems.Add("One");
this.contextMenu1.MenuItems.Add("Two");
this.contextMenu1.MenuItems.Add("Three");

//Assigns it to the GridGroupingControl.
this.gridGroupingControl1.ContextMenu = this.contextMenu1;

{% endhighlight %}

{% highlight vb %}

'Adds items to context menu.
Me.contextMenu1.MenuItems.Add("One")
Me.contextMenu1.MenuItems.Add("Two")
Me.contextMenu1.MenuItems.Add("Three")

'Assigns it to the GridGroupingControl.
Me.gridGroupingControl1.ContextMenu = Me.contextMenu1

{% endhighlight %}
{% endtabs %}
