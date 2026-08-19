---
layout: post
title: Financial Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the financial chart type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Financial Charts in Windows Forms Chart

Financial chart types are specialized charts designed to represent financial and stock market data that contains multiple values, such as open, high, low, and close prices. They provide a clear visual representation of price movements, trends, and market performance over time, making complex financial data easier to analyze and interpret.

The following features are supported in the Financial charts:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the `Series3D` property.
* **Open-Close-Draw Mode**: The `OpenCloseDrawMode` property will set the chart series in open, close, or both modes. This property is applicable to open-high-low-close charts.

## Box And Whisker Chart

Box and Whisker Chart is a statistical chart used to summarize and visualize the distribution of a dataset. It displays key measures such as the minimum, maximum, median, and quartiles, helping to identify data spread, variability, skewness, and potential outliers.

{% tabs %}
{% highlight c# %}

ChartSeries revenueSeries = new ChartSeries("Revenue", ChartSeriesType.BoxAndWhisker);

revenueSeries.Points.Add(1, 5, 15, 25, 35, 45);
revenueSeries.Points.Add(2, 8, 18, 28, 38, 45);
revenueSeries.Points.Add(3, 10, 20, 27, 33, 42);
revenueSeries.Points.Add(4, 12, 15, 25, 37, 49);
revenueSeries.Points.Add(5, 6, 14, 22, 32, 41);

ChartSeries profitSeries = new ChartSeries("Profit", ChartSeriesType.BoxAndWhisker);

profitSeries.Points.Add(1, 3, 18, 24, 35, 42);
profitSeries.Points.Add(2, 5, 20, 30, 35, 46);
profitSeries.Points.Add(3, 4, 12, 23, 37, 42);
profitSeries.Points.Add(4, 6, 15, 28, 37, 49);
profitSeries.Points.Add(5, 4, 14, 22, 30, 41);

chartControl.Series.Add(revenueSeries);
chartControl.Series.Add(profitSeries);

{% endhighlight %}
{% highlight vb %}

' Revenue Series
Dim revenueSeries As New ChartSeries("Revenue", ChartSeriesType.BoxAndWhisker)

revenueSeries.Points.Add(1, 5, 15, 25, 35, 45)
revenueSeries.Points.Add(2, 8, 18, 28, 38, 45)
revenueSeries.Points.Add(3, 10, 20, 27, 33, 42)
revenueSeries.Points.Add(4, 12, 15, 25, 37, 49)
revenueSeries.Points.Add(5, 6, 14, 22, 32, 41)

' Profit Series
Dim profitSeries As New ChartSeries("Profit", ChartSeriesType.BoxAndWhisker)

profitSeries.Points.Add(1, 3, 18, 24, 35, 42)
profitSeries.Points.Add(2, 5, 20, 30, 35, 46)
profitSeries.Points.Add(3, 4, 12, 23, 37, 42)
profitSeries.Points.Add(4, 6, 15, 28, 37, 49)
profitSeries.Points.Add(5, 4, 14, 22, 30, 41)

' Add series to chart
chartControl.Series.Add(revenueSeries)
chartControl.Series.Add(profitSeries)

{% endhighlight %}
{% endtabs %}

![Box And Whisker Chart in WindowsForms](../Chart-Types_images/windowsforms-box-and-whisker-chart.png)

## Candle Chart
A Candle chart displays stock information using the `High`, `Low`, `Open` and `Close` values. The Hi and Lo values are represented by the wick of a candle. The candle represents open and close values.

n>
Chart details for candle chart.
* Number of Y values per point - 4 (High, Low, Open and Close respectively).
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.Candle);

series.Points.Add(1, 500, 250, 380, 420); // body 40
series.Points.Add(2, 530, 280, 340, 480); // body 140
series.Points.Add(3, 520, 220, 450, 320); // body 130
series.Points.Add(4, 480, 300, 350, 440); // body 90
series.Points.Add(5, 460, 270, 420, 340); // body 80

chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.Candle)

' X, High, Low, Open, Close
series.Points.Add(1, 500, 250, 380, 420) ' Body = 40
series.Points.Add(2, 530, 280, 340, 480) ' Body = 140
series.Points.Add(3, 520, 220, 450, 320) ' Body = 130
series.Points.Add(4, 480, 300, 350, 440) ' Body = 90
series.Points.Add(5, 460, 270, 420, 340) ' Body = 80

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Candle Chart in WindowsForms](../Chart-Types_images/windowsforms-candle-chart.png)

## HiLo Chart

HiLo Chart is a financial chart commonly used to display the trading range of a stock or other data over a period. It uses two Y-values `High` and `Low` to represent the maximum and minimum values, making it easy to visualize value ranges and fluctuations.

N>
Chart details for HiLo chart.
Number of Y values per point - 2.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

{% tabs %}
{% highlight c# %}

ChartSeries revenue = new ChartSeries("Revenue", ChartSeriesType.HiLo);

revenue.Points.Add(1, 500, 220);
revenue.Points.Add(2, 520, 180);
revenue.Points.Add(3, 480, 210);
revenue.Points.Add(4, 550, 190);
revenue.Points.Add(5, 530, 250);
revenue.Points.Add(6, 570, 280);

ChartSeries profit = new ChartSeries("Profit", ChartSeriesType.HiLo);

profit.Points.Add(1, 460, 320);
profit.Points.Add(2, 580, 380);
profit.Points.Add(3, 620, 400);
profit.Points.Add(4, 650, 420);
profit.Points.Add(5, 610, 390);
profit.Points.Add(6, 700, 450);

chartControl.Series.Add(revenue);
chartControl.Series.Add(profit);

revenue.Style.Border.Width = 3;
profit.Style.Border.Width = 3;

{% endhighlight %}
{% highlight vb %}

Dim revenue As New ChartSeries("Revenue", ChartSeriesType.HiLo)

' X, High, Low
revenue.Points.Add(1, 500, 220)
revenue.Points.Add(2, 520, 180)
revenue.Points.Add(3, 480, 210)
revenue.Points.Add(4, 550, 190)
revenue.Points.Add(5, 530, 250)
revenue.Points.Add(6, 570, 280)

Dim profit As New ChartSeries("Profit", ChartSeriesType.HiLo)

' X, High, Low
profit.Points.Add(1, 460, 320)
profit.Points.Add(2, 580, 380)
profit.Points.Add(3, 620, 400)
profit.Points.Add(4, 650, 420)
profit.Points.Add(5, 610, 390)
profit.Points.Add(6, 700, 450)

chartControl.Series.Add(revenue)
chartControl.Series.Add(profit)

' Increase line thickness
revenue.Style.Border.Width = 3
profit.Style.Border.Width = 3

{% endhighlight %}
{% endtabs %}

![HiLo Chart in WindowsForms](../Chart-Types_images/windowsforms-hilo-chart.png)

## HiLo Open Close Chart

HiLo open close chart is a financial chart commonly used in stock market analysis. It requires four Y-values for each data point `High`, `Low`, `Open`, and `Close` to represent a stock's price movement during a specific period, providing a clear view of trading activity and market trends.

N>
Chart details for area chart.
* Number of Y values per point - 4.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.HiLoOpenClose);

// X, High, Low, Open, Close
series.Points.Add(1, 520, 380, 420, 490);
series.Points.Add(2, 550, 420, 450, 530);
series.Points.Add(3, 530, 350, 500, 400);
series.Points.Add(4, 590, 410, 430, 560);
series.Points.Add(5, 610, 450, 480, 580);

chartControl.Series.Add(series);

series.Style.Border.Width = 3;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.HiLoOpenClose)

' X, High, Low, Open, Close
series.Points.Add(1, 520, 380, 420, 490)
series.Points.Add(2, 550, 420, 450, 530)
series.Points.Add(3, 530, 350, 500, 400)
series.Points.Add(4, 590, 410, 430, 560)
series.Points.Add(5, 610, 450, 480, 580)

chartControl.Series.Add(series)

' Increase line thickness
series.Style.Border.Width = 3

{% endhighlight %}
{% endtabs %}

![HiLo Open Close Chart in WindowsForms](../Chart-Types_images/windowsforms-hilo-open-close-chart.png)

## Kagi Chart

Kagi Chart is a financial chart that tracks price movements using a series of connected vertical lines. The direction, thickness, and color of the lines change based on price trends and reversals, helping traders easily identify bullish and bearish market patterns.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.Kagi);

series.Points.Add(1, 25);
series.Points.Add(2, 28);
series.Points.Add(3, 26);
series.Points.Add(4, 30);
series.Points.Add(5, 42); 
series.Points.Add(6, 35);
series.Points.Add(7, 29);
series.Points.Add(8, 36);
series.Points.Add(9, 27);
series.Points.Add(10, 31);

series.Style.Border.Width = 3;
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.Kagi)

series.Points.Add(1, 25)
series.Points.Add(2, 28)
series.Points.Add(3, 26)
series.Points.Add(4, 30)
series.Points.Add(5, 42) 
series.Points.Add(6, 35)
series.Points.Add(7, 29)
series.Points.Add(8, 36)
series.Points.Add(9, 27)
series.Points.Add(10, 31)

' Increase line thickness
series.Style.Border.Width = 3

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![kagi Chart in WindowsForms](../Chart-Types_images/windowsforms-kagi-chart.png)

## Point and Figure Chart

Point and figure Chart is a financial chart used to identify price trends, support and resistance levels, and chart patterns. It focuses solely on price movements, using X's to represent rising prices and O's to represent falling prices, while ignoring the passage of time. The chart requires two Y-values high and low for each data point.

{% tabs %}
{% highlight c# %}

double[] points = {   35.250,37.750,39.000,38.275,37.750,37.750,37.275,36.250,35.750,35.250,36.250,35.250,34.500,
                                35.625,35.500,36.625,36.275,36.250,36.875,37.250,36.875,36.500,37.125,36.275,35.875,36.625,
                                27.125,26.250,27.000,27.250,37.500,38.500,39.500,38.875,38.500,39.000,38.500,28.500,29.000,
                                29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                                28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

double[] points1 = {   25,27.500,28.750,28.025,27.500,27.500,27.025,26.250,35.750,35.250,36.250,35.250,34.500,
                                25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                                27.125,26.250,27.000,27.250,27.500,38.500,39.500,38.875,38.500,39.000,28.500,28.500,29.000,
                                29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                                28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};


DateTime current = new DateTime(2026, 01, 1);
int numPoints1 = points.Length;

ChartSeries series = new ChartSeries("Series 1");
for (int j = 0; j < numPoints1; j++)
{
    series.Points.Add(current.AddDays(j), new double[] { points[j], points1[j] });
}

series.Type = ChartSeriesType.PointAndFigure;
series.Text = series.Name;
series.ReversalAmount = 0.0;


chartControl.Series.Add(series);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.RangeType = ChartAxisRangeType.Set;
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(current, current.AddDays(30), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";

{% endhighlight %}
{% highlight vb %}


{% endhighlight %}
{% endtabs %}

![Point And Figure Chart in WindowsForms](../Chart-Types_images/windowsforms-point-and-figure-chart.png)

## Renko Chart

{% tabs %}
{% highlight c# %}

double[] points5 = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                            25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                            27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                            29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                            28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime date5 = new DateTime(2004, 1, 1);

ChartSeries series11 = new ChartSeries("Series");

for (int day = 0; day < points5.Length; day++)
{
    series11.Points.Add(date5.AddDays(day), points5[day]);
}

series11.Type = ChartSeriesType.Renko;
series11.ReversalAmount = 1;
chartControl.Series.Add(series11);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(date5, date5.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryYAxis.Format = "$ #";

{% endhighlight %}
{% highlight vb %}


{% endhighlight %}
{% endtabs %}

![Renko Chart in WindowsForms](../Chart-Types_images/windowsforms-renko-chart.png)

## Three Line Break Chart

{% tabs %}
{% highlight c# %}

double[] points6 = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                              25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                              27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                              29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                              28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime dates = new DateTime(2026,9,4).AddDays(-points6.Length);

ChartSeries series8 = new ChartSeries("Series");

for (int day = 0; day < points6.Length; day++)
{
    series8.Points.Add(dates.AddDays(day), points6[day]);
}

series8.Type = ChartSeriesType.ThreeLineBreak;
series8.ReversalAmount = 3.0;

chartControl.Text = "Three Line Break Chart";
chartControl.PrimaryYAxis.Format = "$ #";
chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(dates, dates.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.Series.Add(series8);

{% endhighlight %}
{% highlight vb %}


{% endhighlight %}
{% endtabs %}

![Three Line Break Chart in WindowsForms](../Chart-Types_images/windowsforms-three-line-break-chart.png)