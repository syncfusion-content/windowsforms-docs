---
layout: post
title: How to Move Nodes on a Diagram Programmatically | Diagram | Windows Forms | Syncfusion®
description: how to move nodes on a diagram programmatically?
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Move Nodes on a Diagram Programmatically?

You can move the desired collection of nodes to a diagram using the MoveNodes method. The following code example illustrates this.

{% tabs %}

{% highlight c# %}

//Move the selected nodes by 20 pixels in both horizontally and vertically.

diagram1.MoveNodes(diagram1.Controller.SelectionList, 20, 20, MeasureUnits.Pixel);

{% endhighlight %}

{% highlight vbnet %}

'Move the selected nodes by 20 pixels in both horizontally and vertically.

diagram1.MoveNodes(diagram1.Controller.SelectionList, 20, 20, MeasureUnits.Pixel)

{% endhighlight %}

{% endtabs %}

