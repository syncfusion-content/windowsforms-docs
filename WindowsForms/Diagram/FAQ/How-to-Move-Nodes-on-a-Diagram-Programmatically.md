---
layout: post
title: How to move nodes programmatically in Windows Forms Diagram | Syncfusion®
description: Learn how to move nodes programmatically in the Syncfusion® Windows Forms Diagram control using the MoveNodes method.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to move nodes programmatically in Windows Forms Diagram

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

