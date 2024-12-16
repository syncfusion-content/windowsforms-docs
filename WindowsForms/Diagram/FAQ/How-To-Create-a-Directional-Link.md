---
layout: post
title: How To Create a Directional Link | Syncfusion®
description: Learn to create directional links with a 'Filled Arrow' endpoint, enhancing the visual flow by marking the head port edge of the connection.
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

