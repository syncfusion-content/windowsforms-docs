---
layout: post
title: PulsingTile | WindowsForms | Syncfusion
description: pulsingtile
platform: WindowsForms
control: HubTile
documentation: ug
---
# PulsingTile

This Tile type resembles the Music and Video HubTile in Windows Phone. The image content of HubTile can be zoomed in and out randomly.

![](Concept-and-Features_images/Concept-and-Features_img3.png)


{% tabs %}

{% highlight C# %}  

this.HubTile1.TileType = HubTileType.PulsingTile;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.TileType = HubTileType.PulsingTile

{% endhighlight %}

{% endtabs %}

## Pulse duration

In PulsingTile, the time interval between Zoom In and Zoom Out operations can be modified using PulseDuration property. It decreases on increasing the value to this property and vice-versa.

{% tabs %}

{% highlight C# %}  

this.HubTile1.PulseDuration = 2;

{% endhighlight %}


{% highlight VB %} 

Me.HubTile1.PulseDuration = 2

{% endhighlight %}

{% endtabs %}

## Pulse scale

In PulsingTile, the zoom level can be set using PulseScale property.

The following code example shows how to set the PulseScale depth.

{% tabs %}

{% highlight C# %}  

this.HubTile1.PulseScale= 2;

{% endhighlight %}



{% highlight VB %} 

Me.HubTile1.PulseScale = 2

{% endhighlight %}

{% endtabs %}