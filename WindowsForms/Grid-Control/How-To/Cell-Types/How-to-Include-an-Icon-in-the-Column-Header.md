---
layout: post
title: How to include an icon in the column header in GridControl| Syncfusion
description: Learn here all about how to include an icon in the column header of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to include an icon in the column header in WinForms GridControl

The GridControl will allow you to place images in cells by specifying style.ImageIndex and style.ImageList value for the cell, provided style.CellType is either "Static" or "Text Box". So, to make your header cell hold an icon, make it "Static" and set the following properties.

{% tabs %}
{% highlight c# %}

//GridControl.
this.gridControl1[0,3].CellType = "Static";
this.gridControl1[0,3].CellAppearance = GridCellAppearance.Raised;
this.gridControl1[0,3].ImageList = this.imageList1; 
this.gridControl1[0,3].ImageIndex = 1; 

{% endhighlight  %}

{% highlight vb %}
'GridControl. 
Me.gridControl1(0,3).CellType = "Static"
Me.gridControl1(0,3).CellAppearance = GridCellAppearance.Raised
Me.gridControl1(0,3).ImageList = imageList
Me.gridControl1(0,3).ImageIndex = 1

{% endhighlight  %}
{% endtabs %}