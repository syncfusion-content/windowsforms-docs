---
layout: post
title: How To Create a Directional Link | Diagram | WindowsForms | Syncfusion
description: how to create a directional link
platform: WindowsForms
control: Diagram
documentation: ug
---

# How To Create a Directional Link

Links can be provided with end point decorators to convey the direction. The following code snippet shows how to create a directional link by adding a 'Filled Arrow' end point visual to the head port edge of the link.

{% tabs %}

{% highlight c# %}

// Create a directional link.

Link link = new Link(pts);

EndPointDecoratorModel decoratorMdl = Global.EndPointDecoratorPalette["Filled Arrow"];

if (decoratorMdl != null)

{

 link.EndPoints.LastEndPointDecorator = decoratorMdl.CreateInstance();

}

{% endhighlight %}

{% highlight vbnet %}

' Create a directional link.

Dim link As New LinkLabel.Link(pts)

Dim decoratorMdl As EndPointDecoratorModel = Global.EndPointDecoratorPalette("Filled Arrow")

If Not (decoratorMdl Is Nothing) Then

 link.EndPoints.LastEndPointDecorator = decoratorMdl.CreateInstance()

End If


{% endhighlight %}

{% endtabs %}

