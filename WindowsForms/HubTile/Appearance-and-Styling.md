---
layout: post
title: Appearance-and-Styling
description: appearance and styling
platform: WindowsForms
control: HubTile
documentation: ug
---

# Appearance and Styling

## Banner Visibility

HubTile provides support to render Banner similar to Windows 8 live tiles. 

 ![](Concept-and-Features_images/Concept-and-Features_img6.png) 



Banner can be added using the following code example.

{% highlight C# %} 

this.HubTile1.ShowBanner = true;

 {% endhighlight %}

 
{% highlight vbnet %} 

Me.HubTile1.ShowBanner = True

{% endhighlight %}


N> Banner visibility customization is applicable only for DefaultTile type.

## Banner Text Customization

In HubTile, information in the form of text can be displayed in Banner.

The following code example is used to customize Banner text.

{% highlight C# %}  

this.HubTile1.Banner.Text  = "Child Play is on the way”;

this.HubTile1.Banner.TextColor  = Color.White;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.Banner.Text  = "Child Play is on the way”

Me.HubTile1.Banner.TextColor  = Color.White

{% endhighlight %}

N> Banner Text properties are applicable only for DefaultTile and RotateTile types.


## Banner Icon

In Banner, icons can be added, like the following image. Use the following code example to create a Banner icon.

 ![](Concept-and-Features_images/Concept-and-Features_img9.png) 
 


{% highlight C# %}  

this.HubTile1.ShowBannerIcon = true;

this.HubTile1.BannerIcon = this.ImageListAdv1.Images[0];

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.ShowBannerIcon = True

Me.HubTile1.BannerIcon = Me.ImageListAdv1.Images[0]

{% endhighlight %}

N> Banner Icon customization is applicable only for DefaultTile type.

## Banner Color

HubTileBanner color can be changed using the BannerColor property. 

![](Concept-and-Features_images/Concept-and-Features_img11.png) 

Figure : Banner Color


The following code illustrates how to change the Banner color.

{% highlight C# %}  

this.HubTile1.BannerColor= Color.Green;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.BannerColor= Color.Green

{% endhighlight %}

N> BannerColor is applicable only for DefaultTile and RotateTile types.


## Selection Marker

HubTile provides selection marker support similar to Windows 8 Start screen tile. 

![](Concept-and-Features_images/Concept-and-Features_img13.png) 




The following code example demonstrates how to keep a tile selection marked.

{% highlight C# %} 

this.HubTile1.IsSelectionMarked = true;

 {% endhighlight %} 
 
{% highlight vbnet %} 

Me.HubTile1.IsSelectionMarked = True

{% endhighlight %}

N> Selection Marker is applicable only for DefaultTile type.

## Selection Marker Border Color

In HubTile, Selection Marker Border color can be customized using SelectionMarkerColor.

{% highlight C# %} 

this.HubTile1.SelectionMarkerColor = Color.Blue;

 {% endhighlight %}

 
 
{% highlight vbnet %} 

Me.HubTile1.SelectionMarkerColor = Color.Blue

{% endhighlight %}


N> SelectionMarkerColor is applicable only for DefaultTile type.


## Selection Marker Border Color

In HubTile, Selection Marker Border color can be customized using SelectionMarkerColor.

 

{% highlight C# %}   

this.HubTile1.SelectionMarkerColor = Color.Blue;

 {% endhighlight %}

{% highlight vbnet %}  

Me.HubTile1.SelectionMarkerColor = Color.Blue

 {% endhighlight %}

 

N> SelectionMarkerColor is applicable only for DefaultTile type.


## Hovered Border Color

In HubTile, border highlight is rendered once it is focused. Its appearance can be customized using the HoveredBorderColor property.

The following code example demonstrates how you can customize the border color of HubTile on mouse hovering.

{% highlight C# %}  

this.HubTile1.HoveredBorderColor= Color.Green;

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.HoveredBorderColor= Color.Green

{% endhighlight %}



The following code example illustrates how to enable the hover border color.

{% highlight C# %}  

this.HubTile1.EnableHoverColor= true;

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.EnableHoverColor= True

{% endhighlight %}


## Expand On Hover

HubTile can be expanded once it is focused. It can be enabled by using the ExpandOnHover property.

The following code illustrates how to enable the HubTileExpand behavior while mouse hovering.

{% highlight C# %}  

this.HubTile1.ExpandOnHover= true;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.ExpandOnHover= True

{% endhighlight %}

N> ExpandOnHover is applicable only for DefaultTile type.


## Tile Press Behavior

Tile sliding effect occurs on mouse click and based on the position of the mouse pointer. This property allows you to enable or disable the sliding effect in HubTile.

The following code example shows how to enable the Sliding Effect in the HubTile.

{% highlight C# %}  

this.HubTile1.EnableTileSlideEffect = true;

{% endhighlight %}

{% highlight vbnet %} 

Me.HubTile1.EnableTileSlideEffect = True

{% endhighlight %}

N> EnableTileSlideEffect is applicable only for DefaultTile and PulsingTile types.

![](Concept-and-Features_images/Concept-and-Features_img19.png) 
