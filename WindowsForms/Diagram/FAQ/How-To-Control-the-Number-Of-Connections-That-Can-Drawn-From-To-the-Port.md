---
layout: post
title: How To Control the Number Of Connections That Can  | Diagram | Windows Forms | Syncfusion®
description: how to control the number of connections that can be drawn from / to the port
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Control the Number Of Connections That Can Be Drawn From / To the Port

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

