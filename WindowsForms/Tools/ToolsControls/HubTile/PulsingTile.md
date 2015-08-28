---
layout: post
title: PulsingTile
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
---
# PulsingTile

This Tile type resembles the Music and Video HubTile in Windows Phone. The image content of HubTile can be zoomed in and out randomly. 

![](Concept-and-Features_images/Concept-and-Features_img3.png) 
Figure 1642: HubTile


The following code example shows how to enable pulsing tile using code behind.

{% highlight C# %}  

this.HubTile1.TileType = HubTileType.PulsingTile;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.TileType = HubTileType.PulsingTile

{% endhighlight %}