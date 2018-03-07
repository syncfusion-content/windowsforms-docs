---
layout: post
title: User Interactions
description: This section describes about user interactions on smith chart.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# User interactions

## Tooltip

Tooltip for the data points can be enabled by setting the [TooltipVisible](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.ChartSeries~TooltipVisible.html) property value to true in the series.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();          

series.TooltipVisible = true;

sfSmithChart1.Series.Add(series);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()

series.TooltipVisible = True

sfSmithChart1.Series.Add(series)

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/tooltip.png](UserInteractions_images/UserInteractions_img1.jpeg)


## Tooltip format

Tooltip’s format can be specified by using the [TooltipFormat](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.ChartSeries~TooltipFormat.html) property in the series.

### Format details

{0} : Takes the resistance value in impedance chart and conductance value in admittance chart.

{1} : Takes the reactance value in impedance chart and susceptance value in admittance chart.

{2} : Takes the series name, i.e., the [LegendText](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.ChartSeries~LegendText.html) property of the series.

By default, the tooltip shows only resistance or conductance and reactance or susceptance values. It can be customized as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

series.TooltipFormat = "Resistance : {0}" + Environment.NewLine + "Reactance : {1}" + Environment.NewLine + "Series : {2}";

{% endhighlight %}

{% highlight vb.net %}

series.TooltipFormat = "Resistance : {0}" & Environment.NewLine & "Reactance : {1}" & Environment.NewLine & "Series : {2}"

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/tooltipFormat.png](UserInteractions_images/UserInteractions_img2.jpeg)


## Tooltip customization

The appearance of the tooltip can be customized using the [BackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~BackColor.html), [BorderColor](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~BorderColor.html), [ForeColor](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~ForeColor.html), [Font](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~Font.html), [BorderWidth](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~BorderWidth.html) and [ShadowVisible](https://help.syncfusion.com/cr/cref_files/windowsforms/sfsmithchart/Syncfusion.SfSmithChart.WinForms~Syncfusion.WinForms.SmithChart.TooltipOptions~ShadowVisible.html) in TooltipOptions class.

{% tabs %}

{% highlight c# %}

sfSmithChart1.TooltipOptions.BackColor = Color.Green;

sfSmithChart1.TooltipOptions.BorderColor = Color.Black;

sfSmithChart1.TooltipOptions.ForeColor = Color.White;

sfSmithChart1.TooltipOptions.ShadowVisible = true;

sfSmithChart1.TooltipOptions.Font = new Font("Verdana", 10);

sfSmithChart1.TooltipOptions.BorderWidth = 1;

{% endhighlight %}

{% highlight vb.net %}

sfSmithChart1.TooltipOptions.BackColor = Color.Green

sfSmithChart1.TooltipOptions.BorderColor = Color.Black

sfSmithChart1.TooltipOptions.ForeColor = Color.White

sfSmithChart1.TooltipOptions.ShadowVisible = True

sfSmithChart1.TooltipOptions.Font = New Font("Verdana", 10)

sfSmithChart1.TooltipOptions.BorderWidth = 1

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/tooltip customize.png](UserInteractions_images/UserInteractions_img3.jpeg)


