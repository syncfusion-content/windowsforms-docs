---
layout: post
title: Customize-Appearance in Windows Forms GridControl | Syncfusion
description: Learn here all about customize appearance support of Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# Customize Appearance in Windows Forms GridControl

Essential Grid provides support to display horizontal and vertical lines and customize the grid line color. 

## Displaying horizontal lines

You can display horizontal lined using DisplayHorizontalLines property. 

The following code illustrates how to display horizontal lines in GridControl: 

{% tabs %}
{% highlight c# %}

//The following code illustrates how to customize grid line color in GridControl.
gridControl1.DisplayHorizontalLines = true;

//The following code illustrates how to display horizontal lines in GridDataBoundGrid.
gridDataBoundGrid.DisplayHorizontalLines = true;

//The following code illustrates how to display horizontal lines in GridGrouping control.
gridGroupingControl1.DisplayHorizontalLines = true;

{% endhighlight %}

{% highlight vb %}

'The following code illustrates how to customize grid line color in GridControl.
gridControl1.DisplayHorizontalLines = True

'The following code illustrates how to display horizontal lines in GridDataBoundGrid. 
gridDataBoundGrid.DisplayHorizontalLines = True

'The following code illustrates how to display horizontal lines in GridGrouping control. 
gridGroupingControl1.DisplayHorizontalLines = True

{% endhighlight %}
{% endtabs %}

## Displaying vertical lines

You can display vertical lined using the DisplayVerticalLines__property. 

The following code illustrates how to display vertical lines in GridControl: 

{% tabs %}
{% highlight c# %}

//The following code illustrates how to customize grid line color in GridControl:
gridControl1.DisplayVerticalLines = true;

//The following code illustrates how to display vertical lines in GridDataBoundGrid: 
gridDataBoundGrid.DisplayVerticalLines = true;

//The following code illustrates how to display vertical lines in GridGrouping control: 
gridGroupingControl1.DisplayVerticalLines = true;

{% endhighlight %}

{% highlight vb %}

'The following code illustrates how to customize grid line color in GridControl.
gridControl1.DisplayVerticalLines = True

'The following code illustrates how to display vertical lines in GridDataBoundGrid.
gridDataBoundGrid.DisplayVerticalLines = True

'The following code illustrates how to display vertical lines in GridGrouping control:.
gridGroupingControl1.DisplayVerticalLines = True

{% endhighlight %}
{% endtabs %}

## Customizing Grid line color

You can customize grid line color using _GridLineColor_ property. 

The following code demonstrates how to customize the color of grid lines in the GridControl.

{% tabs %}
{% highlight c# %}

//The following code illustrates how to customize grid line color in GridControl:
gridControl1.GridLineColor = Color.Red;

//The following code illustrates how to customize grid line color in GridDataBoundGrid: 
gridDataBoundGrid.GridLineColor = Color.Red;

//The following code illustrates how to customize grid line color in GridGrouping control: 
gridGroupingControl1.GridLineColor = Color.Red;

{% endhighlight %}

{% highlight vb %}

'The following code illustrates how to customize grid line color in GridControl.
gridControl1.GridLineColor = Color.Red

'The following code illustrates how to customize grid line color in GridDataBoundGrid.
gridDataBoundGrid.GridLineColor = Color.Red

'The following code illustrates how to customize grid line color in GridGrouping control.
gridGroupingControl1.GridLineColor = Color.Red

{% endhighlight %}
{% endtabs %}

