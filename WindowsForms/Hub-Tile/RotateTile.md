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

You can rotate the tile is horizontally or vertically using [RotationTransition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_RotationTransition) property.

{% tabs %}

{% highlight C# %}

this.HubTile1.RotationTransition = TileFlipDirection.Vertical;

{% endhighlight %}


{% highlight VB %} 

Me.HubTile1.RotationTransition = TileFlipDirection.Vertical

{% endhighlight %}

{% endtabs %}

![Horizontal transition](Concept-and-Features_images/Concept-and-Features_img4.png)

![Vertical transition](Concept-and-Features_images/Concept-and-Features_img5.png) 

## Transition speed

In HubTile, rotation speed can be increased or decreased by the [RotationTransitionSpeed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_RotationTransitionSpeed) property.

{% tabs %}

{% highlight C# %}  

this.HubTile1.RotationTransitionSpeed = 3;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.RotationTransitionSpeed = 3

{% endhighlight %}

{% endtabs %}
