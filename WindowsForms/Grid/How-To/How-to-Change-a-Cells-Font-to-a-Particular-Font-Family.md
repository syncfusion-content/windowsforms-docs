---
layout: post
title: How-to-Change-a-Cells-Font-to-a-Particular-Font-Fa
description: how to change a cell's font to a particular font family
platform: windowsforms
control: Grid
documentation: ug
---

# How to Change a Cell's Font to a Particular Font Family



## Introduction

Use the FaceName property of the font property on the style object for the cell.


{% highlight c# %}
gridControl1[rowIndex, colIndex].Font.Facename = "Arial";
{% endhighlight  %}
You can also change several font properties in one statement by using font class’s SetXXX method which, will return a reference to the font object. 

### Example

{% highlight c# %}

//Snippet 1.        

gridControl1[rowIndex, colIndex].Font.Facename = "Arial";

gridControl1[rowIndex, colIndex].Font.Bold = true;

gridControl1[rowIndex, colIndex].Font.Size = 10;



//Snippet 2.

gridControl1[rowIndex, colIndex].Font.SetFacename("Arial").SetBold(true).SetSize(10);

{% endhighlight  %}

{% highlight vbnet %}



'Snippet 1.        

gridControl1(rowIndex, colIndex).Font.Facename = "Arial"

gridControl1(rowIndex, colIndex).Font.Bold = 

gridControl1(rowIndex, colIndex).Font.Size = 10



'Snippet 2.       

gridControl1(rowIndex, colIndex).Font.SetFacename("Arial").SetBold(True).SetSize(10)


{% endhighlight  %}
