---
layout: post
title: How To Move  Place the Nodes Outside the Diagram M | Diagram | Windows Forms | Syncfusion®
description: how to move / place the nodes outside the diagram model's bounds
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Move / Place the Nodes Outside the Diagram Model's Bounds

Setting the model's BoundaryConstraintsEnabled property to 'false', will let you place the nodes outside the bounds of the diagram model.

{% tabs %}

{% highlight c# %}

diagram1.Model.BoundaryConstraintsEnabled = false;

{% endhighlight %}

{% highlight vbnet %}

diagram1.Model.BoundaryConstraintsEnabled = False

{% endhighlight %}

{% endtabs %}