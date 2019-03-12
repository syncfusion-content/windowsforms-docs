---
layout: post
title: How to display BannerIcon in Banner | WindowsForms | Syncfusion
description: How to display BannerIcon in Banner of HubTile
platform: WindowsForms
control: HubTile
documentation: ug
--- 

# How to display BannerIcon in banner of HubTile?

You can achieve this by using HubTile [ShowBannerTileIcon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~ShowBannerIcon.html) and [BannerIcon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.HubTile~BannerIcon.html) property.

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