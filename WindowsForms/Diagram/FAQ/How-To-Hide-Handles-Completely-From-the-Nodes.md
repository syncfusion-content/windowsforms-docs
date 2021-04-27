---
layout: post
title: Hide Handles Completely From the Nodes Diagram | Syncfusion
description: how to hide handles completely from the nodes
platform: windowsforms
control: Diagram
documentation: ug
---
# Hide Handles Completely From the Nodes Diagram

We can hide the handles completely by setting the HandleColor and HandleOutlineColor properties to 'Transparent' as follows.

## How To Hide Handles Completely From the Nodes

This page explains about How To Hide Handles Completely From the Nodes and more details.

{% tabs %}

{% highlight c# %}

this.diagram1.View.HandleColor = Color.Transparent;

this.diagram1.View.HandleOutlineColor = Color.Transparent;

{% endhighlight %}

{% highlight vbnet %}

Me.diagram1.View.HandleColor = Color.Transparent

Me.diagram1.View.HandleOutlineColor = Color.Transparent

{% endhighlight %}

{% endtabs %}


![How-To-Hide-Handles-Completely-From-the-Nodes_img1](How-To-Hide-Handles-Completely-From-the-Nodes_images/How-To-Hide-Handles-Completely-From-the-Nodes_img1.jpeg)

Illustrates Hiding Handles
{:.captionttext }

