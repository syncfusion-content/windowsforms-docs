---
layout: post
title: How to enable / disable HubTile rotation transition in runtime | Windows Forms | Syncfusion
description: How to enable / disable HubTile rotation transition in runtime
platform: windowsforms
control: HubTile
documentation: ug
--- 

# How to enable / disable HubTile rotation transition in runtime?

You can achieve it by setting HubTile TileType property as DefaultType, so that rotation transition will be disabled.



<Table>
<tr>
<th>Property</th>
<th>Description</th>
</tr>
<tr>
<td>TileType</td>
<td>This property decides TileType of HubTile</td>
</tr>
</Table>



{% highlight C# %} 

 

/// Sets HubTile as Default Tile and Rotation will be disabled

this.RotateTile.TileType = HubTileType.DefaultTile;

 
  {% endhighlight %}
 

{% highlight vbnet %} 
 

'Sets HubTile as Default Tile and Rotation will be disabled

Me.RotateTile.TileType = HubTileType.DefaultTile

{% endhighlight %}