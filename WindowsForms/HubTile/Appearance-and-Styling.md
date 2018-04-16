---
layout: post
title: Appearance-and-Styling | WindowsForms | Syncfusion
description: appearance and styling
platform: WindowsForms
control: HubTile
documentation: ug
---

# Appearance and styling

## Banner visibility

HubTile provides support to render Banner similar to Windows 8 live tiles.

 ![](Concept-and-Features_images/Concept-and-Features_img6.png)



Banner can be added using the following code example.

{% tabs %}

{% highlight C# %}

this.HubTile1.ShowBanner = true;

 {% endhighlight %}

 
{% highlight VB %} 

Me.HubTile1.ShowBanner = True

{% endhighlight %}

{% endtabs %}


N> Banner visibility customization is applicable only for DefaultTile type.

## Banner text customization

In HubTile, information in the form of text can be displayed in Banner.

{% tabs %}

{% highlight C# %}  

this.HubTile1.Banner.Text  = "Child Play is on the way”;

this.HubTile1.Banner.TextColor  = Color.White;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.Banner.Text  = "Child Play is on the way”

Me.HubTile1.Banner.TextColor  = Color.White

{% endhighlight %}

{% endtabs %}

N> Banner Text properties are applicable only for DefaultTile and RotateTile types.


## Banner icon

In Banner, icons can be added, like the following image. Use the following code example to create a Banner icon.

 ![](Concept-and-Features_images/Concept-and-Features_img9.png)
 
{% tabs %}

{% highlight C# %}

this.HubTile1.ShowBannerIcon = true;

this.HubTile1.BannerIcon = this.ImageListAdv1.Images[0];

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.ShowBannerIcon = True

Me.HubTile1.BannerIcon = Me.ImageListAdv1.Images[0]

{% endhighlight %}

{% endtabs %}

N> Banner Icon customization is applicable only for DefaultTile type.

## Banner color

HubTileBanner color can be changed using the BannerColor property.

![](Concept-and-Features_images/Concept-and-Features_img11.png)

Banner Color
{:.caption}

{% tabs %}

{% highlight C# %}  

this.HubTile1.BannerColor= Color.Green;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.BannerColor= Color.Green

{% endhighlight %}

{% endtabs %}

N> BannerColor is applicable only for DefaultTile and RotateTile types.


## Selection marker

HubTile provides selection marker support similar to Windows 8 Start screen tile.

![](Concept-and-Features_images/Concept-and-Features_img13.png)




The following code example demonstrates how to keep a tile selection marked.

{% tabs %}

{% highlight C# %} 

this.HubTile1.IsSelectionMarked = true;

 {% endhighlight %} 
 
{% highlight VB %} 

Me.HubTile1.IsSelectionMarked = True

{% endhighlight %}

{% endtabs %}

N> Selection Marker is applicable only for DefaultTile type.

## Selection marker border color

In HubTile, Selection Marker Border color can be customized using the SelectionMarkerColor.

{% tabs %}

{% highlight C# %} 

this.HubTile1.SelectionMarkerColor = Color.Blue;

 {% endhighlight %}

 
 
{% highlight VB %} 

Me.HubTile1.SelectionMarkerColor = Color.Blue

{% endhighlight %}

{% endtabs %}

N> SelectionMarkerColor is applicable only for DefaultTile type.


## Selection marker border color

In HubTile, Selection Marker Border color can be customized using SelectionMarkerColor.

 {% tabs %}

{% highlight C# %}   

this.HubTile1.SelectionMarkerColor = Color.Blue;

 {% endhighlight %}

{% highlight VB %}  

Me.HubTile1.SelectionMarkerColor = Color.Blue

 {% endhighlight %}

{% endtabs %}
 

N> SelectionMarkerColor is applicable only for DefaultTile type.


## Hovered border color

In HubTile, border highlight is rendered once it is focused. Its appearance can be customized using the HoveredBorderColor property.

The following code example demonstrates how you can customize the border color of HubTile on mouse hovering.

{% tabs %}

{% highlight C# %}  

this.HubTile1.HoveredBorderColor= Color.Green;

{% endhighlight %}



{% highlight VB %} 

Me.HubTile1.HoveredBorderColor= Color.Green

{% endhighlight %}

{% endtabs %}

The following code example illustrates how to enable the hover border color.

{% tabs %}

{% highlight C# %}  

this.HubTile1.EnableHoverColor= true;

{% endhighlight %}



{% highlight VB %} 

Me.HubTile1.EnableHoverColor= True

{% endhighlight %}

{% endtabs %}

## Expand on hover

HubTile can be expanded once it is focused. It can be enabled by using the ExpandOnHover property.

{% tabs %}

{% highlight C# %}  

this.HubTile1.ExpandOnHover= true;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.ExpandOnHover= True

{% endhighlight %}

{% endtabs %}

N> ExpandOnHover is applicable only for DefaultTile type.


## Tile press behavior

Tile sliding effect occurs on mouse click and based on the position of the mouse pointer. This property allows you to enable or disable the sliding effect in HubTile.

{% tabs %}

{% highlight C# %}  

this.HubTile1.EnableTileSlideEffect = true;

{% endhighlight %}

{% highlight VB %} 

Me.HubTile1.EnableTileSlideEffect = True

{% endhighlight %}

{% endtabs %}

N> EnableTileSlideEffect is applicable only for DefaultTile and PulsingTile types.

![](Concept-and-Features_images/Concept-and-Features_img19.png)
