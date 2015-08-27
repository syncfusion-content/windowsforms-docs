---
layout: post
title: How-to-Change-the-Look-of-a-Columns-Border
description: how to change the look of a column's border
platform: windowsforms
control: Tools
documentation: ug
---

# How to Change the Look of a Column's Border

### Introduction

You can use the Borders property of GridStyleInfo to change the style and appearance of grid cell's border. Each border side of the cell can be configured individually with GridBorder value. There is BorderMargins property to control the margins on all four sides. In GridDataBoundGrid, you can set style properties column by column using GridDataBoundGrid.GridBoundColumns or GridDataBoundGrid.Binder.InternalColumns depending upon whether you had explicitly added GridBoundColumns or not. 

#### Example

{% highlight c# %}



//Borders on all four sides of the cell.

GridStyleInfo style = this.gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;

style.Borders.All = new GridBorder(GridBorderStyle.Solid, Color.Red, GridBorderWeight.Thin);



style = this.gridDataBoundGrid1.GridBoundColumns[2].StyleInfo;

style.Borders.Right = new GridBorder(GridBorderStyle.Dotted, Color.LightBlue, GridBorderWeight.ExtraThick);

style.Borders.Bottom = new GridBorder(GridBorderStyle.Solid, Color.Pink, GridBorderWeight.Medium);

style.Borders.Left = new GridBorder(GridBorderStyle.DashDot, Color.LightGreen, GridBorderWeight.ExtraThick);

style.Borders.Top = new GridBorder(GridBorderStyle.DashDotDot, Color.Purple, GridBorderWeight.ExtraExtraThick);



//Borders Margins.

this.gridDataBoundGrid1.GridBoundColumns[4].StyleInfo.BorderMargins.Right = 20;

this.gridDataBoundGrid1.GridBoundColumns[4].StyleInfo.BorderMargins.Left = 22;

this.gridDataBoundGrid1.GridBoundColumns[4].StyleInfo.BorderMargins.Top = 24;

this.gridDataBoundGrid1.GridBoundColumns[4].StyleInfo.BorderMargins.Bottom = 26;

{% endhighlight %}

{% highlight vbnet %}



'Borders on all four sides of the cell.

Dim style As GridStyleInfo = Me.gridDataBoundGrid1.GridBoundColumns(1).StyleInfo

style.Borders.All = New GridBorder(GridBorderStyle.Solid, Color.Red, GridBorderWeight.Thin)



style = Me.gridDataBoundGrid1.GridBoundColumns(2).StyleInfo

style.Borders.Right = New GridBorder(GridBorderStyle.Dotted, Color.LightBlue, GridBorderWeight.ExtraThick)

style.Borders.Bottom = New GridBorder(GridBorderStyle.Solid, Color.Pink, GridBorderWeight.Medium)

style.Borders.Left = New GridBorder(GridBorderStyle.DashDot, Color.LightGreen, GridBorderWeight.ExtraThick)

style.Borders.Top = New GridBorder(GridBorderStyle.DashDotDot, Color.Purple, GridBorderWeight.ExtraExtraThick)



'Bordermargins.

Me.gridDataBoundGrid1.GridBoundColumns(4).StyleInfo.BorderMargins.Right = 20

Me.gridDataBoundGrid1.GridBoundColumns(4).StyleInfo.BorderMargins.Left = 22

Me.gridDataBoundGrid1.GridBoundColumns(4).StyleInfo.BorderMargins.Top = 24

Me.gridDataBoundGrid1.GridBoundColumns(4).StyleInfo.BorderMargins.Bottom = 26


{% endhighlight %}
