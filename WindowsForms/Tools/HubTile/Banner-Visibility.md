---
layout: post
title: Banner Visibility
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
---
# Banner Visibility

HubTile provides support to render Banner similar to Windows 8 live tiles. 

 ![](Concept-and-Features_images/Concept-and-Features_img6.png) 
Figure : Banner Visibility


Banner can be added using the following code example.

{% highlight C# %} 

this.HubTile1.ShowBanner = true;

 {% endhighlight %}

 
{% highlight vbnet %} 

Me.HubTile1.ShowBanner = True

{% endhighlight %}


> _Note: Banner visibility customization is applicable only for DefaultTile type._