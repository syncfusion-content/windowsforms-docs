---
layout: post
title: DefaultTile
description: concept and features
platform: windowsforms
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


 ![hub](Concept-and-Features_images/Concept-and-Features_img1.png) 
Figure : Default Tile

