---
layout: post
title: How to Set Cell Text Color in Windows Forms Grid Control | Syncfusion®
description: Set the text color that appears in a cell in Syncfusion® Windows Forms Grid Control using cell style settings and customize text appearance and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Cell Text Color in Windows Forms Grid Control

Harnessing the ability to customize text color to your application allows you endless possibilities. Use the TextColor property of cells style and set it to color value.

{% tabs %}
{% highlight c# %}

//Modifies the TextColor of a cell.
gridControl1[rowIndex, colIndex].TextColor = Color.Red;
{% endhighlight  %}

{% highlight vb %}
'Modifies the TextColor of a cell.
GridControl1(rowIndex, colIndex).TextColor = Color.Red
{% endhighlight  %}
{% endtabs %}