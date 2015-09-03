---
layout: post
title: DefaultTile
description: defaulttile
platform: WindowsForms
control: HubTile
documentation: ug
---
# DefaultTile

This type provides notification through various transition effects.

## Key Properties

* Title - The title can be displayed at the top of the hub tile.
* Footer - The footer can be displayed at the bottom of the hub tile.
* ImageSource - An image can be displayed in the background of the hub tile.

The following code example shows the usage of the Title, Footer and ImageSource properties.

{% highlight C# %}  

this.HubTile1.Title.Text  = "This is the title area. Display your image here”;

this.HubTile1.Title.TextColor  = Color.White;

this.HubTile1.Footer.Text = "HubTile";

this.HubTile1.Footer.TextColor  = Color.White;

this.HubTile1.ImageSource  = this.ImageListAdv1.Images[0];

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.Title.Text = "This is the title area. Display your image here”

Me.HubTile1.Title.TextColor  = Color.White

Me.HubTile1.Footer.Text = "HubTile"

Me.HubTile1.Footer.TextColor  = Color.White

Me.HubTile1.ImageSource  = Me.ImageListAdv1.Images(0)

{% endhighlight %}


 ![](Concept-and-Features_images/Concept-and-Features_img1.png) 
 
Figure : Default Tile

## Transition Effects

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


 ![](Concept-and-Features_images/Concept-and-Features_img2.png) 
 
Figure : Image Transition

## Transition Speed

In HubTile, image transition speed can be increased or decreased by using ImageTransitionSpeed property.

{% highlight C# %} 

this.HubTile1.ImageTransitionSpeed = 3;

 {% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.ImageTransitionSpeed = 3

{% endhighlight %}