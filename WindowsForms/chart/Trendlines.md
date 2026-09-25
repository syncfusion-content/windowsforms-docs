---
layout: post
title: Trendlines in Windows Forms Chart control | Syncfusion
description: Trendlines in the Windows Forms Chart analyze data patterns and support multiple types, forecasting, legends, and appearance customization.
platform: windowsforms
control: Chart
documentation: ug
---

# Trendlines in Windows Forms Chart

A trendline displays the general pattern or direction of a series based on its data points. Trendlines can be used to analyze existing values and forecast values beyond the current data range.

The [Trendline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html) class represents a trendline. Add one or more `Trendline` instances to the `ChartSeries.Trendlines` collection.

N> Trendlines are supported only in 2D charts.

## Define a trendline

The following code example creates a series and adds a linear trendline.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Line);

series.Points.Add(1, 20);
series.Points.Add(2, 28);
series.Points.Add(3, 35);
series.Points.Add(4, 42);
series.Points.Add(5, 55);

Trendline trendline = new Trendline();
trendline.Name = "Sales Trend";
trendline.Type = TrendlineType.Linear;

series.Trendlines.Add(trendline);
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Line)

series.Points.Add(1, 20)
series.Points.Add(2, 28)
series.Points.Add(3, 35)
series.Points.Add(4, 42)
series.Points.Add(5, 55)

Dim trendline As New Trendline()
trendline.Name = "Sales Trend"
trendline.Type = TrendlineType.Linear

series.Trendlines.Add(trendline)
chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Trendline in Windows Forms Chart](../Chart-Series_Images/trendline.png)

## Trendline name

The [Name](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Name) property specifies the name of the trendline. The default value is `Trendline`.

The following code example sets the trendline name.

{% tabs %}
{% highlight c# %}

trendline.Name = "Sales Trend";

{% endhighlight %}
{% highlight vb %}

trendline.Name = "Sales Trend"

{% endhighlight %}
{% endtabs %}

## Trendline visibility

The [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Visible) property controls whether the trendline is displayed. The default value is `true`.

The following code example hides the trendline.

{% tabs %}
{% highlight c# %}

trendline.Visible = false;

{% endhighlight %}
{% highlight vb %}

trendline.Visible = False

{% endhighlight %}
{% endtabs %}

## Trendline type

The [Type](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Type) property specifies the trendline calculation type. The default value is `TrendlineType.Linear`.

The supported `TrendlineType` values are:

- [Linear](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_Linear): Displays a straight line that represents a steady increase or decrease in the data.
- [Exponential](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_Exponential): Displays a curved line for data that increases or decreases at an increasing rate.
- [Power](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_Power): Displays a curved line for data whose rate of change increases proportionally.
- [Logarithmic](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_Logarithmic): Displays a curved line for data that changes quickly and then levels off.
- [Polynomial](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_Polynomial): Displays a curved line whose number of bends is controlled by `PolynomialOrder`.
- [MovingAverage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html#Syncfusion_Windows_Forms_Chart_TrendlineType_MovingAverage): Displays a smoothed trend by averaging consecutive data values.

## Linear trendline

A linear trendline displays a straight line that shows a steady increase or decrease in the data.

The following code example displays a linear trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Linear;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Linear

{% endhighlight %}
{% endtabs %}

## Exponential trendline

An exponential trendline displays a curved line for data that increases or decreases at an increasing rate.

The following code example displays an exponential trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Exponential;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Exponential

{% endhighlight %}
{% endtabs %}

N> An exponential trendline cannot be used when the series contains zero or negative values.

## Power trendline

A power trendline displays a curved line for data that changes according to a power relationship.

The following code example displays a power trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Power;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Power

{% endhighlight %}
{% endtabs %}

N> Use positive X and Y values when applying a power trendline.

## Logarithmic trendline

A logarithmic trendline displays a curved line for data that changes rapidly and then gradually levels off.

The following code example displays a logarithmic trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Logarithmic;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Logarithmic

{% endhighlight %}
{% endtabs %}

## Polynomial trendline

A polynomial trendline displays a curved line that can contain multiple bends. Use the `PolynomialOrder` property to control the number of bends.

The following code example displays a polynomial trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Polynomial;
trendline.PolynomialOrder = 4;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Polynomial
trendline.PolynomialOrder = 4

{% endhighlight %}
{% endtabs %}

### Polynomial order

The [PolynomialOrder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_PolynomialOrder) property specifies the order used to calculate a polynomial trendline. The default value is `2`. The supported range is from `2` to `6`.

The following code example sets the polynomial order to `4`.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.Polynomial;
trendline.PolynomialOrder = 4;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.Polynomial
trendline.PolynomialOrder = 4

{% endhighlight %}
{% endtabs %}

## Moving average trendline

A moving average trendline smooths fluctuations by averaging consecutive data values. Use the `Period` property to specify the number of values included in each average.

The following code example displays a moving average trendline.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.MovingAverage;
trendline.Period = 3;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.MovingAverage
trendline.Period = 3

{% endhighlight %}
{% endtabs %}

### Period

The [Period](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Period) property specifies the number of consecutive data values used to calculate the moving average. The default value is `2`.

The following code example sets the moving average period to `3`.

{% tabs %}
{% highlight c# %}

trendline.Type = TrendlineType.MovingAverage;
trendline.Period = 3;

{% endhighlight %}
{% highlight vb %}

trendline.Type = TrendlineType.MovingAverage
trendline.Period = 3

{% endhighlight %}
{% endtabs %}

## Forecasting

Trendline forecasting extends a calculated trendline beyond the existing data range to show estimated past or future values.

### Forward forecasting

The [ForwardForecast](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_ForwardForecast) property specifies how far the trendline extends beyond the last data point. The default value is `0`.

The following code example extends the trendline forward by `2` units.

{% tabs %}
{% highlight c# %}

trendline.ForwardForecast = 2;

{% endhighlight %}
{% highlight vb %}

trendline.ForwardForecast = 2

{% endhighlight %}
{% endtabs %}

### Backward forecasting

The [BackwardForecast](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_BackwardForecast) property specifies how far the trendline extends before the first data point. The default value is `0`.

The following code example extends the trendline backward by `2` units.

{% tabs %}
{% highlight c# %}

trendline.BackwardForecast = 2;

{% endhighlight %}
{% highlight vb %}

trendline.BackwardForecast = 2

{% endhighlight %}
{% endtabs %}

## Trendline appearance

The trendline color, width, and dash style can be customized independently.

### Color

The [Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Color) property specifies the trendline color. The default value is `Color.Black`.

The following code example changes the trendline color.

{% tabs %}
{% highlight c# %}

trendline.Color = Color.Red;

{% endhighlight %}
{% highlight vb %}

trendline.Color = Color.Red

{% endhighlight %}
{% endtabs %}

### Width

The [Width](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Width) property specifies the trendline width. The default value is `1f`.

The following code example sets the trendline width to `3`.

{% tabs %}
{% highlight c# %}

trendline.Width = 3f;

{% endhighlight %}
{% highlight vb %}

trendline.Width = 3.0F

{% endhighlight %}
{% endtabs %}

### Style

The [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html#Syncfusion_Windows_Forms_Chart_Trendline_Style) property specifies the `DashStyle` used to render the trendline. The default value is `DashStyle.Solid`.

The following code example displays a dashed trendline.

{% tabs %}
{% highlight c# %}

trendline.Style = DashStyle.Dash;

{% endhighlight %}
{% highlight vb %}

trendline.Style = DashStyle.Dash

{% endhighlight %}
{% endtabs %}

The following code example customizes all trendline appearance properties.

{% tabs %}
{% highlight c# %}

trendline.Color = Color.Red;
trendline.Width = 3f;
trendline.Style = DashStyle.Dash;

{% endhighlight %}
{% highlight vb %}

trendline.Color = Color.Red
trendline.Width = 3.0F
trendline.Style = DashStyle.Dash

{% endhighlight %}
{% endtabs %}

## Multiple trendlines

Multiple trendlines can be added to the same series through the `Trendlines` collection.

The following code example adds linear and moving average trendlines to one series.

{% tabs %}
{% highlight c# %}

Trendline linearTrendline = new Trendline();
linearTrendline.Name = "Linear";
linearTrendline.Type = TrendlineType.Linear;
linearTrendline.Color = Color.Red;

Trendline movingAverageTrendline = new Trendline();
movingAverageTrendline.Name = "Moving Average";
movingAverageTrendline.Type =
    TrendlineType.MovingAverage;
movingAverageTrendline.Period = 3;
movingAverageTrendline.Color = Color.Blue;

series.Trendlines.Add(linearTrendline);
series.Trendlines.Add(movingAverageTrendline);

{% endhighlight %}
{% highlight vb %}

Dim linearTrendline As New Trendline()
linearTrendline.Name = "Linear"
linearTrendline.Type = TrendlineType.Linear
linearTrendline.Color = Color.Red

Dim movingAverageTrendline As New Trendline()
movingAverageTrendline.Name = "Moving Average"
movingAverageTrendline.Type =
    TrendlineType.MovingAverage
movingAverageTrendline.Period = 3
movingAverageTrendline.Color = Color.Blue

series.Trendlines.Add(linearTrendline)
series.Trendlines.Add(movingAverageTrendline)

{% endhighlight %}
{% endtabs %}

## Trendline legend

A trendline can be displayed in the chart legend. Enable legend checkboxes to allow users to show or hide a trendline through its legend item.

The following code example displays legend checkboxes for the series and trendline legend items.

{% tabs %}
{% highlight c# %}

chartControl.ShowLegend = true;
chartControl.Legend.VisibleCheckBox = true;

{% endhighlight %}
{% highlight vb %}

chartControl.ShowLegend = True
chartControl.Legend.VisibleCheckBox = True

{% endhighlight %}
{% endtabs %}

## Remove a trendline

Use the `Remove` method of the `Trendlines` collection to remove a specific trendline.

The following code example removes a trendline from the series.

{% tabs %}
{% highlight c# %}

series.Trendlines.Remove(trendline);

{% endhighlight %}
{% highlight vb %}

series.Trendlines.Remove(trendline)

{% endhighlight %}
{% endtabs %}

## Clear trendlines

Use the `Clear` method to remove all trendlines from a series.

The following code example clears all trendlines.

{% tabs %}
{% highlight c# %}

series.Trendlines.Clear();

{% endhighlight %}
{% highlight vb %}

series.Trendlines.Clear()

{% endhighlight %}
{% endtabs %}

## Complete example

The following code example creates a line series and adds a customized linear trendline with forward and backward forecasting.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Line);

series.Points.Add(1, 20);
series.Points.Add(2, 28);
series.Points.Add(3, 35);
series.Points.Add(4, 42);
series.Points.Add(5, 55);

Trendline trendline = new Trendline();
trendline.Name = "Sales Trend";
trendline.Visible = true;
trendline.Type = TrendlineType.Linear;
trendline.ForwardForecast = 2;
trendline.BackwardForecast = 1;
trendline.Color = Color.Red;
trendline.Width = 2f;
trendline.Style = DashStyle.Dash;

series.Trendlines.Add(trendline);
chartControl.Series.Add(series);

chartControl.PrimaryXAxis.Title = "Month";
chartControl.PrimaryYAxis.Title = "Sales";
chartControl.Text = "Monthly Sales Trend";
chartControl.ShowLegend = true;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Line)

series.Points.Add(1, 20)
series.Points.Add(2, 28)
series.Points.Add(3, 35)
series.Points.Add(4, 42)
series.Points.Add(5, 55)

Dim trendline As New Trendline()
trendline.Name = "Sales Trend"
trendline.Visible = True
trendline.Type = TrendlineType.Linear
trendline.ForwardForecast = 2
trendline.BackwardForecast = 1
trendline.Color = Color.Red
trendline.Width = 2.0F
trendline.Style = DashStyle.Dash

series.Trendlines.Add(trendline)
chartControl.Series.Add(series)

chartControl.PrimaryXAxis.Title = "Month"
chartControl.PrimaryYAxis.Title = "Sales"
chartControl.Text = "Monthly Sales Trend"
chartControl.ShowLegend = True

{% endhighlight %}
{% endtabs %}

## See also

- [Trendlines in Windows Forms Chart](https://help.syncfusion.com/windowsforms/chart/chart-series#trendlines)
- [Trendline API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.Trendline.html)
- [TrendlineType API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrendlineType.html)
- [ChartSeries API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html)
- [Syncfusion.Windows.Forms.Chart namespace](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html)
