---
layout: post
title: How-to-Get-Selected-Rows-in-GridDataBoundGrid
description: how to get selected rows in griddataboundgrid 
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to Get Selected Rows in GridDataBoundGrid 

To get the selected row use GetSelectedRows method. It returns GridRangeInfoList object, an array of GridRangeInfo objects. This method has two arguments,

* bRangeRowsOnly 

True - Only selected row will be returned, 

False - If you want to treat single range selection as a full row selection.

* ConsiderCurrentCell 

True - If current cell should be returned as selected range.

#### Example

{% highlight c# %}



GridRangeInfoList ranges = this .gridDataBoundGrid1 .Selections. GetSelectedRows(true, false);

 foreach (GridRangeInfo range in ranges)

{

 for (int i = range.Top; i <= range.Bottom; ++i)

 	                    {

 Console.WriteLine(string.Format("Row {0} selected", i));

 	                    }

            		}

{% endhighlight %}

{% highlight vbnet %}



 Dim ranges As GridRangeInfoList = Me.gridDataBoundGrid1 .Selections. GetSelectedRows(True, False)



For Each range As GridRangeInfo In ranges



For i As Integer = range.Top To range.Bottom								

Console.WriteLine(String.Format("Row {0} selected", i))						Next i

Next range

{% endhighlight %}



