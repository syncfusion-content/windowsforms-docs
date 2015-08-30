---
layout: post
title: Covered-Cells
description: covered cells
platform: windowsform
control: Grid
documentation: ug
---

# Covered Cells

Covered cells will allow you to group a range of cells together so that the group appears to be a single cell. For example, you might want a header to span two columns; this can be done using covered cells. Covered cells also support a large button, which occupies several cells.

To specify a covered range, you will have to use GridControl.CoveredRange collection. You must add GridRangeInfo object to this collection to specify the range of cells that you want covered. You can then use the top-left corner to control what is being displayed in this large cell. 

{% highlight c# %}



//Covers (2,2) through (3,4) so it is treated as a single cell.

this.gridControl1.Model.CoveredRanges.Add(GridRangeInfo.Cells(2, 2, 3, 4));

this.gridControl1[2, 2].CellType = "PushButton";

this.gridControl1[2, 2].CellAppearance = GridCellAppearance.Raised;

this.gridControl1[2, 2].Description = "Big Button";

this.gridControl1[2, 2].Font.Size = 12;

this.gridControl1[2, 2].Font.Bold = true;



//Covers (6,2) through (7,4) so it is treated as a large fancy label.

this.gridControl1.Model.CoveredRanges.Add(GridRangeInfo.Cells(6, 2, 7, 4));

this.gridControl1[6, 2].CellType = "Static";

this.gridControl1[6, 2].Text = "Big Label";

this.gridControl1[6, 2].HorizontalAlignment = GridHorizontalAlignment.Center;

this.gridControl1[6, 2].VerticalAlignment = GridVerticalAlignment.Middle;

this.gridControl1[6, 2].Font.Size = 12;

this.gridControl1[6, 2].Font.Bold = true;

this.gridControl1[6, 2].Interior = new BrushInfo(GradientStyle.PathRectangle, Color.FromArgb(0xED, 0xF0, 0xF6), Color.FromArgb(0x2A, 0x43, 0x7E));

this.gridControl1[6, 2].TextColor = Color.FromArgb(0x66, 0x6E, 0x98);
{% endhighlight %}


{% highlight vbnet %}



'Covers (2,2) through (3,4) so it is treated as a single cell.

Me.gridControl1.Model.CoveredRanges.Add(GridRangeInfo.Cells(2, 2, 3, 4))

Me.gridControl1(2, 2).CellType = "PushButton"

Me.gridControl1(2, 2).CellAppearance = GridCellAppearance.Raised

Me.gridControl1(2, 2).Description = "Big Button"

Me.gridControl1(2, 2).Font.Size = 12

Me.gridControl1(2, 2).Font.Bold = True



'Covers (6,2) through (7,4) so it is treated as a large fancy label.

Me.gridControl1.Model.CoveredRanges.Add(GridRangeInfo.Cells(6, 2, 7, 4))

Me.gridControl1(6, 2).CellType = "Static"

Me.gridControl1(6, 2).Text = "Big Label"

Me.gridControl1(6, 2).HorizontalAlignment = GridHorizontalAlignment.Center

Me.gridControl1(6, 2).VerticalAlignment = GridVerticalAlignment.Middle

Me.gridControl1(6, 2).Font.Size = 12

Me.gridControl1(6, 2).Font.Bold = True

Me.GridControl1(6, 2).Interior = New BrushInfo(GradientStyle.PathRectangle, _Color.FromArgb(0xED, 0xF0, 0xF6),

_Color.FromArgb(0x2A, 0x43, 0x7E ))

Me.GridControl1(6, 2).TextColor = Color.FromArgb(0x66, 0x6E, 0x98)
{% endhighlight %}


