---
layout: post
title: How-to-Use-ColorEdit-Control-in-a-Cell-and-Retriev
description: how to use coloredit control in a cell and retrieve its value
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Use ColorEdit Control in a Cell and Retrieve its Value

## Introduction

It is simple to use the ColorEdit control to specify a cell's value. Just set the [CellType](/windowsforms/grid/feature-summary#cell-types) property in the cell style to "ColorEdit" and set the text property to an appropriate value.

### Example

{% highlight c# %}



//Sets the controltype.

gridControl1[4, 4].CellType = "ColorEdit"; 



//Sets initial value to Color.Aqua or to sets RGB color, use something like 

gridControl1[4, 4].Text = "2, 12, 255"; 



//Sets initial value to RGB(2,12,255).

gridControl1[4, 4].Text = "Aqua";        



//....        

//Retrieve a color object from this cell, uses code such as

Color c = (Color)System.ComponentModel.TypeDescriptor.GetConverter(typeof(Color)).ConvertFromString(gridControl1[4, 4].Text);

{% endhighlight  %}

{% highlight vbnet %}



'Sets controltype.

GridControl1(4, 4).CellType = "ColorEdit" 



'Sets initial value to Color.Aqua or to sets RGB color, use something like  

gridControl1[4, 4].Text = "2, 12, 255"; 



'Sets initial value to RGB(2,12,255) 

GridControl1(4, 4).Text = "Aqua" 



'....        

'Retrieves a color object from this cell, uses code such as

Dim c As Color = CType(System.ComponentModel.TypeDescriptor.GetConverter(GetType(Color)).ConvertFromString(GridControl1(4, 4).Text), Color)

{% endhighlight  %}

