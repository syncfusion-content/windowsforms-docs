---
layout: post
title: How-to-Get-Selected-Ranges-in-GridDataBoundGrid
description: how to get selected ranges in griddataboundgrid
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Get Selected Ranges in GridDataBoundGrid

To get selected range of cells, use GetSelectedRanges method. It returns the list with selected cells. This method has two arguments,

* ranges - It gets the range of cells to be selected.
* ConsiderCurrentCell 

True -  If current cell should be treated as selected range.

#### Example

{% highlight c# %}

GridRangeInfoList rangeList = null;

      this.gridDataBoundGrid1.Selections.GetSelectedRanges(out  	 	 	rangeList, false);

      if (rangeList.Count > 0)

            {

            foreach (GridRangeInfo range in rangeList)

            	{

            	for (int row = range.Top; row <= range.Bottom; ++row)

            		{

            		for (int col = range.Top; col <= range.Bottom; ++col)

            				  {

             				Console.WriteLine(String.Format("Cell {0}, {1} selected", row, col));

           				  }

           		}

           	 }

     		    }




{% endhighlight %}


{% highlight vbnet %}



Dim rangeList As GridRangeInfoList = Nothing

Me.gridDataBoundGrid1.Selections.GetSelectedRanges(rangeList,False)

If rangeList.Count > 0 Then

For Each range As GridRangeInfo In rangeList								For row As Integer = range.Top To range.Bottom

For col As Integer = range.Left To range.Right

Console.WriteLine(String.Format("Cell {0}, {1} selected", row, col))

Next col

Next row

Next range

End If

{% endhighlight %}



