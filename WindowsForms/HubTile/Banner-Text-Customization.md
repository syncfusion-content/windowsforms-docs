---
layout: post
title: Banner Text Customization
description: concept and features
platform: WindowsForms
control: HubTile
documentation: ug
---
# Banner Text Customization

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


> _Note: Banner Text properties are applicable only for DefaultTile and RotateTile types._
