---
layout: post
title: Use ColorEdit control in a cell and retrieve its value | Syncfusion
description: This section describes how to use coloredit control in a cell and retrieve its value in WindowsForms platform.
platform: windowsforms
control: Grid
documentation: ug
---

# How to use ColorEdit control in a cell and retrieve its value

It is simple to use the ColorEdit control to specify a cell's value. Just set the [CellType](https://help.syncfusion.com/windowsforms/grid-control/cell-types) property in the cell style to "ColorEdit" and set the text property to an appropriate value.

{% tabs %}
{% highlight c# %}

//Sets the control type.
gridControl1[4, 4].CellType = "ColorEdit"; 

//Sets initial value to Color.Aqua or to sets RGB color, use something like 
gridControl1[4, 4].Text = "2, 12, 255"; 

//Sets initial value to RGB(2,12,255).
gridControl1[4, 4].Text = "Aqua";        

//....        
//Retrieve a color object from this cell, uses code such as
Color c = (Color)System.ComponentModel.TypeDescriptor.GetConverter(typeof(Color)).ConvertFromString(gridControl1[4, 4].Text);

{% endhighlight  %}

{% highlight vb %}

'Sets control type.
GridControl1(4, 4).CellType = "ColorEdit" 

'Sets initial value to Color.Aqua or to sets RGB color, use something like  
gridControl1[4, 4].Text = "2, 12, 255"; 

'Sets initial value to RGB(2,12,255) 
GridControl1(4, 4).Text = "Aqua" 

'....        
'Retrieves a color object from this cell, uses code such as
Dim c As Color = CType(System.ComponentModel.TypeDescriptor.GetConverter(GetType(Color)).ConvertFromString(GridControl1(4, 4).Text), Color)

{% endhighlight  %}
{% endtabs %}
