---
layout: post
title: How to Customize Custom Controls Location in TreeViewAdv | Syncfusion
description: Customize the location of custom controls added in Syncfusion® Windows Forms TreeViewAdv control and more.
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to Customize Custom Controls Location in TreeViewAdv

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
