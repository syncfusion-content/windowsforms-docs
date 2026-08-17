---
layout: post
title: How to Display BannerIcon in HubTile Banner in WinForms | Syncfusion®
description: Learn how to display BannerIcon in the banner of HubTile in Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to Display BannerIcon in HubTile Banner in WinForms

You can achieve this by using HubTileShowBannerTileIcon and BannerIcon property.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ShowBannerIcon</td><td>
This property decides whether BannerIcon is displayed in DefaultTile type of HubTile or not.</td></tr>
<tr>
<td>
BannerIcon</td><td>
This property sets BannerIcon in DefaultTile Banner of HubTile.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



/// Sets whether BannerIcon needs to be displayed in BannerTile 

this.HubTile1.ShowBannerIcon = true;



/// Sets BannerIcon in BannerTile type of HubTile.

this.HubTile1.BannerIcon = this.ImageListAdv.Images[0];


{% endhighlight %}


{% highlight VB %}



‘Sets whether BannerIcon needs to be displayed in BannerTile 

Me.HubTile1.ShowBannerIcon = True



‘Sets BannerIcon in BannerTile type of HubTile.

Me.HubTile1.BannerIcon = Me.ImageListAdv.Images[0]


{% endhighlight %}

{% endtabs %}
