---
layout: post
title: How to place nodes outside diagram in WinForms Diagram | Syncfusion®
description: Learn how to place nodes outside the diagram model bounds in the Syncfusion® Windows Forms Diagram control by disabling boundary constraints.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to place nodes outside diagram bounds in Windows Forms Diagram

Setting the model's BoundaryConstraintsEnabled property to 'false', will let you place the nodes outside the bounds of the diagram model.

{% tabs %}

{% highlight c# %}

diagram1.Model.BoundaryConstraintsEnabled = false;

{% endhighlight %}

{% highlight vbnet %}

diagram1.Model.BoundaryConstraintsEnabled = False

{% endhighlight %}

{% endtabs %}