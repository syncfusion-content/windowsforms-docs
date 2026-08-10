---
layout: post
title: How to smooth out shape edges in Windows Forms Diagram | Syncfusion®
description: Learn how to smooth out the edges, lines, and curves of shapes in the Syncfusion® Windows Forms Diagram control using rendering settings.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to smooth out shape edges in Windows Forms Diagram

You can use the Diagram.Model.RenderingStyle.SmoothingMode property to smooth-out the edges, lines and curves of the shapes in a diagram.

{% tabs %}

{% highlight c# %}

this.diagram1.Model.RenderingStyle.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

{% endhighlight %}

{% highlight vbnet %}

Me.diagram1.Model.RenderingStyle.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality

{% endhighlight %}

{% endtabs %}
