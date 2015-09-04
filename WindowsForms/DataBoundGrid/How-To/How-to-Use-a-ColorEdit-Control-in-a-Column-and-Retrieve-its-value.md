---
layout: post
title: How-to-Use-a-ColorEdit-Control-in-a-Column-and-Retrieve-its-value
description: how to use a color edit control in a column and retrieve its value
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Use a ColorEdit Control in a Column and Retrieve its Value

### Introduction

Set the CellType property in the cell style to "ColorEdit" and the text property to the appropriate value. To access a column's style, use either GridDataBoundGrid.GridBoundColumns or GridDataBoundGrid.Binder.InternalColumn depending upon whether you have explicitly added the GridBoundColumns or not.

#### Example

{% highlight c# %}



GridStyleInfo style = gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;



//Sets controltype.

style.CellType = "ColorEdit"; 



//Sets the initial value to Color.Aqua or to set a RGB color, use something like style.Text = "2, 12, 255"; 

//Sets initial value to

RGB(2,12,255) 

style.Text = "Aqua";       



//....        

//Retrieves a color object from this cell, use code such as

Color c = (Color)System.ComponentModel.TypeDescriptor.GetConverter(typeof(Color)).ConvertFromString(gridDataBoundGrid1[2, 2].Text);

{% endhighlight %}

{% highlight vbnet %}



Dim style As GridStyleInfo = gridDataBoundGrid1.GridBoundColumns(1).StyleInfo



'Sets controltype.

style.CellType = "ColorEdit" 



'Sets the initial value to Color.Aqua or to set a RGB color, use something like  style.Text = "2, 12, 255"  

'Sets initial value to 

RGB(2,12,255)  

style.Text = "Aqua"      



'....        

'Retrieves a color object from this cell, use code such as

Dim c As Color = CType(System.ComponentModel.TypeDescriptor.GetConverter(GetType(Color)).ConvertFromString(gridDataBoundGrid1(2, 2).Text), Color)

{% endhighlight %}

