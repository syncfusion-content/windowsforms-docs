---
layout: post
title: Banner Color
description: concept and features
platform: WindowsForms
control: HubTile
documentation: ug
--- 
# Banner Color

HubTileBanner color can be changed using the BannerColor property. 

![hub](Concept-and-Features_images/Concept-and-Features_img11.png) 
Figure : Banner Color


The following code illustrates how to change the Banner color.

{% highlight C# %}  

this.HubTile1.BannerColor= Color.Green;

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.BannerColor= Color.Green

{% endhighlight %}



> _Note: BannerColor is applicable only for DefaultTile and RotateTile types._
