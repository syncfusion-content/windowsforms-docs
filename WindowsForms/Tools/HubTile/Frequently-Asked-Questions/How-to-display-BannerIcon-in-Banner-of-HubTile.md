---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: windowsforms
control: HubTile
documentation: ug
--- 


# How to display BannerIcon in Banner of HubTile?

You can achieve this by using HubTile ShowBannerTileIcon and BannerIcon property.

_Table 982: Property Table_


<Table>
<tr>
<th>Property</th>
<th>Description</th>
</tr>
<tr>
<td>ShowBannerIcon</td>
<td>This property decides whether BannerIcon is displayed in DefaultTile type of HubTile or not.</td>
</tr>
<tr>
<td>BannerIcon</td>
<td>This property sets BannerIcon in DefaultTile Banner of HubTile.</td>
</tr>
</Table>


 {% highlight C# %} 

/// Sets whether BannerIcon needs to be displayed in BannerTile

this.HubTile1.ShowBannerIcon = true;

 

/// Sets BannerIcon in BannerTile type of Hubtile.

this.HubTile1.BannerIcon = this.ImageListAdv.Images[0];

  {% endhighlight %}

{% highlight vbnet %} 
 

‘Sets whether BannerIcon needs to be displayed in BannerTile

Me.HubTile1.ShowBannerIcon = True

 

‘Sets BannerIcon in BannerTile type of Hubtile.

Me.HubTile1.BannerIcon = Me.ImageListAdv.Images[0]


{% endhighlight %}