---
layout: post
title: Display custom tooltip over Histogram Chart | WinForms | Syncfusion
description: Learn here how to display custom tooltip over histogram chart columns of Syncfusion WindowsForms Chart (Sfchart) control and more.
platform: windowsforms
control: chart
documentation: ug
---

# How to display custom tooltip over Histogram Chart columns

On Setting ShowTooltip property to true, the series name will be displayed as tooltip on the histogram chart columns by default. You can also set custom tooltip by handling ChartRegionMouseMove event as follows.

{% tabs %}

{% highlight c# %}

private void chartControl1_ChartRegionMouseMove(object sender, ChartRegionMouseEventArgs e)

{

    string text = null;

    if (e.Region.IsChartPoint)

    {

        e.Region.ToolTip = "Tooltip " + e.Region.PointIndex.ToString();

    }

    else

    {

        text = "Not a chart Point";

    }    

}

{% endhighlight %}

{% highlight vb %}

Private Sub chartControl1_ChartRegionMouseMove(ByVal sender As Object, ByVal e As ChartRegionMouseEventArgs)

    Dim text As String = Nothing

    If e.Region.IsChartPoint Then

        e.Region.ToolTip = "Tooltip " & e.Region.PointIndex.ToString()

    Else

        text = "Not a chart Point"

    End If

End Sub

{% endhighlight %}

{% endtabs %}	

![Chart Histogram in WindowsForms application](how-to-display-custom-tooltip-over-histogram-chart_images/windowsforms-charthistogram-chart.jpeg)

{% seealso %}

[Chart Region Events](/windowsforms/chart/chart-control-events#chart-region-events), [Tooltips](/windowsforms/chart/runtime-features#tooltips), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart)

{% endseealso %}