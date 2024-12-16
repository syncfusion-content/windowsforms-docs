---
layout: post
title: How To Control the Number Of Connections From Port | Syncfusion®
description: Guide on setting connection limits to a port. Learn to configure firewall and server settings to manage inbound and outbound connection capacity effectively.
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

