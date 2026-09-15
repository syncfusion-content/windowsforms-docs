---
layout: post
title: How to Enable or Disable HubTile Rotation in TabbedMDI | Syncfusion®
description: Learn how to enable or disable HubTile rotation at runtime in Syncfusion Windows Forms TabbedMDI control, its elements and more details.
platform: windowsforms
control: TabbedMDIPackage
documentation: ug
---

# How to Enable or Disable HubTile Rotation in WinForms TabbedMDI

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
