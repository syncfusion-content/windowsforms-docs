---
layout: post
title: Selection Marker
description: concept and features
platform: WindowsForms
control: HubTile
documentation: ug
--- 

# Selection Marker

HubTile provides selection marker support similar to Windows 8 Start screen tile. 

![hub](Concept-and-Features_images/Concept-and-Features_img13.png) 
Figure : Selection Marker


The following code example demonstrates how to keep a tile selection marked.

{% highlight C# %} 

this.HubTile1.IsSelectionMarked = true;

 {% endhighlight %}

 
 
{% highlight vbnet %} 

Me.HubTile1.IsSelectionMarked = True

{% endhighlight %}

> _Note: Selection Marker is applicable only for DefaultTile type._
