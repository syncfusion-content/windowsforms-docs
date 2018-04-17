---
layout: post
title: RotateTile | WindowsForms | Syncfusion
description: rotatetile
platform: WindowsForms
control: HubTile
documentation: ug
---
# RotateTile

The Tile will animate by rotating itself in different orientation.

The following code example shows how to enable rotate transition using code behind.

{% tabs %}

{% highlight C# %}  

this.HubTile1.TileType = HubTileType.RotateTile

{% endhighlight %}

{% highlight VB %}

Me.HubTile1.TileType = HubTileType.RotateTile

 {% endhighlight %}
 
 {% endtabs %}

## Horizontal transition

Tile is rotated horizontally. The following image illustrates Horizontal rotation.

![](Concept-and-Features_images/Concept-and-Features_img4.png)

{% tabs %}

{% highlight C# %}

this.HubTile1.RotationTransition=  TileFlipDirection.Horizontal;

{% endhighlight %}


{% highlight VB %} 

Me.HubTile1.RotationTransition = TileFlipDirection.Horizontal

{% endhighlight %}

{% endtabs %}

## Vertical transition

Tile gets rotated vertically. The following image illustrates the Vertical rotation.

![](Concept-and-Features_images/Concept-and-Features_img5.png) 



{% tabs %}

{% highlight C# %}  

this.HubTile1.RotationTransition = TileFlipDirection.Vertical;

{% endhighlight %}


{% highlight VB %} 

Me.HubTile1.RotationTransition = TileFlipDirection.Vertical

{% endhighlight %}

{% endtabs %}

## Transition speed

In HubTile, Rotation speed can be increased or decreased by the RotationTransitionSpeed property.

{% tabs %}

{% highlight C# %}  

this.HubTile1.RotationTransitionSpeed = 3;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.RotationTransitionSpeed = 3

{% endhighlight %}

{% endtabs %}