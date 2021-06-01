---
 layout: post
title: How-to-customize-the-location-of-Custom-controls-added-in-the-TreeNodeAdv | WindowsForms | Syncfusion
description: how to customize the location of custom controls added in the treenodeadv?
platform: WindowsForms
control: TreeView 
documentation: ug
---

# How to Customize the Location of Custom Controls Added in the TreeNodeAdv

TreeNodesAdv hold controls like combo box, Calendar, Chart etc.,by using its Custom Controls feature. In the TreeNodeAdv, this custom control location can be customized by using its CustomControlLocation property. Refer to the following code examples.

{% tabs %}
{% highlight c# %}

//To Set Location of the CustomControl in TreeViewAdv
this.treeViewAdv1.Nodes[1].CustomControlLocation = new Point(60, 15);

{% endhighlight %}

{% highlight vb %}

'To Set Location of the CustomControl in TreeViewAdv
Me.treeViewAdv1.Nodes(1).CustomControlLocation = New Point(60, 15)

{% endhighlight %}
{% endtabs %}
