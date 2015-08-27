---
layout: post
title: Transition Effects
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
---
# Transition Effects

In HubTile, image transition can be performed at specified intervals and in different directions just like the Windows 8 live tiles. They include the following transition effects.

* Bottom-to-Top
* Top-to-Bottom
* Left-to-Right
* Right-to-Left

HubTile image transition direction can be modified using the following code example.

{% highlight C# %} 

this.HubTile1.TileType = HubTileType.DefaultTile;



this.HubTile1.TurnLiveTileOn = true;



this.HubTile1.SlideTransition = TransitionDirection.BottomToTop;

 {% endhighlight %}

 
{% highlight vbnet %} 

Me.HubTile1.TileType = HubTileType.DefaultTile



Me.HubTile1.TurnLiveTileOn = True



Me.HubTile1.SlideTransition = TransitionDirection.LeftToRight


{% endhighlight %}


 ![hub](Concept-and-Features_images/Concept-and-Features_img2.png) 
Figure : Image Transition

