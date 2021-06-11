---
layout: post
title: How to change the look of a cell's border in GridControl | Syncfusion
description: Learn here all about how to change the look of a cell's border of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to change the look of a cell's border

Use the Borders property of [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview) to change the style and the appearance of the grid cells border. Each border side of the cell can be configured individually with GridBorder value. There is a BorderMargins property to control margins on all four sides. 

{% tabs %}
{% highlight c# %}

//Borders on all four sides of the cell.
GridStyleInfo style = this.gridControl1.RowStyles[1];
this.gridControl1.RowStyles[1].Borders.All = new GridBorder(GridBorderStyle.Solid, Color.Red, GridBorderWeight.Thin);
this.gridControl1.RowStyles[2].Borders.Right = new GridBorder(GridBorderStyle.Dotted, Color.LightBlue, GridBorderWeight.ExtraThick);
this.gridControl1.RowStyles[3].Borders.Bottom = new GridBorder(GridBorderStyle.Solid, Color.Pink, GridBorderWeight.Medium);
this.gridControl1.RowStyles[4].Borders.Left = new GridBorder(GridBorderStyle.DashDot, Color.LightGreen, GridBorderWeight.ExtraThick);
this.gridControl1.RowStyles[5].Borders.Top = new GridBorder(GridBorderStyle.DashDotDot, Color.Purple, GridBorderWeight.ExtraExtraThick);

//BorderMargins.
this.gridControl1.RowStyles[1].BorderMargins.Right = 20;
this.gridControl1.RowStyles[2].BorderMargins.Left = 22;
this.gridControl1.RowStyles[3].BorderMargins.Top = 24;
this.gridControl1.RowStyles[4].BorderMargins.Bottom = 26;

{% endhighlight  %}

{% highlight vb %}

'Borders on all four sides of the cell.
Me.GridControl1.RowStyles(1).Borders.All = New GridBorder(GridBorderStyle.Solid, Color.Red, GridBorderWeight.Thin)
Me.GridControl1.RowStyles(2).Borders.Right = New GridBorder(GridBorderStyle.Dotted, Color.LightBlue, GridBorderWeight.ExtraThick)
Me.GridControl1.RowStyles(3).Borders.Bottom = New GridBorder(GridBorderStyle.Solid, Color.Pink, GridBorderWeight.Medium)
Me.GridControl1.RowStyles(4).Borders.Left = New GridBorder(GridBorderStyle.DashDot, Color.LightGreen, GridBorderWeight.ExtraThick)
Me.GridControl1.RowStyles(5).Borders.Top = New GridBorder(GridBorderStyle.DashDotDot, Color.Purple, GridBorderWeight.ExtraExtraThick)

'BorderMargins.
Me.GridControl1.RowStyles(1).BorderMargins.Right = 20
Me.GridControl1.RowStyles(2).BorderMargins.Left = 22
Me.GridControl1.RowStyles(3).BorderMargins.Top = 24
Me.GridControl1.RowStyles(4).BorderMargins.Bottom = 26

{% endhighlight  %}
{% endtabs %}