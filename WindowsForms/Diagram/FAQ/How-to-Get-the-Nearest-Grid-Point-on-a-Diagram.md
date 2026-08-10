---
layout: post
title: How to get the nearest grid point in Windows Forms Diagram | Syncfusion®
description: Learn how to get the nearest grid point on a diagram in the Syncfusion® Windows Forms Diagram control using the GetNearestGridPoint method.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to get the nearest grid point in Windows Forms Diagram

The GetNearestGridPoint method can be used to get the nearest grid point on a diagram based on a given point.

This method has the following two parameters: 

* Point - specifies the location which calculates the nearest grid point.
* Int - specifies the ruler height.

The following code snippet illustrates the implementation of GetNearestGridPoint method:


{% tabs %}

{% highlight c# %}

//Current mouse position

Point ptMouse = new Point(e.X, e.Y);

int rulerHeight = (diagram1.ShowRulers) ? diagram1.RulersHeight : 0;

//Nearest grid point

PointF ptGridNearestPoint = diagram1.View.Grid.GetNearestGridPoint(ptMouse, rulerHeight);

{% endhighlight %}

{% highlight vbnet %}

Current mouse position 

Dim ptMouse As Point = New Point (e.X, e.Y)

Dim rulerHeight As Integer

rulerHeight = If((diagram1.ShowRulers), diagram1.RulersHeight, 0)

'Nearest grid point

Dim ptGridNearestPoint As PointF = diagram1.View.Grid.GetNearestGridPoint(ptMouse, rulerHeight)

{% endhighlight %}

{% endtabs %}