---
layout: post
title: How To Add Ports To A Custom Symbol | Diagram | WindowsForms | Syncfusion
description: how to add ports to a custom symbol
platform: WindowsForms
control: Diagram
documentation: ug
---

# How To Add Ports To A Custom Symbol

The following code snippet illustrates how ports can be added to a custom symbol.

{% tabs %}

{% highlight c# %}

private CirclePort leftport;

private CirclePort rightport;

//Add these lines to MySymbol's Constructor

//Port locations

leftport = new CirclePort(new PointF(0, this.Height / 2));

rightport = new CirclePort(new PointF(this.Width, this.Height / 2));

//Append CirlePorts to MySymbol

AppendChild(leftport);

AppendChild(rightport);

//Make CenterPort visible

this.CenterPort.Visible = true;

{% endhighlight %}

{% highlight vbnet %}

Private leftport As CirclePort

Private rightport As CirclePort

'Add these lines to MySymbol's Constructor

'Port locations

leftport = New CirclePort(New PointF(0, Me.Height / 2))

rightport = New CirclePort(New PointF(Me.Width, Me.Height / 2))

'Append CirlePorts to MySymbol

AppendChild(leftport)

AppendChild(rightport)

'Make CenterPort visible

Me.CenterPort.Visible = True

{% endhighlight %}

{% endtabs %}
