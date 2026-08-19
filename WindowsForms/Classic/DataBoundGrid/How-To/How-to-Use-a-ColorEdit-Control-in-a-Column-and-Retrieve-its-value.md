---
layout: post
title: Use a ColorEdit control in WinForms GridDataBoundGrid | Syncfusion®
description: Use the ColorEdit cell type in Syncfusion® WinForms GridDataBoundGrid to select colors, set initial values, and retrieve color values from grid cells.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to use a ColorEdit control in WinForms GridDataBoundGrid

This page explains How to Use a ColorEdit Control in a Column and Retrieve its Value and more details.

## How to Use a ColorEdit Control in a Column and Retrieve its Value

Set the CellType property in the cell style to "ColorEdit" and the text property to the appropriate value. To access a column's style, use either GridDataBoundGrid.GridBoundColumns or GridDataBoundGrid.Binder.InternalColumn depending upon whether you have explicitly added the GridBoundColumns or not.

{% tabs %}
{% highlight c# %}

GridStyleInfo style = gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;

//Sets control type.
style.CellType = "ColorEdit"; 

//Sets the initial value to Color.Aqua or to set a RGB color, use something like style.Text = "2, 12, 255"; 

//Sets initial value to
RGB(2,12,255) 
style.Text = "Aqua";       

//....        

//Retrieves a color object from this cell, use code such as
Color c = (Color)System.ComponentModel.TypeDescriptor.GetConverter(typeof(Color)).ConvertFromString(gridDataBoundGrid1[2, 2].Text);

{% endhighlight %}

{% highlight vb %}

Dim style As GridStyleInfo = gridDataBoundGrid1.GridBoundColumns(1).StyleInfo

'Sets control type.
style.CellType = "ColorEdit" 

'Sets the initial value to Color.Aqua or to set a RGB color, use something like  style.Text = "2, 12, 255"  

'Sets initial value to 
RGB(2,12,255)  
style.Text = "Aqua"      

'....        

'Retrieves a color object from this cell, use code such as
Dim c As Color = CType(System.ComponentModel.TypeDescriptor.GetConverter(GetType(Color)).ConvertFromString(gridDataBoundGrid1(2, 2).Text), Color)

{% endhighlight %}
{% endtabs %}
