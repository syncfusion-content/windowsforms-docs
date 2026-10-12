---
layout: post
title: Attach ContextMenu in Windows Forms GridGroupingControl | Syncfusion®
description: Attach a ContextMenu to Syncfusion® Windows Forms GridGroupingControl, its menu items, control-level integration, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Attach a ContextMenu in Windows Forms GridGroupingControl

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
