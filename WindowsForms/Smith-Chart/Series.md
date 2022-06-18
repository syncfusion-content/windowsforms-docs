---
layout: post
title: Series in Windows Forms Smith Chart control | Syncfusion
description: Learn about Series support in Syncfusion Windows Forms Smith Chart (SfSmithChart) control and more details.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Series in Windows Forms Smith Chart (SfSmithChart)

Chart series is the visual representation of given data. The following APIs are used for generating the series.

`DataSource` : Data collection that is to be given to plot the data.

[`ResistanceMember`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_ResistanceMember) : A string property that represents the resistance values in impedance Smith chart and conductance values in admittance Smith chart.

[`ReactanceMember`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_ReactanceMember) : A string property that represents the reactance values in impedance Smith chart and susceptance values in admittance Smith chart.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();

series.DataSource = model.Trace1;

series.ResistanceMember = "Resistance";

series.ReactanceMember = "Reactance";

sfSmithChart1.Series.Add(series);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()

series.DataSource = model.Trace1

series.ResistanceMember = "Resistance"

series.ReactanceMember = "Reactance"

sfSmithChart1.Series.Add(series)

{% endhighlight %}

{% endtabs %}

![Series with datasource](Series_images/Series_img1.PNG)


## Customizing the line series

The line stroke and width can be customized by using the [`Interior`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_Interior), [`StrokeWidth`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.SmithChart.LineSeries.html#Syncfusion_WinForms_SmithChart_LineSeries_StrokeWidth) and *DashStyle* properties of line series.

{% tabs %}

{% highlight c# %}

series.Interior = Color.Red;

series.StrokeWidth = 3;

series.DashStyle = DashStyle.Dash;

{% endhighlight %}

{% highlight vb.net %}

series.Interior = Color.Red

series.StrokeWidth = 3

series.DashStyle = DashStyle.Dash;

{% endhighlight %}

{% endtabs %}

![Series customization](Series_images/Series_img2.PNG)


## Series visibility

To hide the series programmatically, set the [`Visible`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_Visible) property to false for the specific series.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();          

series.MarkerVisible = true;            

series.DataSource = model.Trace1;

series.ResistanceMember = "Resistance";

series.ReactanceMember = "Reactance";

sfSmithChart1.Series.Add(series);

LineSeries series1 = new LineSeries();

series1.MarkerVisible = true;

series1.DataSource = model.Trace2;

series1.ResistanceMember = "Resistance";

series1.ReactanceMember = "Reactance";           

series1.Visible = false;

sfSmithChart1.Series.Add(series1);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()

series.MarkerVisible = True

series.DataSource = model.Trace1

series.ResistanceMember = "Resistance"

series.ReactanceMember = "Reactance"

sfSmithChart1.Series.Add(series)

Dim series1 As New LineSeries()

series1.MarkerVisible = True

series1.DataSource = model.Trace2

series1.ResistanceMember = "Resistance"

series1.ReactanceMember = "Reactance"

series1.Visible = False

sfSmithChart1.Series.Add(series1)

{% endhighlight %}

{% endtabs %}

![Series visibility](Series_images/Series_img3.PNG)

## Data plotting customization

By default, the data points are plotted by sorting them based on the resistance values and it can be plotted based on their index value as it is by setting the [`ArrangeByIndex`]() property as true.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();
series.ArrangeByIndex = true; 
sfSmithChart1.Series.Add(series);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries() 
series.ArrangeByIndex = True
sfSmithChart1.Series.Add(series)

{% endhighlight %}

{% endtabs %}

![Series data plotting customization](Series_images/SmithChartWF_ArrangeByIndex.PNG)
