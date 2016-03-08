---
layout: post
title: RotateTile | Windows Forms | Syncfusion
description: rotatetile
platform: windowsforms
control: HubTile
documentation: ug
---
# RotateTile

The Tile will animate by rotating itself in different orientation.

The following code example shows how to enable rotate transition using code behind.

{% highlight C# %}  

this.HubTile1.TileType = HubTileType.RotateTile

{% endhighlight %}

{% highlight vbnet %}

Me.HubTile1.TileType = HubTileType.RotateTile

 {% endhighlight %}
 
 
## Horizontal Transition

Tile is rotated horizontally. The following image illustrates Horizontal rotation.

![](Concept-and-Features_images/Concept-and-Features_img4.png) 

The following code sets Rotate Transition horizontally. 

{% highlight C# %}  

this.HubTile1.RotationTransition=  TileFlipDirection.Horizontal;

{% endhighlight %}


{% highlight vbnet %} 

Me.HubTile1.RotationTransition = TileFlipDirection.Horizontal

{% endhighlight %}


## Vertical Transition

Tile gets rotated vertically. The following image illustrates the Verticalrotation.

![](Concept-and-Features_images/Concept-and-Features_img5.png) 




The following code sets Rotate Transition vertically.

{% highlight C# %}  

this.HubTile1.RotationTransition = TileFlipDirection.Vertical;

{% endhighlight %}


{% highlight vbnet %} 

Me.HubTile1.RotationTransition = TileFlipDirection.Vertical

{% endhighlight %}


## Transition Speed

In HubTile, Rotation speed can be increased or decreased by the RotationTransitionSpeed property.

{% highlight C# %}  

this.HubTile1.RotationTransitionSpeed = 3;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.RotationTransitionSpeed = 3

{% endhighlight %}