---
layout: post
title: Set Grid Background Color in Windows Forms GridControl | Syncfusion®
description: Set the background color for a grid in Syncfusion® Windows Forms GridControl using grid properties to customize grid appearance and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Background Color for a Grid in Windows Forms GridControl

## Introduction

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
![Set Background in WinForms GridControl](How-to-Set-the-Background-Color-for-a-Grid_images/How-to-Set-the-Background-Color-for-a-Grid_img1.jpeg)



