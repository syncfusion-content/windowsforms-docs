---
layout: post
title: How-to-Set-the-Background-Color-for-a-Grid | Windows Forms | Syncfusion
description: how to set the background color for a grid
platform: windowsforms
control: Grid
documentation: ug
---

# How to Set the Background Color for a Grid

### Introduction

To set the backcolor for the area of the grid populated by cells, you must set the grid.BackColor property to the color. The grid display may also have regions where there are no cells. These regions will be the grid's client area where there are no cells or scrollbars. 

#### Example

{% highlight c# %}



//Blue.

grid.BackColor = Color.Blue;



//Orange.

grid.Properties.BackgroundColor = Color.Orange;

{% endhighlight %}

{% highlight vbnet %}



'Blue.

grid.BackColor = Color.Blue



'Orange.

grid.Properties.BackgroundColor = Color.Orange

{% endhighlight %}

![](How-to-Set-the-Background-Color-for-a-Grid_images/How-to-Set-the-Background-Color-for-a-Grid_img1.jpeg)



