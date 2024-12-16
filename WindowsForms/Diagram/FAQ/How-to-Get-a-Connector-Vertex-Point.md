---
layout: post
title: How to Get a Connector Vertex Point | Syncfusion®
description: Learn how to use the Connector's GetPoint method to retrieve vertex points, setting parameters for local coordinates and graphical vs. relative paths.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Get a Connector Vertex Point

Connector has a method called GetPoint to get its vertex point. 

This method has two parameters: _int_ and _bool_

* int specifies the vertex point in the local coordinates
* bool specifies the path of the connector 

Set the bool parameter to true to get the connector vertex point based on its graphical path and false to get the connector point based on its relative path.

The following code snippet illustrates this:

{% tabs %}

{% highlight c# %}

//LineConnector

ConnectorBase Connector = new LineConnector(new Drawing.PointF(0F, 0F), new Drawing.PointF(10F, 10F));

//set points

Connector.SetPoints(new PointF[2] { Connector.GetPoint(0), Connector.GetPoint(Connector.GetPoints().GetLength(0) - 1, false) });

{% endhighlight %}

{% highlight vbnet %}

'LineConnector

Dim Connector As ConnectorBase = New LineConnector(New Drawing.PointF(0.0F, 0.0F), New Drawing.PointF(10.0F, 10.0F))

'set points

Connector.SetPoints(New PointF(1) {Connector.GetPoint(0), Connector.GetPoint(Connector.GetPoints().GetLength(0) - 1, False)})

{% endhighlight %}

{% endtabs %}