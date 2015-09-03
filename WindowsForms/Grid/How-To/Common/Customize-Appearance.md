---
layout: post
title: Customize-Appearance
description: customize appearance 
platform: WindowsForms
control: Tools
documentation: ug
---

# Customize Appearance 

Essential Grid provides support to display horizontal and vertical lines and customize the grid line color. 

## Displaying Horizontal Lines

You can display horizontal lined using DisplayHorizontalLinesproperty. 

The following code illustrates how to display horizontal lines in GridControl: 

{% highlight c# %}

gridControl1.DisplayHorizontalLines = true;

The following code illustrates how to display horizontal lines in GridDataBoundGrid: 

gridDataBoundGrid.DisplayHorizontalLines = true;

The following code illustrates how to display horizontal lines in GridGrouping control: 

gridGroupingControl1.DisplayHorizontalLines = true;

{% endhighlight %}

## Displaying Vertical Lines

You can display vertical lined using the DisplayVerticalLines__property. 

The following code illustrates how to display vertical lines in GridControl: 

{% highlight c# %}

gridControl1.DisplayVerticalLines = true;

The following code illustrates how to display vertical lines in GridDataBoundGrid: 

gridDataBoundGrid.DisplayVerticalLines = true;

The following code illustrates how to display vertical lines in GridGrouping control: 

gridGroupingControl1.DisplayVerticalLines = true;

{% endhighlight %}

## Customizing Grid Line Color

You can customize grid line color using _GridLineColor_ property. 

The following code illustrates how to display vertical lines in GridControl: 


{% highlight c# %}

gridControl1.GridLineColor = Color.Red;

The following code illustrates how to customize grid line color in GridDataBoundGrid: 

gridDataBoundGrid.GridLineColor = Color.Red;

The following code illustrates how to customize grid line color in GridGrouping control: 

gridGroupingControl1.GridLineColor = Color.Red;

{% endhighlight %}




