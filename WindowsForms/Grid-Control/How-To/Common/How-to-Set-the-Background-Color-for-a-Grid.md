---
layout: post
title: How to Set the Background Color for a Grid | Windows Forms | Syncfusion
description: Learn here all about how to set the background color for a Grid in Syncfusion Windows Forms Gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Set the Background Color for a Grid in WinForms Gridcontrol

### Introduction

To set the BackColor for the area of the grid populated by cells, you must set the grid.BackColor property to the color. The grid display may also have regions where there are no cells. These regions will be the grid's client area where there are no cells or scrollbars. 

{% tabs %}
{% highlight c# %}

//Blue.
grid.BackColor = Color.Blue;

//Orange.
grid.Properties.BackgroundColor = Color.Orange;

{% endhighlight %}

{% highlight vb %}

'Blue.
grid.BackColor = Color.Blue

'Orange.
grid.Properties.BackgroundColor = Color.Orange

{% endhighlight %}
{% endtabs %}
![](How-to-Set-the-Background-Color-for-a-Grid_images/How-to-Set-the-Background-Color-for-a-Grid_img1.jpeg)



