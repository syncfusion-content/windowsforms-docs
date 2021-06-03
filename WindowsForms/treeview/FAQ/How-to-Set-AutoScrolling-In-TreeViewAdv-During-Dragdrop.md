---
layout: post
title: How-to-Set-AutoScrolling-In-TreeViewAdv-During-Dragdrop | WindowsForms | Syncfusion
description: how to set autoscrolling in treeviewadv during dragdrop
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Set AutoScrolling In TreeViewAdv During DragDrop

The user can make the TreeViewAdv scroll, when an item is dragged from out of the current view, to the top. AutoScroll property when set, allows scrolling in TreeView, even when the item is dragged to the top of the control.

{% tabs %}
{% highlight c# %}

// Setting AutoScrolling property to Both helps in scrolling.
this.treeViewAdv1.AutoScrolling=ScrollBars.Both; 

{% endhighlight %}

{% highlight vb %}

' Setting AutoScrolling property to Both helps in scrolling.
Me.treeViewAdv1.AutoScrolling=ScrollBars.Both 

{% endhighlight %}
{% endtabs %}

{% seealso %}
Drag and Drop

Scrolling
{% endseealso %}
