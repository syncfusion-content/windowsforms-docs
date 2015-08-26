---
layout: post
title: Concept-and-Features
description: concept and features
platform: windowsforms
control: HubTile
documentation: ug
---

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