---
layout: post
title: Slider
description: slider
platform: windowsform
control: Grid
documentation: ug
---

# Slider

You can use slider cells in grid cells. You can also share a single Slider control among multiple cells. To set slider properties for a cell, make use of the SliderStyleProperties object. The following code example illustrates how to set cell type to Slider.

{% highlight c# %}



//Sets up a Slider control.

GridStyleInfo style = gridControl1[row, 3];

SliderStyleProperties sp = new SliderStyleProperties(style);

style.CellType = "Slider";



//Sets Slider Properties.

sp.Maximum = 40;

sp.Minimum = 0;

sp.TickFrequency = 8;

sp.LargeChange = 16;

sp.SmallChange = 4;

{% endhighlight %}

{% highlight vbnet %}



'Sets up a Slider control.

Dim style As GridStyleInfo = gridControl1(row, 3)

Dim sp As SliderStyleProperties = New SliderStyleProperties(style)

style.CellType = "Slider"



'Sets Slider Properties.

sp.Maximum = 40

sp.Minimum = 0

sp.TickFrequency = 8

sp.LargeChange = 16

sp.SmallChange = 4
{% endhighlight %}


 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img20.png)

