---
layout: post
title: How to Get the Selected Ranges in WinForms GridControl | Syncfusion
description: Learn here all about how to get the selected ranges in Syncfusion Windows Forms gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Get the Selected Ranges in a Windows Forms GridControl

### Introduction

The grid.Selections.Ranges is GridRangeInfoList object, which holds the currently selected ranges. 

You can iterate through this list retrieving GridRangeInfo objects with code such as.

{% tabs %}
{% highlight c# %}

//Iterate through the SelectionRanges to display every range in the list.
foreach(GridRangeInfo range in this.grid.Selections.Ranges)
{
   MessageBox.Show(range.ToString());
}

{% endhighlight %}

{% highlight vb %}

 Dim range As GridRangeInfo
'Iterates through the SelectionRanges to display every range in the list.
For Each range In Me.grid.Selections.Ranges
        MessageBox.Show(range.ToString())
Next

{% endhighlight %}
{% endtabs %}

In the previous code, note that GridRangeInfo object is not really being used for anything. When you actually try to use it, you will need to take into account the fact that you cannot make any assumptions regarding whether this range object is a row range, cell range, column range, or something else. For #### Example, you may want to make use of Range.Top and Range.Bottom to get the top and bottom rows that have been selected. But, if the range happens to be a column range then these properties will not be valid as column ranges. So, before using such range properties, you must check whether these properties have been properly set. GridRangeInfo class has a method that can manage this task: GridRangeInfo.ExpandRange. If you need to access properties like left, right, top and bottom in a GridRangeInfo where it is unknown whether or not the range is a cell range, then you should first call ExpandRange to make sure that this is the case.

{% tabs %}
{% highlight c# %}

int rowLimit = grid.Model.RowCount;
int colLimit = grid.Model.ColCount;

//Calls ExpandRange method and displays the top and bottom rows in each range.
foreach(GridRangeInfo range in this.grid.Selections.Ranges)
{
    GridRangeInfo range1 = range.ExpandRange(1, 1, rowLimit, colLimit);
    MessageBox.Show("top={0} bot={1}", range1.Top, range1.Bottom);
}

{% endhighlight %}

{% highlight vb %}

Dim rowLimit As Integer = grid.Model.RowCount
    Dim colLimit As Integer = grid.Model.ColCount
    Dim range As GridRangeInfo

'Calls ExpandRange method and displays the top and bottom rows in each range.
For Each range In Me.grid.Selections.Ranges
Dim range1 As GridRangeInfo = range.ExpandRange(1, 1, rowLimit, colLimit)
      MessageBox.Show("top={0} bot={1}", range1.Top, range1.Bottom)
Next range
		
{% endhighlight %}
{% endtabs %}

To retrieve the active range, use the code snippet given below.

{% tabs %}
{% highlight c# %}

//Retrieves the active range.
GridRangeInfo activeRange = grid.Selections.Ranges.ActiveRange;

{% endhighlight %}

{% highlight vb %}

'Retrieves the active range.
Dim activeRange As GridRangeInfo = grid.Selections.Ranges.ActiveRange

{% endhighlight %}
{% endtabs %}