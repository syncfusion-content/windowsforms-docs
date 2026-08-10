---
layout: post
title: How to hide handles completely in Windows Forms Diagram | Syncfusion®
description: Learn how to hide selection handles completely from nodes in the Syncfusion® Windows Forms Diagram control using handle color settings.
platform: windowsforms
control: Diagram
documentation: ug
---
# How to hide handles completely from nodes in Windows Forms Diagram

This page explains about How To Hide Handles Completely From the Nodes and more details.

## How To Hide Handles Completely From the Nodes

We can hide the handles completely by setting the HandleColor and HandleOutlineColor properties to 'Transparent' as follows.

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

