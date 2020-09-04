---
layout: post
title: How to enable/disable HubTile rotation | WindowsForms | Syncfusion
description: How to enable / disable HubTile rotation transition in runtime
platform: WindowsForms
control: HubTile
documentation: ug
--- 

# How to enable/disable HubTile rotation transition in runtime?

You can achieve it by setting HubTile [TileType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.HubTile.html#Syncfusion_Windows_Forms_Tools_HubTile_TileType) property as DefaultType, so that rotation transition will be disabled.

{% tabs %}
{% highlight C# %}
// Sets HubTile as Default Tile and Rotation will be disabled
this.RotateTile.TileType = HubTileType.DefaultTile;
{% endhighlight %}
{% highlight VB %} 
'Sets HubTile as Default Tile and Rotation will be disabled
Me.RotateTile.TileType = HubTileType.DefaultTile
{% endhighlight %}
{% endtabs %}
