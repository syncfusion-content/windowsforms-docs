---
layout: post
title: How to convert a Model Coordinates to Client Coord | Diagram | Windows Forms | Syncfusion®
description: how to convert a model coordinates to client coordinates
platform: windowsforms
control: Diagram
documentation: ug
---

# How to convert a Model Coordinates to Client Coordinates

The conversion of model Coordinates to Client Coordinates is used to find out the accurate mouse positions on the Diagram when a Diagram document is panned, zoomed or having the ruler inside the Diagram.

The following code example illustrates on how to convert a Model Coordinates to Client Coordinates.

{% tabs %}

{% highlight c# %}

//Calling mouse click event

diagram1.MouseClick += diagram1_MouseClick;

//defining mouse click event.

private void diagram1_MouseClick(object sender, MouseEventArgs e){

PointF pts= diagram1.Controller.ConvertFromModelToClientCoordinates(new PointF(e.X,e.Y));

}

{% endhighlight %}

{% highlight vbnet %}

'Calling mouse click event

Private diagram1.MouseClick += AddressOf diagram1_MouseClick

'defining mouse click event.

Private Sub diagram1_MouseClick(ByVal sender As Object, ByVal e As MouseEventArgs)

Dim pts As PointF= diagram1.Controller.ConvertFromModelToClientCoordinates(New PointF(e.X,e.Y))

End Sub

{% endhighlight %}

{% endtabs %}
