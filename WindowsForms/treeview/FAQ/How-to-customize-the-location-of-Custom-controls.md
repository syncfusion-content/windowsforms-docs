---
layout: post
title: Customize Custom Control Locations in TreeNodeAdv
description: Learn how to customize the location of custom controls added to TreeNodeAdv elements and control their placement in Windows Forms.
platform: windowsforms
control: TreeView 
documentation: ug
---

# Customize Custom Control Locations in TreeNodeAdv

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
