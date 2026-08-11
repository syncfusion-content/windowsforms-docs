---
layout: post
description: Learn how to control the number of connections that can be drawn from or to a port in the Syncfusion® Windows Forms Diagram control.
title: How to control connection count in Windows Forms Diagram | Syncfusion®
platform: windowsforms
control: Diagram
documentation: ug
---

# How to Control Connections Count of a Port in Windows Forms Diagram

This can be done using the port's ConnectionsLimit property. ConnectionsLimit specifies the number of connections to be allowed. Default value is _10_. 

{% tabs %}

{% highlight c# %}

Syncfusion.Windows.Forms.Diagram.ConnectionPoint cp = new Syncfusion.Windows.Forms.Diagram.ConnectionPoint();

cp.ConnectionsLimit = 12;

{% endhighlight %}

{% highlight vbnet %}

Dim cp As New Syncfusion.Windows.Forms.Diagram.ConnectionPoint()

cp.ConnectionsLimit = 12

{% endhighlight %}

{% endtabs %}

