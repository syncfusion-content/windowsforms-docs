---
layout: post
title: Enable or disable HubTile rotation in Windows Forms | Syncfusion®
description: Learn how to enable or disable HubTile rotation transition at runtime in Syncfusion Windows Forms using the HubTileTileType property.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# Enable or disable HubTile rotation in Windows Forms

You can achieve it by setting HubTileTileType property as DefaultType, so that rotation transition will be disabled.

Property table

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

{% tabs %}

{% highlight C# %}



/// Sets HubTile as Default Tile and Rotation will be disabled

this.RotateTile.TileType = HubTileType.DefaultTile;

{% endhighlight %}


{% highlight VB %}



'Sets HubTile as Default Tile and Rotation will be disabled

Me.RotateTile.TileType = HubTileType.DefaultTile


{% endhighlight %}

{% endtabs %}
