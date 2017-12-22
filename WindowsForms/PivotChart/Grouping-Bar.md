---
layout: post
title: Grouping Bar | Windows Forms | Syncfusion
description: grouping bar
platform: windowsforms
control: PivotChart
documentation: ug
---

# Grouping Bar

Grouping bar splits the pivot item collection and presents the data in an intuitive way. There are four kinds of grouping sections available in PivotChart.

* Axis Field Section
* Legend Field Section
* Value Field Section
* Filter Field Section

## Axis Field Section

This section allows you to display the collection of FieldHeader values of PivotItems from *PivotAxis* and the items are placed at the bottom of the chart area.

## Legend Field Section

This section allows you to display the collection of FieldHeader values of PivotItems from *PivotLegend* and items are placed in-between the filter field section and the chart area.

## Value Field Section

This section allows you to display the collection of FieldHeader values of PivotComputationInfo from *PivotCalculations* and items are placed in-between the filter field section and the chart area.

## Filter Field Section

This section allows you to display the collection of DimensionHeader values of filter expression from *PivotFilters* and items are placed at the top of the chart area.

## Defining Grouping Bar

The following code snippet shows how to define the grouping bar in PivotChart.

{% tabs %}

{% highlight c# %}

this.pivotChart1.AxisFieldSection.Visible = true;
this.pivotChart1.LegendFieldSection.Visible = true;
this.pivotChart1.ValueFieldSection.Visible = true;
this.pivotChart1.FilterFieldSection.Visible = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotChart1.AxisFieldSection.Visible = True
Me.pivotChart1.LegendFieldSection.Visible = True
Me.pivotChart1.ValueFieldSection.Visible = True
Me.pivotChart1.FilterFieldSection.Visible = True

{% endhighlight %}

{% endtabs %}

![](Grouping-Bar_images/GroupingBar_image1.png)

_PivotChart with grouping bar_

## Customizing Grouping Bar

In PivotChart, the grouping bar can be customized by using the following properties:

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
BackInterior</td><td>
Sets the background color for the grouping bar section.</td></tr>
<tr>
<td>
ItemBackColor</td><td>
Sets the background color for the grouping bar section button.</td></tr>
<tr>
<td>
ItemForeColor</td><td>
Sets the foreground color for the grouping bar section button.</td></tr>
</th>
</table>

Please refer the below code snippet to customize the appearance of axis field section by using the above properties.

{% tabs %}

{% highlight c# %}

this.pivotChart1.AxisFieldSection.ItemBackColor = Color.Yellow;
this.pivotChart1.AxisFieldSection.ItemForeColor = Color.Black;
this.pivotChart1.AxisFieldSection.BackInterior = Color.SkyBlue;

{% endhighlight %}

{% highlight vb %}

Me.pivotChart1.AxisFieldSection.ItemBackColor = Color.Yellow
Me.pivotChart1.AxisFieldSection.ItemForeColor = Color.Black
Me.pivotChart1.AxisFieldSection.BackInterior = Color.SkyBlue

{% endhighlight %}

{% endtabs %}

![](Grouping-Bar_images/GroupingBar_image2.png)

_PivotChart with customized grouping bar_

A demo sample is available at the following location.

{system drive}:\Users\&lt;User Name&gt;\AppData\Local\Syncfusion\EssentialStudio\&lt;Version Number&gt;\Windows\PivotChart.Windows\Samples\PivotChart Layout\GroupBar Demo