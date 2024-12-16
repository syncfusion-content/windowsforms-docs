---
layout: post
title: How To Smooth out the Edges Of the Shapes In a Diagram | Syncfusion®
description: Use Diagram.Model.RenderingStyle.SmoothingMode to enhance shapes' visuals by smoothing edges, lines, and curves in your diagram.
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Smooth-out the Edges Of the Shapes In a Diagram

You can use the Diagram.Model.RenderingStyle.SmoothingMode property to smooth-out the edges, lines and curves of the shapes in a diagram.

{% tabs %}

{% highlight c# %}

this.diagram1.Model.RenderingStyle.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

{% endhighlight %}

{% highlight vbnet %}

Me.diagram1.Model.RenderingStyle.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality

{% endhighlight %}

{% endtabs %}
