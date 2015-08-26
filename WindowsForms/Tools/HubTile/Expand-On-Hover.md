---
layout: post
title: Concept-and-Features
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
--- 

## Expand On Hover

HubTile can be expanded once it is focused. It can be enabled by using the ExpandOnHover property.

The following code illustrates how to enable the HubTileExpand behavior while mouse hovering.

{% highlight C# %}  

this.HubTile1.ExpandOnHover= true;

{% endhighlight %}



{% highlight vbnet %} 

Me.HubTile1.ExpandOnHover= True

{% endhighlight %}

_Note: ExpandOnHover is applicable only for DefaultTile type._
