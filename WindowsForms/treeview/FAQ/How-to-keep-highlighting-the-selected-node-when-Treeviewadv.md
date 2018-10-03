---
layout: post
title: How-to-keep-highlighting-the-selected-node-when-Treeviewadv-loses-focus | WindowsForms | Syncfusion
description: how to keep highlighting the selected node when treeviewadv loses focus
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to keep highlighting the selected node when TreeViewAdv loses focus

We can set HideSelection property to _false_, to ensure that the node remains selected even when the TreeViewAdv control does not have focus. 

{% highlight c# %}



this.treeViewAdv1.HideSelection = false;

{% endhighlight %}

{% highlight vbnet %}



Me.treeViewAdv1.HideSelection = False


{% endhighlight %}
