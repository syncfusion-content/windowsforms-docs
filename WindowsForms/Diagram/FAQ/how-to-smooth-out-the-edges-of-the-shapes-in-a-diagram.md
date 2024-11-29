---
layout: post
title: How To Smooth out the Edges Of the Shapes In a Dia | Diagram | Windows Forms | Syncfusion®
description: how to smooth-out the edges of the shapes in a diagram
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
