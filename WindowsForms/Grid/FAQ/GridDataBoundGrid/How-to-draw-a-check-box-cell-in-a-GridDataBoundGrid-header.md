---
layout: post
title: How-to-draw-a-check-box-cell-in-a-GridDataBoundGrid-header
description: how to draw a check box cell in a griddataboundgrid header
platform: windowsforms
control: Tools
documentation: ug
---

# How to draw a check box cell in a GridDataBoundGrid header

The following scenario explains how to add a check box cell in the grid header, which when selected or deselected orders its particular column of check boxes to respond. In SetupCheckBox() method, the concerned location (header position) of the check box has been provided. In the form, load the following events: Layout, ResizingRows, ResizingColumns_._ These events should be handled for the check box to update correctly. In the checkBox,CheckedChanged event, the required customized code for header check box operation is provided.

{% highlight c# %}

private void SetupCheckBox()

{

Rectangle cellRect = this.gridDataBoundGrid1.ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cell(0, 1), GridCellSizeKind.ActualSize);

checkBox.Location = new Point(cellRect.X + cellRect.Width / 2 - 13 / 2, cellRect.Y + cellRect.Height / 2 - 13 / 2);// cellRect.Location;

checkBox.Size = new Size(13, 13);

}

void gridDataBoundGrid1_Layout(object sender, LayoutEventArgs e)

{

SetupCheckBox();

}

void gridDataBoundGrid1_ResizingColumns(object sender, GridResizingColumnsEventArgs e)

{

this.gridDataBoundGrid1.BeginUpdate();

SetupCheckBox();

this.gridDataBoundGrid1.EndUpdate();

this.gridDataBoundGrid1.Model.Refresh();

}

{% endhighlight %}



#### Sample C#: 

![](http://www.syncfusion.com/downloads/Support/DirectTrac/98125/GDBG%20checkbox-1326042168.zip)

{% highlight vbnet %}



Private Sub SetupCheckBox()



Dim cellRect As Rectangle =      Me.gridDataBoundGrid1.ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cell(0, 1), GridCellSizeKind.ActualSize)



checkBox.Location = New Point(cellRect.X + cellRect.Width / 2 - 13 \ 2, cellRect.Y + cellRect.Height / 2 - 13 \ 2) ' cellRect.Location;



checkBox.Size = New Size(13, 13)



End Sub



Private Sub gridDataBoundGrid1_Layout(sender As Object, e As LayoutEventArgs)



  SetupCheckBox()



End Sub



Private Sub gridDataBoundGrid1_ResizingColumns(sender As Object, e As GridResizingColumnsEventArgs)



  Me.gridDataBoundGrid1.BeginUpdate()



  SetupCheckBox()



  Me.gridDataBoundGrid1.EndUpdate()



  Me.gridDataBoundGrid1.Model.Refresh()



End Sub

{% endhighlight %}

#### Sample VB: 

![](http://www.syncfusion.com/downloads/Support/DirectTrac/98125/Vb592317743.zip)

