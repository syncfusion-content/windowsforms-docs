---
layout: post
title: How-to-enable--disable-HubTile-rotation-transition | WindowsForms | Syncfusion
description:  how to enable / disable hubtile rotation transition in runtime?
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

#  How to enable / disable HubTile rotation transition in runtime?

You can achieve it by setting HubTileTileType property as DefaultType, so that rotation transition will be disabled.

_Table_ _986_: _Property Table_

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
TileType</td><td>
This property decides TileType of HubTile</td></tr>
</table>


{% highlight c# %}



/// Sets HubTile as Default Tile and Rotation will be disabled

this.RotateTile.TileType = HubTileType.DefaultTile;

{% endhighlight %}


{% highlight vbnet %}



'Sets HubTile as Default Tile and Rotation will be disabled

Me.RotateTile.TileType = HubTileType.DefaultTile


{% endhighlight %}


