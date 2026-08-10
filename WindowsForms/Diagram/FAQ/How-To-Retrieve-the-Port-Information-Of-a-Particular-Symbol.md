---
layout: post
title: How to retrieve port information in WinForms Diagram | Syncfusion®
description: Learn how to retrieve port information from a symbol in the Syncfusion® Windows Forms Diagram control using the GetConnectionPointAtPoint method.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Retrieve Port Information of a Symbol in Windows Forms Diagram

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