---
layout: post
title: How to display BannerIcon in Banner | WindowsForms | Syncfusion
description: Learn how to display a BannerIcon in the banner area of a HubTile control and customize its appearance in Windows Forms.
platform: windowsforms
control: HubTile
documentation: ug
--- 

# How to display BannerIcon in banner of HubTile?

You can achieve this by using HubTile [ShowBannerTileIcon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_ShowBannerIcon) and [BannerIcon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_BannerIcon) property.

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
