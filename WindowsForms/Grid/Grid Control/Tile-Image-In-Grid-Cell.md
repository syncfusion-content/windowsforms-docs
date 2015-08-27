---
layout: post
title: Tile-Image-In-Grid-Cell
description: tile image in grid cell 
platform: windowsform
control: Grid
documentation: ug
---

# Tile Image In Grid Cell 

Essential GridControl supports Tile Image feature in Grid cell. Set BackgroundImageMode property to GridBackgroundImageMode.TileImage to add title image in grid cell.

The following code illustrates how to add Tile Image feature in Grid cell.

{% highlight c# %}

this.gridControl1[2, 2].BackgroundImageMode = GridBackgroundImageMode.TileImage;

{% endhighlight %}

{% highlight vbnet %}

  Me.gridControl1(2, 2).BackgroundImageMode = GridBackgroundImageMode.TileImage
{% endhighlight %}

When the code runs, the following image is displayed.

![](Grid-Control_images/Grid-Control_img242.jpeg)


