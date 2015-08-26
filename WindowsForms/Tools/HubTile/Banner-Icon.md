---
layout: post
title: Concept-and-Features
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
--- 

## Banner Icon

In Banner, icons can be added, like the following image. Use the following code example to create a Banner icon.

 ![hub](Concept-and-Features_images/Concept-and-Features_img9.png) 


{% highlight C# %}  

this.HubTile1.ShowBannerIcon = true;

this.HubTile1.BannerIcon = this.ImageListAdv1.Images[0];

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.ShowBannerIcon = True

Me.HubTile1.BannerIcon = Me.ImageListAdv1.Images[0]

{% endhighlight %}


_Note: Banner Icon customization is applicable only for DefaultTile type._
