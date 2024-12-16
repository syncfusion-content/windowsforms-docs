---
layout: post
title: How to Move Nodes on a Diagram Programmatically | Syncfusion®
description: Learn how to programmatically reposition nodes in a diagram using the MoveNodes method, streamlining your diagram editing and customization process.
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

