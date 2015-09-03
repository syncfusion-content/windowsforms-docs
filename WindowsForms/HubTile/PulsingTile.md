---
layout: post
title: PulsingTile
description: pulsingtile
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


## Pulse Duration

In PulsingTile, the time interval between Zoom In and Zoom Out operations can be modified using PulseDuration property. It decreases on increasing the value to this property and vice-versa.

The following code example shows how to set the Pulse duration.

{% highlight C# %}  

this.HubTile1.PulseDuration = 2;

{% endhighlight %}


{% highlight vbnet %} 

Me.HubTile1.PulseDuration = 2

{% endhighlight %}


## Pulse Scale

In PulsingTile, the zoom level can be set using PulseScale property.

The following code example shows how to set the PulseScale depth.


{% highlight C# %}  

this.HubTile1.PulseScale= 2;

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.PulseScale = 2

{% endhighlight %}