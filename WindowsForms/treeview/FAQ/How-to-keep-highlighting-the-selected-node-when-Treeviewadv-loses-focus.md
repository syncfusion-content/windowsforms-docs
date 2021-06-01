---
 layout: post
title: How-to-keep-highlighting-the-selected-node-when-Treeviewadv-loses-focus | WindowsForms | Syncfusion
description: how to keep highlighting the selected node when treeviewadv loses focus
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Keep Highlighting the Selected Node when TreeViewAdv Loses Focus

We can set HideSelection property to _false_, to ensure that the node remains selected even when the TreeViewAdv control does not have focus. 

{% tabs %}
{% highlight c# %}

this.treeViewAdv1.HideSelection = false;

{% endhighlight %}

{% highlight vb %}

Me.treeViewAdv1.HideSelection = False

{% endhighlight %}
{% endtabs %}