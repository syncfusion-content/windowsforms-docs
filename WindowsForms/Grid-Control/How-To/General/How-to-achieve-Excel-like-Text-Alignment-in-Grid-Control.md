---
layout: post
title: Set Excel-like Text Align in Windows Forms Grid Control | Syncfusion®
description: Achieve Excel-like text alignment in Syncfusion® Windows Forms Grid Control using the ExcelLikeAlignment property to align cell content based on data types.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Achieve Excel-like Text Alignment in Windows Forms Grid Control

Text alignment in Grid cells is similar to text alignment in Excel cells. When no data type is explicitly specified for a cell, by default, text containing numbers is right-aligned and the remaining text is left-aligned. If the data type of the cell is set to Integer, Double, or Decimal, the text is right-aligned; or else the text is left-aligned. In some cases, when the text contains numbers and the data type of the cell is set to String_,_ the text is left-aligned. This default text alignment also applies to the respective Header cells of the Grid control. Excel-like Text Alignment can be achieved in Grid cells by using ExcelLikeAlignment property. It enables you to apply Excel-like alignment to text in grid cells. This property is of Boolean data type and is set to false_,_ by default.

{% tabs %}
{% highlight c# %}

this.gridControl1.ExcelLikeAlignment = true;

{% endhighlight %}

{% highlight vb %}

Me.gridControl1.ExcelLikeAlignment = True;

{% endhighlight %}
{% endtabs %}

N> The preceding settings can be applied to all Grid Controls.

