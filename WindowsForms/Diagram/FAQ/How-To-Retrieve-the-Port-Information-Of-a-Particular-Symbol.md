---
layout: post
title: How To Retrieve the Port Information Of a Symbol | Syncfusion®
description: how to retrieve the port information of a particular symbol
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Retrieve the Port Information Of a Particular Symbol

You can retrieve port information of a particular symbol using the HandlesHitTesting.GetConnectionPointAtPoint(Node, Point) method.

This method has two parameters: _Node_ and _Port_. 

* Node specifies the symbol in which the port resides 
* Point specifies the Point object that holds the location of the port.

{% tabs %}

{% highlight c# %}

ConnectionPoint port = HandlesHitTesting.GetConnectionPointAtPoint(circle, new Point(120, 120)); 

{% endhighlight %}

{% highlight vbnet %}

Dim port As ConnectionPoint = HandlesHitTesting.GetConnectionPointAtPoint(circle, New Point(120, 120))

{% endhighlight %}

{% endtabs %}