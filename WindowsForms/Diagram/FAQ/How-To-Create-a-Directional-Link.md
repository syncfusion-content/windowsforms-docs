---
layout: post
title: How To Create a Directional Link | Diagram | Windows Forms | Syncfusion®
description: how to create a directional link
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Create a Directional Link

Links can be provided with end point decorators to convey the direction. The following code snippet shows how to create a directional link by adding a 'Filled Arrow' end point visual to the head port edge of the link.

{% tabs %}

{% highlight c# %}

// Create a directional link.

Link link = new Link(pts);

link.HeadDecorator.DecoratorShape = DecoratorShape.Filled45Arrow;

{% endhighlight %}

{% highlight vbnet %}

' Create a directional link.

Dim link As New Link(pts)

link.HeadDecorator.DecoratorShape = DecoratorShape.Filled45Arrow


{% endhighlight %}

{% endtabs %}

