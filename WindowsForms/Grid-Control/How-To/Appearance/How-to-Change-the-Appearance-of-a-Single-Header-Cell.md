---
layout: post
title: How to Style a Header Cell in Windows Forms GridControl | Syncfusion®
description: Customize a header cell in Syncfusion® Windows Forms GridControl by changing its font, text color, orientation, and displayed text and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Style a Header Cell in Windows Forms GridControl

To make changes to individual cells (header cells or otherwise), use an indexer on GridControl. In a GridControl with default headers, column headers are row zero and row headers are column zero. Given below is the code that will change a column header.

{% tabs %}
{% highlight c# %}

//Changes the font properties of the header cell.
gridControl1[0, 3].Font.Italic = true; 
gridControl1[0, 3].Font.Bold = true; 
gridControl1[0, 3].Font.Orientation = 270;

//Changes the Text Color and Text of the header cell. 
gridControl1[0, 3].TextColor = Color.Red; 
gridControl1[0, 3].Text = "Sales";

{% endhighlight  %}

{% highlight vb %}

'Changes the font properties of the header cell.
GridControl1(0, 3).Font.Italic = True
GridControl1(0, 3).Font.Bold = True
GridControl1(0, 3).Font.Orientation = 270

'Changes the Text Color and Text of the header cell.
GridControl1(0, 3).TextColor = Color.Red
GridControl1(0, 3).Text = "Sales"

{% endhighlight  %}
{% endtabs %}

![Appearance change to individual cell](How-to-Change-the-Appearance-of-a-Single-Header-Ce_images/How-to-Change-the-Appearance-of-a-Single-Header-Ce_img1.jpeg)



