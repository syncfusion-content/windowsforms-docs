---
layout: post
title: How to attach a context menu to the GridControl | Syncfusion
description: Learn here all about how to attach a context menu to the Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to attach a context menu to the Windows Forms GridControl

This can be done using the code snippet below.


 
{% highlight c# %}

//Adds items to context menu.
this.contextMenu1.MenuItems.Add("One");
this.contextMenu1.MenuItems.Add("Two");
this.contextMenu1.MenuItems.Add("Three");

//Assigns it to the GridGroupingControl.
this.gridGroupingControl1.ContextMenu = this.contextMenu1;

{% endhighlight  %}

{% highlight vb %}

'Adds items to context menu.
Me.contextMenu1.MenuItems.Add("One")
Me.contextMenu1.MenuItems.Add("Two")
Me.contextMenu1.MenuItems.Add("Three")

'Assigns it to the GridGroupingControl.
Me.gridGroupingControl1.ContextMenu = Me.contextMenu1

{% endhighlight  %}
